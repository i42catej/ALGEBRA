clc



n=input('Introduce el numero de sumandos: ');

B=zeros(3,3);
B(1,2)=1/3;
B(2,1)=1/3;
B(3,3)=1/3;
sumatotalB=1;

A=zeros(3,3);
A(1,1)=1;
A(2,2)=1;
A(3,3)=1;
sumatotalA=1;

S=zeros(3,3);


for i=2:2:n
    sumatotalB=sumatotalB+1/(3^i);
    sumatotalA=sumatotalA+1/(3^i);
end

fprintf('Valor de la suma A: %f\n',sumatotalA);
fprintf('Valor de la suma B: %f\n',sumatotalB);
S=sumatotalA*A+sumatotalB*B;
S
    



