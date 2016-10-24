%Ejercicio 7
%Calcular la inversa de una matriz triangular superior
%mediante el método de Gauss-Jordan

%Original
S = floor(rand(7,7)*6);
S(:,1)=0;
S(4,1)=1;
%Copia
T = S;
[fil,col] = size(T);
U = eye(fil);

for i=1:col
    %Comprobación de que el pivote no es 0
    %Si es 0 lo intercambia por otra fila en que no lo sea
    if T(i,i) == 0
        for j=i+1:fil
            if T(j,i) ~= 0
                aux = T(i,:);
                T(i,:) = T(j,:);
                T(j,:) = aux;

                aux = U(i,:);
                U(i,:) = U(j,:);
                U(j,:) = aux;
                disp(T);
            end
        end
    end
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
fprintf('Determinante de la matriz original = %f',det(S));
S*U