function G = cerminh(F)
[tinggi, lebar] = size(F);

for y=1 : tinggi
    for x=1 : lebar
        x2 = lebar - x + 1;
        y2 = y;

        G(y, x) = F(y2, x2); 
    end
end
end
Atau

function H = cerminv(F)

[tinggi, lebar] = size(F);

for y=1 : tinggi
    for x=1 : lebar
        x2 = x;
        y2 = tinggi - y + 1;

        G(y, x) = F(y2, x2); 
    end
end
end

G = uint8(G);
 
