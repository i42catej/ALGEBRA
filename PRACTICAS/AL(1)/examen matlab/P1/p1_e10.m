%Ejercicio 10

x=0;
contador = 0;

while(x <= 0.95)
    contador = contador + 1;
    x = rand(1);
    fprintf('%f\n',x);
end

fprintf('contador = %d\n',contador);