%Ejercicio 7
%Calcular la inversa de una matriz triangular superior
%mediante el método de Gauss-Jordan

%Original
S = floor(rand(7,7)*6);
%Copia
T = S;
[fil,col] = size(T);
U = eye(fil);

for i=1:col
    %Toma el pivote de mayor valor absoluto
    k = i;
    for j=k:fil
        if(abs(T(j,i)) > abs(T(k,i)))
            k = j;
        end
    end
    aux = T(i,:);
    T(i,:) = T(k,:);
    T(k,:) = aux;
    
    aux = U(i,:);
    U(i,:) = U(k,:);
    U(k,:) = aux;
    
    disp(T);
    
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