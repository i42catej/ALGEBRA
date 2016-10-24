%Ejercicio 7
%Soluciona un sistema tridiagonal
clear;

A = [4 1 0 0 0;2 3 1 0 0;0 1 1 1 0;0 0 2 1 2;0 0 0 3 1]; %Matriz de los coeficientes
B = [9;7;0;1;-2]; %Matriz de los términos independientes

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

for i=1:fil
	fprintf('X(%d) = %f\n',i,X(i));
end