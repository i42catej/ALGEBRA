%Ejercicio 8.2
a1=2;a2=3;
for i=3:100
    a3=a2+0.1*a1;
    a1 = a2;
    a2 = a3;
end
fprintf('el término 100 es %f\n',a3); 