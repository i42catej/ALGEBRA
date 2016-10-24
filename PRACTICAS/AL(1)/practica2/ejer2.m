%ejercicio2
inverso=1;
%relleno de vector
v=1:1000;

for(i=2:1000)
    inverso=inverso+1/(v(i)^2);
end

fprintf('resultado suma inversos de 1000 terminos es: %f\n', inverso);