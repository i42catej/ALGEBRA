function [suma] = misuma(x,n)
suma = 0;

for i=1:n
    suma = suma + i*(x^(i-1));
end