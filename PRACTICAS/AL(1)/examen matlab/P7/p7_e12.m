%Ejercicio 12
clear;
M = imread('cifrada_color.bmp','bmp');
N = double(M); %Matriz sobre la que se trabajar�
[fil,col,pro] = size(N); %Dimensiones de la matriz
vec = zeros(2); %Vector sobre el que se operar�
vec2 = zeros(2);
K = zeros(2,2,3);
K(:,:,1) = [21 35;18 79];
K(:,:,2) = [11 48;3 119];
K(:,:,3) = [80 47;39 109];

%Calculo de la matriz inversa
K_i = zeros(2,2,3);
for h=1:3
    K_i(:,:,h) = inv_mod_matrix(K(:,:,h),256);
end

% cont = 1;
% for i=1:fil
%     for j=1:2:col
%         vec(cont) = N(i,j);
%         vec(cont+1) = N(i,j+1);
%         cont = cont + 2;
%     end
% end

for h=1:3
    %fprintf('h=%d\n',h);
    for i=1:fil
        %fprintf('i=%d\n',i);
        for j=1:2:col
            %fprintf('j=%d\n',j);
            vec(1) = N(i,j,h);
            vec(2) = N(i,j+1,h);
            vec2 = K_i(:,:,h) * vec;
            N(i,j,h) = mod(vec2(1),256);
            N(i,j+1,h) = mod(vec2(2),256);
        end
    end
end

N = uint8(N);
imwrite(N,'cifrada_color_d.bmp');