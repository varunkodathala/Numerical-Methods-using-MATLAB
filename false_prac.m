clc;
clear all;
close all;
f = @(x) 8 - 4.5*(x - sin(x));
min_range = 2;
max_range = 3;
n =1 ;
while(1)
% root(n) = (min_range+max_range)/2;
root(n) = (max_range - ((max_range - min_range)/(f(max_range)-f(min_range)))*f(max_range));
% if f(rbs)<f(rfp)
%     root(n) = rbs;
% else
%     root(n) = rfp;
% end
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
n=n+1;
end
iterations = n;
i = 1:iterations;
er = er';
i = i';
root = root';
t = table(i,root,er)