%Ejercicio 7

fprintf('Calculo de los N primeros terminos de la serie i * x ^ (i-1)\n');
n = input('N=');
x = input('x=');

suma = 0;

for i = 1:n
    suma = suma + (i * x^(i-1));
end

fprintf('Los %d primeros terminos de la serie suman %f\n',n,suma);