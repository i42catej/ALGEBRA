x=0;
contador=0;
while (x<=0.95)
contador=contador+1;%incrementa el contador cada vez que la x es menor o igual que 0.95
x=rand(1);
fprintf('%f\n',x);
end
fprintf('contador=%d\n',contador);

%x=rand(1)devuelve un numero aleatorio entre 0 y 1
%rand(1,5) devuelve un vector de 5 componentes con numeros aleatorios entre
%0 y 1
%la orden rand(3,2)devuelve una matriz de tamaño 3x2 de numeros aleatorios
%entre 0 1

%que es lo que hace?
%tengo una varibale x e una variable contador iniciadas a 0.
%va a ir generando un numero aleatorio entre 0 y 1 mientras que la z sea
%menor que 0,95 y a su vez ira incrementado el valor de contador.
%Finalmente saldra del bucle cuando la x obtenga un valor mayor que 0,95
%mostrando por pantalla la variable contador.






