function [x1,r1,x2,r2]=mysolvecheck(A,b)
n=input("order of matrix:")
A=randn(n,n);
[L,U,X]=lu(A)
b=randn(n,1);
X=eye(n);
d=X*b;
y1=L\d
x1=U\y1
r1=norm(A*x1-b)
x2=inv(A)*b
r2=norm(A*x2-b)
end