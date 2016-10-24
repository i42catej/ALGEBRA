fprintf('codigo1\n');
    A = rand(1000, 1000);
    S=zeros(1000,1000); 
    for i=1:10
        B=S+A^i;
    end