%ej6p1

x=0.5;
suma1=1;
suma2=1;
sumatotal=0;
for i=3:100
    sumatotal=sumatotal+i*x^(i-1);
end
sumatotal=suma1+suma2+sumatotal;
fprintf('suma: %f\n', sumatotal);