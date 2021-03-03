function [NumBits,NumBPS] = GeraMensagem(f,CompMesg,nBits)
    NumBits = 0;
    mensagem = "";
    for k = 1 : CompMesg
        num = min(find(rand() < cumsum(f)));
        NumBits = NumBits + strlength(nBits(num));
        mensagem = mensagem + nBits(num);
    end
    NumBPS = NumBits / CompMesg;
    disp("Mensagem: " + mensagem);
end
