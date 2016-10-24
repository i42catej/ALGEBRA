%Metodo de jacobi

clc

x=zeros(1,3);
xn=zeros(1,3);

for n=1:10
    xn(1)=(14-3*x(2)-x(3))/10;
    xn(2)=(-5-2*x(1)-3*x(3))/-10;
    xn(3)= (14-x(1)-3*x(2))/10;
    error=max([abs(xn(1)-1),abs(xn(2)-1),abs(xn(3)-1)]);
fprintf('Her= %d, x1=%f x2=%f x3=%f error=%f\n',n,xn(1),xn(2),xn(3),error);

x=xn;
end