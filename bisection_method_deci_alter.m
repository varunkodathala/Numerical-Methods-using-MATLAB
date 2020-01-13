function [r,soln,n] = bisection_method_deci_alter(eqn,k,deci)
f = eqn;
[min_range,max_range] = range_calc(eqn,k);
n=1;
at = -min_range : max_range+1;
PlotAxisAtOrigin(at,f(at));
hold on;
while(1)
    range = [min_range,max_range];
    root(n) = ((min_range^2+max_range^2)/2)^0.5;
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
    y = f(root(n));
    stem(root(n),y);
    hold on;
    n=n+1;
end
r = (root(n-1));
soln = f(root(n-1));
end