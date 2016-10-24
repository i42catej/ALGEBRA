%ejercicio4
matriz=eye(20)
for(i=1:20)
     for(j=1:20)
        %restamos las posiciones i y j y segun el resultado ponemos un
        %numero  otro
        if(i-j == -1)
            matriz(i,j)=2;
        end
        if(i-j == 1)
            matriz(i,j)=-3;
        end
     end
end
%   A^2-6A+5I
m=matriz^2-6*matriz+5*eye(20);

resultado=sum(sum(m));
disp(m);
disp(resultado);

