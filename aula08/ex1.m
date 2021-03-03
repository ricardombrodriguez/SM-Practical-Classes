load('Mensagem.mat');

%%

Simbolos = Alfabeto1(Mensagem);

%%

[Simbolos,Frequencia] = Alfabeto2(Mensagem);
for k = 1 : length(Simbolos)
    disp("Caractere '" + Simbolos(k) + "' --> Frequência = " + Frequencia(k));
end

%%

binary = zeros(ceil(log2(length(Simbolos))),length(Simbolos));
for sim = 1 : length(Simbolos)
    valor = sim - 1;
    for linha = 4 : -1 : 1
        binary(linha,sim) = rem(valor,2);
        valor = floor(valor/2);
    end
end

str = "";
for c = Mensagem
   index = find(Simbolos == c);
   for k = 1:4
      str = str + binary(k,index); 
   end
end

disp(str);

disp("3) Número de bits precisos = " + strlength(str));

%%

NumBits = NumeroBits(Mensagem);
disp("4) Número de bits precisos = " + NumBits);

%%

H = Entropia(Mensagem);

%%

%0
%1000
%1001
%1010
%1011
%1100
%1101
%1110
%1111

bits = [1 4 4 4 4 4 4 4 4];
nBits = 0;
for k = 1 : length(Mensagem)
    nBits = nBits + bits(find(Simbolos == Mensagem(k)));
end
nBits
numBPS = nBits / length(Mensagem)