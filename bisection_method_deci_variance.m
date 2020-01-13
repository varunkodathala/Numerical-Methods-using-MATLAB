function [r,soln,n] = bisection_method_deci_variance(eqn,k,deci)
f = eqn;
[min_range,max_range] = range_calc(eqn,k);
n=1;
while(1)
    range = [min_range,max_range];
    avg   = mean(range);
    range(1) = range(1) - avg;
    range(2) = range(2) - avg;
    range(1) = range(1)^2;
    range(2) = range(2)^2;
    root(n)  = sum(range);
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