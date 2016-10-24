%ejercicio5
A=[2 3 5 -7.1; 1 2 3 4];
suma=0;
sumacuadrados=0;
[nfilas, ncolumnas]=size(A);

%suma de cada fila
fprintf('suma de las filas\n');
for(i=1:nfilas)
    for(j=1:ncolumnas)
        suma=suma+A(i,j);
        sumacuadrados=sumacuadrados+A(i,j)^2;
    end
     fprintf('fila %d resultado: %f \n', i, suma);
     suma=0;
end
fprintf('la suma de los cuadrados de todos los elementos de la matriz es %f', sumacuadrados)

suma=0;

fprintf('\nsuma de las columnas\n');
for(j=1:ncolumnas)
    for(i=1:nfilas)
            suma=suma+A(i,j);
    end
    fprintf('columna %d resultado: %f \n', j, suma);
    suma=0;
end







