%Ejercicio 8
%Soluciona un sistema tridiagonal de 100x100
clear;

%Inicialización de matrices
A = zeros(100,100);
B = zeros(100,1);

A(1,1) = 4;
A(1,2) = 2;
A(100,99) = 1;
A(100,100) = 4;

B(1) = 0.1;
B(100) = 1000;
for i=2:99
    A(i,i-1) = 1;
    A(i,i) = 4;
    A(i,i+1) = 2;
    
    B(i) = (i^2) / 10;
end


[fil col] = size(A); %Fil == Col obligatoriamente

X = zeros(fil,1); %Vector de incógnitas

%Reducida de Gauss
for i=1:fil-1
   pivot = A(i,i);
   A(i,:) = A(i,:) / pivot;
   B(i) = B(i) / pivot;
   
   B(i+1) = B(i+1) + (-A(i+1,i) * B(i));
   A(i+1,:) = A(i+1,:) + (-A(i+1,i) * A(i,:));
end

B(fil) = B(fil) / A(fil,fil);
A(fil,fil) = 1;

%Solución
X(fil) = B(fil);

for i=fil-1:-1:1
    X(i) = B(i) - (A(i,i+1) * X(i+1));
end
