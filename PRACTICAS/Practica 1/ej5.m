
clc

a=[2 3 5 -7.1; 1 2 3 4];

sumafila1=0;
sumafila2=0;
sumacolumna1=0;
sumacolumna2=0;
sumacolumna3=0;
sumacolumna4=0;
sumacuadrados=0;

%Suma de las filas
for i=1:4
    sumafila1=sumafila1+a(1,i);
end
fprintf('Suma de la fila1: %.2f\n',sumafila1);


for i=1:4
    sumafila2=sumafila2+a(2,i);
end
fprintf('Suma de la fila2: %.2f\n',sumafila2);

%Suma de las columnas
for i=1:2
    sumacolumna1=sumacolumna1+a(i,1);
end
fprintf('Suma de la columna1: %.2f\n',sumacolumna1);


for i=1:2
    sumacolumna2=sumacolumna2+a(i,2);
end
fprintf('Suma de la columna2: %.2f\n',sumacolumna2);


for i=1:2
    sumacolumna3=sumacolumna3+a(i,3);
end
fprintf('Suma de la columna3: %.2f\n',sumacolumna3);

for i=1:2
    sumacolumna4=sumacolumna4+a(i,4);
end
fprintf('Suma de la columna4: %.2f\n',sumacolumna4);


%Suma del cuadrado de cada elemento
for i=1:2
    for j=1:4
        sumacuadrados=sumacuadrados+a(i,j)*a(i,j);
    end
end

fprintf('Suma de los cuadrados de todos los elementos: %f\n',sumacuadrados);


