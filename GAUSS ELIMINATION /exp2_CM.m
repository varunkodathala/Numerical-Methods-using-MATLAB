clc;
clear all;
close all;
A =[11 -1 -5 0;
    -6 31 -15 0;
    -2 -1 4 -1;
    0 0 -10 17];
B = [550;400;0;630];
X = [A B];
for col = 1:5
    for row = col+1:4
        fraction = X(row,col)/X(col,col);
        X(row,:) = X(row,:) - fraction*X(col,:);
    end
end
%% GUASS ELIMINATION
for i = 1:4
    v(i) = 0;
end
while(i>=1)
    v(i) = (X(i,5)-X(i,4)*v(4)-X(i,3)*v(3)-X(i,2)*v(2))/X(i,i);
    i=i-1;
end
v = v';
disp('Solution:');
disp(v);
