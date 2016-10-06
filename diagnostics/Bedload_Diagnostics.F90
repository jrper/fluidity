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
  use state_module, only: state_type, extract_vector_field
  use field_options, only: complete_field_path
  !use boundary_conditions
  !use diagnostic_source_fields
  use sediment, only: get_n_sediment_fields, get_sediment_item
  !use surface_integrals
  
  implicit none 
  
  public  :: calculate_bedload_flux
  
contains 
 
subroutine calculate_bedload_flux(state, v_field)
!
      type(state_type), intent(inout)           :: state            
      type(vector_field), intent(inout)         :: v_field      
      
      !type(mesh_type)                           :: surface_mesh
      !type(element_type), pointer               :: s_shape
      type(scalar_field), pointer               :: sediment_field, bedload_field      
      type(vector_field), pointer               :: bss, X      
      !type(tensor_field), pointer               :: visc      
                  
      !type(scalar_field)                        :: masslump      
      !type(vector_field)                        :: bedload_flux_surface
      
      !integer, dimension(2)                     :: surface_id_count
      integer                                   :: i, n_sediment_fields, i_field, i_ele, snloc, sndim, ele, sele, globnod, stat
      !integer, dimension(:), pointer            :: surface_node_list, surface_element_list, surface_ids, s_ele, bedload_flux_surface_nodes     
      integer, dimension(:), allocatable        :: faceglobalnodes
      real, dimension(:), allocatable           :: t_crit, q_star, d_star            
      real                                      :: density, R, d, g
      character(len = OPTION_PATH_LEN)          :: base_path
            
      !real, dimension(:,:) :: invmass
      !real, dimension(8) :: detwei      
      !real, dimension(ele_loc(bedload_flux_surface, i_ele), ele_loc(bedload_flux_surface, i_ele)) :: invmass
      !real, dimension(ele_ngi(bedload_flux_surface, i_ele)) :: detwei         
                  
      ewrite(1,*) "In calculate_sediment_bedload_flux"     
      
      ! obtain some required model variables
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

        ! extract coordinate field
        X => extract_vector_field(state, "Coordinate")

        ! extract bed shear stress field
        bss => extract_vector_field(state, "BedShearStress", stat)
        if (stat /= 0) then
          FLExit("A bed shear stress must be specified to calculate bedload flux")
        end if        

        base_path = trim(complete_field_path(v_field%option_path)) // "/algorithm/transport_model"

        ! calculate bedload flux          
        ! calculate Meyer-Peter and Muller model
        if (have_option(trim(base_path)//"/meyer_peter_muller")) then

          call zero(v_field)        
      
          sndim = mesh_dim(bss)
          snloc = face_loc(bss, 1)
          allocate(t_crit(1:sndim))
          allocate(q_star(1:sndim))
          allocate(faceglobalnodes(1:snloc))
          do sele=1,surface_element_count(bss)
            ele = face_ele(bss, sele)
            faceglobalnodes = face_global_nodes(bss, sele)
            do i = 1,snloc      
              t_crit = 0.00
              globnod = faceglobalnodes(i)
              q_star = 8.0 * (((norm2(node_val(bss, globnod)) - t_crit) / (density * R * g * d)) ** 1.5) * (node_val(bss, globnod) / norm2(node_val(bss, globnod)))               
              call set(v_field, globnod, q_star * sqrt(R * g * (d ** 3)))      
            end do
          end do
          deallocate(q_star)
          deallocate(t_crit)
          deallocate(faceglobalnodes)  
   
        end if

        ! calculate Nielsen model
        if (have_option(trim(base_path)//"/nielsen")) then

          call zero(v_field)        

          sndim = mesh_dim(bss)
          snloc = face_loc(bss, 1)
          allocate(t_crit(1:sndim))
          allocate(q_star(1:sndim))
          allocate(faceglobalnodes(1:snloc))
          do sele=1,surface_element_count(bss)
            ele = face_ele(bss, sele)
            faceglobalnodes = face_global_nodes(bss, sele)
            do i = 1,snloc      
              t_crit = 0.00
              globnod = faceglobalnodes(i)
              q_star = 12.0 * ((node_val(bss, globnod) - t_crit / (density * R * g * d))) * sqrt((norm2(node_val(bss, globnod)) / (density * R * g * d)))               
              call set(v_field, globnod, q_star * sqrt(R * g * (d ** 3)))      
            end do
          end do
          deallocate(q_star)
          deallocate(t_crit)
          deallocate(faceglobalnodes) 
    
        end if


	! get sediment bedload field
        !!call get_sediment_item(state, i_field, 'Bedload', bedload_field)        
        	
	! generate surface_mesh for calculation of bedload flux and create surface field
        !!call create_surface_mesh(surface_mesh, surface_node_list, mesh=bedload_field%mesh, name='SurfaceMesh')
        !call allocate(bedload_flux_surface, surface_mesh, 'BedloadFlux')
        !call zero(bedload_flux_surface)       
	
	! For continuous fields we need a global lumped mass. For dg we'll
        ! do the mass inversion on a per face basis inside the element loop.
        !!if(continuity(bedload_flux_surface)>=0) then
        !!  call allocate(masslump, surface_mesh, 'SurfaceMassLump')
        !!  call zero(masslump)
        !!end if

        ! obtain sediment bedload surface ids
        !!surface_id_count=option_shape(trim(bedload_field%option_path)//&
        !!    &"/prognostic/surface_ids")
        !!allocate(surface_ids(surface_id_count(1)))
        !!call get_option(trim(bedload_field%option_path)//"/prognostic/surface_ids", &
        !!    & surface_ids)
	
	! loop through elements in surface field
	!!elements: do i_ele=1, element_count(bedload_flux_surface)

          ! check if element is on prescribed surface
          !!if (.not.any(surface_element_id(bedload_flux, i_ele) == surface_ids)) then
          !!   cycle elements
          !!end if          
          
          !s_ele => ele_nodes(bedload_flux, i_ele)
	  !s_shape => ele_shape(bedload_flux, i_ele)

	  !call transform_facet_to_physical(X, i_ele, detwei)

	  !if(continuity(bedload_flux_surface)>=0) then
	  !  call addto(masslump, s_ele, &
	  !	  sum(shape_shape(s_shape, s_shape, detwei), 1))
	  !else
	    ! In the DG case we will apply the inverse mass locally.
	  !  invmass = inverse(shape_shape(s_shape, s_shape, detwei))
	  !end if	  
	  
	  ! calculate bedload flux          
          ! calculate Meyer-Peter and Muller model
	  !!if (have_option(trim(bedload_flux%option_path)//&
		!!&"/diagnostic/transport_model/meyer_peter_muller")) then

	    !!call zero(bedload_flux)        
	      
	    !!snloc = face_loc(bss, 1)
	    !!allocate(faceglobalnodes(1:snloc))
	    !!do sele=1,surface_element_count(bss)
	      !!ele = face_ele(bss, sele)
	      !!faceglobalnodes = face_global_nodes(bss, sele)
	      !!do i = 1,snloc
		!!globnod = faceglobalnodes(i)
		!!q_star = 8 * ((node_val(bss, globnod) / (density * R * g * d)) - t_crit) ** 1.5               
		!!call set(bedload_flux, globnod, q_star * sqrt((R * g * (d ** 3)) ** 0.5))
	      !!end do
	    !!end do
	    !!deallocate(faceglobalnodes)
	    
	    !if(continuity(bedload_flux_surface)<0) then
	      ! DG case.
	    !  bedload_flux = matmul(invmass, bedload_flux)
	    !end if

	    !call addto(bedload_flux_surface, s_ele, bedload_flux)
	    
	  !!end if          
		    
	  ! calculate Nielsen model
	  !!if (have_option(trim(bedload_flux%option_path)//&
	  !!    &"/diagnostic/transport_model/nielsen")) then

	    !!call zero(bedload_flux)        
	    
	    !!snloc = face_loc(bss, 1)
	    !!allocate(faceglobalnodes(1:snloc))
	    !!do sele=1,surface_element_count(bss)
	      !!ele = face_ele(bss, sele)
	      !!faceglobalnodes = face_global_nodes(bss, sele)
	      !!do i = 1,snloc
		!!globnod = faceglobalnodes(i)
		!!q_star = 12 * ((node_val(bss, globnod) / (density * R * g * d)) - t_crit) * sqrt((node_val(bss, globnod) / (density * R * g * d)))             
	      !!call set(bedload_flux, globnod, q_star * sqrt((R * g * (d ** 3)) ** 0.5))
	      !!end do
	    !!end do
	    !!deallocate(faceglobalnodes)
	    
	    !if(continuity(bedload_flux_surface)<0) then
	      ! DG case.
	    !  bedload_flux = matmul(invmass, bedload_flux)
	    !end if

	    !call addto(bedload_flux_surface, s_ele, bedload_flux)	    
	    
	  !!end if
	
	  ! calculate Van Rijn model	
	  !if (have_option(trim(bedload_flux%option_path)//&
	  !    &"/diagnostic/transport_model/van_rijn")) then

	  !  call zero(bedload_flux)	  
	  !end if          

	!!end do elements

	! For continuous fields we divide by the inverse global lumped mass
	!!if(continuity(bedload_flux_surface)>=0) then
          !!where (masslump%val/=0.0)
            !! masslump%val=1./masslump%val
          !!end where
          !!call scale(bedload_flux_surface, masslump)
          !!call deallocate(masslump)
	!!end if
	
		
	!go to 100	
	! extract viscocity field
	!visc => extract_tensor_field(state, "Viscosity", stat)
	!if (stat /= 0) then
        !  FLExit("A viscosity must be specified to calculate bedload flux")
	!end if        
                
        ! loop over elements in bedload surface
        !elements: do i_ele = 1, element_count(bedload_surface)
        
	  !call transform_facet_to_physical(X, surface_element_list(i_ele), detwei)
	  
	  ! calculate dimensionless particle diameter	  
	  !d_star = d * ((R * g) / (face_val_at_quad(visc, surface_element_list(i_ele), 1, 1)) ** 2) ** 1/3
		  
	  ! calculate Meyer-Peter and Muller model
	  !if (have_option(trim(bedload_flux%option_path)//&
	  !    &"/diagnostic/transport_model/meyer_peter_muller")) then

	    !call zero(bedload_flux)        
	    
	    !snloc = face_loc(bss, 1)
	    !allocate( faceglobalnodes(1:snloc) )
	    !do sele=1,surface_element_count(bss)
		!ele = face_ele(bss, sele)
		!faceglobalnodes = face_global_nodes(bss, sele)
		!do i = 1,snloc
		  !globnod = faceglobalnodes(i)
		  !q_star = 8 * ((node_val(bss, globnod) / (density * R * g * d)) - t_crit) ** 1.5               
		  !call set(bedload_flux, globnod, ((R * g * (d ** 3)) ** 0.5) * q_star * node_val(bss, globnod))
		!end do
	    !end do
	    !deallocate( faceglobalnodes )
	  !end if
	  	  
	  ! calculate Nielsen model
	  !if (have_option(trim(bedload_flux%option_path)//&
	      !&"/diagnostic/transport_model/nielsen")) then

	    !call zero(bedload_flux)        
	    
	    !snloc = face_loc(bss, 1)
	    !allocate( faceglobalnodes(1:snloc) )
	    !do sele=1,surface_element_count(bss)
		!ele = face_ele(bss, sele)
		!faceglobalnodes = face_global_nodes(bss, sele)
		!do i = 1,snloc
		  !globnod = faceglobalnodes(i)
		  !q_star = 12 * ((node_val(bss, globnod) / (density * R * g * d)) - t_crit) * ((node_val(bss, globnod) / (density * R * g * d))) ** 0.5             
		  !call set(bedload_flux, globnod, ((R * g * (d ** 3)) ** 0.5) * q_star * node_val(bss, globnod))
		!end do
	    !end do
	    !deallocate( faceglobalnodes )
	  !end if
	  
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
	   
        !end do elements
        !100 continue

      end do sediment_fields  

  end subroutine calculate_bedload_flux
  
end module bedload_diagnostics
