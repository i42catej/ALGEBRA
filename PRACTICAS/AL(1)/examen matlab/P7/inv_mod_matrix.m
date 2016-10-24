function [ B ] = inv_mod_matrix( A , z )
%INV_MOD_MATRIX Devuelve la matriz inversa a A en m�dulo z
%   Devuelve la inversa de una matriz en modulo z si existe. Si no existe,
%   devuelve una matriz nula
    
    B = det(A) * inv(A);
    B = inv_mod(det(A),z) * B;
    B = mod(B,z);
    B = round(B);

end

