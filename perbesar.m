function Img = perbesar(berkas, sy, sx)
    F = imread(berkas);
    [tinggi, lebar, ~] = size(F);
    
    tinggi_baru = round(tinggi * sy);
    lebar_baru = round(lebar * sx);
    
    G = zeros(tinggi_baru, lebar_baru, 'uint8');
    for y = 1 : tinggi_baru
        y2 = ((y - 1) / sy) + 1;
        if round(y2) > tinggi % memeriksa apakah indeks y2 melebihi ukuran gambar F
            y2 = tinggi;
        end
        for x = 1 : lebar_baru
            x2 = ((x - 1) / sx) + 1;
            if round(x2) > lebar % memeriksa apakah indeks x2 melebihi ukuran gambar F
                x2 = lebar;
            end
            G(y, x) = F(round(y2), round(x2));
        end
    end
    
    % Menampilkan gambar asli dan gambar hasil perbesaran
    figure;
    subplot(1, 2, 1);
    imshow(F);
    title('Gambar asli');
    subplot(1, 2, 2);
    imshow(G);
    title('Gambar hasil perbesaran');
    
    Img = G;
end
