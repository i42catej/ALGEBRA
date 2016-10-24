clc

%Apartado a)
A=[1 -1 0; 2 0 3; -1 1 3];
I=[1 0 0; 0 1 0; 0 0 1];

B=A*A-6*A+5*I;
B

%Apartado b)

[nfil1,ncol1]=size(A);
[nfil2,ncol2]=size(I);

B=zeros(nfil1,ncol2);

if ncol1==nfil2
    
    for i=1:nfil1
        for j=1:ncol2
            for k=1:ncol1
                B(i,j)= B(i,j)+ A(i,k)*A(k,j)-6*A(i,j)+5*I(i,j);
            end
        end
    end
    
end

B