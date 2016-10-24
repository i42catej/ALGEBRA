%Ejercicio 7
clear;
A = imread('lamp.bmp'); %Imagen original bmp en uint8
A = double(A); %En formato doble precision
[fil,col] = size(A); %Tamaño de la imagen

B = zeros(4,4); %Matriz auxiliar para la transformacion
J = zeros(fil,col); %Imagen reconstruida

%Matriz donde almacenaremos la base wavelet de Haar
T = [1 1 1 0;1 1 1 0;1 1 -1 0;1 1 -1 0];

for i=1:4 %Obtenemos la matriz ortogonal
    T(:,i) = T(:,i) / norm(T(:,i));
end %Así la inversa será igual a la traspuesta

for i=1:4:fil
    for j=1:4:col
        B = A(i:i+3,j:j+3); %Extrae las submatrices de 8x8
        B = (T') * B * T;   %Las transforma
        for k=1:4
            for m=1:4
                if  B(k,m) < 4.5
                    B(k,m) = 0; %Anula los elementos menores a 3.5
                end
            end
        end
        A(i:i+3,j:j+3) = B;
    end
end

cont = 0; %Cuenta el número de ceros
for i=1:fil
    for j=1:col
        if A(i,j) == 0
            cont = cont + 1;
        end
    end
end
fprintf('%d ceros en total\n',cont);

for i=1:4:fil
    for j=1:4:col
        J(i:i+3,j:j+3) = T * A(i:i+3,j:j+3) * (T');
    end
end
J = uint8(J);
imshow(J);