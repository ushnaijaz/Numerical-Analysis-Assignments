function [x, e] = mybisect(f,a,b,n)
format long
c = f(a); d = f(b);
if c*d > 0.0
 error('Function has same sign at both endpoints.')
end
disp(' x y')       
 
for i = 1:n
 x = (a + b)/2;
 y = f(x);
 disp([ x y])
 if y == 0.0 % solved the equation exactly
 e = 0;
 break % jumps out of the for loop
 end
 if c*y < 0
 b=x;
 else
 a=x;
 end
 end % s e t the be s t e s t ima t e f o r x and the e r r o r bound
 x = ( a + b) / 2 ;
 e = (b - a ) / 2 ;
end