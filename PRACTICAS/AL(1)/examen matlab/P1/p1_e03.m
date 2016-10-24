%Ejercicio 3
x = [2 3 5 -7.1]
producto=1;

for i = 1:length(x)
    producto = producto * x(i);
end

fprintf('Producto = %f\n',producto);