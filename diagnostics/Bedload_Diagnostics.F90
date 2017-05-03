!    Copyright (C) 2006 Imperial College London and others.
!    
!    Please see the AUTHORS file in the main source directory for a full list
!    of copyright holders.
!
!    Prof. C Pain
!    Applied Modelling and Computation Group
!    Department of Earth Science and Engineering
!    Imperial College London
!
!    amcgsoftware@imperial.ac.uk
!    
!    This library is free software; you can redistribute it and/or
!    modify it under the terms of the GNU Lesser General Public
!    License as published by the Free Software Foundation,
!    version 2.1 of the License.
!
!    This library is distributed in the hope that it will be useful,
!    but WITHOUT ANY WARRANTY; without even the implied warranty of
!    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
!    Lesser General Public License for more details.
!
!    You should have received a copy of the GNU Lesser General Public
!    License along with this library; if not, write to the Free Software
!    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307
!    USA

#include "fdebug.h"

module bedload_diagnostics

  use fldebug
  use global_parameters, only : OPTION_PATH_LEN, timestep, dt
  use quadrature
  use elements
  use spud
  use fields
  use state_module
  use field_options
  use sediment, only: get_n_sediment_fields, get_sediment_item
  !use boundary_conditions
  !use diagnostic_source_fields
  !use surface_integrals
  
  implicit none 
  
  public  :: calculate_bedload_flux
  
contains 
 
    subroutine calculate_bedload_flux(state, v_field)

          type(state_type), intent(inout)           :: state
          type(mesh_type)                           :: surface_mesh
          type(scalar_field), pointer               :: sediment_field, evisc
          type(vector_field), pointer               :: x, bss
          type(vector_field), intent(inout)         :: v_field
          type(vector_field)                        :: bedload_flux_surface

          integer, dimension(surface_element_count(v_field))    :: surface_elements

          integer                                   :: i, j, k, idx, n_sediment_fields, i_field,&
                                                       & stat, i_ele, snloc, sndim, sele, globnod, globnod_prev, globnod_next, globnod_visc

          integer, dimension(:), pointer            :: surface_node_list, s_nodes, ele
          integer, dimension(2)                     :: surface_id_count
          integer, dimension(:), allocatable        :: surface_ids, faceglobalnodes, faceglobalnodes_prev, faceglobalnodes_next, faceglobalnodes_visc
          real, dimension(:), allocatable           :: t_crit, q_star, q_aval
          real                                      :: density, R, d, g, d_star, zevisc
          real                                      :: b, repose, q_aval_x, q_aval_y, acc_aval
          real, parameter                           :: PI = 4.D0*DATAN(1.D0)
          character(len = OPTION_PATH_LEN)          :: base_path

          ! Declarations for future FE development
          !type(tensor_field), pointer               :: visc
          !type(element_type), pointer               :: s_shape
          !integer, dimension(:), pointer            :: surface_element_list, surface_ids, bedload_flux_surface_nodes
          !type(scalar_field)                        :: masslump
          !real, dimension(:,:)                      :: invmass
          !real, dimension(8)                        :: detwei
          !real, dimension(ele_loc(bedload_flux_surface, i_ele), ele_loc(bedload_flux_surface, i_ele)) :: invmass
          !real, dimension(ele_ngi(bedload_flux_surface, i_ele)) :: detwei

          ewrite(1,*) "JN - In calculate_sediment_bedload_flux"

          ! extract turbulent viscocity field
          evisc => extract_scalar_field(state, "ScalarEddyViscosity")
          ! extract turbulent viscocity field in zero dump
          !if (timestep == 0) then
          !  call get_option("/material_phase::water/subgridscale_parameterisations/k-epsilon/tensor_field::BackgroundViscosity/prescribed/value::WholeMesh/isotropic/constant", zevisc)
          !end if

          !ewrite(1,*) 'JN - EDDY VISC IN NODE 10:', zevisc
          !!ewrite(1,*) 'JN - EDDY VISC IN NODE 10:', node_val(evisc, 10)

          ! extract coordinate field
          x => extract_vector_field(state, "Coordinate")

          ! extract bed shear stress field
          bss => extract_vector_field(state, "BedShearStress", stat)
          if (stat /= 0) then
            FLExit("A bed shear stress must be specified to calculate bedload flux")
          end if

          n_sediment_fields = get_n_sediment_fields()
          if (n_sediment_fields == 0) return

          ! loop over sediment fields
          sediment_fields: do i_field = 1, n_sediment_fields

            ! get sediment field from state
            call get_sediment_item(state, i_field, sediment_field)

            ! get R
            call get_sediment_item(state, i_field, 'submerged_specific_gravity', R)

            ! get d
            call get_sediment_item(state, i_field, 'diameter', d)

            ! get gravity
            call get_option("/physical_parameters/gravity/magnitude", g)

            ! get constant density from bed shear stress
            call get_option("/material_phase::water/vector_field::BedShearStress/diagnostic/density", density)

            ! define base path
            base_path = trim(complete_field_path(v_field%option_path))//&
            &"/algorithm"
            !ewrite(1,*) 'JN - PATH:', base_path

            ! obtain sediment bedload surface ids
            surface_id_count=option_shape(trim(base_path)//&
            &"/surface_ids")

            allocate(surface_ids(surface_id_count(1)))

            call get_option(trim(base_path) // "/angle_of_repose", repose, default=0.0)

            call get_option(trim(base_path) // "/avalanche_factor", acc_aval, default=1.0)

            call get_option(trim(base_path)//"/surface_ids", surface_ids)
            !ewrite(1,*) 'JN - SURFACE ID:', surface_ids

            ! get the relevant surface elements
            idx=1
            do i = 1, surface_element_count(v_field)
                if (any(surface_ids == surface_element_id(v_field, i))) then
                surface_elements(idx)=i
                idx=idx+1
                end if
            end do

            ! generate surface_mesh for calculation of bedload flux and create surface field
            call create_surface_mesh(surface_mesh, surface_node_list, &
                & mesh=v_field%mesh, surface_elements=surface_elements(:idx-1), name='SurfaceMesh')

            call allocate(bedload_flux_surface, v_field%dim, surface_mesh, name='BedloadRateSurface')

            call zero(bedload_flux_surface)

            call zero(v_field)

            !ewrite(1,*) 'JN - SURF ELEMENTS:', element_count(bedload_flux_surface)
            !ewrite(1,*) 'JN - SURF NODES:', surface_node_list

            ! calculate bedload flux
            ! loop through elements in surface field
            elements: do i_ele=1, element_count(bedload_flux_surface)
            !elements: do i_ele=1, element_count(v_field)
            !elements: do i_ele=1, size(surface_elements)

                ! check if element is on prescribed surface
                !if (.not.any(surface_element_id(v_field, i_ele) == surface_ids)) then
                     !cycle elements
                !end if

                !s_nodes => ele_nodes(bedload_flux_surface, i_ele)
                !s_nodes => ele_nodes(v_field, i_ele)
                !ele => face_ele(bss, i_ele)

                sndim = mesh_dim(bss)
                !ewrite(1,*) 'JN - BSS DIMENSION:', sndim

                snloc = face_loc(bss, 1)
                !ewrite(1,*) 'JN - BSS NODES IN FACE ONE:', snloc

                !!ewrite(1,*) '******'

                !!ewrite(1,*) 'JN - BSS ELEMENT:', i_ele
                !!ewrite(1,*) 'JN - V_FIELD SURF ELE:', surface_elements((i_ele))
                !ewrite(1,*) 'JN - BSS ELEMENTS:', surface_element_count(bss)

                allocate(t_crit(1:sndim))
                allocate(q_star(1:sndim))
                allocate(q_aval(1:sndim))
                allocate(faceglobalnodes_visc(1:snloc))
                allocate(faceglobalnodes(1:snloc))
                allocate(faceglobalnodes_next(1:snloc))
                allocate(faceglobalnodes_prev(1:snloc))

                faceglobalnodes_visc = face_global_nodes(evisc, surface_elements(i_ele))
                !!ewrite(1,*) 'JN - EDDY VISC GLOBAL NODES IN FACE:', faceglobalnodes_visc

                !do sele=1, surface_element_count(bss)
                !faceglobalnodes = face_global_nodes(bss, sele)
                faceglobalnodes = face_global_nodes(bss, surface_elements(i_ele))
                !!ewrite(1,*) 'JN - BSS GLOBAL NODES IN FACE:', faceglobalnodes

                !if (i_ele < element_count(bedload_flux_surface) - 1) then
                !faceglobalnodes_next = face_global_nodes(bss, surface_elements(i_ele+1))
                !ewrite(1,*) 'JN - BSS GLOBAL NODES IN NEXT FACE:', faceglobalnodes_next
                !end if

                !if (i_ele > 1) then
                !faceglobalnodes_prev = face_global_nodes(bss, surface_elements(i_ele-1))
                !ewrite(1,*) 'JN - BSS GLOBAL NODES IN PREV FACE:', faceglobalnodes_prev
                !end if

                !!ewrite(1,*) '******'

                do i = 1, snloc

                    globnod_visc = faceglobalnodes_visc(i)
                    !!ewrite(1,*) 'JN - EDDY VISC GLOBAL NODE:', globnod_visc

                    globnod = faceglobalnodes(i)
                    !!ewrite(1,*) 'JN - BSS GLOBAL NODE:', globnod
                    !globnod_next = faceglobalnodes_next(i)
                    !ewrite(1,*) 'JN - BSS GLOBAL NODE NEXT FACE:', globnod_next
                    !globnod_prev = faceglobalnodes_prev(i)
                    !ewrite(1,*) 'JN - BSS GLOBAL NODE PREV FACE:', globnod_prev

                    ! compute dimensionless particle diameter
                    !!ewrite(1,*) 'JN - EDDY VISC:', node_val(evisc, globnod_visc)
                    !d_star = 10.0
                    !d_star = d * ((R*g/(zevisc)**2)**1/3)
                    d_star = d * ((R*g/(node_val(evisc, globnod_visc)**2))**1/3)
                    !!ewrite(1,*) 'JN - DIMENSIONLESS PARTICLE DIAMETER:', d_star

                    if (have_option("/material_phase::water/subgridscale_parameterisations/k-epsilon")) then
                        if (timestep == 0) then
                            t_crit = 0.00
                        else
                            t_crit(1:sndim) = (0.30 / (1 + 1.2*d_star)) + 0.055*(1-exp(-0.020*d_star)) !Soulsby (1997)
                        end if
                    else
                        t_crit(1:sndim) = 0.05
                        !t_crit = 0.00
                    end if

                    !!ewrite(1,*) 'JN - T_CRIT:', t_crit

                    ! calculate Meyer-Peter and Muller model
                    if (have_option(trim(base_path)//"/transport_model/meyer_peter_muller")) then

                    q_star = 8.0 * ((node_val(bss, globnod) - t_crit / (density * R * g * d))) * ((sqrt(norm2(node_val(bss, globnod))) - sqrt(norm2(t_crit))) / (density * R * g * d))

                    ! calculate Nielsen model
                    elseif (have_option(trim(base_path)//"/transport_model/nielsen")) then

                    q_star = 12.0 * ((node_val(bss, globnod) - t_crit / (density * R * g * d))) * sqrt((norm2(node_val(bss, globnod)) / (density * R * g * d)))

                    ! calculate Van Rijn model
                    elseif (have_option(trim(base_path)//"/transport_model/van_rijn")) then

                    q_star = (0.053 / (d_star ** 0.3)) * (((node_val(bss, globnod) / t_crit) - 1) ** 2.1)

                    ! calculate Engelund and Fresoe model
                    elseif (have_option(trim(base_path)//"/transport_model/engelund_fredsoe")) then

                    q_star = 18.74 * ((node_val(bss, globnod) - t_crit / (density * R * g * d))) * ((sqrt(norm2(node_val(bss, globnod))) - (0.7 * sqrt(norm2(t_crit)))) / (density * R * g * d))

                    end if

                    !!ewrite(1,*) 'JN - QSTAR:', q_star

                    call set(v_field, globnod, q_star * sqrt(R * g * (d ** 3)))
                    !!ewrite(1,*) 'JN - BEDLOAD RATE:', node_val(v_field, globnod)
                    !!ewrite(1,*) '******'

                    ! AVALANCHE MODEL

                    if (sndim == 2) then

                        call avalanche_2d(state, i_ele, repose, x, v_field, surface_elements, b, q_aval_x, q_aval_y)

                        !if (tan(abs(b)) > tan(repose*PI/180)) then
                        !ewrite(1,*) 'JN - AVALANCHE_X IN BED FLUX:', q_aval_x
                        !ewrite(1,*) 'JN - AVALANCHE_Y IN BED FLUX:', q_aval_y
                        !end if

                    elseif (sndim == 3) then

                        call avalanche_2d(state, i_ele, repose, x, v_field, surface_elements, b, q_aval_x, q_aval_y)

                    end if

                    if ((repose /= 0.0) .and. (timestep /= 0.0)) then
                        if (tan(abs(b)) > tan(repose*PI/180)) then
                            q_aval(1:sndim) = (/ q_aval_x, q_aval_y /)
                            !!ewrite(1,*) 'JN - Q_AVAL:', q_aval

                            !q_aval(1:sndim) = (/ abs(q_aval_x), abs(q_aval_y) /)
                            !ewrite(1,*) 'JN - Q_AVAL ABS:', q_aval

                            !!ewrite(1,*) 'JN - BED FLUX PLUS Q_AVAL:', node_val(v_field, globnod) + q_aval
                            !!ewrite(1,*) 'JN - BED FLUX MINUS Q_AVAL:', node_val(v_field, globnod) - q_aval

                            if (b < 0.0) then

                                call addto(v_field, 1, globnod, acc_aval*q_aval_x/timestep)
                                call addto(v_field, 2, globnod, acc_aval*q_aval_y/timestep)

                                !ewrite(1,*) 'JN - SIGNS:', sign(1.0, node_val(v_field,1,globnod))
                                !ewrite(1,*) 'JN - SIGNS:', sign(1.0, node_val(v_field,2,globnod))
                                !ewrite(1,*) 'JN - SIGNS:', sign(1.0, q_aval(1))
                                !ewrite(1,*) 'JN - SIGNS:', sign(1.0, q_aval(2))

                                !do k = 1, sndim
                                !if (sign(1.0, node_val(v_field, k, globnod)) > 0.0) then
                                    !call addto(v_field, k, globnod, q_aval(k))
                                !else if (sign(1.0, node_val(v_field, k, globnod)) < 0.0) then
                                    !call addto(v_field, k, globnod, -q_aval(k))
                                !end if
                                !end do

                                !if (i_ele < element_count(bedload_flux_surface) - 1) then
                                !call addto(v_field, globnod_next, q_aval)
                                !elseif (i_ele == element_count(bedload_flux_surface)) then
                                !call addto(v_field, globnod, q_aval)
                                !endif

                            elseif (b > 0.0) then

                                call addto(v_field, 1, globnod, -acc_aval*q_aval_x/timestep)
                                call addto(v_field, 2, globnod, -acc_aval*q_aval_y/timestep)

                                !do k = 1, sndim
                                !if (sign(1.0, node_val(v_field, k, globnod)) > 0.0) then
                                    !call addto(v_field, k, globnod, q_aval(k))
                                !else if (sign(1.0, node_val(v_field, k, globnod)) < 0.0) then
                                    !call addto(v_field, k, globnod, -q_aval(k))
                                !end if
                                !end do

                                !if (i_ele > 1) then
                                !call addto(v_field, globnod_prev, -1 * q_aval)
                                !elseif (i_ele == 1) then
                                !call addto(v_field, globnod, q_aval)
                                !endif

                            end if
                        end if
                    end if

                    !!ewrite(1,*) 'JN - BEDLOAD ADDITIONAL RATE:', node_val(v_field, globnod)
                    !!ewrite(1,*) '******'

                    !if (i_ele < element_count(bedload_flux_surface) - 1) then
                    !ewrite(1,*) 'JN - BEDLOAD ADDITIONAL RATE NEXT:', node_val(v_field, globnod_next)
                    !end if

                    !if (i_ele > 1) then
                    !ewrite(1,*) 'JN - BEDLOAD ADDITIONAL RATE PREV:', node_val(v_field, globnod_prev)
                    !end if

                    ! For future FE development
                    !call set(bedload_flux_surface, s_nodes(i), node_val(v_field, globnod))
                end do
                !end do

                !do j=1, size(surface_node_list)
                    !ewrite(1,*) 'JN - NODE ID:', surface_node_list(j)
                    !ewrite(1,*) 'JN - NODE VAL ID:', node_val(v_field, j)
                !end do

                !do j=1,size(surface_node_list)
                    !call set(bedload_flux_surface,surface_node_list(j),node_val(v_field,j))
                !end do

                deallocate(q_aval)
                deallocate(q_star)
                deallocate(t_crit)
                deallocate(faceglobalnodes_visc)
                deallocate(faceglobalnodes)
                deallocate(faceglobalnodes_prev)
                deallocate(faceglobalnodes_next)

            end do elements

          ewrite_minmax(v_field)
          !!ewrite(1,*) 'JN - GOT HERE'

          call deallocate(bedload_flux_surface)
          call deallocate(surface_mesh)
          deallocate(surface_ids)

          end do sediment_fields
    
    end subroutine calculate_bedload_flux

    subroutine avalanche_2d(state, i_ele, repose, X, v_field, surface_elements, b, q_aval_x, q_aval_y)

        type(state_type), intent(in)                       :: state
        type(vector_field), pointer                        :: X
        type(vector_field), intent(in)                     :: v_field
        integer                                            :: i, j, i_ele, sndim, snloc, globnod
        integer, dimension(:), allocatable                 :: faceglobalnodes
        integer, dimension(surface_element_count(v_field)) :: surface_elements
        real                                               :: dx, dy, nl, nf, x1, x2, y1, y2, length, tx, ty,&
                                                              & q_aval, repose
        real, intent(out)                                  :: b, q_aval_x, q_aval_y
        real, parameter                                    :: PI = 4.D0*DATAN(1.D0)

        sndim = mesh_dim(X)
        !ewrite(1,*) 'JN - X DIMENSION:', sndim

        snloc = face_loc(X, 1)
        !ewrite(1,*) 'JN - X NODES IN FACE ONE:', snloc

        !ewrite(1,*) 'JN - BSS ELEMENT:', i_ele
        !ewrite(1,*) 'JN - V_FIELD SURF ELE:', surface_elements((i_ele))

        allocate(faceglobalnodes(1:snloc))
        faceglobalnodes = face_global_nodes(X, surface_elements(i_ele))
        !ewrite(1,*) 'JN - X GLOBAL NODES IN FACE:', faceglobalnodes
        !ewrite(1,*) 'JN - MINVAL:', minval(faceglobalnodes)
        !ewrite(1,*) 'JN - MAXVAL:', maxval(faceglobalnodes)
        !ewrite(1,*) 'JN - MINLOC:', minloc(faceglobalnodes)
        !ewrite(1,*) 'JN - MAXLOC:', maxloc(faceglobalnodes)
        !ewrite(1,*) 'JN - MIN:', faceglobalnodes(minloc(faceglobalnodes))
        !ewrite(1,*) 'JN - MAX:', faceglobalnodes(maxloc(faceglobalnodes))

!        do j = 1, snloc
!            do i = 1, sndim
!                globnod = faceglobalnodes(j)
!                ewrite(1,*) 'JN - COORDINATES:', node_val(X, i, globnod)
!            end do
!        end do

        !nl = faceglobalnodes(maxloc(faceglobalnodes))
        !ewrite(1,*) 'JN - LAST NODE:', nl
        !nf = faceglobalnodes(minloc(faceglobalnodes))
        !ewrite(1,*) 'JN - FIRST NODE:', nf

        !x2 = node_val(X, 1, maxval(faceglobalnodes))
        !x1 = node_val(X, 1, minval(faceglobalnodes))
        x2 = node_val(X, 1, faceglobalnodes(2))
        x1 = node_val(X, 1, faceglobalnodes(1))
        !x2 = node_val(X, 1, nl)
        !x1 = node_val(X, 1, nf)
        !!ewrite(1,*) 'JN - X2:', x2
        !!ewrite(1,*) 'JN - X1:', x1

        !y2 = node_val(X, 2, maxval(faceglobalnodes))
        !y1 = node_val(X, 2, minval(faceglobalnodes))
        y2 = node_val(X, 2, faceglobalnodes(2))
        y1 = node_val(X, 2, faceglobalnodes(1))
        !y2 = node_val(X, 2, nl)
        !y1 = node_val(X, 2, nf)
        !!ewrite(1,*) 'JN - Y2:', y2
        !!ewrite(1,*) 'JN - Y1:', y1

        dx = x2 - x1
        !!ewrite(1,*) 'JN - DX:', dx

        dy = y2 - y1
        !!ewrite(1,*) 'JN - DY:', dy

        length = sqrt(dx**2 + dy**2)
        !!ewrite(1,*) 'JN - LENGTH:', length

        tx = dx / length
        !!ewrite(1,*) 'JN - TX:', tx

        ty = dy / length
        !!ewrite(1,*) 'JN - TY:', ty

        b = atan2(ty,tx)
        !!ewrite(1,*) 'JN - BOTTOM SLOPE RAD:', b
        !!ewrite(1,*) 'JN - BOTTOM SLOPE DEG:', b * 180/PI

        if (tan(abs(b)) > tan(repose*PI/180)) then

            q_aval = 0.5 * length**2 * (1 - 0.0) * ((tan(abs(b)) - tan(repose*PI/180))/cos(abs(b)))
            !!ewrite(1,*) 'JN - AVALANCHE:', q_aval

            q_aval_x = q_aval * tx
            !return
            !!ewrite(1,*) 'JN - AVALANCHE_X:', q_aval_x

            q_aval_y = q_aval * ty
            !return
            !!ewrite(1,*) 'JN - AVALANCHE_Y:', q_aval_y

        end if

        deallocate(faceglobalnodes)

    end subroutine avalanche_2d

end module bedload_diagnostics
