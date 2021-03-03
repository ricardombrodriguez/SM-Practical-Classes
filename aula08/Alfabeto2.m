function [Simbolos, Frequencia] = Alfabeto2(Texto)
    n = 1;
    Simbolos = [];
    Frequencia = [];
    for k = 1 : length(Texto)
        if (sum(Simbolos == Texto(k)) == 0)
            Simbolos(n) = Texto(k);
            Frequencia(n) = 1;
            n = n + 1;
        else
            Frequencia(find(Simbolos == Texto(k))) = Frequencia(find(Simbolos == Texto(k))) + 1;
        end
    end
    Simbolos = char(Simbolos)
    Frequencia = Frequencia ./ sum(Frequencia)
end

