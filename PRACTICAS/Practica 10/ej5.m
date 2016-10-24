clc

%metodo de Gauss-Seidel
x=zeros(1,100);


for n=1:100
    x(1)=(((1^2)/10)-2*x(2))/4;
        for i=2:99
            x(i)=(((i^2)/10)-x(i-1)-2*x(i+1))/4;
        end
    x(100)=(((100^2)/10)-x(99))/4;
end
fprintf('aproximados x(1)=%f\n',x(1));
fprintf('aproximados x(25)=%f\n',x(25));
fprintf('aproximados x(50)=%f\n',x(50));
fprintf('aproximados x(75)=%f\n',x(75));
fprintf('aproximados x(100)=%f\n',x(100));

%Solución exacta
A=zeros(100,100);
sol=zeros(1,100);
for i=1:100
    A(i,i)=4;
end

for i=1:99
    A(i,i+1)=2;
end
    
for i=2:100
    A(i-1,i)=1;
end
B=zeros(100,1);

sol=A\B;

fprintf('exactos x(1)=%f\n',sol(1));
fprintf('exactos x(25)=%f\n',sol(25));
fprintf('exactos x(50)=%f\n',sol(50));
fprintf('exactos x(75)=%f\n',sol(75));
fprintf('exactos x(100)=%f\n',sol(100));
