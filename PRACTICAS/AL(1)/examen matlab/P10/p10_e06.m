%Ejercicio 6
clear;
I = imread('lena.bmp');
I = double(I);

[U,S,V] = svds(I,50);

IC = U*S*V';
IC = uint8(IC);

imwrite(IC,'lena_c.bmp');