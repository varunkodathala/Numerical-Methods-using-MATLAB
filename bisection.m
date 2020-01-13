clc;
close all;
clear all;
f = @(x) (x-1)^3-1;
% g = @(x) exp(x) -1;
% root(1) = 1;
% root(2) = 2;
a = 1.5;
b = 3;
% n = 3;
n = 1;
act = 2;
while(1)
%     root(n-1);
%     a = root(n-2);
%     root(n) = b - f(b)/g(b);
%        root(n)  = (a+b)/2;
   root(n) = b - f(b)*((b-a)/(f(b)-f(a)));
    if(f(root(n))>0)
         a = root(n);
    else
        b = root(n);
     end
    er = abs(root(n) - act);
    if(er<0.0001)
        disp(root(n));
        disp(n);
        break;
    end
    n = n+1;
end