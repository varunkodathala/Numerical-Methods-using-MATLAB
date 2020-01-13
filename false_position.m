function [root,soln] = false_position(eqn, itr,k)
%FALSE_POSITION 
%
%Function used to evaluate root according to False Position method
%
%Input Parameters are Equation and Number of Iterations
%
%Equation should be in format of @(x) x.^3-x-11
%
%k can be any value, if unknown set k = 0;
f = eqn; %assignment of equation to dynamic variable
[min_range,max_range] = range_calc(eqn,k); %Returns the range of equation
for i=1:itr %Iterate the loop based on iterations
    range = [min_range,max_range];% Conversion of scalar to vector
    root = max_range - [(f(max_range)*(min_range-max_range))/(f(min_range)-f(max_range))]; % Calculation of root according to false position
    if(f(root)<0) % Test the condition for f(root) to be negative
        min_range = root; %Set the minimum range to root
    end
    if(f(root)>0)
        max_range = root; %Set the maximum range to root
    end
    
end
soln = f(root); % To Evaluate the solution
end