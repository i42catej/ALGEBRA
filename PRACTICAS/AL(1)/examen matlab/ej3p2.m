%ej3p2
n=input('introduce un numero: ');
v=zeros(1,10);
v(1)=1;
v(2)=1;
disp(v(1));
disp(v(2));
for i=3:10
    v(i)=v(i-1)+v(i-2);
    fprintf('suma: %f\n', v(i));
    
    if(n == i)
        fprintf('posicion %d', i);
    end
end



