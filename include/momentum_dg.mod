GFORTRAN module version '10' created from Momentum_DG.F90
MD5:04d4ab932ea35d065f7a42994c8e7d3c -- If you edit this, you'll get what you deserve.

(() () () () () () () () () () () () () () () () () () () () () () ()
() () () ())

()

()

(('mpi_fortran_argv_null' 2 0 0 '') ('petscfortran14' 3 0 0 '') (
'petscfortran15' 4 0 0 '') ('petscfortran16' 5 0 0 '') ('petscfortran2'
6 0 0 '') ('petscfortran20' 7 0 0 '') ('petscfortran4' 8 0 0 '') (
'petscfortran5' 9 0 0 '') ('mpi_fortran_errcodes_ignore' 10 0 0 '') (
'petscfortran9' 11 0 0 '') ('mpi_fortran_argvs_null' 12 0 0 '') (
'petscfortran10' 13 0 0 '') ('mpi_fortran_status_ignore' 14 0 0 '') (
'mpi_fortran_statuses_ignore' 15 0 0 '') ('petscfortran18' 16 0 0 '') (
'mpi_fortran_in_place' 17 0 0 '') ('petscfortran19' 18 0 0 '') (
'mpi_fortran_bottom' 19 0 0 '') ('petscfortran1' 20 0 0 '') (
'petscfortran17' 21 0 0 '') ('petscfortran21' 22 0 0 '') ('petscfortran6'
23 0 0 '') ('petscfortran7' 24 0 0 '') ('petscfortran8' 25 0 0 ''))

()

()

(26 'allocate_big_m_dg' 'momentum_dg' '' 1 ((PROCEDURE UNKNOWN-INTENT
MODULE-PROC DECL UNKNOWN 0 0 SUBROUTINE) (UNKNOWN 0 0 0 0 UNKNOWN ()) 27
0 (28 29 30) () 0 () () () 0 0)
31 'assemble_poisson_rhs_dg' 'momentum_dg' '' 1 ((PROCEDURE
UNKNOWN-INTENT MODULE-PROC DECL UNKNOWN 0 0 SUBROUTINE) (UNKNOWN 0 0 0 0
UNKNOWN ()) 32 0 (33 34 35 36 37 38 39 40) () 0 () () () 0 0)
41 'construct_momentum_dg' 'momentum_dg' '' 1 ((PROCEDURE UNKNOWN-INTENT
MODULE-PROC DECL UNKNOWN 0 0 SUBROUTINE ALWAYS_EXPLICIT) (UNKNOWN 0 0 0
0 UNKNOWN ()) 42 0 (43 44 45 46 47 48 49 50 51 52 53 54 55) () 0 () () ()
0 0)
56 'correct_velocity_dg' 'momentum_dg' '' 1 ((PROCEDURE UNKNOWN-INTENT
MODULE-PROC DECL UNKNOWN 0 0 SUBROUTINE) (UNKNOWN 0 0 0 0 UNKNOWN ()) 57
0 (58 59 60 61) () 0 () () () 0 0)
62 'momentum_dg_check_options' 'momentum_dg' '' 1 ((PROCEDURE
UNKNOWN-INTENT MODULE-PROC DECL UNKNOWN 0 0 SUBROUTINE) (UNKNOWN 0 0 0 0
UNKNOWN ()) 0 0 () () 0 () () () 0 0)
63 'subcycle_momentum_dg' 'momentum_dg' '' 1 ((PROCEDURE UNKNOWN-INTENT
MODULE-PROC DECL UNKNOWN 0 0 SUBROUTINE) (UNKNOWN 0 0 0 0 UNKNOWN ()) 64
0 (65 66 67 68 69 70) () 0 () () () 0 0)
2 'mpi_argv_null' 'mpi_interfaces' '' 1 ((VARIABLE UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION IN_COMMON) (CHARACTER 1 0 0 0
CHARACTER ((CONSTANT (INTEGER 4 0 0 0 INTEGER ()) 0 '1'))) 0 0 () (1 0
EXPLICIT (CONSTANT (INTEGER 4 0 0 0 INTEGER ()) 0 '1') (CONSTANT (
INTEGER 4 0 0 0 INTEGER ()) 0 '1')) 0 () () () 0 0)
3 'petsc_pi' 'petscsysdef' '' 1 ((VARIABLE UNKNOWN-INTENT UNKNOWN-PROC
UNKNOWN UNKNOWN 0 0 IN_COMMON) (REAL 8 0 0 0 REAL ()) 0 0 () () 0 () ()
() 0 0)
4 'petsc_max_real' 'petscsysdef' '' 1 ((VARIABLE UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 IN_COMMON) (REAL 8 0 0 0 REAL ()) 0 0 ()
() 0 () () () 0 0)
5 'petsc_min_real' 'petscsysdef' '' 1 ((VARIABLE UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 IN_COMMON) (REAL 8 0 0 0 REAL ()) 0 0 ()
() 0 () () () 0 0)
6 'petsc_null_integer' 'petscsysdef' '' 1 ((VARIABLE UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 IN_COMMON) (INTEGER 4 0 0 0 INTEGER ())
0 0 () () 0 () () () 0 0)
7 'petsc_infinity' 'petscsysdef' '' 1 ((VARIABLE UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 IN_COMMON) (REAL 8 0 0 0 REAL ()) 0 0 ()
() 0 () () () 0 0)
8 'petsc_null_scalar' 'petscsysdef' '' 1 ((VARIABLE UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 IN_COMMON) (REAL 8 0 0 0 REAL ()) 0 0 ()
() 0 () () () 0 0)
9 'petsc_null_double' 'petscsysdef' '' 1 ((VARIABLE UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 IN_COMMON) (REAL 8 0 0 0 REAL ()) 0 0 ()
() 0 () () () 0 0)
10 'mpi_errcodes_ignore' 'mpi_interfaces' '' 1 ((VARIABLE UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION IN_COMMON) (INTEGER 4 0 0 0
INTEGER ()) 0 0 () (1 0 EXPLICIT (CONSTANT (INTEGER 4 0 0 0 INTEGER ())
0 '1') (CONSTANT (INTEGER 4 0 0 0 INTEGER ()) 0 '1')) 0 () () () 0 0)
11 'petsc_comm_world' 'petscsysdef' '' 1 ((VARIABLE UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 IN_COMMON) (INTEGER 4 0 0 0 INTEGER ())
0 0 () () 0 () () () 0 0)
12 'mpi_argvs_null' 'mpi_interfaces' '' 1 ((VARIABLE UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 IN_COMMON) (REAL 8 0 0 0 REAL ()) 0 0 ()
() 0 () () () 0 0)
13 'petsc_comm_self' 'petscsysdef' '' 1 ((VARIABLE UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 IN_COMMON) (INTEGER 4 0 0 0 INTEGER ())
0 0 () () 0 () () () 0 0)
14 'mpi_status_ignore' 'mpi_interfaces' '' 1 ((VARIABLE UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION IN_COMMON) (INTEGER 4 0 0 0
INTEGER ()) 0 0 () (1 0 EXPLICIT (CONSTANT (INTEGER 4 0 0 0 INTEGER ())
0 '1') (CONSTANT (INTEGER 4 0 0 0 INTEGER ()) 0 '6')) 0 () () () 0 0)
15 'mpi_statuses_ignore' 'mpi_interfaces' '' 1 ((VARIABLE UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 IN_COMMON) (REAL 8 0 0 0 REAL ()) 0 0 ()
() 0 () () () 0 0)
16 'petsc_sqrt_machine_epsilon' 'petscsysdef' '' 1 ((VARIABLE
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 IN_COMMON) (REAL 8 0 0 0
REAL ()) 0 0 () () 0 () () () 0 0)
17 'mpi_in_place' 'mpi_interfaces' '' 1 ((VARIABLE UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 IN_COMMON) (INTEGER 4 0 0 0 INTEGER ())
0 0 () () 0 () () () 0 0)
18 'petsc_small' 'petscsysdef' '' 1 ((VARIABLE UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 IN_COMMON) (REAL 8 0 0 0 REAL ()) 0 0 ()
() 0 () () () 0 0)
19 'mpi_bottom' 'mpi_interfaces' '' 1 ((VARIABLE UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 IN_COMMON) (INTEGER 4 0 0 0 INTEGER ())
0 0 () () 0 () () () 0 0)
20 'petsc_null_character' 'petscsysdef' '' 1 ((VARIABLE UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN IMPLICIT-SAVE 0 0 IN_COMMON) (CHARACTER 1 0 0 0
CHARACTER ((CONSTANT (INTEGER 4 0 0 0 INTEGER ()) 0 '80'))) 0 0 () () 0
() () () 0 0)
21 'petsc_machine_epsilon' 'petscsysdef' '' 1 ((VARIABLE UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 IN_COMMON) (REAL 8 0 0 0 REAL ()) 0 0 ()
() 0 () () () 0 0)
22 'petsc_ninfinity' 'petscsysdef' '' 1 ((VARIABLE UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 IN_COMMON) (REAL 8 0 0 0 REAL ()) 0 0 ()
() 0 () () () 0 0)
23 'petsc_null_real' 'petscsysdef' '' 1 ((VARIABLE UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 IN_COMMON) (REAL 8 0 0 0 REAL ()) 0 0 ()
() 0 () () () 0 0)
24 'petsc_null_bool' 'petscsysdef' '' 1 ((VARIABLE UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 IN_COMMON) (LOGICAL 4 0 0 0 LOGICAL ())
0 0 () () 0 () () () 0 0)
25 'petsc_null_object' 'petscsysdef' '' 1 ((VARIABLE UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 IN_COMMON) (INTEGER 8 0 0 0 INTEGER ())
0 0 () () 0 () () () 0 0)
28 'state' '' '' 27 ((VARIABLE UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN
UNKNOWN 0 0 DUMMY) (DERIVED 71 0 0 0 DERIVED ()) 0 0 () () 0 () () () 0
0)
29 'big_m' '' '' 27 ((VARIABLE OUT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0
DUMMY) (DERIVED 72 0 0 0 DERIVED ()) 0 0 () () 0 () () () 0 0)
30 'u' '' '' 27 ((VARIABLE IN UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DUMMY) (
DERIVED 73 0 0 0 DERIVED ()) 0 0 () () 0 () () () 0 0)
33 'poisson_rhs' '' '' 32 ((VARIABLE INOUT UNKNOWN-PROC UNKNOWN UNKNOWN
0 0 DUMMY) (DERIVED 74 0 0 0 DERIVED ()) 0 0 () () 0 () () () 0 0)
34 'ctp_m' '' '' 32 ((VARIABLE IN UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DUMMY)
(DERIVED 75 0 0 0 DERIVED ()) 0 0 () () 0 () () () 0 0)
35 'inverse_mass' '' '' 32 ((VARIABLE IN UNKNOWN-PROC UNKNOWN UNKNOWN 0
0 DUMMY) (DERIVED 75 0 0 0 DERIVED ()) 0 0 () () 0 () () () 0 0)
36 'mom_rhs' '' '' 32 ((VARIABLE INOUT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0
DUMMY) (DERIVED 73 0 0 0 DERIVED ()) 0 0 () () 0 () () () 0 0)
37 'ct_rhs' '' '' 32 ((VARIABLE INOUT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0
DUMMY) (DERIVED 74 0 0 0 DERIVED ()) 0 0 () () 0 () () () 0 0)
38 'velocity' '' '' 32 ((VARIABLE INOUT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0
DUMMY) (DERIVED 73 0 0 0 DERIVED ()) 0 0 () () 0 () () () 0 0)
39 'dt' '' '' 32 ((VARIABLE IN UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DUMMY) (
REAL 8 0 0 0 REAL ()) 0 0 () () 0 () () () 0 0)
40 'theta_pg' '' '' 32 ((VARIABLE IN UNKNOWN-PROC UNKNOWN UNKNOWN 0 0
DUMMY) (REAL 8 0 0 0 REAL ()) 0 0 () () 0 () () () 0 0)
43 'u' '' '' 42 ((VARIABLE INOUT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DUMMY)
(DERIVED 73 0 0 0 DERIVED ()) 0 0 () () 0 () () () 0 0)
44 'p' '' '' 42 ((VARIABLE INOUT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DUMMY)
(DERIVED 74 0 0 0 DERIVED ()) 0 0 () () 0 () () () 0 0)
45 'rho' '' '' 42 ((VARIABLE INOUT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0
DUMMY) (DERIVED 74 0 0 0 DERIVED ()) 0 0 () () 0 () () () 0 0)
46 'x' '' '' 42 ((VARIABLE INOUT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DUMMY)
(DERIVED 73 0 0 0 DERIVED ()) 0 0 () () 0 () () () 0 0)
47 'big_m' '' '' 42 ((VARIABLE INOUT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0
DUMMY) (DERIVED 72 0 0 0 DERIVED ()) 0 0 () () 0 () () () 0 0)
48 'rhs' '' '' 42 ((VARIABLE INOUT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0
DUMMY) (DERIVED 73 0 0 0 DERIVED ()) 0 0 () () 0 () () () 0 0)
49 'state' '' '' 42 ((VARIABLE UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN
UNKNOWN 0 0 DUMMY) (DERIVED 71 0 0 0 DERIVED ()) 0 0 () () 0 () () () 0
0)
50 'inverse_masslump' '' '' 42 ((VARIABLE INOUT UNKNOWN-PROC UNKNOWN
UNKNOWN 0 0 OPTIONAL DUMMY) (DERIVED 73 0 0 0 DERIVED ()) 0 0 () () 0 ()
() () 0 0)
51 'inverse_mass' '' '' 42 ((VARIABLE INOUT UNKNOWN-PROC UNKNOWN UNKNOWN
0 0 OPTIONAL DUMMY) (DERIVED 75 0 0 0 DERIVED ()) 0 0 () () 0 () () () 0
0)
52 'mass' '' '' 42 ((VARIABLE INOUT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0
OPTIONAL DUMMY) (DERIVED 76 0 0 0 DERIVED ()) 0 0 () () 0 () () () 0 0)
53 'include_pressure_bcs' '' '' 42 ((VARIABLE IN UNKNOWN-PROC UNKNOWN
UNKNOWN 0 0 OPTIONAL DUMMY) (LOGICAL 4 0 0 0 LOGICAL ()) 0 0 () () 0 ()
() () 0 0)
54 'subcycle_m' '' '' 42 ((VARIABLE INOUT UNKNOWN-PROC UNKNOWN UNKNOWN 0
0 OPTIONAL DUMMY) (DERIVED 75 0 0 0 DERIVED ()) 0 0 () () 0 () () () 0 0)
55 'subcycle_rhs' '' '' 42 ((VARIABLE INOUT UNKNOWN-PROC UNKNOWN UNKNOWN
0 0 OPTIONAL DUMMY) (DERIVED 73 0 0 0 DERIVED ()) 0 0 () () 0 () () () 0
0)
58 'u' '' '' 57 ((VARIABLE INOUT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DUMMY)
(DERIVED 73 0 0 0 DERIVED ()) 0 0 () () 0 () () () 0 0)
59 'inverse_mass' '' '' 57 ((VARIABLE IN UNKNOWN-PROC UNKNOWN UNKNOWN 0
0 DUMMY) (DERIVED 75 0 0 0 DERIVED ()) 0 0 () () 0 () () () 0 0)
60 'ct' '' '' 57 ((VARIABLE IN UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DUMMY) (
DERIVED 75 0 0 0 DERIVED ()) 0 0 () () 0 () () () 0 0)
61 'delta_p' '' '' 57 ((VARIABLE IN UNKNOWN-PROC UNKNOWN UNKNOWN 0 0
DUMMY) (DERIVED 74 0 0 0 DERIVED ()) 0 0 () () 0 () () () 0 0)
65 'u' '' '' 64 ((VARIABLE INOUT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DUMMY)
(DERIVED 73 0 0 0 DERIVED ()) 0 0 () () 0 () () () 0 0)
66 'mom_rhs' '' '' 64 ((VARIABLE INOUT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0
DUMMY) (DERIVED 73 0 0 0 DERIVED ()) 0 0 () () 0 () () () 0 0)
67 'subcycle_m' '' '' 64 ((VARIABLE IN UNKNOWN-PROC UNKNOWN UNKNOWN 0 0
DUMMY) (DERIVED 75 0 0 0 DERIVED ()) 0 0 () () 0 () () () 0 0)
68 'subcycle_rhs' '' '' 64 ((VARIABLE IN UNKNOWN-PROC UNKNOWN UNKNOWN 0
0 DUMMY) (DERIVED 73 0 0 0 DERIVED ()) 0 0 () () 0 () () () 0 0)
69 'inverse_mass' '' '' 64 ((VARIABLE IN UNKNOWN-PROC UNKNOWN UNKNOWN 0
0 DUMMY) (DERIVED 75 0 0 0 DERIVED ()) 0 0 () () 0 () () () 0 0)
70 'state' '' '' 64 ((VARIABLE INOUT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0
DUMMY) (DERIVED 71 0 0 0 DERIVED ()) 0 0 () () 0 () () () 0 0)
71 'State_type' 'state_module' '' 1 ((DERIVED UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER_COMP) (UNKNOWN 0 0 0 0 UNKNOWN
()) 0 0 () () 0 ((77 'name' (CHARACTER 1 0 0 0 CHARACTER ((CONSTANT (
INTEGER 4 0 0 0 INTEGER ()) 0 '101'))) () (UNKNOWN-FL UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS (CONSTANT (CHARACTER 1
0 0 0 CHARACTER (())) 0 101
'                                                                                                     '))
(78 'option_path' (CHARACTER 1 0 0 0 CHARACTER ((CONSTANT (INTEGER 4 0 0
0 INTEGER ()) 0 '8192'))) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC
UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS (CONSTANT (CHARACTER 1 0 0 0
CHARACTER (())) 0 8192
'/uninitialised_path/                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            '))
(79 'vector_names' (CHARACTER 1 0 0 0 CHARACTER ((CONSTANT (INTEGER 4 0
0 0 INTEGER ()) 0 '101'))) (1 0 DEFERRED () ()) (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION POINTER)
UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (80 'scalar_names'
(CHARACTER 1 0 0 0 CHARACTER ((CONSTANT (INTEGER 4 0 0 0 INTEGER ()) 0
'101'))) (1 0 DEFERRED () ()) (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC
UNKNOWN UNKNOWN 0 0 DIMENSION POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0
0 0 UNKNOWN ()) 0)) (81 'mesh_names' (CHARACTER 1 0 0 0 CHARACTER ((
CONSTANT (INTEGER 4 0 0 0 INTEGER ()) 0 '101'))) (1 0 DEFERRED () ()) (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION
POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (82
'halo_names' (CHARACTER 1 0 0 0 CHARACTER ((CONSTANT (INTEGER 4 0 0 0
INTEGER ()) 0 '101'))) (1 0 DEFERRED () ()) (UNKNOWN-FL UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION POINTER) UNKNOWN-ACCESS (
NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (83 'tensor_names' (CHARACTER 1 0
0 0 CHARACTER ((CONSTANT (INTEGER 4 0 0 0 INTEGER ()) 0 '101'))) (1 0
DEFERRED () ()) (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN
0 0 DIMENSION POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ())
0)) (84 'csr_sparsity_names' (CHARACTER 1 0 0 0 CHARACTER ((CONSTANT (
INTEGER 4 0 0 0 INTEGER ()) 0 '101'))) (1 0 DEFERRED () ()) (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION POINTER)
UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (85
'csr_matrix_names' (CHARACTER 1 0 0 0 CHARACTER ((CONSTANT (INTEGER 4 0
0 0 INTEGER ()) 0 '101'))) (1 0 DEFERRED () ()) (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION POINTER)
UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (86
'block_csr_matrix_names' (CHARACTER 1 0 0 0 CHARACTER ((CONSTANT (
INTEGER 4 0 0 0 INTEGER ()) 0 '101'))) (1 0 DEFERRED () ()) (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION POINTER)
UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (87
'petsc_csr_matrix_names' (CHARACTER 1 0 0 0 CHARACTER ((CONSTANT (
INTEGER 4 0 0 0 INTEGER ()) 0 '101'))) (1 0 DEFERRED () ()) (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION POINTER)
UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (88 'vector_fields'
(DERIVED 89 0 0 0 DERIVED ()) (1 0 DEFERRED () ()) (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION POINTER)
UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (90 'tensor_fields'
(DERIVED 91 0 0 0 DERIVED ()) (1 0 DEFERRED () ()) (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION POINTER)
UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (92 'scalar_fields'
(DERIVED 93 0 0 0 DERIVED ()) (1 0 DEFERRED () ()) (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION POINTER)
UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (94 'meshes' (
DERIVED 95 0 0 0 DERIVED ()) (1 0 DEFERRED () ()) (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION POINTER)
UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (96 'halos' (
DERIVED 97 0 0 0 DERIVED ()) (1 0 DEFERRED () ()) (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION POINTER)
UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (98 'csr_sparsities'
(DERIVED 99 0 0 0 DERIVED ()) (1 0 DEFERRED () ()) (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION POINTER)
UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (100 'csr_matrices'
(DERIVED 101 0 0 0 DERIVED ()) (1 0 DEFERRED () ()) (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION POINTER)
UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (102
'block_csr_matrices' (DERIVED 103 0 0 0 DERIVED ()) (1 0 DEFERRED () ())
(UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION
POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (104
'petsc_csr_matrices' (DERIVED 105 0 0 0 DERIVED ()) (1 0 DEFERRED () ())
(UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION
POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0))) PUBLIC (
() () () ()) () 0 0 7575341)
72 'Petsc_csr_matrix' 'sparse_tools_petsc' '' 1 ((DERIVED UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER_COMP) (UNKNOWN 0 0 0 0 UNKNOWN
()) 0 0 () () 0 ((106 'm' (INTEGER 8 0 0 0 INTEGER ()) () (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS ()) (
107 'row_numbering' (DERIVED 108 0 0 0 DERIVED ()) () (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS (
STRUCTURE (DERIVED 108 0 0 0 DERIVED ()) 0 (((NULL (UNKNOWN 0 0 0 0
UNKNOWN ()) 0) ()) (() ()) (() ()) (() ()) (() ()) ((NULL (UNKNOWN 0 0 0
0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((NULL (
UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((CONSTANT (CHARACTER 1 0 0 0
CHARACTER (())) 0 101
'                                                                                                     ')
())) ())) (109 'column_numbering' (DERIVED 108 0 0 0 DERIVED ()) () (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0)
UNKNOWN-ACCESS (STRUCTURE (DERIVED 108 0 0 0 DERIVED ()) 0 (((NULL (
UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) (() ()) (() ()) (() ()) (() ()) ((
NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN
()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((CONSTANT (
CHARACTER 1 0 0 0 CHARACTER (())) 0 101
'                                                                                                     ')
())) ())) (110 'row_halo' (DERIVED 111 0 0 0 DERIVED ()) () (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER) UNKNOWN-ACCESS
(NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (112 'column_halo' (DERIVED 111 0
0 0 DERIVED ()) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN
UNKNOWN 0 0 POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0))
(113 'refcount' (DERIVED 114 0 0 0 DERIVED ()) () (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER) UNKNOWN-ACCESS
(NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (115 'name' (CHARACTER 1 0 0 0
CHARACTER ((CONSTANT (INTEGER 4 0 0 0 INTEGER ()) 0 '101'))) () (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0)
UNKNOWN-ACCESS (CONSTANT (CHARACTER 1 0 0 0 CHARACTER (())) 0 101
'                                                                                                     '))
(116 'is_assembled' (LOGICAL 4 0 0 0 LOGICAL ()) () (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS (
CONSTANT (LOGICAL 4 0 0 0 LOGICAL ()) 0 0))) PUBLIC (() () () ()) () 0 0
75554753)
73 'Vector_field' 'fields_data_types' '' 1 ((DERIVED UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER_COMP) (UNKNOWN 0 0 0 0 UNKNOWN
()) 0 0 () () 0 ((117 'val' (REAL 8 0 0 0 REAL ()) (2 0 DEFERRED () () ()
()) (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0
DIMENSION POINTER) UNKNOWN-ACCESS ()) (118 'wrapped' (LOGICAL 4 0 0 0
LOGICAL ()) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0
0) UNKNOWN-ACCESS (CONSTANT (LOGICAL 4 0 0 0 LOGICAL ()) 0 1)) (119
'field_type' (INTEGER 4 0 0 0 INTEGER ()) () (UNKNOWN-FL UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS (CONSTANT (INTEGER 4 0
0 0 INTEGER ()) 0 '0')) (120 'bc' (DERIVED 121 0 0 0 DERIVED ()) () (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER)
UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (122 'name' (
CHARACTER 1 0 0 0 CHARACTER ((CONSTANT (INTEGER 4 0 0 0 INTEGER ()) 0
'101'))) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0)
UNKNOWN-ACCESS ()) (123 'dim' (INTEGER 4 0 0 0 INTEGER ()) () (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0)
UNKNOWN-ACCESS ()) (124 'option_path' (CHARACTER 1 0 0 0 CHARACTER ((
CONSTANT (INTEGER 4 0 0 0 INTEGER ()) 0 '8192'))) () (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS (
CONSTANT (CHARACTER 1 0 0 0 CHARACTER (())) 0 8192
'/uninitialised_path/                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            '))
(125 'mesh' (DERIVED 126 0 0 0 DERIVED ()) () (UNKNOWN-FL UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS (STRUCTURE (DERIVED 126
0 0 0 DERIVED ()) 0 ((() ()) ((CONSTANT (LOGICAL 4 0 0 0 LOGICAL ()) 0 1)
()) ((STRUCTURE (DERIVED 127 0 0 0 DERIVED ()) 0 ((() ()) (() ()) (() ())
(() ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0
0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((NULL (
UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)
()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0 0
UNKNOWN ()) 0) ()) ((STRUCTURE (DERIVED 128 0 0 0 DERIVED ()) 0 ((() ())
(() ()) (() ()) (() ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((
NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) (() ()) ((NULL (UNKNOWN 0 0 0 0
UNKNOWN ()) 0) ()) (() ())) ()) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ())
0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0
0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) (() ()))
()) ()) (() ()) (() ()) (() ()) ((CONSTANT (CHARACTER 1 0 0 0 CHARACTER
(())) 0 8192
'/uninitialised_path/                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ')
()) ((CONSTANT (INTEGER 4 0 0 0 INTEGER ()) 0 '0') ()) ((NULL (UNKNOWN 0
0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((
NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN
()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0
0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((
NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN
()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((CONSTANT (
LOGICAL 4 0 0 0 LOGICAL ()) 0 0) ())) ())) (129 'refcount' (DERIVED 114
0 0 0 DERIVED ()) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN
UNKNOWN 0 0 POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0))
(130 'aliased' (LOGICAL 4 0 0 0 LOGICAL ()) () (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS (
CONSTANT (LOGICAL 4 0 0 0 LOGICAL ()) 0 0)) (131 'picker' (DERIVED 132 0
0 0 DERIVED ()) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN
UNKNOWN 0 0 POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)))
PUBLIC (() () () ()) () 0 0 43598963)
74 'Scalar_field' 'fields_data_types' '' 1 ((DERIVED UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER_COMP) (UNKNOWN 0 0 0 0 UNKNOWN
()) 0 0 () () 0 ((133 'val' (REAL 8 0 0 0 REAL ()) (1 0 DEFERRED () ())
(UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION
POINTER) UNKNOWN-ACCESS ()) (134 'val_stride' (INTEGER 4 0 0 0 INTEGER ())
() (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0)
UNKNOWN-ACCESS (CONSTANT (INTEGER 4 0 0 0 INTEGER ()) 0 '1')) (135
'wrapped' (LOGICAL 4 0 0 0 LOGICAL ()) () (UNKNOWN-FL UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS (CONSTANT (LOGICAL 4 0
0 0 LOGICAL ()) 0 1)) (136 'field_type' (INTEGER 4 0 0 0 INTEGER ()) ()
(UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0)
UNKNOWN-ACCESS (CONSTANT (INTEGER 4 0 0 0 INTEGER ()) 0 '0')) (137 'bc'
(DERIVED 138 0 0 0 DERIVED ()) () (UNKNOWN-FL UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN
0 0 0 0 UNKNOWN ()) 0)) (139 'name' (CHARACTER 1 0 0 0 CHARACTER ((
CONSTANT (INTEGER 4 0 0 0 INTEGER ()) 0 '101'))) () (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS ()) (
140 'option_path' (CHARACTER 1 0 0 0 CHARACTER ((CONSTANT (INTEGER 4 0 0
0 INTEGER ()) 0 '8192'))) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC
UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS (CONSTANT (CHARACTER 1 0 0 0
CHARACTER (())) 0 8192
'/uninitialised_path/                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            '))
(141 'mesh' (DERIVED 126 0 0 0 DERIVED ()) () (UNKNOWN-FL UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS (STRUCTURE (DERIVED 126
0 0 0 DERIVED ()) 0 ((() ()) ((CONSTANT (LOGICAL 4 0 0 0 LOGICAL ()) 0 1)
()) ((STRUCTURE (DERIVED 127 0 0 0 DERIVED ()) 0 ((() ()) (() ()) (() ())
(() ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0
0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((NULL (
UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)
()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0 0
UNKNOWN ()) 0) ()) ((STRUCTURE (DERIVED 128 0 0 0 DERIVED ()) 0 ((() ())
(() ()) (() ()) (() ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((
NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) (() ()) ((NULL (UNKNOWN 0 0 0 0
UNKNOWN ()) 0) ()) (() ())) ()) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ())
0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0
0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) (() ()))
()) ()) (() ()) (() ()) (() ()) ((CONSTANT (CHARACTER 1 0 0 0 CHARACTER
(())) 0 8192
'/uninitialised_path/                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ')
()) ((CONSTANT (INTEGER 4 0 0 0 INTEGER ()) 0 '0') ()) ((NULL (UNKNOWN 0
0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((
NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN
()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0
0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((
NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN
()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((CONSTANT (
LOGICAL 4 0 0 0 LOGICAL ()) 0 0) ())) ())) (142 'refcount' (DERIVED 114
0 0 0 DERIVED ()) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN
UNKNOWN 0 0 POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0))
(143 'aliased' (LOGICAL 4 0 0 0 LOGICAL ()) () (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS (
CONSTANT (LOGICAL 4 0 0 0 LOGICAL ()) 0 0)) (144 'py_locweight' (REAL 8
0 0 0 REAL ()) (2 0 DEFERRED () () () ()) (UNKNOWN-FL UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION POINTER) UNKNOWN-ACCESS (
NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (145 'py_func' (CHARACTER 1 0 0 0
CHARACTER ((CONSTANT (INTEGER 4 0 0 0 INTEGER ()) 0 '8192'))) () (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0)
UNKNOWN-ACCESS ()) (146 'py_positions' (DERIVED 73 0 0 0 DERIVED ()) ()
(UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER)
UNKNOWN-ACCESS ()) (147 'py_positions_same_mesh' (LOGICAL 4 0 0 0
LOGICAL ()) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0
0) UNKNOWN-ACCESS ()) (148 'py_dim' (INTEGER 4 0 0 0 INTEGER ()) () (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0)
UNKNOWN-ACCESS ()) (149 'py_positions_shape' (DERIVED 127 0 0 0 DERIVED
()) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0
POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0))) PUBLIC (
() () () ()) () 0 0 64912956)
75 'Block_csr_matrix' 'sparse_tools' '' 1 ((DERIVED UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER_COMP) (UNKNOWN 0 0 0 0 UNKNOWN
()) 0 0 () () 0 ((150 'sparsity' (DERIVED 151 0 0 0 DERIVED ()) () (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0)
UNKNOWN-ACCESS (STRUCTURE (DERIVED 151 0 0 0 DERIVED ()) 0 (((NULL (
UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)
()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) (() ()) ((NULL (UNKNOWN 0
0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((
NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((CONSTANT (CHARACTER 1 0 0 0
CHARACTER (())) 0 101
'                                                                                                     ')
()) ((CONSTANT (LOGICAL 4 0 0 0 LOGICAL ()) 0 0) ()) ((CONSTANT (
LOGICAL 4 0 0 0 LOGICAL ()) 0 0) ())) ())) (152 'val' (DERIVED 153 0 0 0
DERIVED ()) (2 0 DEFERRED () () () ()) (UNKNOWN-FL UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION POINTER) UNKNOWN-ACCESS (
NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (154 'contiguous_val' (REAL 8 0 0
0 REAL ()) (1 0 DEFERRED () ()) (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC
UNKNOWN UNKNOWN 0 0 DIMENSION POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0
0 0 UNKNOWN ()) 0)) (155 'ival' (DERIVED 156 0 0 0 DERIVED ()) (2 0
DEFERRED () () () ()) (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN
UNKNOWN 0 0 DIMENSION POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0
UNKNOWN ()) 0)) (157 'blocks' (INTEGER 4 0 0 0 INTEGER ()) (1 0 EXPLICIT
(CONSTANT (INTEGER 4 0 0 0 INTEGER ()) 0 '1') (CONSTANT (INTEGER 4 0 0 0
INTEGER ()) 0 '2')) (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN
UNKNOWN 0 0 DIMENSION) UNKNOWN-ACCESS (ARRAY (INTEGER 4 0 0 0 INTEGER ())
1 (((CONSTANT (INTEGER 4 0 0 0 INTEGER ()) 0 '0') ()) ((CONSTANT (
INTEGER 4 0 0 0 INTEGER ()) 0 '0') ())) ('2'))) (158 'clone' (LOGICAL 4
0 0 0 LOGICAL ()) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN
UNKNOWN 0 0) UNKNOWN-ACCESS (CONSTANT (LOGICAL 4 0 0 0 LOGICAL ()) 0 0))
(159 'external_val' (LOGICAL 4 0 0 0 LOGICAL ()) () (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS (
CONSTANT (LOGICAL 4 0 0 0 LOGICAL ()) 0 0)) (160 'columns' (INTEGER 4 0
0 0 INTEGER ()) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN
UNKNOWN 0 0) UNKNOWN-ACCESS ()) (161 'refcount' (DERIVED 114 0 0 0
DERIVED ()) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0
0 POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (162
'name' (CHARACTER 1 0 0 0 CHARACTER ((CONSTANT (INTEGER 4 0 0 0 INTEGER
()) 0 '101'))) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN
UNKNOWN 0 0) UNKNOWN-ACCESS (CONSTANT (CHARACTER 1 0 0 0 CHARACTER (()))
0 101
'                                                                                                     '))
(163 'diagonal' (LOGICAL 4 0 0 0 LOGICAL ()) () (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS (
CONSTANT (LOGICAL 4 0 0 0 LOGICAL ()) 0 0)) (164 'equal_diagonal_blocks'
(LOGICAL 4 0 0 0 LOGICAL ()) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC
UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS (CONSTANT (LOGICAL 4 0 0 0 LOGICAL ())
0 0)) (165 'ksp' (INTEGER 8 0 0 0 INTEGER ()) () (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER) UNKNOWN-ACCESS
(NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0))) PUBLIC (() () () ()) () 0 0
61921235)
76 'Csr_matrix' 'sparse_tools' '' 1 ((DERIVED UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER_COMP) (UNKNOWN 0 0 0 0 UNKNOWN
()) 0 0 () () 0 ((166 'sparsity' (DERIVED 151 0 0 0 DERIVED ()) () (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0)
UNKNOWN-ACCESS (STRUCTURE (DERIVED 151 0 0 0 DERIVED ()) 0 (((NULL (
UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)
()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) (() ()) ((NULL (UNKNOWN 0
0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((
NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((CONSTANT (CHARACTER 1 0 0 0
CHARACTER (())) 0 101
'                                                                                                     ')
()) ((CONSTANT (LOGICAL 4 0 0 0 LOGICAL ()) 0 0) ()) ((CONSTANT (
LOGICAL 4 0 0 0 LOGICAL ()) 0 0) ())) ())) (167 'val' (REAL 8 0 0 0 REAL
()) (1 0 DEFERRED () ()) (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN
UNKNOWN 0 0 DIMENSION POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0
UNKNOWN ()) 0)) (168 'ival' (INTEGER 4 0 0 0 INTEGER ()) (1 0 DEFERRED ()
()) (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0
DIMENSION POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0))
(169 'clone' (LOGICAL 4 0 0 0 LOGICAL ()) () (UNKNOWN-FL UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS (CONSTANT (LOGICAL 4 0
0 0 LOGICAL ()) 0 0)) (170 'external_val' (LOGICAL 4 0 0 0 LOGICAL ()) ()
(UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0)
UNKNOWN-ACCESS (CONSTANT (LOGICAL 4 0 0 0 LOGICAL ()) 0 0)) (171
'inactive' (DERIVED 172 0 0 0 DERIVED ()) () (UNKNOWN-FL UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER) UNKNOWN-ACCESS ()) (173 'ksp'
(INTEGER 8 0 0 0 INTEGER ()) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC
UNKNOWN UNKNOWN 0 0 POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0
UNKNOWN ()) 0)) (174 'refcount' (DERIVED 114 0 0 0 DERIVED ()) () (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER)
UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (175 'name' (
CHARACTER 1 0 0 0 CHARACTER ((CONSTANT (INTEGER 4 0 0 0 INTEGER ()) 0
'101'))) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0)
UNKNOWN-ACCESS (CONSTANT (CHARACTER 1 0 0 0 CHARACTER (())) 0 101
'                                                                                                     ')))
PUBLIC (() () () ()) () 0 0 66371681)
89 'Vector_field_pointer' 'fields_data_types' '' 1 ((DERIVED
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER_COMP) (UNKNOWN 0
0 0 0 UNKNOWN ()) 0 0 () () 0 ((176 'ptr' (DERIVED 73 0 0 0 DERIVED ())
() (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER)
UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0))) PUBLIC (() () ()
()) () 0 0 74448721)
91 'Tensor_field_pointer' 'fields_data_types' '' 1 ((DERIVED
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER_COMP) (UNKNOWN 0
0 0 0 UNKNOWN ()) 0 0 () () 0 ((177 'ptr' (DERIVED 178 0 0 0 DERIVED ())
() (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER)
UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0))) PUBLIC (() () ()
()) () 0 0 16722823)
93 'Scalar_field_pointer' 'fields_data_types' '' 1 ((DERIVED
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER_COMP) (UNKNOWN 0
0 0 0 UNKNOWN ()) 0 0 () () 0 ((179 'ptr' (DERIVED 74 0 0 0 DERIVED ())
() (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER)
UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0))) PUBLIC (() () ()
()) () 0 0 54828570)
95 'Mesh_pointer' 'fields_data_types' '' 1 ((DERIVED UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER_COMP) (UNKNOWN 0 0 0 0 UNKNOWN
()) 0 0 () () 0 ((180 'ptr' (DERIVED 126 0 0 0 DERIVED ()) () (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER)
UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0))) PUBLIC (() () ()
()) () 0 0 65432384)
97 'Halo_pointer' 'halo_data_types' '' 1 ((DERIVED UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER_COMP) (UNKNOWN 0 0 0 0 UNKNOWN
()) 0 0 () () 0 ((181 'ptr' (DERIVED 111 0 0 0 DERIVED ()) () (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER)
UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0))) PUBLIC (() () ()
()) () 0 0 72023282)
99 'Csr_sparsity_pointer' 'sparse_tools' '' 1 ((DERIVED UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER_COMP) (UNKNOWN 0 0 0 0 UNKNOWN
()) 0 0 () () 0 ((182 'ptr' (DERIVED 151 0 0 0 DERIVED ()) () (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER)
UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0))) PUBLIC (() () ()
()) () 0 0 9687815)
101 'Csr_matrix_pointer' 'sparse_tools' '' 1 ((DERIVED UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER_COMP) (UNKNOWN 0 0 0 0 UNKNOWN
()) 0 0 () () 0 ((183 'ptr' (DERIVED 76 0 0 0 DERIVED ()) () (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER)
UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0))) PUBLIC (() () ()
()) () 0 0 82770239)
103 'Block_csr_matrix_pointer' 'sparse_tools' '' 1 ((DERIVED
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER_COMP) (UNKNOWN 0
0 0 0 UNKNOWN ()) 0 0 () () 0 ((184 'ptr' (DERIVED 75 0 0 0 DERIVED ())
() (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER)
UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0))) PUBLIC (() () ()
()) () 0 0 83606449)
105 'Petsc_csr_matrix_pointer' 'sparse_tools_petsc' '' 1 ((DERIVED
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER_COMP) (UNKNOWN 0
0 0 0 UNKNOWN ()) 0 0 () () 0 ((185 'ptr' (DERIVED 72 0 0 0 DERIVED ())
() (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER)
UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0))) PUBLIC (() () ()
()) () 0 0 85445535)
108 'Petsc_numbering_type' 'petsc_tools' '' 1 ((DERIVED UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER_COMP) (UNKNOWN 0 0 0 0 UNKNOWN
()) 0 0 () () 0 ((186 'halo' (DERIVED 111 0 0 0 DERIVED ()) () (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER)
UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (187 'nprivatenodes'
(INTEGER 4 0 0 0 INTEGER ()) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC
UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS ()) (188 'universal_length' (
INTEGER 4 0 0 0 INTEGER ()) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC
UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS ()) (189 'offset' (INTEGER 4 0 0 0
INTEGER ()) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0
0) UNKNOWN-ACCESS ()) (190 'gnn2unn' (INTEGER 4 0 0 0 INTEGER ()) (2 0
DEFERRED () () () ()) (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN
UNKNOWN 0 0 DIMENSION POINTER) UNKNOWN-ACCESS ()) (191 'ghost_nodes' (
INTEGER 4 0 0 0 INTEGER ()) (1 0 DEFERRED () ()) (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION POINTER)
UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (192 'ghost2unn' (
INTEGER 4 0 0 0 INTEGER ()) (2 0 DEFERRED () () () ()) (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION POINTER)
UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (193 'refcount' (
DERIVED 114 0 0 0 DERIVED ()) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC
UNKNOWN UNKNOWN 0 0 POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0
UNKNOWN ()) 0)) (194 'name' (CHARACTER 1 0 0 0 CHARACTER ((CONSTANT (
INTEGER 4 0 0 0 INTEGER ()) 0 '101'))) () (UNKNOWN-FL UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS (CONSTANT (CHARACTER 1
0 0 0 CHARACTER (())) 0 101
'                                                                                                     ')))
PUBLIC (() () () ()) () 0 0 16529124)
111 'Halo_type' 'halo_data_types' '' 1 ((DERIVED UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER_COMP) (UNKNOWN 0 0 0 0 UNKNOWN
()) 0 0 () () 0 ((195 'name' (CHARACTER 1 0 0 0 CHARACTER ((CONSTANT (
INTEGER 4 0 0 0 INTEGER ()) 0 '101'))) () (UNKNOWN-FL UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS ()) (196 'refcount' (
DERIVED 114 0 0 0 DERIVED ()) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC
UNKNOWN UNKNOWN 0 0 POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0
UNKNOWN ()) 0)) (197 'data_type' (INTEGER 4 0 0 0 INTEGER ()) () (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0)
UNKNOWN-ACCESS (CONSTANT (INTEGER 4 0 0 0 INTEGER ()) 0 '0')) (198
'ordering_scheme' (INTEGER 4 0 0 0 INTEGER ()) () (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS (
CONSTANT (INTEGER 4 0 0 0 INTEGER ()) 0 '0')) (199 'communicator' (
INTEGER 4 0 0 0 INTEGER ()) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC
UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS ()) (200 'nprocs' (INTEGER 4 0 0 0
INTEGER ()) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0
0) UNKNOWN-ACCESS (CONSTANT (INTEGER 4 0 0 0 INTEGER ()) 0 '0')) (201
'sends' (DERIVED 156 0 0 0 DERIVED ()) (1 0 DEFERRED () ()) (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION POINTER)
UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (202 'receives' (
DERIVED 156 0 0 0 DERIVED ()) (1 0 DEFERRED () ()) (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION POINTER)
UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (203 'nowned_nodes'
(INTEGER 4 0 0 0 INTEGER ()) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC
UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS (CONSTANT (INTEGER 4 0 0 0 INTEGER ())
0 '-1')) (204 'owners' (INTEGER 4 0 0 0 INTEGER ()) (1 0 DEFERRED () ())
(UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION
POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (205
'unn_count' (INTEGER 4 0 0 0 INTEGER ()) () (UNKNOWN-FL UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS (CONSTANT (INTEGER 4 0
0 0 INTEGER ()) 0 '-1')) (206 'owned_nodes_unn_base' (INTEGER 4 0 0 0
INTEGER ()) (1 0 DEFERRED () ()) (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC
UNKNOWN UNKNOWN 0 0 DIMENSION POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0
0 0 UNKNOWN ()) 0)) (207 'my_owned_nodes_unn_base' (INTEGER 4 0 0 0
INTEGER ()) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0
0) UNKNOWN-ACCESS (CONSTANT (INTEGER 4 0 0 0 INTEGER ()) 0 '-1')) (208
'receives_gnn_to_unn' (INTEGER 4 0 0 0 INTEGER ()) (1 0 DEFERRED () ())
(UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION
POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (209
'gnn_to_unn' (INTEGER 4 0 0 0 INTEGER ()) (1 0 DEFERRED () ()) (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION
POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0))) PUBLIC (
() () () ()) () 0 0 63994053)
114 'Refcount_type' 'reference_counting' '' 1 ((DERIVED UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER_COMP) (UNKNOWN 0 0 0 0 UNKNOWN
()) 0 0 () () 0 ((210 'prev' (DERIVED 114 0 0 0 DERIVED ()) () (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER)
UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (211 'next' (
DERIVED 114 0 0 0 DERIVED ()) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC
UNKNOWN UNKNOWN 0 0 POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0
UNKNOWN ()) 0)) (212 'count' (INTEGER 4 0 0 0 INTEGER ()) () (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0)
UNKNOWN-ACCESS (CONSTANT (INTEGER 4 0 0 0 INTEGER ()) 0 '0')) (213 'id'
(INTEGER 4 0 0 0 INTEGER ()) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC
UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS ()) (214 'name' (CHARACTER 1 0 0 0
CHARACTER ((CONSTANT (INTEGER 4 0 0 0 INTEGER ()) 0 '101'))) () (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0)
UNKNOWN-ACCESS ()) (215 'type' (CHARACTER 1 0 0 0 CHARACTER ((CONSTANT (
INTEGER 4 0 0 0 INTEGER ()) 0 '101'))) () (UNKNOWN-FL UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS ()) (216 'tagged' (
LOGICAL 4 0 0 0 LOGICAL ()) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC
UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS (CONSTANT (LOGICAL 4 0 0 0 LOGICAL ())
0 0))) PUBLIC (() () () ()) () 0 0 25948645)
121 'Vector_boundary_conditions_ptr' 'fields_data_types' '' 1 ((DERIVED
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER_COMP) (UNKNOWN 0
0 0 0 UNKNOWN ()) 0 0 () () 0 ((217 'boundary_condition' (DERIVED 218 0
0 0 DERIVED ()) (1 0 DEFERRED () ()) (UNKNOWN-FL UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION POINTER) UNKNOWN-ACCESS (
NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0))) PUBLIC (() () () ()) () 0 0
84476181)
126 'Mesh_type' 'fields_data_types' '' 1 ((DERIVED UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER_COMP) (UNKNOWN 0 0 0 0 UNKNOWN
()) 0 0 () () 0 ((219 'ndglno' (INTEGER 4 0 0 0 INTEGER ()) (1 0
DEFERRED () ()) (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN
0 0 DIMENSION POINTER) UNKNOWN-ACCESS ()) (220 'wrapped' (LOGICAL 4 0 0
0 LOGICAL ()) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN
0 0) UNKNOWN-ACCESS (CONSTANT (LOGICAL 4 0 0 0 LOGICAL ()) 0 1)) (221
'shape' (DERIVED 127 0 0 0 DERIVED ()) () (UNKNOWN-FL UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS (STRUCTURE (DERIVED 127
0 0 0 DERIVED ()) 0 ((() ()) (() ()) (() ()) (() ()) ((NULL (UNKNOWN 0 0
0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((
NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN
()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0
0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((
STRUCTURE (DERIVED 128 0 0 0 DERIVED ()) 0 ((() ()) (() ()) (() ()) (()
()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0 0
UNKNOWN ()) 0) ()) (() ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) (
() ())) ()) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((NULL (
UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)
()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) (() ())) ())) (222
'elements' (INTEGER 4 0 0 0 INTEGER ()) () (UNKNOWN-FL UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS ()) (223 'nodes' (
INTEGER 4 0 0 0 INTEGER ()) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC
UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS ()) (224 'name' (CHARACTER 1 0 0 0
CHARACTER ((CONSTANT (INTEGER 4 0 0 0 INTEGER ()) 0 '101'))) () (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0)
UNKNOWN-ACCESS ()) (225 'option_path' (CHARACTER 1 0 0 0 CHARACTER ((
CONSTANT (INTEGER 4 0 0 0 INTEGER ()) 0 '8192'))) () (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS (
CONSTANT (CHARACTER 1 0 0 0 CHARACTER (())) 0 8192
'/uninitialised_path/                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            '))
(226 'continuity' (INTEGER 4 0 0 0 INTEGER ()) () (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS (
CONSTANT (INTEGER 4 0 0 0 INTEGER ()) 0 '0')) (227 'refcount' (DERIVED
114 0 0 0 DERIVED ()) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN
UNKNOWN 0 0 POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0))
(228 'faces' (DERIVED 229 0 0 0 DERIVED ()) () (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER) UNKNOWN-ACCESS
(NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (230 'subdomain_mesh' (DERIVED
231 0 0 0 DERIVED ()) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN
UNKNOWN 0 0 POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0))
(232 'adj_lists' (DERIVED 233 0 0 0 DERIVED ()) () (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER) UNKNOWN-ACCESS
(NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (234 'columns' (INTEGER 4 0 0 0
INTEGER ()) (1 0 DEFERRED () ()) (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC
UNKNOWN UNKNOWN 0 0 DIMENSION POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0
0 0 UNKNOWN ()) 0)) (235 'element_columns' (INTEGER 4 0 0 0 INTEGER ())
(1 0 DEFERRED () ()) (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN
UNKNOWN 0 0 DIMENSION POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0
UNKNOWN ()) 0)) (236 'region_ids' (INTEGER 4 0 0 0 INTEGER ()) (1 0
DEFERRED () ()) (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN
0 0 DIMENSION POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ())
0)) (237 'halos' (DERIVED 111 0 0 0 DERIVED ()) (1 0 DEFERRED () ()) (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION
POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (238
'element_halos' (DERIVED 111 0 0 0 DERIVED ()) (1 0 DEFERRED () ()) (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION
POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (239
'colourings' (DERIVED 240 0 0 0 DERIVED ()) (1 0 DEFERRED () ()) (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION
POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (241
'periodic' (LOGICAL 4 0 0 0 LOGICAL ()) () (UNKNOWN-FL UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS (CONSTANT (LOGICAL 4 0
0 0 LOGICAL ()) 0 0))) PUBLIC (() () () ()) () 0 0 2572791)
127 'Element_type' 'elements' '' 1 ((DERIVED UNKNOWN-INTENT UNKNOWN-PROC
UNKNOWN UNKNOWN 0 0 POINTER_COMP) (UNKNOWN 0 0 0 0 UNKNOWN ()) 0 0 () ()
0 ((242 'dim' (INTEGER 4 0 0 0 INTEGER ()) () (UNKNOWN-FL UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS ()) (243 'loc' (
INTEGER 4 0 0 0 INTEGER ()) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC
UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS ()) (244 'ngi' (INTEGER 4 0 0 0
INTEGER ()) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0
0) UNKNOWN-ACCESS ()) (245 'degree' (INTEGER 4 0 0 0 INTEGER ()) () (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0)
UNKNOWN-ACCESS ()) (246 'n' (REAL 8 0 0 0 REAL ()) (2 0 DEFERRED () () ()
()) (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0
DIMENSION POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0))
(247 'dn' (REAL 8 0 0 0 REAL ()) (3 0 DEFERRED () () () () () ()) (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION
POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (248 'n_s'
(REAL 8 0 0 0 REAL ()) (2 0 DEFERRED () () () ()) (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION POINTER)
UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (249 'dn_s' (REAL
8 0 0 0 REAL ()) (3 0 DEFERRED () () () () () ()) (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION POINTER)
UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (250 'spoly' (
DERIVED 251 0 0 0 DERIVED ()) (2 0 DEFERRED () () () ()) (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION POINTER)
UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (252 'dspoly' (
DERIVED 251 0 0 0 DERIVED ()) (2 0 DEFERRED () () () ()) (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION POINTER)
UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (253 'numbering' (
DERIVED 254 0 0 0 DERIVED ()) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC
UNKNOWN UNKNOWN 0 0 POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0
UNKNOWN ()) 0)) (255 'quadrature' (DERIVED 128 0 0 0 DERIVED ()) () (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0)
UNKNOWN-ACCESS (STRUCTURE (DERIVED 128 0 0 0 DERIVED ()) 0 ((() ()) (()
()) (() ()) (() ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((NULL (
UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) (() ()) ((NULL (UNKNOWN 0 0 0 0
UNKNOWN ()) 0) ()) (() ())) ())) (256 'surface_quadrature' (DERIVED 128
0 0 0 DERIVED ()) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN
UNKNOWN 0 0 POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0))
(257 'superconvergence' (DERIVED 258 0 0 0 DERIVED ()) () (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER) UNKNOWN-ACCESS
(NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (259 'constraints' (DERIVED 260 0
0 0 DERIVED ()) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN
UNKNOWN 0 0 POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0))
(261 'refcount' (DERIVED 114 0 0 0 DERIVED ()) () (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER) UNKNOWN-ACCESS
(NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (262 'name' (CHARACTER 1 0 0 0
CHARACTER ((CONSTANT (INTEGER 4 0 0 0 INTEGER ()) 0 '0'))) () (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0)
UNKNOWN-ACCESS ())) PUBLIC (() () () ()) () 0 0 79461029)
128 'Quadrature_type' 'quadrature' '' 1 ((DERIVED UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER_COMP) (UNKNOWN 0 0 0 0 UNKNOWN
()) 0 0 () () 0 ((263 'dim' (INTEGER 4 0 0 0 INTEGER ()) () (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS ()) (
264 'degree' (INTEGER 4 0 0 0 INTEGER ()) () (UNKNOWN-FL UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS ()) (265 'vertices' (
INTEGER 4 0 0 0 INTEGER ()) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC
UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS ()) (266 'ngi' (INTEGER 4 0 0 0
INTEGER ()) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0
0) UNKNOWN-ACCESS ()) (267 'weight' (REAL 8 0 0 0 REAL ()) (1 0 DEFERRED
() ()) (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0
DIMENSION POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0))
(268 'l' (REAL 8 0 0 0 REAL ()) (2 0 DEFERRED () () () ()) (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION POINTER)
UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (269 'name' (
CHARACTER 1 0 0 0 CHARACTER ((CONSTANT (INTEGER 4 0 0 0 INTEGER ()) 0 '0')))
() (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0)
UNKNOWN-ACCESS ()) (270 'refcount' (DERIVED 114 0 0 0 DERIVED ()) () (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER)
UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (271 'family' (
INTEGER 4 0 0 0 INTEGER ()) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC
UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS ())) PUBLIC (() () () ()) () 0 0
59837722)
132 'Picker_ptr' 'picker_data_types' '' 1 ((DERIVED UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER_COMP) (UNKNOWN 0 0 0 0 UNKNOWN
()) 0 0 () () 0 ((272 'ptr' (DERIVED 273 0 0 0 DERIVED ()) () (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER)
UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0))) PUBLIC (() () ()
()) () 0 0 71120007)
138 'Scalar_boundary_conditions_ptr' 'fields_data_types' '' 1 ((DERIVED
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER_COMP) (UNKNOWN 0
0 0 0 UNKNOWN ()) 0 0 () () 0 ((274 'boundary_condition' (DERIVED 275 0
0 0 DERIVED ()) (1 0 DEFERRED () ()) (UNKNOWN-FL UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION POINTER) UNKNOWN-ACCESS (
NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0))) PUBLIC (() () () ()) () 0 0
47502942)
151 'Csr_sparsity' 'sparse_tools' '' 1 ((DERIVED UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER_COMP) (UNKNOWN 0 0 0 0 UNKNOWN
()) 0 0 () () 0 ((276 'findrm' (INTEGER 4 0 0 0 INTEGER ()) (1 0
DEFERRED () ()) (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN
0 0 DIMENSION POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ())
0)) (277 'centrm' (INTEGER 4 0 0 0 INTEGER ()) (1 0 DEFERRED () ()) (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION
POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (278 'colm'
(INTEGER 4 0 0 0 INTEGER ()) (1 0 DEFERRED () ()) (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION POINTER)
UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (279 'columns' (
INTEGER 4 0 0 0 INTEGER ()) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC
UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS ()) (280 'row_halo' (DERIVED 111 0 0
0 DERIVED ()) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN
0 0 POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (281
'column_halo' (DERIVED 111 0 0 0 DERIVED ()) () (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER) UNKNOWN-ACCESS
(NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (282 'refcount' (DERIVED 114 0 0
0 DERIVED ()) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN
0 0 POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (283
'name' (CHARACTER 1 0 0 0 CHARACTER ((CONSTANT (INTEGER 4 0 0 0 INTEGER
()) 0 '101'))) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN
UNKNOWN 0 0) UNKNOWN-ACCESS (CONSTANT (CHARACTER 1 0 0 0 CHARACTER (()))
0 101
'                                                                                                     '))
(284 'wrapped' (LOGICAL 4 0 0 0 LOGICAL ()) () (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS (
CONSTANT (LOGICAL 4 0 0 0 LOGICAL ()) 0 0)) (285 'sorted_rows' (LOGICAL
4 0 0 0 LOGICAL ()) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN
UNKNOWN 0 0) UNKNOWN-ACCESS (CONSTANT (LOGICAL 4 0 0 0 LOGICAL ()) 0 0)))
PUBLIC (() () () ()) () 0 0 78882345)
153 'Real_vector' 'futils' '' 1 ((DERIVED UNKNOWN-INTENT UNKNOWN-PROC
UNKNOWN UNKNOWN 0 0 POINTER_COMP) (UNKNOWN 0 0 0 0 UNKNOWN ()) 0 0 () ()
0 ((286 'ptr' (REAL 8 0 0 0 REAL ()) (1 0 DEFERRED () ()) (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION POINTER)
UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0))) PUBLIC (() () ()
()) () 0 0 72870256)
156 'Integer_vector' 'futils' '' 1 ((DERIVED UNKNOWN-INTENT UNKNOWN-PROC
UNKNOWN UNKNOWN 0 0 POINTER_COMP) (UNKNOWN 0 0 0 0 UNKNOWN ()) 0 0 () ()
0 ((287 'ptr' (INTEGER 4 0 0 0 INTEGER ()) (1 0 DEFERRED () ()) (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION
POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0))) PUBLIC (
() () () ()) () 0 0 9661976)
172 'Logical_array_ptr' 'sparse_tools' '' 1 ((DERIVED UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER_COMP) (UNKNOWN 0 0 0 0 UNKNOWN
()) 0 0 () () 0 ((288 'ptr' (LOGICAL 4 0 0 0 LOGICAL ()) (1 0 DEFERRED ()
()) (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0
DIMENSION POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)))
PUBLIC (() () () ()) () 0 0 30974511)
178 'Tensor_field' 'fields_data_types' '' 1 ((DERIVED UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER_COMP) (UNKNOWN 0 0 0 0 UNKNOWN
()) 0 0 () () 0 ((289 'val' (REAL 8 0 0 0 REAL ()) (3 0 DEFERRED () () ()
() () ()) (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0
DIMENSION POINTER) UNKNOWN-ACCESS ()) (290 'wrapped' (LOGICAL 4 0 0 0
LOGICAL ()) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0
0) UNKNOWN-ACCESS (CONSTANT (LOGICAL 4 0 0 0 LOGICAL ()) 0 1)) (291
'field_type' (INTEGER 4 0 0 0 INTEGER ()) () (UNKNOWN-FL UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS (CONSTANT (INTEGER 4 0
0 0 INTEGER ()) 0 '0')) (292 'name' (CHARACTER 1 0 0 0 CHARACTER ((
CONSTANT (INTEGER 4 0 0 0 INTEGER ()) 0 '101'))) () (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS ()) (
293 'dim' (INTEGER 4 0 0 0 INTEGER ()) (1 0 EXPLICIT (CONSTANT (INTEGER
4 0 0 0 INTEGER ()) 0 '1') (CONSTANT (INTEGER 4 0 0 0 INTEGER ()) 0 '2'))
(UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION)
UNKNOWN-ACCESS ()) (294 'option_path' (CHARACTER 1 0 0 0 CHARACTER ((
CONSTANT (INTEGER 4 0 0 0 INTEGER ()) 0 '8192'))) () (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS (
CONSTANT (CHARACTER 1 0 0 0 CHARACTER (())) 0 8192
'/uninitialised_path/                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            '))
(295 'mesh' (DERIVED 126 0 0 0 DERIVED ()) () (UNKNOWN-FL UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS (STRUCTURE (DERIVED 126
0 0 0 DERIVED ()) 0 ((() ()) ((CONSTANT (LOGICAL 4 0 0 0 LOGICAL ()) 0 1)
()) ((STRUCTURE (DERIVED 127 0 0 0 DERIVED ()) 0 ((() ()) (() ()) (() ())
(() ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0
0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((NULL (
UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)
()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0 0
UNKNOWN ()) 0) ()) ((STRUCTURE (DERIVED 128 0 0 0 DERIVED ()) 0 ((() ())
(() ()) (() ()) (() ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((
NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) (() ()) ((NULL (UNKNOWN 0 0 0 0
UNKNOWN ()) 0) ()) (() ())) ()) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ())
0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0
0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) (() ()))
()) ()) (() ()) (() ()) (() ()) ((CONSTANT (CHARACTER 1 0 0 0 CHARACTER
(())) 0 8192
'/uninitialised_path/                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ')
()) ((CONSTANT (INTEGER 4 0 0 0 INTEGER ()) 0 '0') ()) ((NULL (UNKNOWN 0
0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((
NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN
()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0
0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((
NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN
()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((CONSTANT (
LOGICAL 4 0 0 0 LOGICAL ()) 0 0) ())) ())) (296 'refcount' (DERIVED 114
0 0 0 DERIVED ()) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN
UNKNOWN 0 0 POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0))
(297 'aliased' (LOGICAL 4 0 0 0 LOGICAL ()) () (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS (
CONSTANT (LOGICAL 4 0 0 0 LOGICAL ()) 0 0))) PUBLIC (() () () ()) () 0 0
25110185)
218 'Vector_boundary_condition' 'fields_data_types' '' 1 ((DERIVED
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER_COMP) (UNKNOWN 0
0 0 0 UNKNOWN ()) 0 0 () () 0 ((298 'name' (CHARACTER 1 0 0 0 CHARACTER
((CONSTANT (INTEGER 4 0 0 0 INTEGER ()) 0 '101'))) () (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS ()) (
299 'type' (CHARACTER 1 0 0 0 CHARACTER ((CONSTANT (INTEGER 4 0 0 0
INTEGER ()) 0 '101'))) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC
UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS (CONSTANT (CHARACTER 1 0 0 0
CHARACTER (())) 0 101
'                                                                                                     '))
(300 'applies' (LOGICAL 4 0 0 0 LOGICAL ()) (1 0 EXPLICIT (CONSTANT (
INTEGER 4 0 0 0 INTEGER ()) 0 '1') (CONSTANT (INTEGER 4 0 0 0 INTEGER ())
0 '3')) (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0
DIMENSION) UNKNOWN-ACCESS ()) (301 'surface_element_list' (INTEGER 4 0 0
0 INTEGER ()) (1 0 DEFERRED () ()) (UNKNOWN-FL UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION POINTER) UNKNOWN-ACCESS (
NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (302 'surface_node_list' (INTEGER
4 0 0 0 INTEGER ()) (1 0 DEFERRED () ()) (UNKNOWN-FL UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION POINTER) UNKNOWN-ACCESS (
NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (303 'surface_mesh' (DERIVED 126 0
0 0 DERIVED ()) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN
UNKNOWN 0 0 POINTER) UNKNOWN-ACCESS ()) (304 'surface_fields' (DERIVED
73 0 0 0 DERIVED ()) (1 0 DEFERRED () ()) (UNKNOWN-FL UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION POINTER) UNKNOWN-ACCESS (
NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (305 'scalar_surface_fields' (
DERIVED 74 0 0 0 DERIVED ()) (1 0 DEFERRED () ()) (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION POINTER)
UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (306 'option_path'
(CHARACTER 1 0 0 0 CHARACTER ((CONSTANT (INTEGER 4 0 0 0 INTEGER ()) 0
'8192'))) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0)
UNKNOWN-ACCESS (CONSTANT (CHARACTER 1 0 0 0 CHARACTER (())) 0 8192
'/uninitialised_path/                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ')))
PUBLIC (() () () ()) () 0 0 42205165)
229 'Mesh_faces' 'fields_data_types' '' 1 ((DERIVED UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER_COMP) (UNKNOWN 0 0 0 0 UNKNOWN
()) 0 0 () () 0 ((307 'shape' (DERIVED 127 0 0 0 DERIVED ()) () (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER)
UNKNOWN-ACCESS ()) (308 'face_list' (DERIVED 76 0 0 0 DERIVED ()) () (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0)
UNKNOWN-ACCESS (STRUCTURE (DERIVED 76 0 0 0 DERIVED ()) 0 (((STRUCTURE (
DERIVED 151 0 0 0 DERIVED ()) 0 (((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)
()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0 0
UNKNOWN ()) 0) ()) (() ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) (
(NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0 0
UNKNOWN ()) 0) ()) ((CONSTANT (CHARACTER 1 0 0 0 CHARACTER (())) 0 101
'                                                                                                     ')
()) ((CONSTANT (LOGICAL 4 0 0 0 LOGICAL ()) 0 0) ()) ((CONSTANT (
LOGICAL 4 0 0 0 LOGICAL ()) 0 0) ())) ()) ()) ((NULL (UNKNOWN 0 0 0 0
UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((
CONSTANT (LOGICAL 4 0 0 0 LOGICAL ()) 0 0) ()) ((CONSTANT (LOGICAL 4 0 0
0 LOGICAL ()) 0 0) ()) (() ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ())
((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((CONSTANT (CHARACTER 1 0 0 0
CHARACTER (())) 0 101
'                                                                                                     ')
())) ())) (309 'face_lno' (INTEGER 4 0 0 0 INTEGER ()) (1 0 DEFERRED ()
()) (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0
DIMENSION POINTER) UNKNOWN-ACCESS ()) (310 'surface_mesh' (DERIVED 126 0
0 0 DERIVED ()) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN
UNKNOWN 0 0) UNKNOWN-ACCESS (STRUCTURE (DERIVED 126 0 0 0 DERIVED ()) 0
((() ()) ((CONSTANT (LOGICAL 4 0 0 0 LOGICAL ()) 0 1) ()) ((STRUCTURE (
DERIVED 127 0 0 0 DERIVED ()) 0 ((() ()) (() ()) (() ()) (() ()) ((NULL
(UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ())
0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0
0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((NULL (
UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)
()) ((STRUCTURE (DERIVED 128 0 0 0 DERIVED ()) 0 ((() ()) (() ()) (() ())
(() ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0
0 UNKNOWN ()) 0) ()) (() ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ())
(() ())) ()) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((NULL (
UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)
()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) (() ())) ()) ()) (() ())
(() ()) (() ()) ((CONSTANT (CHARACTER 1 0 0 0 CHARACTER (())) 0 8192
'/uninitialised_path/                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ')
()) ((CONSTANT (INTEGER 4 0 0 0 INTEGER ()) 0 '0') ()) ((NULL (UNKNOWN 0
0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((
NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN
()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0
0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((
NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN
()) 0) ()) ((NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0) ()) ((CONSTANT (
LOGICAL 4 0 0 0 LOGICAL ()) 0 0) ())) ())) (311 'surface_node_list' (
INTEGER 4 0 0 0 INTEGER ()) (1 0 DEFERRED () ()) (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION POINTER)
UNKNOWN-ACCESS ()) (312 'face_element_list' (INTEGER 4 0 0 0 INTEGER ())
(1 0 DEFERRED () ()) (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN
UNKNOWN 0 0 DIMENSION POINTER) UNKNOWN-ACCESS ()) (313 'boundary_ids' (
INTEGER 4 0 0 0 INTEGER ()) (1 0 DEFERRED () ()) (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION POINTER)
UNKNOWN-ACCESS ()) (314 'coplanar_ids' (INTEGER 4 0 0 0 INTEGER ()) (1 0
DEFERRED () ()) (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN
0 0 DIMENSION POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ())
0)) (315 'dg_surface_mesh' (DERIVED 126 0 0 0 DERIVED ()) () (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER)
UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (316
'has_discontinuous_internal_boundaries' (LOGICAL 4 0 0 0 LOGICAL ()) ()
(UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0)
UNKNOWN-ACCESS (CONSTANT (LOGICAL 4 0 0 0 LOGICAL ()) 0 0)) (317
'unique_surface_element_count' (INTEGER 4 0 0 0 INTEGER ()) () (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0)
UNKNOWN-ACCESS ())) PUBLIC (() () () ()) () 0 0 11936185)
231 'Mesh_subdomain_mesh' 'fields_data_types' '' 1 ((DERIVED
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER_COMP) (UNKNOWN 0
0 0 0 UNKNOWN ()) 0 0 () () 0 ((318 'element_list' (INTEGER 4 0 0 0
INTEGER ()) (1 0 DEFERRED () ()) (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC
UNKNOWN UNKNOWN 0 0 DIMENSION POINTER) UNKNOWN-ACCESS ()) (319 'node_list'
(INTEGER 4 0 0 0 INTEGER ()) (1 0 DEFERRED () ()) (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION POINTER)
UNKNOWN-ACCESS ())) PUBLIC (() () () ()) () 0 0 85302181)
233 'Adjacency_cache' 'fields_data_types' '' 1 ((DERIVED UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER_COMP) (UNKNOWN 0 0 0 0 UNKNOWN
()) 0 0 () () 0 ((320 'nnlist' (DERIVED 151 0 0 0 DERIVED ()) () (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER)
UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (321 'nelist' (
DERIVED 151 0 0 0 DERIVED ()) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC
UNKNOWN UNKNOWN 0 0 POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0
UNKNOWN ()) 0)) (322 'eelist' (DERIVED 151 0 0 0 DERIVED ()) () (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER)
UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0))) PUBLIC (() () ()
()) () 0 0 37419158)
240 'Integer_set_vector' 'integer_set_module' '' 1 ((DERIVED
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER_COMP) (UNKNOWN 0
0 0 0 UNKNOWN ()) 0 0 () () 0 ((323 'sets' (DERIVED 324 0 0 0 DERIVED ())
(1 0 DEFERRED () ()) (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN
UNKNOWN 0 0 DIMENSION POINTER) UNKNOWN-ACCESS ())) PUBLIC (() () () ())
() 0 0 40688950)
251 'Polynomial' 'polynomials' '' 1 ((DERIVED UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER_COMP) (UNKNOWN 0 0 0 0 UNKNOWN
()) 0 0 () () 0 ((325 'coefs' (REAL 8 0 0 0 REAL ()) (1 0 DEFERRED () ())
(UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION
POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (326
'degree' (INTEGER 4 0 0 0 INTEGER ()) () (UNKNOWN-FL UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS (CONSTANT (INTEGER 4 0
0 0 INTEGER ()) 0 '-1'))) PUBLIC (() () () ()) () 0 0 87989236)
254 'Ele_numbering_type' 'element_numbering' '' 1 ((DERIVED
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER_COMP) (UNKNOWN 0
0 0 0 UNKNOWN ()) 0 0 () () 0 ((327 'faces' (INTEGER 4 0 0 0 INTEGER ())
() (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0)
UNKNOWN-ACCESS ()) (328 'vertices' (INTEGER 4 0 0 0 INTEGER ()) () (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0)
UNKNOWN-ACCESS ()) (329 'edges' (INTEGER 4 0 0 0 INTEGER ()) () (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0)
UNKNOWN-ACCESS ()) (330 'boundaries' (INTEGER 4 0 0 0 INTEGER ()) () (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0)
UNKNOWN-ACCESS ()) (331 'degree' (INTEGER 4 0 0 0 INTEGER ()) () (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0)
UNKNOWN-ACCESS ()) (332 'dimension' (INTEGER 4 0 0 0 INTEGER ()) () (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0)
UNKNOWN-ACCESS ()) (333 'nodes' (INTEGER 4 0 0 0 INTEGER ()) () (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0)
UNKNOWN-ACCESS ()) (334 'type' (INTEGER 4 0 0 0 INTEGER ()) () (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0)
UNKNOWN-ACCESS (CONSTANT (INTEGER 4 0 0 0 INTEGER ()) 0 '1')) (335
'family' (INTEGER 4 0 0 0 INTEGER ()) () (UNKNOWN-FL UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS ()) (336 'count2number'
(INTEGER 4 0 0 0 INTEGER ()) (3 0 DEFERRED () () () () () ()) (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION
POINTER) UNKNOWN-ACCESS ()) (337 'number2count' (INTEGER 4 0 0 0 INTEGER
()) (2 0 DEFERRED () () () ()) (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC
UNKNOWN UNKNOWN 0 0 DIMENSION POINTER) UNKNOWN-ACCESS ()) (338
'boundary_coord' (INTEGER 4 0 0 0 INTEGER ()) (1 0 DEFERRED () ()) (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION
POINTER) UNKNOWN-ACCESS ()) (339 'boundary_val' (INTEGER 4 0 0 0 INTEGER
()) (1 0 DEFERRED () ()) (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN
UNKNOWN 0 0 DIMENSION POINTER) UNKNOWN-ACCESS ())) PUBLIC (() () () ())
() 0 0 96431082)
258 'Superconvergence_type' 'elements' '' 1 ((DERIVED UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER_COMP) (UNKNOWN 0 0 0 0 UNKNOWN
()) 0 0 () () 0 ((340 'nsp' (INTEGER 4 0 0 0 INTEGER ()) () (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS ()) (
341 'l' (REAL 8 0 0 0 REAL ()) (2 0 DEFERRED () () () ()) (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION POINTER)
UNKNOWN-ACCESS ()) (342 'n' (REAL 8 0 0 0 REAL ()) (2 0 DEFERRED () () ()
()) (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0
DIMENSION POINTER) UNKNOWN-ACCESS ()) (343 'dn' (REAL 8 0 0 0 REAL ()) (
3 0 DEFERRED () () () () () ()) (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC
UNKNOWN UNKNOWN 0 0 DIMENSION POINTER) UNKNOWN-ACCESS ())) PUBLIC (() ()
() ()) () 0 0 18282395)
260 'Constraints_type' 'elements' '' 1 ((DERIVED UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER_COMP) (UNKNOWN 0 0 0 0 UNKNOWN
()) 0 0 () () 0 ((344 'type' (INTEGER 4 0 0 0 INTEGER ()) () (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0)
UNKNOWN-ACCESS ()) (345 'dim' (INTEGER 4 0 0 0 INTEGER ()) () (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0)
UNKNOWN-ACCESS ()) (346 'degree' (INTEGER 4 0 0 0 INTEGER ()) () (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0)
UNKNOWN-ACCESS ()) (347 'loc' (INTEGER 4 0 0 0 INTEGER ()) () (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0)
UNKNOWN-ACCESS ()) (348 'n_constraints' (INTEGER 4 0 0 0 INTEGER ()) ()
(UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0)
UNKNOWN-ACCESS ()) (349 'orthogonal' (REAL 8 0 0 0 REAL ()) (3 0
DEFERRED () () () () () ()) (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC
UNKNOWN UNKNOWN 0 0 DIMENSION POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0
0 0 UNKNOWN ()) 0))) PUBLIC (() () () ()) () 0 0 57548971)
273 'Picker_type' 'picker_data_types' '' 1 ((DERIVED UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER_COMP) (UNKNOWN 0 0 0 0 UNKNOWN
()) 0 0 () () 0 ((350 'name' (CHARACTER 1 0 0 0 CHARACTER ((CONSTANT (
INTEGER 4 0 0 0 INTEGER ()) 0 '101'))) () (UNKNOWN-FL UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS ()) (351 'refcount' (
DERIVED 114 0 0 0 DERIVED ()) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC
UNKNOWN UNKNOWN 0 0 POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0
UNKNOWN ()) 0)) (352 'picker_id' (INTEGER 4 0 0 0 INTEGER ()) () (
UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0)
UNKNOWN-ACCESS (CONSTANT (INTEGER 4 0 0 0 INTEGER ()) 0 '0')) (353
'last_mesh_movement' (INTEGER 4 0 0 0 INTEGER ()) () (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS (
CONSTANT (INTEGER 4 0 0 0 INTEGER ()) 0 '0'))) PUBLIC (() () () ()) () 0
0 8821665)
275 'Scalar_boundary_condition' 'fields_data_types' '' 1 ((DERIVED
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER_COMP) (UNKNOWN 0
0 0 0 UNKNOWN ()) 0 0 () () 0 ((354 'name' (CHARACTER 1 0 0 0 CHARACTER
((CONSTANT (INTEGER 4 0 0 0 INTEGER ()) 0 '101'))) () (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS ()) (
355 'type' (CHARACTER 1 0 0 0 CHARACTER ((CONSTANT (INTEGER 4 0 0 0
INTEGER ()) 0 '101'))) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC
UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS (CONSTANT (CHARACTER 1 0 0 0
CHARACTER (())) 0 101
'                                                                                                     '))
(356 'surface_element_list' (INTEGER 4 0 0 0 INTEGER ()) (1 0 DEFERRED ()
()) (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0
DIMENSION POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0))
(357 'surface_node_list' (INTEGER 4 0 0 0 INTEGER ()) (1 0 DEFERRED () ())
(UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 DIMENSION
POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0)) (358
'surface_mesh' (DERIVED 126 0 0 0 DERIVED ()) () (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0 POINTER) UNKNOWN-ACCESS
()) (359 'surface_fields' (DERIVED 74 0 0 0 DERIVED ()) (1 0 DEFERRED ()
()) (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0
DIMENSION POINTER) UNKNOWN-ACCESS (NULL (UNKNOWN 0 0 0 0 UNKNOWN ()) 0))
(360 'option_path' (CHARACTER 1 0 0 0 CHARACTER ((CONSTANT (INTEGER 4 0
0 0 INTEGER ()) 0 '8192'))) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC
UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS (CONSTANT (CHARACTER 1 0 0 0
CHARACTER (())) 0 8192
'/uninitialised_path/                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ')))
PUBLIC (() () () ()) () 0 0 50740068)
324 'Integer_set' 'integer_set_module' '' 1 ((DERIVED UNKNOWN-INTENT
UNKNOWN-PROC UNKNOWN UNKNOWN 0 0) (UNKNOWN 0 0 0 0 UNKNOWN ()) 0 0 () ()
0 ((361 'address' (DERIVED 362 0 0 0 DERIVED ()) () (UNKNOWN-FL
UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0 0) UNKNOWN-ACCESS ()))
PUBLIC (() () () ()) () 0 0 67217964)
362 'C_ptr' '__iso_c_binding' '' 1 ((DERIVED UNKNOWN-INTENT UNKNOWN-PROC
UNKNOWN UNKNOWN 0 0 IS_BIND_C IS_C_INTEROP IS_ISO_C) (DERIVED 362 0 1 1
UNKNOWN ()) 0 0 () () 0 ((363 '__c_ptr_c_address' (INTEGER 8 0 1 0
INTEGER ()) () (UNKNOWN-FL UNKNOWN-INTENT UNKNOWN-PROC UNKNOWN UNKNOWN 0
0) UNKNOWN-ACCESS ())) UNKNOWN-ACCESS () () 2 42 0)
)

('allocate_big_m_dg' 0 26 'assemble_poisson_rhs_dg' 0 31
'construct_momentum_dg' 0 41 'correct_velocity_dg' 0 56
'momentum_dg_check_options' 0 62 'subcycle_momentum_dg' 0 63)
