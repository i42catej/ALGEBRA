%ejercicio7

x=input('introduce el valor de x->');
num_sumandos=input('introduce el numero de sumandos->');
suma=0;

for(i=1:1:num_sumandos)
    suma=suma+i*x^(i-1);
end

fprintf('resultado: %f', suma);


