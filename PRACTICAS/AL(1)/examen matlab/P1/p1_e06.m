%Ejercicio 6
x = 0.5;
suma = 0;

for i = 1:100
    suma = suma + (i * x^(i-1));
end

fprintf('Los 100 primeros términos de la serie suman %f\n',suma);