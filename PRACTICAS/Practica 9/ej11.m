clc

S1=imread('sombra1.png');
S2=imread('sombra2.png');

S1=double(S1);
S2=double(S2);

k=[3 121 206 47;45 0 155 25;164 97 253 135;53 41 211 0];

original=zeros(256,256);

for i=1:4:256
   for j=1:4:256 
        B1=S1(i:i+3,j:j+3);
        B2=S2(i:i+3,j:j+3);
        A=mod(k*(B1+B2),256);
        original(i:i+3,j:j+3)=A;
   end
end

imshow(uint8(original));