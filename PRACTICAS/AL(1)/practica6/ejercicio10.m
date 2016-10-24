n=input('Introduce un numero para ver si es inversible: ');

modulo = 256;

resto = mod( modulo, n);

while resto ~= 0 
     resto = mod( modulo, n);
     modulo = n;
     n = resto;  
    
end

 if modulo == 1
        fprintf('tiene inverso');
     else
         fprintf('no tiene inverso');
     end
     
 




