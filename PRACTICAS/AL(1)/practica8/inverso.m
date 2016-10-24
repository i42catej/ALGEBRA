%Método de la fuerza bruta para calcular el inverso
m=input('introduce el modulo en el que quieres trabajar');
x= input('introduce el número al que le quieres calcular el inverso');
inver=0;
for inver=1:m-1
 if mod(inver*x,m)==1
 break;
 end
end
if inver==0
 disp('no existe inverso');
else
 disp(inver);
end 
