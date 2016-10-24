%Ejercicio 5
clear;
x_o = [0 0.3 0.8 1.1 1.6 2.3]; %Datos originales
y_o = [0.82 0.72 0.63 0.6 0.55 0.5];

A = ones(6,2);
A(:,2) = exp((-1)*x_o); %Matriz de los coeficientes
B = y_o.'; %Términos independientes

c = A.' * A \ A.' * B;

j=1;
x = zeros(1,230);
for i=0:0.01:2.3
    x(j) = i;
    j = j+1;
end
y = c(1) + c(2) * exp((-1)*x);

fprintf('c1 = %f\nc2 = %f\n',c(1),c(2));
plot(x,y,x_o,y_o,'or');