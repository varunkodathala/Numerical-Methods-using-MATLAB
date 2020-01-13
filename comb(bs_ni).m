clc;
close all;
clear all;
f = @(x) x.^2 - x - 2;
g = @(x) 2*x - 1;
a = 1;
b = 4;
bs = (a+b)./2;
ni = b - f(b)/g(b);
p = [f(a) f(bs) f(ni) f(b)];
for i = 1:4
    for j = i+1:4
        if(p(j)<p(i))
            temp = p(i);
            p(i) = p(j);
            p(j) = temp;
        end
    end
end

