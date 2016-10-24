A=[4 1 0 0 0; 2 3 1 0 0; 0 1 1 1 0; 0 0 2 1 2; 0 0 0 3 1];
B=[9; 7; 0; 1; -2];

n=5;
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



