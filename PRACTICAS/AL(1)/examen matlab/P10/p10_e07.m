%Ejercicio 7
A = [4 1 1;1 3 1;1 1 5];
B = [9;10;18];
X = zeros(1,3);

for i=1:100
    X(1) = (9 - X(2) - X(3)) / 4;
    X(2) = (10 - X(1) - X(3)) / 3;
    X(3) = (18 - X(1) - X(2)) / 5;
end

fprintf('Solución aproximada:\nX1 = %f\nX2 = %f\nX3 = %f\n',X(1),X(2),X(3));

C = A \ B;

fprintf('\nSolución exacta:\nX1 = %f\nX2 = %f\nX3 = %f\n',C(1),C(2),C(3));