clc

inverso=0;
num2=0;
num=input('Introduce el numero para saber si tiene inverso: ');

if num>0 && num<255
    for i=1:254
       if num*i==257
            inverso=1;
            num2=i;
       end
    end
    
    if inverso==1
        fprintf('El numero %.2d es inversible en Z256 y su inverso es %d\n',num,num2);
    else
        fprintf('No tiene inverso\n');
    end
    
else
   fprintf('El numero debe ser entre 0 y 255\n'); 
end



