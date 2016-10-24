%Ejercicio 8
A=[0 1/3 0;1/3 0 0;0 0 1/3]
aux = eye(3);

S = zeros(3,3);

i = input('Cuantas iteraciones de la serie S=I+A+A^2+A^3+... quieres calcular?: ');

for j=1:i
    S = S + aux;
    aux = aux * A;
end

disp(S);