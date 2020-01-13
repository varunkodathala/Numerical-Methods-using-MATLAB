clc;
close all;
clear all;
f = @(x) exp(x) - x - 2;
fd = @(x) exp(x) - 1;
root(1) = 2;
for n = 2:30
    var = -f(root(n-1))/(root(n-1)*fd(root(n-1))); 
    root(n) = (root(n-1)*(1+ asin(var)));
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