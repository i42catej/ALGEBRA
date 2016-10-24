function [ inv ] = inv_mod( x , z )
%INV_MOD Inverso de un número en módulo 'z'
%   Cálcula el inverso de cualquier número en una base 'z' dada buscando
%   por fuerza bruta. Devuelve 0 si hay algún error

    inv = 0;

    for i=1:z-1
        a = mod(x*i,z);
        if(a == 1)
            inv = i;
            break;
        end
    end
    
end

