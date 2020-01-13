function [Va,Vb,Vc,Vd] = solve_ckt(v,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11)
% SOLVE_CKT solves electrical circuit using computations
% Enter source voltage and resistances
k = 1;
for r1 = 1:10
A = [(1/r9+1/r1+1/r3) 0 -1/r1 -1/r3;
    0 (1/r2+1/r4+1/(r8+r10)+1/(r6+r11)) (-1/r2-1/(r6+r11)) (-1/r4-1/(r8+r10));
    -1/r1 (-1/r2 - 1/(r6+r11)) (1/r2+1/r1+1/r5+1/(r6+r11)) 0; 
    -1/r3 (-1/r4-1/(r8+r10)) 0 (1/r3+1/r7+1/r4+1/(r8+r10))];
B = [0;0;v/r5;0];
X = linsolve(A,B);
Va = X(1);
Vb = X(2);
Vc = X(3);
Vd = X(4);
va(k) = Va;
vb(k) = Vb;
vc(k) = Vc;
vd(k) = Vd;
k = k+1;
end
k = 1: 10;
plot(k,va);
hold on;
plot(k,vb);
hold on;
plot(k,vc);
hold on;
plot(k,vd);
grid on;
end


