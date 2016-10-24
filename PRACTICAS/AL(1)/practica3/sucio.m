A=[1 2 3; 0 1 0; 0 0 1];
suma=0;
tic 
for i=1:50
    suma=suma+A^i;
end

disp (suma);
toc

tic
S=zeros(3, 3);
potencia=eye(3);
for i=1:50
    potencia=potencia*A;
    S=S+potencia;
end 
disp(S);
toc