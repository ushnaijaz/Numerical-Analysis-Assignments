
function x = mysecant(f,x0,x1,n)
format long
y0=f(x0);
y1=f(x1);
for i = 1:n % 
x = x1-( x1-x0 )*y1 /( y1-y0 ) % s e cant formula .
y=f(x) % y value at the new approximate s o l u t i o n .
% Move numbers to ge t ready f o r the next s t ep
x0=x1;
y0=y1;
x1=x;
y1=y;
end
end