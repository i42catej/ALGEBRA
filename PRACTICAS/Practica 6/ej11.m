clc

m=input('Introduzca un numero entero positivo: ');

if m>0
    for i=1:m
          for j=1:m
            if i*j==m+1
                fprintf('El numero %d es inversible\n',i);
            end
          end
    end
else
    fprintf('El numero debe de ser positivo\n');
end
