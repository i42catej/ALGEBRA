clc

x=zeros(1,3);

for n=1:100
    x(1)=(9-x(2)-x(3))/4;
    x(2)=(10-x(1)-x(3))/3;
    x(3)=(18-x(1)-x(2))/5;
    
fprintf('Her= %d, x1=%f x2=%f x3=%f',n,x(1),x(2),x(3));
end



%Solucion exacta

A=[ 4,1,1; 1,3,1; 1,1,5];
B=[9; 10; 18];

sol=A/B;

fprintf('Solucion exacta %f',sol);
