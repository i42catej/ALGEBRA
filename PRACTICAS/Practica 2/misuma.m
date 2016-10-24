function [sumatotal]=misuma(x,n)
sumatotal=1;
for i=2:n
   sumatotal=sumatotal+i*(x^(i-1)); 
end

