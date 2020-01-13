clc;
close all;
clear all;

x = [1;2;3;4;5;6;7;8;9;10;11;12;13;14;15];
y = [1;4;9;16;25;36;49;64;81;100;121;144;169;196;225];
% y = 6*y;
N= length(x);

n=[0 0];

alpha = 0.05;

plot(x,y,'.b');
hold on;    


for i=1:500
    for j = 1:N
        temp0 = n(1) - (alpha/N)*(n(1) + n(2)*x(j) - y(j));
        temp1 = n(2) - (alpha/N)*(n(1) + n(2)*x(j) - y(j))*(x(j));
        n(1) = temp0;
        n(2) = temp1;
    end
end

p = 1:0.1:15;
h = n(1) + n(2)*p;
plot(p,h);
grid on;