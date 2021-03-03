X = imread("Garca.jpg");
Y = FiltraImagem_Media(X, 3);
imshow(X);
figure(2);
imshow(Y);
figure(3);
imshow(10*abs(Y-X));