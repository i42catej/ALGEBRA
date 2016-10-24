clc


vector=ceil(100*rand(1,1000));  %ceil redondea un numero entre 0 y 1 multiplicado por 100

n=input('Introduce el numero a buscar: ');

nveces=0;

for i=1:1000
    if(vector(1,i)==n)
        fprintf('Elemento encontrado en vector[%d]\n',i);
        nveces=nveces+1;
    end
end


fprintf('El elemento %d ha aparecido %d veces\n',n,nveces);

