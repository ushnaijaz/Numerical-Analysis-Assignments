function x=mysolvecheck(n)
A=randn(3,3)
C=randn(3,1)
Y=A\C
r=(A*Y)-C
res=norm(r)
end