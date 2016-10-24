%ejercicio7p2
contador = 0;
n=input('introduce un numero entre 1 y 100: ');

if n > 100 || n < 0
    fprintf('error, introduce otro numero');
end

%crear lista aleatoria de 1000 num;
 a=ceil(100*rand(1,1000));
for i=1:1000
    if a(i) == n
        contador=contador+1;
    end
end

fprintf('el valor n: %d, se repite %d', n, contador);







