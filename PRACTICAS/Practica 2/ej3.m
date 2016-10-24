clc



n=input('Introduce la posicion a buscar: ');

vector=zeros(1,n);
vector(1)=1;
vector(2)=1;

for i=3:n
vector(i)=vector(i)+vector(i-1)+vector(i-2);
end

fprintf('El numero en la posicion %d es %d\n',n,vector(n));

