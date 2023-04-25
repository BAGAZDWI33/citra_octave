function Img = kecilkan(berkas, skala)
    F = imread(berkas);
    [tinggi, lebar, ~] = size(F);
    
    tinggi_baru = round(tinggi / skala);
    lebar_baru = round(lebar / skala);
    
    G = zeros(tinggi_baru, lebar_baru, 'uint8');
    for y = 1 : tinggi_baru
        y2 = (y - 1) * skala + 1;
        for x = 1 : lebar_baru
            x2 = (x - 1) * skala + 1;
            G(y, x) = mean(mean(F(y2 : y2 + skala - 1, x2 : x2 + skala - 1)));
        end
    end
    
    % Menampilkan gambar asli dan gambar hasil pengecilan
    figure;
    subplot(1, 2, 1);
    imshow(F);
    title('Gambar asli');
    subplot(1, 2, 2);
    imshow(G);
    title('Gambar hasil pengecilan');
    
    Img = G;
end

