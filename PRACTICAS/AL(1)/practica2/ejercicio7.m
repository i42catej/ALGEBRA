%ejercicio7
%generar lista aleatoria de 1000 num entre 1 y 100
 lista=ceil(100*rand(1,1000));
 
 apariciones=0;
 
 numero=input('introduce numero entre 1 y 100: ');
 for(i=1:1000)
        if(numero == lista(i))
            apariciones=apariciones+1;
            fprintf('posicion-> %d \n', i);
        end
 end
 fprintf('aparece %d veces', apariciones);
 
 
 