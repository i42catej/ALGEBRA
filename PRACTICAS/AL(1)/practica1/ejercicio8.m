%ejercicio8
%Primera forma de hacerlo usando un vector
a=zeros(1,100);
a(1)=2;
a(2)=3;
fprintf('··primera forma··\n')
for i=3:100
    a(i)=a(i-1)+0.1*a(i-2);
end
fprintf('el término 100 es %f\n',a(100));

%Segunda forma de hacerlo sin vectores. Sólo con tres variables: a1, a2 y a3
a1=2;a2=3;
fprintf('··segunda forma··\n')
for i=3:100
    a3=a2+0.1*a1;
    a1=a2;
    a2=a3;
    
end

fprintf('SEG FORM el término 100 es %f\n',a3);




