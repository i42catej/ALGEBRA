%Ejercicio 9

r = ceil(rand(1,1000)*100);

fprintf('He generado 1000 números aleatorios\n');

s = input('Que numero quieres buscar?: ');
fprintf('\n');

oc = 0;

for i=1:1000
    if r(i) == s
        fprintf('Posicion %d\n',i);
        oc = oc + 1;
    end
end

fprintf('El numero aparece %d veces\n',oc);