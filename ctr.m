clc;
clear all;
f= @(x) 1/(1+(x^2));
h=input("Enter step size: ");
x0=input("Enter value of a: ");
xn=input("Enter value of b: ");
a(1)=x0;
b(1)=f(x0);
n=6;
b(n)=f(xn);
sum=0;
for i=1:n
    a(i+1)=a(i)+h;
    b(i+1)=f(a(i+1));
    if i~=n
        sum=sum+b(i+1);
    end
end
sum=h*(sum+((b(1)+b(n))/2))


