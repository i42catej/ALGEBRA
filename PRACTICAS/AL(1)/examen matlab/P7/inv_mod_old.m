function [ inv ] = inv_mod( x , z )
%INV_MOD Inverso de un n�mero en m�dulo 'z'
%   C�lcula el inverso de cualquier n�mero en una base 'z' dada buscando
%   por fuerza bruta. Devuelve 0 si hay alg�n error

    inv = 0;

    for i=1:z-1
        a = mod(x*i,z);
        if(a == 1)
            inv = i;
            break;
        end
    end
    
end

