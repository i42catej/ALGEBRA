clc


A=imread('estegolsb1.png');
imshow(A);
B=A(1, 1:15)

for i=1:15
    if(mod(B(i),2)==0)
        bit(i)=0;
    end
    
    if(mod(B(i),2)~=0)
        bit(i)=1;
    end
end

bit

sumaA=0;
elevado=4;

for i=1:5
    
   if(bit(i)==1)
       sumaA=sumaA+2^(elevado);
       elevado=elevado-1;
   end
   
   if(bit(i)==0)
       elevado=elevado-1;
   end
end

fprintf('Primer numero %d\n',sumaA);


elevado=4;
sumaB=0;
for i=6:10
    
   if(bit(i)==1)
       sumaB=sumaB+2^(elevado);
       elevado=elevado-1;
   end
   
   if(bit(i)==0)
       elevado=elevado-1;
   end
end

  fprintf('Segundo numero %d\n',sumaB);  
  
  
  elevado=4;
  sumaC=0;
for i=11:15
    
   if(bit(i)==1)
       sumaC=sumaC+2^(elevado);
       elevado=elevado-1;
   end
   
   if(bit(i)==0)
       elevado=elevado-1;
   end
end

  fprintf('Tercer numero %d\n',sumaC); 