%Ejercicio 15
a=input('Valor de a = ');
b=input('Valor de b = ');
c=input('Valor de c = ');

v(1)=a;
v(2)=b;
v(3)=c;
check = 1;

while check == 1;
    check = 0;
    for i=1:2
        if v(i+1) < v(i)
            aux = v(i+1);
            v(i+1) = v(i);
            v(i) = aux;
            check = 1;
        end
    end
end

fprintf('Ordenados:\n%d, %d, %d\n',v(1),v(2),v(3));