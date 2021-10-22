% Clearing Screen
clc
syms x;
% Input Section
fx = input('Enter equation: ');
int = input('Enter interval: ');
tol = input('Tolerance: ');
no = input('estimations: ');
s = 1;
% derivate of given function
deriv = diff(fx,x);
fa = eval(subs(fx,x,int));
while abs(fa)> tol
    fa = eval(subs(fx,x,int));
    ga = eval(subs(deriv,x,int));
    if ga == 0
        disp('Division by zero.');
        break;
    end
    b = int - fa/ga;
    fprintf('\ta=%f\tf(a)=%f\n',int,fa);
    int = b;
    
    if s>no
       disp('Not convergent'); 
       break;
    end
    s = s + 1;
end

fprintf('Root %f\n', int);