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
sum1=0;
sum2=0;
for i=1:n
    a(i+1)=a(i)+h;
    b(i+1)=f(a(i+1));
    if i~=n
        if mod(i,2)~=0
            sum1=sum1+b(i+1);
        end
        if mod(i,2)==0
            sum2=sum2+b(i+1);
        end
    end
end
sum=(h/3)*((2*sum2)+ (4*sum1) + (b(1)+b(n)))