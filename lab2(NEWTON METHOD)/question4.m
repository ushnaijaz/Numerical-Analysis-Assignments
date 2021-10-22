format long
c= 0.9;% coeff
h0=2;% drop height 
h=h0;% bounce height 
d=h0;%initial dist
while h > 0.01
    h=c^2*h
    d= d+2*h;
end
d