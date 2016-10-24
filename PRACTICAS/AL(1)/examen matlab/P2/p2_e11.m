%Ejercicio 11
v = input('Introduce vector: ');
max = v(1);
for i=2:length(v)
    if max < mimax(v(i-1),v(i))
        max = mimax(v(i-1),v(i));
    end
end

fprintf('Máximo = %f\n',max);