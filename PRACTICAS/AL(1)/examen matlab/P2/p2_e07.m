%Ejercicio 7

A = eye(20);

for i=1:19
    A(i,i+1) = 2;
end

for i=2:20
    A(i,i-1) = -3;
end

B = A^2-6*A+5*eye(20);

suma = 0;

for i=1:20
    for j=1:20
        suma = suma + B(i,j);
    end
end

disp(A);
disp(B);
fprintf('Suma de los elementos de la matriz A^2-6A+5I = %f\n',suma);
