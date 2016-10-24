%Ejercicio 13

cont = zeros(2); %1: cara, 2:cruz

while cont(1)<20
    m(cont(1)+cont(2)+1) = ceil(2*rand(1));
    cont(m(cont(1)+cont(2)+1)) = cont(m(cont(1)+cont(2)+1)) + 1;
end

fprintf('No. de caras: %d\nNo. de cruces: %d\nTiradas totales: %d\n',cont(1),cont(2),cont(1)+cont(2));
