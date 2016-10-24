v= [2 3 5 -7.1];
producto=1;
for i=1: length(v)
    producto=producto*v(i);
    
end
fprintf('El producto vale: %d\n',producto);