clc



sumatotal=0;
x=input('Introduce el valor de x: ');
n=input('Introduce hasta que numero quieres sumar: ');

for i=1:1:n
    if i==1
        sumatotal=sumatotal+i;
    
    else
    
    sumatotal=sumatotal+i*x^(i-1);
    end
end

fprintf('La suma vale: %.2f\n',sumatotal);