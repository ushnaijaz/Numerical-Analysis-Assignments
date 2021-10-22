% If a function f(x) is continuous on a closed interval [ a, b], 
%then f(x) has both a maximum and minimum value on [ a, b] so first 
% establish that the function is continuous on the closed interval

function [minimum,maximum]=calculateExtremeValues(f,interval)
    syms x;                                  
    g1(x>=interval(1));                    
    g2(x<=interval(2));  
    
   %if you have a symbolic function and  want to know the points
   %of discontinuity, we use this syntax.
    d=feval(symengine,'discont',f,x);     
    
    % next step is to determine all critical points in 
    %the given interval and evaluate the function at these critical points
    if isempty(d)==1                   
       deriv=diff(f);                          
       criticalp=solve(deriv)                               
    end
    l=[];                                     
    for i=1:length(criticalp)                        
       if criticalp(i)>=interval(1) & criticalp(i)<=interval(2) 
           l(end+1)=subs(f,criticalp(i));                
       end    
    end
    %The largest function value from the previous step is the maximum value, 
    %and the smallest function value is the minimum value of the function 
    %on the given interval.
    l(end+1)=subs(f,interval(1));             
    l(end+1)=subs(f,interval(2));            
    minimum=min(l)                            
    maximum=max(l)                              
end