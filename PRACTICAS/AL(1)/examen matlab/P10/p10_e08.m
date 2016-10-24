%Ejercicio 8
clear;
A = zeros(100,100);
B = zeros(100,1);
X = zeros(100,1);

%Inicializacion
A(1,1) = 4;
A(1,2) = 2;
B(1) = 1/10;

for i=2:99
    A(i,i-1) = 1;
    A(i,i) = 4;
    A(i,i+1) = 2;
    B(i) = (i^2)/10;
end

B(100) = 1000;
A(100,99) = 1;
A(100,100) = 4;

C = A\B;
fprintf('Solución exacta:\nX1 = %f\nX25 = %f\nX50 = %f\nX75 = %f\nX100 = %f\n',C(1),C(25),C(50),C(75),C(100));

for i=1:1000
    X(1) = (B(1) - A(1,2)*X(2)) / A(1,1);
    
    for j=2:99
        X(j) = (B(j) - A(j,j-1)*X(j-1) - A(j,j+1) * X(j+1)) / A(j,j);
    end
    
    X(100) = (B(100) - A(100,99)*X(99)) / A(100,100);
end

fprintf('Solución aproximada:\nX1 = %f\nX25 = %f\nX50 = %f\nX75 = %f\nX100 = %f\n',X(1),X(25),X(50),X(75),X(100));
