clear;
i=5;
r=[]
for n=10:10:60
    r=[r,myinvchk(n)]
end
loglog(r)
function y=myinvchk(n)
A=randn(n,n);
B=inv(A);
C=A*B;
resid=eye(n)-C;y=norm(resid)
end