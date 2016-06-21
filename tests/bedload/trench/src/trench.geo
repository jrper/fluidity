//ls = 0.15;
ls = 0.05;
//ls = 0.5;
 
Point (1) = {0,0,0,ls};
Point (2) = {5,0,0,ls};
Point (3) = {6,-0.15,0,ls};
Point (4) = {10,-0.15,0,ls};
Point (5) = {11,0,0,ls};
Point (6) = {16,0,0,ls};
Point (7) = {16,0.4,0,ls};
Point (8) = {0,0.4,0,ls};

Line (1) = {1, 2};
Line (2) = {2, 3};
Line (3) = {3, 4};
Line (4) = {4, 5};
Line (5) = {5, 6};
Line (6) = {6, 7};
Line (7) = {7, 8};
Line (8) = {8, 1};
Line Loop (9) = {1,2,3,4,5,6,7,8};
Plane Surface (10) = {9};

Physical Line (1) = {8}; //in
Physical Line (2) = {7}; //top
Physical Line (3) = {1,2,3,4,5}; //bottom
Physical Line (4) = {6}; //out
Physical Surface (5) = {10};
