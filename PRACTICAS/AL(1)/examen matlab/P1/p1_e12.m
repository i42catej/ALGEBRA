%Ejercicio 12
d = ceil(6*rand(1,100));    %Esta orden crea un vector de 100 elementos
                            %aleatorios entre 0 y 1, los multiplica por 6
                            %y redondea por exceso, obteniendo finalmente
                            %números aleatorios entre 1 y 6
                            
cont = zeros(6);

fprintf('Tiradas:\n');

for i=1:100
    fprintf('%d, ',d(i));
    cont(d(i)) = cont(d(i)) + 1;
end



fprintf('\nOcurrencias:\n');
for i=1:6
    fprintf('Número %d: %d\n',i,cont(i));
end
