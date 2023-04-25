img = imread('D:\AVATAR.jpg');
theta = 30; % sudut rotasi dalam derajat
center = [200 200]; % titik pusat rotasi
[rows, cols, ~] = size(img); % mengambil ukuran citra
bbox = [center(1)-cols/2 center(2)-rows/2 cols-1 rows-1]; % menghitung ukuran bounding box
rotated_img = imrotate(img, theta, 'bilinear', 'crop', 'loose', 'bbox', bbox); % memutar citra
imshow(rotated_img); % menampilkan citra hasil rotasi
