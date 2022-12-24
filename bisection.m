f= @(x) -2*sin(pi*x);
a=1;
b=1.5;
tol=0.001;
if (f(a)*f(b)<0)
    while ((b-a)/2>tol)
        c=(a+b)/2;
        if(f(c)==0)
            break;
        end
        if(f(a)*f(c)<0)
            b=c;
        else
            a=c;
        end
    end
end
disp(c)

