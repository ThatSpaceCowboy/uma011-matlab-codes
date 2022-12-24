h= input ("Enter step size: ");
f= @(t,x) (6*((2*32.1)^2)*(x^(3/2)))/51200;
n=30;
t0=input("Enter initial value of t: ");
x0=input("Enter initial value of x: ");
t(i)=t0;
x(i)=x0;
for i=1:n
    k1=h*f(t(i),x(i));
    k2=h*f(t(i)+(h/2),x(i)+(k1/2));
    k3=h*f(t(i)+(h/2),x(i)+(k2/2));
    k4=h*f(t(i)+h,x(i)+k3);
    k=(k1+(2*k2)+(2*k3)+k4)/6;
    x(i+1)=x(i)+k;
    t(i+1)=t(i)+h;
end
x
