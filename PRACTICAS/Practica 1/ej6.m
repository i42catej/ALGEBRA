clc

x=0.5;
sumatotal=0;


for i=1:1:100
    if i==1
        sumatotal=sumatotal+i;
    
    else
    
    sumatotal=sumatotal+i*x^(i-1);
    end
end

fprintf('La suma vale: %.2f\n',sumatotal);