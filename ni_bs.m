clc;
close all;
clear all;
f = @(x) x - cos(x);
g = @(x) 1+sin(x);
a = 0;
b = 1;
n=1;
act = 0.7390;
while(1)
    bs = (a+b)./2;
    ni = b - f(b)/g(b);
    bs_abs = abs(f(bs));
    ni_abs = abs(f(ni));
    if(bs_abs<ni_abs)
        root(n) = bs;
    else
        root(n) = ni;
    end
    er = abs(root(n) - act);
    if(er<0.0001)
        disp(root(n));
        disp(n);
        break;
    end
    p = [a bs ni b];
    for i = 1:4
        for j = i+1:4
            if(f(p(j))<f(p(i)))
                temp = p(i);
                p(i) = p(j);
                p(j) = temp;
            end
        end
    end
    for i=1:4
        if(f(p(i))>0)
            a = p(i-1);
            b = p(i);
            break;
        end
    end
    n = n+1;
end