%Ejercicio 3
clf;
j=1;
for i=0:0.01:1
    x(j) = i;
    j = j+1;
end
y = 4.9073 * x.^2;

x_o = [0.2 0.4 0.6 0.8 1];
y_o = [0.196 0.785 1.7665 3.1405 4.9075];

plot(x,y,x_o,y_o,'or');