Point(1)={0,0,0};
Point(2)={10,0,0};
Point(3)={10,-1,0};
Point(4)={6,-1,0};
Point(5)={4,-1,0};
Point(6)={0,-1,0};

Line(1)={1,2};
Line(2)={2,3};
Line(3)={3,4};

N=20;
M={4};
For I In {1:N-1}
    x=(I/N);
    pt=newp;
    Point(pt)={6-2*x,-1+0.5*Sin(1*Pi*x),0};
    M[]+={pt};
EndFor

M[]+={5};

Spline(4)=M[];
Line(5)={5,6};
Line(6)={6,1};

Physical Line(1)={1}; //top
Physical Line(2)={2}; //outlet
Physical Line(3)={3,4,5}; //bottom
Physical Line(4)={6}; //inlet

Line Loop(7)={1,2,3,4,5,6};
Plane Surface(8)={7};
Physical Surface(9)={8};

Field[1]=Attractor;
Field[1].EdgesList={3,4,5};

Field[2]=MathEval;
Field[2].F="0.05+0.05*F1";
Background Field=2;

