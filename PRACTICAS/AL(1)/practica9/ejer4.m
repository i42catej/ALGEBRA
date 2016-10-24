clc

%rellenar matriz 
A=zeros(3,3);
for i=1:3
        A(i,i)=4;
        if(i<3)
            A(i,i+1)=1;
            A(i+1,i)=2;
        end
end

n=3;

%rellenar matriz derecha
B=zeros(3);
for i = 1:3
    B(i)=(i^2)/10
end

for i = 2:n
    k=-A(i, i-1)/A(i-1, i-1);
    A(i,i)=A(i,i)+A(i-1, i)*k;
    B(i)=B(i)+B(i-1)*k;
end

x=zeros(1,n);
x(n)=B(n)/A(n,n);

for(i=n-1:-1:1)
    x(i)=(B(i)-A(i,i+1)*x(i+1))/A(i,i);
end

disp(x)
