function [r,soln,n] = secant_method(eqn,deci)
f = eqn;
[min_range,max_range] = range_equation(eqn);
disp(max_range);
root(1) = min_range;
root(2) = max_range;
n = 3;
while(1)
    root(n) = root(n-1) - (root(n-1) - root(n-2))*(subs(f,root(n-1))/(subs(f,(root(n-1))) - subs(f,root(n-2))));
    if n>2
    p = root(n);
    q = root(n-1);
    disp(p-q);
    if(p-q>=-1/(10^(deci-1))&&p-q<0||p-q<=1/(10^(deci-1))&&p-q>0)
        break;
    end
    end
    n = n+1;
end
r = vpa(root(n));
soln = subs(f,r);
end
