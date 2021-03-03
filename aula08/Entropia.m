function H = Entropia(Texto)
    [simbolos,frequencia] = Alfabeto2(Texto);
    H = 0;
    for k = 1 : length(frequencia)
        prob = frequencia(k);
        H = H + prob * log2(1/prob);
    end
end

