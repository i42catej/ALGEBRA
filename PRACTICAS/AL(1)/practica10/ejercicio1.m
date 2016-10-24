%ejercicio1
clc
x=[0, 0, 0];
xn=[0, 0, 0];
%error=[0, 0, 0];

for n=1:10
       xn(1)=(14-3*x(2)-x(3))/10;
       xn(2)=(-5-2*x(1)-3*x(3))/(-10);
       xn(3)=(14-x(1)-3*x(2))/10;
       error=max([abs(xn(1)-1), abs(xn(2)-1), abs(xn(3)-1)]);
       fprintf('\niteracion= %d xn(1)= %f xn(2)= %f xn(3)= %f error= %f \n', n, xn(1), xn(2), xn(3), error);
       
       x=xn;

end


