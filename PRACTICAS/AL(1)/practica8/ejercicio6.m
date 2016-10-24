K = [21, 35; 18, 79];   %Clave
A = imread('matricial.png');  %Leemos a imagen

M3 = zeros(2);
H = zeros(2,1);
[M, N] = size(A);	%Obtenemos el tamaño de la imagen
grises = zeros(2, 1);
BT = zeros(2, 1);

deter = det(K); %Calculamos su determinante
M2 = [K(2,2), -K(1,2); -K(2,1), K(1,1)];%matriz adjunta

d=gcd(deter,256);    %Calculamos el inverso
if(d==1)
    for inver =1:256
        if mod(inver*deter,256)==1
            break;
        end
    end
else
    inver=-1;
    fprintf('no tiene inverso\n');
end

for i=1:2   %Obtenemos la matriz inversa
    for j=1:2
        M3(i,j) = mod(inver * M2(i,j), 256);
    end
end
 
for i=1:1:M
    for j=1:2:N
        B = A(i:i, j:j+1);  %Sacamos la submatriz
        BT = double(B');    %Hallamos la transpuesta
        H = mod(M3*BT,256);  %Realizamos el producto y el módulo
        grises(i,j) = H(1,1);
        grises(i,j+1) = H(2,1);
    end
end
 
imshow(uint8(grises))  %Mostramos la imagen
