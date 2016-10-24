%Ejercicio 16

suma = 0;
real = (pi^2)/6;

for i=1:10000
    suma = suma + (1/(i^2));
end

fprintf('pi^2/6 = %f\nsuma = %f\n',real,suma);
