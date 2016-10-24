
%ejercicio12
%lanzamiento de una moneda

num_caras=0;
num_cruz=0;
tiradas=0;

while(num_caras < 20)

	cara_cruz=round(rand(1));
	
	if(cara_cruz == 0)
		num_caras=num_caras+1;
		tiradas=tiradas+1;
	end
	if(cara_cruz ==1)
		num_cruz=num_cruz+1;
		tiradas=tiradas+1;
	end
end
fprintf('numero de caras: %d, numero de cruces %d, en %d lanzamientos.', num_caras, num_cruz, tiradas);
		
