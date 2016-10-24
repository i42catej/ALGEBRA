%ejercicio4
A=[1 2 3; 0 1 0; 0 0 1];
S=zeros(3, 3);
potencia=eye(3);

%codigo1
tic
fprintf('codigo1\n');
for(i=1:50)
        S=S+A^i;
end
disp(S);
toc

tic
%codigo2
S=zeros(3, 3);
fprintf('codigo2');
for(i=1:50)
    potencia=potencia*A;
    S=S+potencia;
end
disp(S);
toc




