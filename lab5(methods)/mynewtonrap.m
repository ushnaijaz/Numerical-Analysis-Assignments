% Clearing Screen

function x = mynewtonrap(f,x0,x1,n)
format long
syms x
d=input("enter f(x)=\n")
func=inline (d);
f0=diff(func(x));
f1=inline(f0);
x0=input("enter x0= \n")
x=x0
for i=0:inf
    y=x
    x=y-(func(x)/f1(x));
    if x==y
        break
    end
end
i