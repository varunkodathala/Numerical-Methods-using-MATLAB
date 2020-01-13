function [I1,I2] = solve_ckt1(v,r1,r2,r3,r4)
% SOLVE_CKT solves electrical circuit using computations
% Enter source voltage and resistances
A = [r1+r4 r4;
    r4 r2+r3+r4];
B = [v;0];
X = linsolve(A,B);
I1 = X(1);
I2 = X(2);
end


