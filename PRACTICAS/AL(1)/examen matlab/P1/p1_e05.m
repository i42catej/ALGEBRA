%Ejercicio 5

A = [2 3 5 -7.1 ; 1 2 3 4];

[nFilas, nColumnas] = size(A);

sumaFilas = zeros(nFilas,1);        %Creo una matriz vertical para la suma de las filas
sumaColumnas = zeros(1,nColumnas);  %y una horizontal para la suma de las columnas, ambas inicializadas a cero
sumaCuadrados = 0;

for i = 1:nFilas         %Sólo se recorre una vez la matriz para todos los cálculos
    for j = 1:nColumnas
        sumaFilas(i,1) = sumaFilas(i,1) + A(i,j);
        sumaColumnas(1,j) = sumaColumnas(1,j) + A(i,j);
        sumaCuadrados = sumaCuadrados + (A(i,j))^2;
    end
end

sumaFilas
sumaColumnas
sumaCuadrados