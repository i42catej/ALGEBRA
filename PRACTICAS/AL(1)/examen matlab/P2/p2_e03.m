%Ejercicio 3

A = [1 2 3;0 1 0;0 0 1]
B = A;
S = zeros(3,3);

tic();
for i=1:50
    S = S + B;
    B = B*A;
end
tiempo = toc();

fprintf('Sumatorio de A^n desde n=1 hasta 50:\n');
S

fprintf('He tardado %f\n',tiempo);