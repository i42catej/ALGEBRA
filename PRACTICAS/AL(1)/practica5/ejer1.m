%ejercicio1 
A=[1 0 -1; 1 1 2; 0 1 1];
B=[2 1 1; 0 0 3; 1 -1 1];
fprintf('producto de (A+B*(A-B))\n');
disp((A+B*B-A))

fprintf('producto de A^2-B^2\n');
disp(A^2-B^2)



