clc 

A=[ 1 0 -1; 1 1 2; 0 1 1];
B=[ 2 1 1; 0 0 3; 1 -1 1];

%a)
fprintf('Apartado a)\n');

A*B
B*A

%Los resultados no coinciden. Era previsible ya que el producto
%de matrices no es commutativo

%b)
fprintf('Apartado b)\n');

(A+B)^2
(A^2)+2*A*B+(B^2)

%Los resultados no coinciden. Era previsible ya que (x+y)² en matrices no
%es lo mismo que x²+2xy+y² ya que no se cumple la propiedad commutativa 
%del producto. 


%c)
fprintf('Apartado c)\n');
(A+B)*(A-B)
(A^2)-(B^2)

%Los resultados no coinciden. Era previsible ya que son operaciones
%totalmente distintas que no tienen igualdad ninguna, ni cumplen ninguna
%propiedad la propiedad commutativa ya que a*b no es igual que b*a.
