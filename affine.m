function G = affine(F, a11, a12, a21, a22, tx, ty)

[tinggi, lebar] = size(F);
G = zeros(tinggi, lebar); % initialize output variable

for y=1 : tinggi
    for x=1 : lebar
        x2 = a11 * x + a12 * y + tx;
        y2 = a21 * x + a22 * y + ty;
        if (x2>=1) && (x2<=lebar) && ...
           (y2>=1) && (y2<=tinggi)

           % Lakukan interpolasi bilinear 
           p = floor(y2);
           q = floor(x2);
           a = y2-p;
           b = x2-q;

           if (q < lebar) && (p < tinggi)
               intensitas = (1-a)*((1-b)*F(p,q) + ...
                             b * F(p, q+1)) + ...
                             a *((1-b)* F(p+1, q) + ...
                             b * F(p+1, q+1));
           else
               intensitas = F(y, x);
           end

           G(y, x) = intensitas;
        end   
    end
end

G = uint8(G); % convert output variable to uint8

end

 

