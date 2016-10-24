%Ejercicio 17
num = 0;
bin = 0;

num = input('Introduce un número en base decimal: ');
while num < 0 || num > 255
    num = input('Introduce un número en base decimal: ');
end

aux = num;

for i=0:7
    bin = bin + mod(aux,2)*10^i;
    aux = floor(aux/2);
end

fprintf('Equivalente binario : %08d\n',bin);