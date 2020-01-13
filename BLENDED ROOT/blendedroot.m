clc;
clear all;
close all;
l=0.1;h=1.5;
f=@(x) x^3-1;
y = 1;
act = 1.4044;
while(1)
    m=(h+l)/2;
    fp=(h-((f(h)*(l-h))/(f(l)-f(h))));
    if ((abs(f(m)))<(abs(f(fp))))
        l = m;
        h = fp;
        root(y) = m;
    else
        l = fp;
        h = m;
        root(y) = fp;
    end
    er = abs(root(y) - act);
    if(er<0.0001)
        disp(root(y));
        disp(y);
        break;
    end
    y = y+1;
end
    
