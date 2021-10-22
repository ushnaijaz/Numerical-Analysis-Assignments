function [x, e] = mybisect(f,a,b,n)
% function [x e] = mybisect(f,a,b,n)
% Does n iterations of the bisection method for a function f
% Inputs: f -- an inline function
% a,b -- left and right edges of the interval
% n -- the number of bisections to do.
% Outputs: x -- the estimated solution of f(x) = 0
% e -- an upper bound on the error
format long
c = f(a); d = f(b);
if c*d > 0.0
 error('Function has same sign at both endpoints.')
end
disp(' x y')
tolerance = 0.000000001;
maxIters = 1000;
count = 0;
c = (a+b)/2;
while abs(f(c)) > tolerance && count < maxIters
    count=count+1;        
    if f(c) > 0
        b = c;
    else
        a = c;
    end
    c = (a+b)/2; 
end
answer = c;
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