%Ejercicio 3
j=1;
for i=0:0.01:2
    x(j) = i;
    j = j+1;
end
y = (3309/1327) * exp((2924/5847) * x);

x_o = [0 0.5 1 1.5 2];
y_o = [2.1 3.6 4.9 5.2 6.1];

plot(x,y,x_o,y_o,'or');