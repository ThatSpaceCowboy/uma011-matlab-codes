clc;
clear all;
n=input("Enter number of data points: ");
for i=1:n
    x(i)=input("Enter value of x(i): ");
    y(i)=input("Enter value of y(i): ");
end
b=input("Enter point of interpolation: ");
sum=0;
for i=1:n
    L(i)=1;
    for j=1:n
        if(i~=j)
            L(i)=L(i)*((b-x(j))/(x(i)-x(j)));
        end
    end
    sum=sum+(L(i)*y(i));
end
sum

