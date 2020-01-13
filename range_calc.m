function[min_range,max_range] = range_calc(eqn)
%RANGE_CALC 
%
%Function used to calculate the range of the equation
%
%Input parameters are Equation and Initial Point
%
%Equation should be in format of @(x) x.^3-x-11
%
%k can be any value, if unknown set k = 0;
k = 0;
f = eqn; %assignment of equation to dynamic variable
min_range = 0;%set minimum range = 0;
max_range = 0;%set maximum range = 0;
if(f(k)~=0) %Test the condition to check the zero condition
if(f(k)>0) %If the initial value is positive 
     for i=1:20 %Iterate the loop for 20 times in Positive X- Axis
        if(f(i)==0) % Test the condition to check the solution
            break; % Break the loop
        end
        if(f(i)<0) %Test the condition to check negative value of function
            max_range = i; %set minimum range to index value
            min_range = i-1; %set maximum range to previous index value
            break; %break the loop
        end
     end
        if(i==20) % Test the condition for excess iterations
            j=-1; % Set arbitary variable to -1
            k =1; % Set arbitary variable to 1
            while(1) %Infinite loop 
                if(f(j)<0) %Test the condition to check negative value of function
                    max_range = j+1; %set maximum range to next index value
                    min_range = j; %set minimum range to index value
                    break; % Break the loop
                end
                k = k+1; %Increment of arbitary variable
                j = j-1; %Increment of arbitary variable
        end
    end
end
if(f(k)<0) %If the initial value is positive 
    for i=1:20 %Iterate the loop for 20 times in Positive X- Axis
        if(f(i)==0)  % Test the condition to check the solution
            break; % Break the loop
        end
        if(f(i)>0) %Test the condition to check negative value of function
            max_range = i; %set minimum range to index value
            min_range = i-1; %set maximum range to previous index value
            break; % Break the loop
        end
    end
    if(i==20) % Test the condition for excess iterations
        j=-1; % Set arbitary variable to -1
        k =1; % Set arbitary variable to 1
        while(1) %Infinite loop 
        if(f(j)>0)  %Test the condition to check negative value of function
            max_range = j; %set maximum range to next index value
            min_range = j-1; %set minimum range to index value
            break; % Break the loop
        end
        k = k+1; %Increment of arbitary variable
        j = j-1; %Increment of arbitary variable
        end
    end
end
end
end %End of Function
