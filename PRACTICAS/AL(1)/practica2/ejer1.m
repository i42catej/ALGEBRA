v=[2 7.1 -1 2.3 44 11];

mayor=0;
tamanyo=6;

for(i=1:tamanyo)
     if(mayor < v(i))
         mayor=v(i);
     end
end

fprintf('el numero mayor es %f: \n', mayor);
