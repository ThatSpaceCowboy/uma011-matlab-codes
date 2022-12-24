tol=0.001;
i=1;
a=0;
b=1.57;
f=@(x) asin(cos(x)-0.5);
x0=(a+b)/2;
x1=f(x0);
if abs(x1-x0)<=tol || (abs(x1-x0)/abs(x1))<tol
    
    i=i+1;
    x0=x1;
end
disp(x1)