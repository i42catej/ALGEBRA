%Ejercicio 10

z = input('Base = ');

for i=1:z-1
    for j=1:z-1
        a = mod(i*j,z);
        if(a == 1)
            fprintf('%d es inversible y su inverso es %d\n',i,j);
        end
    end
end