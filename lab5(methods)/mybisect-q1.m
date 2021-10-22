function [x, e] = mybisect(f,a,b,t)
format long
c = f(a); d = f(b);
if c*d > 0.0
 error('Function has same sign at both endpoints.')
end
abser=1000;
i=4;
s=0;
while(abser>t)

 x = (a + b)/2;
 y = f(x);
 disp([ x y])
 if y == 0.0 % solved the equation exactly
     a=x;
     b=x;
     e = 0;
 break % jumps out of the for loop
 end
 if c*y < 0
 b=x;
 else
 a=x;
 end
 xn(1)=0;
 xn(i)=x;
 abser=abs((xn(i)-xn(i-1))/xn(i));
 i=i+1;
 s=s+1
 end % s e t the be s t e s t ima t e f o r x and the e r r o r bound
 x = ( a + b) / 2 ;
 e = (b - a ) / 2 ;
end
