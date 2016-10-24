%Ejercicio 6
F(1) = 1;
F(2) = 1;
fprintf('%19d, %19d, ',F(1),F(2));

for i=3:1000
    F(i) = F(i-2) + F(i-1);
    fprintf('%19d, ',F(i));
    if(mod(i,6) == 0)
        fprintf('\n');
    end
end

F(100)

fprintf('\n');