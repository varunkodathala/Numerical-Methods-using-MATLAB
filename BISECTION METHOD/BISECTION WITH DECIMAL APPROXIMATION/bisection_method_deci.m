function [r,soln,n] = bisection_method_deci(eqn,itr)
f = eqn;
[min_range,max_range] = range_equation(eqn);
while(1)
    range = [min_range,max_range];
    root(n) = mean(range);
    disp(root(n));
    er(1) = 100;
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
    disp(er);
     if(er<(1/10^(deci-1)))
         break;
     end
    end
    n=n+1;
end
i = 1:n-1;
plot(i,er,'--');
end
