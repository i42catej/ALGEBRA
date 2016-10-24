A=imread('original.png');
A=double(A);
K=[21 22; 18 79];
cifrada=zeros(324,486);
for i=1:324
    for J=1:2:486
        origi=[A(i,j);A(i,j+1)];
        cifra=mod(K*origi,256);
        cifrada(i,j)=cifra(1);
        cifrada(i,j+1)=cifra(2);
    end
end
imshow(unit8(cifrada));
