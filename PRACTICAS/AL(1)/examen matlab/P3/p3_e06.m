%Ejercicio 6
%Calcular la inversa de una matriz triangular superior
%mediante el método de Gauss-Jordan

%Original (genera una matriz triangular superior aleatoria)
S = floor(rand(7,7)*6);
L = triu(S);
for i=1:7
    while L(i,i) == 0
        L(i,i) = floor(rand(1,1)*6);
    end
end
S = triu(L);
%Copia
T = S;
[fil,col] = size(T);
U = eye(fil);

for i=1:col
    pivot = T(i,i);
    U(i,:) = U(i,:) / pivot;
    T(i,:) = T(i,:) / pivot;
   for j=1:fil
       if j ~= i
           U(j,:) = U(j,:) + (-T(j,i)) * U(i,:);
           T(j,:) = T(j,:) + (-T(j,i)) * T(i,:);
       end
   end
end

fprintf('Matriz original = \n');
disp(S);
fprintf('\n\nMatriz inversa = \n');
disp(U);

S*U