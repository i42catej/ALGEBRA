clc


sumatotal=1;

for i=2:1:10000
    sumatotal=sumatotal+(1/(i^2));
end


fprintf('La suma total vale: %f\n',sumatotal);