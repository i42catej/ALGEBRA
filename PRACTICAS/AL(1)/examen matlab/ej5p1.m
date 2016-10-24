%ejercicio5 p1

A=[2 3 5 -7.1; 1 2 3 4];
suma=0;

[nfilas, ncolumnas]=size(A);

%sfilas
for i=1:nfilas
    for j=1:ncolumnas
        suma=suma+A(i,j);
    end
    fprintf('suma filas %d: %f\n',i, suma);
    suma=0;
end

suma=0;

%scol
for j=1:ncolumnas
    for i=1:nfilas
        suma=suma+A(i,j);
    end
    fprintf('suma col %d: %f\n', i, suma);
    suma=0;
end

for(j=1:ncolumnas)
    for(i=1:nfilas)
            suma=suma+A(i,j);
    end
    fprintf('columna %d resultado: %f \n', j, suma);
    suma=0;
end
    
    
    
    