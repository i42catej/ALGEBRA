%Ejercicio 9

A=zeros(10,10);
suma = 0;

for i=1:10
    for j=1:10
        A(i,j) = 1.0/(i+j);
    end
end

for i = 1:10
    for j=1:10
        suma = suma + 5*A(i,j);
    end
end

fprintf('Suma de todos los elementos de la matriz 5A = %f\n',suma);