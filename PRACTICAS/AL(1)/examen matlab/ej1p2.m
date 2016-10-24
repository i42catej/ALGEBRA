%ej1p2
v=[2, 7.1, -1, 2.3, 44, 11];
mayor = 0;
for i=1:6
        if mayor < v(i)
            mayor = v(i);
        end
end
fprintf ('mayor: %f \n', mayor);