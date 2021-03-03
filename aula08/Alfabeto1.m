function Simbolos = Alfabeto1(Texto)
    n = 1;
    Simbolos(n,1) = Texto(1);
    for k = 2 : length(Texto)
       if sum(Simbolos == Texto(k)) == 0
          n = n + 1;
          Simbolos(n,1) = Texto(k);
       end
    end
end

%function Simbolos = Alfabeto1(Mensagem)
%    Simbolos = [];
%    Texto = char(Mensagem);
%    for c = Texto
%        if sum(ismember(Simbolos,c)) == 0
%           Simbolos(end+1) = c;
%        end
%    end
%    Simbolos = char(Simbolos)
%end

