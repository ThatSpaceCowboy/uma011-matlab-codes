clc;
clear all;
f=@(x,y) (x^2) +y; 
h=input("Enter step size: ");
x0=input("Enter value of x0: ");
y0=input("Enter value of y0: ");
n=2;
a(1)=x0;
b(1)=y0;
for i=1:n
    k1=b(i)+(h*f(a(i),b(i)));
    a(i+1)=a(i)+h;
    k2=b(i)+(h/2)*(f(a(i),b(i))+f(a(i+1),k1));
    b(i+1)=k2;
end
b

