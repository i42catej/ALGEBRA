%Ejercicio 9

z = input('Base = ');
x = input('Numero a calcular el inverso = ');

for i=1:z-1
    a = mod(x*i,z);
    if(a == 1)
        fprintf('El inverso de %d en base %d es %d\n',x,z,i);
        break;
    end
end