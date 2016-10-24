%Ejercicio 14
v = [2 7.1 -1 2.3 44 11]

max = v(1);
for i=2:length(v)
    if max < v(i)
        max = v(i);
    end
end

fprintf('Máximo: %d\n',max);