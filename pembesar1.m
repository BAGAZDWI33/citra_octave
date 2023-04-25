function G = perbesar1(berkas, sy, sx)
F = imread(berkas);
[tinggi, lebar] = size(F);

tinggi_baru = tinggi * sy;
lebar_baru = lebar * sx;

F2 = double(F);
for y=1 : tinggi_baru
    y2 = ((y-1) / sy) + 1;
    for x=1 : lebar_baru
        x2 = ((x-1) / sx) + 1; 
        G(y, x) = F(floor(y2), floor(x2));
    end
end

    
    % Menampilkan gambar asli dan gambar hasil pembesaran
    figure;
    subplot(1, 2, 1);
    imshow(F);
    title('Gambar asli');
    subplot(1, 2, 2);
    imshow(G);
    title('Gambar hasil pembesaran');
    
    Img = G;
end

