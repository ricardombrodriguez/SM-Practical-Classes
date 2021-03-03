function [NumBits] = NumeroBits(Texto)
    [Simbolos, Frequencia] = Alfabeto2(Texto);
    [Frequencia,i] = sort(Frequencia,'descend'); %ordenar a frequencia
    Simbolos = Simbolos(i);
    NumBits = [1:length(Simbolos)]*(Frequencia*length(Texto))';
end

