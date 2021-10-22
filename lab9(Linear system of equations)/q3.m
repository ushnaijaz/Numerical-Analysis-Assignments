r=[]
for n=10:50:1000
    r=[r,mysolvecheck(n)]
    
end
loglog(r)
function [r] =mysolvecheck(n)
n=5
A=randn(n,n)
b=randn(n,1)
x=A\b
r=norm(A*x-b)
end