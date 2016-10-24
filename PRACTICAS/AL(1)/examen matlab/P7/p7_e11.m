%Ejercicio 11
clear;
M = imread('matricial.png');
N = double(M); %Matriz sobre la que se trabajará
[fil,col] = size(N); %Dimensiones de la matriz
vec = zeros(2); %Vector sobre el que se operará
vec2 = zeros(2);
K = [21 35;18 79];

%Calculo de la matriz inversa
K_i = inv_mod_matrix(K,256);

% cont = 1;
% for i=1:fil
%     for j=1:2:col
%         vec(cont) = N(i,j);
%         vec(cont+1) = N(i,j+1);
%         cont = cont + 2;
%     end
% end

for i=1:fil
    for j=1:2:col
        vec(1) = N(i,j);
        vec(2) = N(i,j+1);
        vec2 = K_i * vec;
        N(i,j) = mod(vec2(1),256);
        N(i,j+1) = mod(vec2(2),256);
    end
end

N = uint8(N);
imwrite(N,'matricial_d.png');