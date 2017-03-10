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
  use global_parameters, only : OPTION_PATH_LEN
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
          type(scalar_field), pointer               :: sediment_field
          type(vector_field), pointer               :: x, bss
          type(vector_field), intent(inout)         :: v_field
          type(vector_field)                        :: bedload_flux_surface

          integer, dimension(surface_element_count(v_field)) :: surface_elements

          integer                                   :: i, idx, j, n_sediment_fields, i_field,&
          & i_ele, snloc, sndim, ele, sele, globnod, stat

          integer, dimension(:), pointer            :: surface_node_list, s_nodes
          integer, dimension(2)                     :: surface_id_count
          integer, dimension(:), allocatable        :: faceglobalnodes, surface_ids
          real, dimension(:), allocatable           :: t_crit, q_star, d_star
          real                                      :: density, R, d, g
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

          ewrite(1,*) "In calculate_sediment_bedload_flux"

          ! extract coordinate field
          !x => extract_vector_field(state, "Coordinate")

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

            call get_option(trim(base_path)//"/surface_ids", &
            & surface_ids)

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
            !call create_surface_mesh(surface_mesh, surface_node_list, &
            !    & mesh=v_field%mesh, name='SurfaceMesh')

            call create_surface_mesh(surface_mesh, surface_node_list, &
                & mesh=v_field%mesh, surface_elements=surface_elements(:idx-1), name='SurfaceMesh')

            call allocate(bedload_flux_surface, v_field%dim, surface_mesh, name='BedloadRateSurface')

            call zero(bedload_flux_surface)

            !ewrite(1,*) 'JN - SURF ELEMENTS:', element_count(bedload_flux_surface)
            !ewrite(1,*) 'JN - SURF NODES:', surface_node_list

            ! calculate bedload flux
            ! calculate Meyer-Peter and Muller model
            if (have_option(trim(base_path)//"/transport_model/meyer_peter_muller")) then
            call zero(v_field)

            ! loop through elements in surface field
            elements_mpm: do i_ele=1, element_count(bedload_flux_surface)
            !elements: do i_ele=1, element_count(v_field)
            !elements: do i_ele=1, size(surface_elements)

              ! check if element is on prescribed surface
              !if (.not.any(surface_element_id(v_field, i_ele) == surface_ids)) then
                 !cycle elements
              !end if

              !s_nodes => ele_nodes(bedload_flux_surface, i_ele)
              !s_nodes => ele_nodes(v_field, i_ele)

              sndim = mesh_dim(bss)
              snloc = face_loc(bss, 1)
              !ele = face_ele(bss, i_ele)

              !ewrite(1,*) '******'
              !ewrite(1,*) 'JN - BSS DIMENSION:', sndim
              !ewrite(1,*) 'JN - BSS ELEMENTS', surface_element_count(bss)
              !ewrite(1,*) 'JN - BSS FACES IN ONE ELE:', snloc
              !ewrite(1,*) 'JN - BSS FACE ELE NUM:', ele
              !ewrite(1,*) 'JN - SURF NODES IN ONE ELE:', s_nodes

              allocate(t_crit(1:sndim))
              allocate(q_star(1:sndim))
              allocate(faceglobalnodes(1:snloc))
              !do sele=1, surface_element_count(bss)
                !faceglobalnodes = face_global_nodes(bss, sele)
                faceglobalnodes = face_global_nodes(bss, surface_elements(i_ele))

                !ewrite(1,*) '******'
                !ewrite(1,*) 'JN - BSS ELEMENT:', i_ele
                !ewrite(1,*) 'JN - BSS GLOBAL NODES IN FACE:', faceglobalnodes

                do i = 1, snloc
                    t_crit = 0.00
                    globnod = faceglobalnodes(i)
                    !q_star = 8.0 * (((norm2(node_val(bss, globnod)) - t_crit) / (density * R * g * d)) ** 1.5) * (node_val(bss, globnod) / norm2(node_val(bss, globnod)))
                    q_star = 8.0 * ((node_val(bss, globnod) - t_crit / (density * R * g * d))) * sqrt((norm2(node_val(bss, globnod)) - t_crit / (density * R * g * d)))

                    !ewrite(1,*) 'JN - QSTAR:', q_star

                    call set(v_field, globnod, q_star * sqrt(R * g * (d ** 3)))

                    !ewrite(1,*) 'JN - BEDLOAD RATE:', node_val(v_field, globnod)

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

              deallocate(q_star)
              deallocate(t_crit)
              deallocate(faceglobalnodes)

            end do elements_mpm

            end if

            ! calculate Nielsen model
            if (have_option(trim(base_path)//"/transport_model/nielsen")) then
            call zero(v_field)

            ! loop through elements in surface field
            elements_nielsen: do i_ele=1, element_count(bedload_flux_surface)

                sndim = mesh_dim(bss)
                snloc = face_loc(bss, 1)
                allocate(t_crit(1:sndim))
                allocate(q_star(1:sndim))
                allocate(faceglobalnodes(1:snloc))
                !do sele=1,surface_element_count(bss)
                  !ele = face_ele(bss, sele)
                  !faceglobalnodes = face_global_nodes(bss, sele)
                  faceglobalnodes = face_global_nodes(bss, surface_elements(i_ele))
                  do i = 1,snloc
                      t_crit = 0.00
                      globnod = faceglobalnodes(i)
                      q_star = 12.0 * ((node_val(bss, globnod) - t_crit / (density * R * g * d))) * sqrt((norm2(node_val(bss, globnod)) / (density * R * g * d)))
                      call set(v_field, globnod, q_star * sqrt(R * g * (d ** 3)))
                  end do
                !end do

                deallocate(q_star)
                deallocate(t_crit)
                deallocate(faceglobalnodes)

            end do elements_nielsen

            end if

          !ewrite(1,*) 'JN - GOT HERE'

          ewrite_minmax(v_field)

          call deallocate(bedload_flux_surface)
          call deallocate(surface_mesh)

          deallocate(surface_ids)

          end do sediment_fields
    
    end subroutine calculate_bedload_flux

end module bedload_diagnostics

	  ! calculate Van Rijn model
	  !if (have_option(trim(bedload_flux%option_path)//&
	      !&"/diagnostic/transport_model/van_rijn")) then

	  !call zero(bedload_flux)
	    
	  !snloc = face_loc(bss, 1)
	  !allocate( faceglobalnodes(1:snloc) )
	  !do sele=1,surface_element_count(bss)
	  !ele = face_ele(bss, sele)
	  !faceglobalnodes = face_global_nodes(bss, sele)
	  !do i = 1,snloc
		!globnod = faceglobalnodes(i)
		!q_star = (0.053 / (d_star) ** 0.3)) * (((node_val(bss, globnod) / (density * R * g * d)) / t_crit) - 1) ** 2.1
		!call set(bedload_flux, globnod, ((R * g * (d ** 3)) ** 0.5) * q_star * node_val(bss, globnod))
	  !end do
	  !end do
	  !deallocate( faceglobalnodes )
	  !end if
