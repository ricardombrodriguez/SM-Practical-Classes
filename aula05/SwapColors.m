figure(1);
imagem = imread('Parede.jpg');
imshow(imagem);

figure(2);
im(:,:,1) = imagem(:,:,3);
im(:,:,2) = imagem(:,:,1);
im(:,:,3) = imagem(:,:,2);
imshow(im);