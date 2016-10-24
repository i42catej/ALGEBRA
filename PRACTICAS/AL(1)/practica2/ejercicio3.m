%ejercicio 3 la succesion de fibonacci 1, 1, 2, 3, 5, 8, 13 ...
n=input('introduce un numero: ');
v=zeros(1,10);
posicion=0;
v(1)=1;
v(2)=1;
disp(v(1));
disp(v(2));

if(n == v(1))
    fprintf('pos1\n');
end
if(n== v(2))
    fprintf('pos2\n');
end

for(i=3:10) 
    
   v(i)=v(i-1)+v(i-2);
   disp(v(i));
   
  if(n == i)
      posicion=v(i); 
   end 
   
end
fprintf('el valor n introducida almacena el numero %f', posicion);
 



