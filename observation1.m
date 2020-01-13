clc;
clear all;
close all;
f = @(x) x.^2 -5;
a(1) = 2;
b(1) = 7;
n =1 ;
for n = 1:30
rbs = (a(n)+b(n))/2;
rfp = (a(n) - ((b(n) - a(n))/(f(b(n))-f(a(n))))*f(a(n)));
if abs(f(rbs))<abs(f(rfp))
    display('BISECTION');
    root(n) = rbs;
    if f(a(n))*f(root(n))<0
        a(n+1) = a(n);
        b(n+1) = root(n);
    else
        a(n+1) = root(n);
        b(n+1) = b(n);
    end
else
    display('FALSE');
    root(n) = rfp;
    if f(a(n))*f(root(n))<0
        a(n+1) = a(n);
        b(n+1) = root(n);
    else
        a(n+1) = root(n);
        b(n+1) = b(n);
    end
end
if n>1
    p = root(n);
    q = root(n-1);
    er(n) = abs((p - q)/p)*100;
    disp('Percentage Error is ');
    disp(er(n));
end
n=n+1;
end
iterations = n-1;
i = 1:iterations;
er = er';
i = i';
root = root';
t = table(i,root,er)