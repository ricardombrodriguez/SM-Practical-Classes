
img = imread("Parede.jpg");
figure(1);
image(img);
whos img

delta = 2;
img4 = img(1:delta:end,1:delta:end,:);

figure(2);
image(img4);
whos img4

delta = 8;
img8 = img(1:delta:end,1:delta:end,:);

figure(3);
image(img8);
whos img8

delta = 16;
img16 = img(1:delta:end,1:delta:end,:);

figure(4);
image(img16);
whos img16


