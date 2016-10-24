%Ejercicio 2
x = 1:1:25;
r = sqrt(x);
l = log(x);

for i = 1:25
    fprintf('Numero: %d | Raíz cuadrada: %f | Log. neperiano: %f\n',x(i),r(i),l(i));
end