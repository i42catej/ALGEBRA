matriz=eye(20);

for i=1:20
    for j=1:20
       if i-j == -1
           matriz(i,j)=2
       end
       
       if i-j == 1
           matriz(i,j)=-3
       end
    end
end
