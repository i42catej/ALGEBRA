clc

M=zeros(20,20);

for i=1:20
    for j=1:20
        if(i==j)
            M(i,j)=1;
        end  
    end
end


for i=1:19
    M(i,i+1)=2;
end

for i=2:20
    M(i,i-1)=-3;
end




for i=1:20
    for j=1:20
        fprintf('%d',M(i,j));
    end
    fprintf('\n');
end






%CALCULAR LA SUMA DE LA OPERACION

AUX=zeros(20,20);
I=zeros(20,20);
for i=1:20
    for j=1:20
        if(i==j)
            I(i,j)=1;
        end
    end
end

sumatotal=0;

AUX=M*M;
AUX=AUX-6*M;
AUX=AUX+5*I;

for i=1:20
    for j=1:20
        sumatotal=sumatotal+AUX(i,j);
    end
end


fprintf('\n\n La suma total vale: %d\n',sumatotal);

