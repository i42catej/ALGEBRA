%Ejercicio 8

%Matriz de coeficientes
C = [1 -1 1 1;0 2 1 2;0 0 3 -2;0 0 0 2]

%Términos independientes
D = [3 8 3 2]

tam = length(D);

%Soluciones
X = zeros(1,tam);

for i=tam:-1:1
    x = D(i);
    for j=i+1:tam
        x = x - C(i,j) * X(j);
    end
    x  = x / C(i,i);
    X(i) = x;
end

for i=1:tam
    fprintf('x%d = %f\n',i,X(i));
end