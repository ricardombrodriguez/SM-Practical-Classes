p = [14 65 5 10 6]'/100;
H = p' * log2(1./p);
binario = ["00" "1" "0110" "010" "0111"];           %código de huffman
m = sum(p' * 1000 .* strlength(binario))

%%

[numBits, numBPS] = GeraMensagem(p,1000,binario);
disp("numBits: " + numBits);
disp("numBPS: " + numBPS);

%%

binario = ["100" "0" "111" "101" "110"];            %código diferente do huffman e não-ambíguo
[numBits, numBPS] = GeraMensagem(p,1000,binario);
disp("numBits: " + numBits);
disp("numBPS: " + numBPS);