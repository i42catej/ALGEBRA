%Ejercicio 11

contador = 0;

for i=1:1000
    if ((mod(i,2) ~= 0) && (mod(i,3) ~= 0) && (mod(i,5) ~= 0))
        contador = contador + 1;
    end
end

fprintf('Hay %d números entre 1 y 1000 que no son divisibles ni por 2 ni por 3 ni por 5\n',contador);