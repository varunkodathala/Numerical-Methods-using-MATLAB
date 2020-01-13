function [r,soln,n] = bisection_method_deci_diff(eqn,k,deci)
f = eqn;
[min_range,max_range] = range_calc(eqn,k);
n=1;
while(1)
    range = [min_range,max_range];
    root(n) = (max_range^2-min_range^2)/(max_range - min_range);
    if(f(root(n))<0)
        min_range = root(n);
    end
    if(f(root(n))>0)
        max_range = root(n);
    end
    if(n>1)
    if(round(root(n),deci)==round(root(n-1),deci))
        break;
    end
    end
    n=n+1;
end
r = (root(n-1));
soln = f(root(n-1));
end