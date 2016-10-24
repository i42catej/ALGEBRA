%ejercicio11
%ceil(6*rand(1,100))

%que es lo que hace la orden anterios
%crea un vector de 100 elementos aleatorios entre 0 y 1 y lo multiplica por
%6 y lo redondea al entero mas cercano a la derecha, 2.7=3

%b lanzar 100 veces un dado
    %lanzar=ceil(6*rand(1,100));
    %dfprintf('resultado lanzar 100 veces un dado: %d \n',lanzar);
   
%c cuenta el numero de veces que ha salido un 1 un 2 ...
    lanzar=ceil(6*rand(1,100));
   apariciones1=0;
   apariciones2=0;
   apariciones3=0;
   apariciones4=0;
   apariciones5=0;
   apariciones6=0;

 for(i=1:100)
    if(lanzar(i) == 1)
          apariciones1=apariciones1+1;
    end
    
    if(lanzar(i) == 2)
          apariciones2=apariciones2+1;
    end
    if(lanzar(i) ==3)
          apariciones3=apariciones3+1;
    end
    if(lanzar(i) == 4)
          apariciones4=apariciones4+1;
    end
    if(lanzar(i) == 5)
          apariciones5=apariciones5+1;
    end
    if(lanzar(i) == 6)
          apariciones6=apariciones6+1;
    end
 end
 
 fprintf('veces que aparece el 1: %d\n', apariciones1);
 fprintf('veces que aparece el 2: %d\n', apariciones2);
 fprintf('veces que aparece el 3: %d\n', apariciones3);
 fprintf('veces que aparece el 4: %d\n', apariciones4);
 fprintf('veces que aparece el 5: %d\n', apariciones5);
 fprintf('veces que aparece el 6: %d\n', apariciones6);
          