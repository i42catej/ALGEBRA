%ejercicio5
%Codigo1
tic
    fprintf('codigo1\n');
    A = rand(1000, 1000);%crea una matriz de 1000x1000 con numeros aleatorios
    S=zeros(1000,1000); %crea una matriz de todo ceros
    for i=1:10
        S=S+A^i;%eleva la matriz a i y lo guarda
    end
toc

%codigo2
tic
    fprintf('codigo2\n');
    A = rand(1000, 1000);
    S=zeros(1000,1000);
    potencia=eye(1000);
    for i=1:10
        potencia=potencia*A;%
        S=S+potencia;
    end
toc