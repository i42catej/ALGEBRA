clc

x=zeros(1,3);

for n=1:8
    x(1)=(4-x(2)-x(3))/3;
    x(2)=(4+x(1)-3*x(3));
    x(3)= (-1-2*x(1)-5*x(2));
    error=max([abs(x(1)-1),abs(x(2)+1),abs(x(3)-2)]);
fprintf('Her= %d, x1=%f x2=%f x3=%f error=%f\n',n,x(1),x(2),x(3),error);
end
