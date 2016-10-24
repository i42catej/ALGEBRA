clc

x=0;
contador=0;

while (x<=0.95)
contador=contador+1;
x=rand(1);
fprintf('%f\n',x);
end


fprintf('contador=%d\n',contador);


%Genera numeros aleatorios entre 0 y 1 hasta que se genere un numero
%superior a 0.95. Al terminar el bucle muestra el total de numeros
%generados.