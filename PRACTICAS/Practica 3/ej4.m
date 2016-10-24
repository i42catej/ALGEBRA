clc 


A=[1 2 3; 0 1 0;0 0 1];
S=zeros(3,3);


for i=1:50
    S=S+A^i;
end

S