img = imread('D:\AVATAR.jpg'); % membaca citra
[rows, cols, ~] = size(img); % mengambil ukuran citra
rotated_imgs = zeros(rows, cols, 3, 360); % membuat matriks kosong untuk menyimpan citra hasil rotasi

for i = 1:360
    rotated_imgs(:,:,:,i) = imrotate(img, i-1, 'bilinear', 'crop');
end

% Menampilkan citra hasil rotasi
figure;
set(gcf, 'Position', [100, 100, 1200, 800])
for i = 1:360
    subplot(30,12,i);
    imshow(uint8(rotated_imgs(:,:,:,i)));
end


