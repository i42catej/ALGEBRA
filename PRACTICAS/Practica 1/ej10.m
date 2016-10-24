clc

total=0;
j=1;


    for i=1:1:1000
        if mod(i,2)~=0 && mod(i,3)~=0 && mod(i,5)~=0
                total=total+1; 
        end
        
 
    end


fprintf('El total de numeros no divisibles por 2,3,5 es: %d\n',total);