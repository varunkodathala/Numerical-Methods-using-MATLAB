function [root, soln] = newton_iterative(eqn)
%NEWTON_ITERATIVE 
%
%Function used to evaluate root according to Newton Iterative method
%
%Input Parameters are Equation and Number of Iterations
%
%Equation should be in format of @(x) x.^3-x-11
%
%k can be any value, if unknown set k = 0;
f = eqn; %assignment of equation to dynamic variable
[min_range,max_range] = range_equation(eqn); %Returns the range of equation
for n = 1:20
    g = derivest(eqn,max_range); %Evaluates the differentiation of function
    root(n) = (max_range - (f(max_range)/g)); %Computes newton iterative equation
    max_range = root(n); %Replace the max value with root
    er(1) = 100;
end
for n = 2:20
    er(n) = abs(((root(n) - root(n-1))/root(n))*100);
end
i = 1:n;
plot(i,er);
hold on;
r = vpa(root(n)); % To precise the output
soln = f(root(n)); % To Evaluate the solution
end
