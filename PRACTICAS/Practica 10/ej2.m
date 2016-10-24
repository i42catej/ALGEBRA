%Metodo de gauss

clc

x=zeros(1,3);

for n=1:8
    x(1)=(14-3*x(2)-x(3))/10;
    x(2)=(-5-2*x(1)-3*x(3))/-10;
    x(3)= (14-x(1)-3*x(2))/10;
    error=max([abs(x(1)-1),abs(x(2)-1),abs(x(3)-1)]);
fprintf('Her= %d, x1=%f x2=%f x3=%f error=%f\n',n,x(1),x(2),x(3),error);
end
