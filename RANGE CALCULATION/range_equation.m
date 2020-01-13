function[min_range,max_range] = range_equation(eqn)
f = eqn;
k = 0;
min_range = 0;
max_range = 0;
if(f(k)~=0)
if(f(k)<0)
    while(f(k)<0)
        min_range = k;
        k = k+1;
    end
    end
    while(1)
        if(f(k)>0)
        max_range = k;
        k = k+1;
        break;
        end
    end
k = 0;
if(f(k)>0)
    while(f(k)>0)
        min_range = k;
        k = k+1;
    end
    while(1)
        if(f(k)<0)
        max_range = k;
        k = k+1;
        break;
        end
    end
end
end
end
