%Ejercicio 7
clear;
A = imread('lamp.bmp'); %Imagen original bmp en uint8
A = double(A); %En formato doble precision
[fil,col] = size(A); %Tama�o de la imagen

B = zeros(8,8); %Matriz auxiliar para la transformacion
J = zeros(fil,col); %Imagen reconstruida

%Matriz donde almacenaremos la base wavelet de Haar
T = [1 1 1 0 1 0 0 0;1 1 1 0 -1 0 0 0;1 1 -1 0 0 1 0 0;1 1 -1 0 0 -1 0 0;1 -1 0 1 0 0 1 0;1 -1 0 1 0 0 -1 0;1 -1 0 -1 0 0 0 1;1 -1 0 -1 0 0 0 -1];

for i=1:8 %Obtenemos la matriz ortogonal dividiendo entre la norma de cada columna
    T(:,i) = T(:,i) / norm(T(:,i));
end %Asi la inversa sera igual a la traspuesta

for i=1:8:fil
    for j=1:8:col
        B = A(i:i+7,j:j+7); %Extrae las submatrices de 8x8
        B = (T') * B * T;   %Las transforma
        for k=1:8
            for m=1:8
                if  abs(B(k,m)) < 3.5
                    B(k,m) = 0; %Anula los elementos menores a 3.5
                end
            end
        end
        A(i:i+7,j:j+7) = B;
    end
end

cont = 0; %Cuenta el numero de ceros
for i=1:fil
    for j=1:col
        if A(i,j) == 0
            cont = cont + 1;
        end
    end
end
fprintf('%d ceros en total\n',cont);

for i=1:8:fil
    for j=1:8:col
        J(i:i+7,j:j+7) = T * A(i:i+7,j:j+7) * (T');
    end
end

J = uint8(J);
imwrite(J,'lamp_compr.bmp');