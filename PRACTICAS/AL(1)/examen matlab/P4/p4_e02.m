
for i=1:50000000
a = rand(1,1)*50;
A = [a 0 1;1 a 1;1 2 -2];

    if det(A) == 0
        disp(a);
        disp(A);
    end
end