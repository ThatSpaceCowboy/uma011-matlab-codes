clc;
clear all;
A=[4 1 0; 1 20 1; 0 1 4];
x1=[1; 1; 1];
tol=10^(-3);
n=50;
x=x1;
K(1)=0;
for i=2:n
    y=A*x;
    K(i)=norm(y,inf);
    x=(1/K(i))*y;
    if abs(K(i)-K(i-1))<tol
        disp(K(i));
        break
    else
        x1=x
        i=i+1;
    end
end
