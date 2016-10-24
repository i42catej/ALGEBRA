%Ejercicio 8, apartado 1
%Tabla de sumar y multiplicar en módulo n
n = input('Base = ');

S = zeros(n,n);
M = S;

for i=0:n-1
    for j=0:n-1
        S(i+1,j+1) = mod(i+j,n);
        M(i+1,j+1) = mod(i*j,n);
    end
end

S
M