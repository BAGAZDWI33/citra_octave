F = imread('D:\AVATAR.jpg');
[tinggi, lebar] = size(F);

sx = 45; % Penggesaran arah horisontal
sy = -35; % Penggesaran arah vertikal

F2 = double(F);
G = zeros(size(F2));
for y=1 : tinggi
    for x=1 : lebar
        xlama = x - sx;
        ylama = y - sy;

        if (xlama>=1) && (xlama<=lebar) && ...
           (ylama>=1) && (ylama<=tinggi)
           G(y, x) = F2(ylama, xlama);
        else
           G(y, x) = 0; 
        end
    end
end
G = uint8(G);
figure(1); imshow(G);
