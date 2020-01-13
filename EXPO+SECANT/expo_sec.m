clc;
clear all;
close all;
f = @(x) exp(x) -x -2;
root(1) = 1;
root(2) = 2;
for n = 3:30
    secr = root(n-1) - (((root(n-1)-root(n-2))*f(root(n-1)))/(f(root(n-1))-f(root(n-2))));
    expr = root(n-1)*exp((root(n-2)*f(root(n-1)) - root(n-1)*f(root(n-1)))/((root(n-1)*f(root(n-1))-root(n-1)*f(root(n-2)))));
    if abs(f(secr))<abs(f(expr))
        display('sec');
        root(n) = secr;
    else
        display('expo');
        root(n) = expr;
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