%ejercicio10
%un numero es divisble al hacer la division entera el resto es cero.
contador =0;
for(i=1:100)
    if(mod(i, 2) ~= 0 && mod(i, 3) ~= 0 && mod(i,5)~=0)
        contador=contador+1  
    end
end
fprintf('numeros no divisibles por 2 3 y 5-> %d', contador);


