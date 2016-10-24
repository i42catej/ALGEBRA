function [ inv ] = inv_mod( x , z )
%INV_MOD Calcula el inverso modular de x en base z
%   Calcula el inverso de x en base z utilizando el algoritmo de Euclides y
%   el teorema de Bezout. Devuelve 0 si no existe
    
    inv = 0;
    [d a] = gcd(round(x),round(z));
    
    if d==1
        inv = mod(a,z);
    end
    
    %inv = uint8(inv);

end

