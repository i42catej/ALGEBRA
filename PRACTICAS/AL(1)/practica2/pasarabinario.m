%funcion pasar a binario
function [num]=pasarabinario(numero)

        aux = mod(numero, 2);
        num=numero/2;
        fprintf('%d', aux);
   
   

