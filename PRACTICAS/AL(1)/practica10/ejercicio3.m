%ejercicio1
clear

clc

x=[0, 0, 0];
xn=[0, 0, 0];
for n=1:10
       xn(1)=(4-x(2)-x(3))/3;
       xn(2)=4+x(1)-3*x(3);
       xn(3)=-1-2*x(1)-5*x(2);
     
       error=max([abs(xn(1)-1), abs(xn(2)+1), abs(xn(3)-2)]);
       fprintf('\niteracion= %d xn(1)= %f xn(2)= %f xn(3)= %f error= %f \n', n, xn(1), xn(2), xn(3), error);
       
       x(1)=xn(1);
       x(2)=xn(2);
       x(3)=xn(3);
    
       
       
end


