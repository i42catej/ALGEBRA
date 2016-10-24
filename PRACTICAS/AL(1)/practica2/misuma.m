%ejercicio8
function [suma]=misuma(x, n)
    
    suma=0;

    for(i=2:n)
        suma=suma+(i*(x^(i-1)));
    end 

fprintf('valor devuelto por la funcion\n');
disp(suma);