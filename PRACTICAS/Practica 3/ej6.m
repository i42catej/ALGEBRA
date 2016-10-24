clc

M1=[2 2; 2 3; 1 2];
M2=[1 2 3; -1 1 0];

[nfil1,ncol1]=size(M1);
[nfil2,ncol2]=size(M2);

M3=zeros(nfil1,ncol2);

if ncol1==nfil2
    
    for i=1:nfil1
        for j=1:ncol2
            for k=1:ncol1
                M3(i,j)= M3(i,j)+ M1(i,k)* M2(k,j);
            end
        end
    end
    
end

M3