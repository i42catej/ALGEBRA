%Comprobación del ejercicio 4

format rat;

a=2
b=-(3/4)

A = [0 a;(b+1) 0]
B = eye(2);
S = zeros(2);

for i=1:1000
    S = B + S;
    B = B * A;
end

S

format;