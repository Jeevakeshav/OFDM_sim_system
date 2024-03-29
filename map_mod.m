function map = map_mod(bits,n,type)
    map = zeros(1,n);
switch (type)
    case 0 
        map = (1/sqrt(2))*((1-2*bits) + i*(1-2*bits));
    case 1 
        for k=1:n
            map(k) = (1/sqrt(2))*((1-2*bits(2*k-1))+i*(1-2*bits(2*k)));
        end
        
    case 2 
%         for k=1:n
%            map(k) = (1/sqrt(10))*((1-2*bits(4*k-3))*(2-(1-2*bits(4*k+2-3)))+i*(1-2*bits(4*k+1-3))*(2-(1-2*bits(4*k+3-3))));   
%         end
         map = wlanConstellationMap(bits',4);
    

    otherwise
        map =wlanConstellationMap(bits',2*type);
end

end