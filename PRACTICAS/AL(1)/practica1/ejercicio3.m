vector=[2 3 5 -7.1];
producto=1;
for(i=1:length(vector))
    producto=producto*vector(i);
end
fprintf('resultado: %d', producto);