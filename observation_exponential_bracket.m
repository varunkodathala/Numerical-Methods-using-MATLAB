clc;
close all;
clear all;
f = @(x) x.^2 - x - 2;
min_range = 1
max_range  = 4;
for n = 1:30
    root(n) = max_range*exp((min_range*f(max_range) - max_range*f(min_range))/((max_range*f(max_range)-max_range*f(min_range))));
    if(f(root(n))<0)
        min_range = root(n);
    end
    if(f(root(n))>0)
        max_range = root(n);
    end
    if n>1
    p = root(n);
    q = root(n-1);
    er(n) = abs((p - q)/p)*100;
    disp('Percentage Error is ');
    disp(er(n));
    if(er(n)<(1/10^(6-1)))
    disp(root(n));
    break;
    end
    end
end
iterations = n;
i = 1:iterations;
er = er';
i = i';
root = root';
t = table(i,root,er)