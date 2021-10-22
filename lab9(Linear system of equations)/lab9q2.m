%q2 part a,b,c
A=[1.2969 0.8648; 0.2161 0.1441]
det(A)
inv(A)
A*inv(A)
B=[round(A(1,1),3) round(A(1,2),3); round(A(2,1),3) round(A(2,2),3)]
det(B)
inv(B)
B*inv(B)

b1=[1.2969;0.21611];
x1=A\b1
b2=[round(b1(1,1));round(A(1,2),3)]
x2=A\b2