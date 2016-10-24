A=[2 2; 2 3; 1 2];
B=[1 2 3; -1 1 0];

[nfilas1, ncolumnas1]=size(A);
[nfilas2, ncolumnas2]=size(B);

R=zeros(nfilas1, ncolumnas2);

%comprobacion para saber si las matrices se puede multiplicar.
if ncolumnas1 == nfilas2

   for i=1:nfilas1
        for j=1:ncolumnas2
            for k=1:ncolumnas1
               R(i, j)=R(i, j)+A(i, k)*B(k, j);
            end
        end
   end  
end

disp(R);



