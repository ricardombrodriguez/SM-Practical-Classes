clear all
close all
clc

%% I.1
[img,map] = imread('Parede_8bit.dib');
figure(1);
imshow(img,map);

%% I.2
% input: img
% output img_rle
[N,M]=size(img); % N=nº linhas (vertical), M=nª colunas (horizontal)
NM = N*M; % nº de pixeis da imagem
x = reshape(img',1,N*M); % tudo numa linha, linha a linha da imagem original
img_rle = zeros(0,0,'uint8');
i = 1;
while i <= NM
  c = x(i); % cor 
  j = 1;    % nº de repetições
  while i+j <= NM && j < 256 && x(i+j) == c
    j = j+1;
  end
  img_rle(end+1) = c; % índice da cor
  img_rle(end+1) = j; % contagem
  i = i + j;
end

%% I.3
save_filename = 'parede.rle';
fid = fopen(save_filename,'w');
fwrite(fid,N,'uint16');
fwrite(fid,M,'uint16');
fwrite(fid,255*map,'uint8');
fwrite(fid,img_rle,'uint8');
fclose(fid);

%% I.4
load_filename = 'parede.rle';
fid = fopen(load_filename,'r');
N_ = fread(fid,1,'uint16'); % read uint16, store double
M_ = fread(fid,1,'uint16');
map_ = fread(fid,[256,3],'uint8')/255; % read a 256x3 matrix
img_rle_ = fread(fid,inf,'uint8=>uint8'); % read uint8, store uint8
fclose(fid);

%% I.5
if N_*M_ ~= sum(img_rle_(2:2:end))
  error('BAD DATA');
  quit;
end
img_ = zeros(N_*M_,1,'uint8');
ii=0; % índice da última posição do array img_ já feita
for i=1:2:length(img_rle_)
  c = img_rle_(i);           % índice da cor
  n = double(img_rle_(i+1)); % contagem (convertido para double)
  img_(ii+1:ii+n) = c;
  ii = ii+n;
end
if ii ~= N_*M_
  error('IMPOSSIBLE!');
  quit;  
end
img_ = reshape(img_,M,N)';

%% II.1
simbolos = unique(img);
freq = zeros(size(simbolos));
for i=1:length(simbolos)
  freq(i) = sum(sum(img == simbolos(i)));
end
freq = 100/sum(freq)*freq;
