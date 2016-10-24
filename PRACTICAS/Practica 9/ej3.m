clc 


A=zeros(100,100);
for i=1:100
    A(i,i)=4;
    if(i<100)
        A(i,i+1)=1;
        A(i+1,i)=2;
    end
    
end

B=zeros(100);
for i=1:100
    B(i)=(i^2)/10;
end

n=100;

for i=2:n
    k=-A(i,i-1)/A(i-1,i-1);
    A(i,i)=A(i,i)+A(i-1,i)*k;
    B(i)=B(i)+B(i-1)*k;
end

x=zeros(1,n);
x(n)=B(n)/A(n,n);
for i=n-1:-1:1
    x(i)=(B(i)-A(i,i+1)*x(i+1))/A(i,i);
end
disp(x);