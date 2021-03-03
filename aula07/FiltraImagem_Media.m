function [X] = FiltraImagem_Media(Imagem,np)
    X = uint8(zeros(size(Imagem)));
    
    % se np = 3
    
    % |---|
    % | x |
    % |---|
    % x tem coordenadas (5, 6)
    % os pontos no quadrado estão entre 4 e 6 (5-1 e 5+1, em que 1 = (np-1)/2) horizontalmente e entre 5 e 7
    % verticalmente
    aux = (np - 1) / 2;
    
    for linha = 1 + aux : height(Imagem) - aux
        y1 = linha-aux;
        y2 = linha+aux;
        for coluna = 1 + aux : length(Imagem) - aux
            x1 = coluna-aux;
            x2 = coluna+aux;
            
            img_r = Imagem(y1:y2, x1:x2, 1); % todos os pixeis vermelhos da imagem
            img_g = Imagem(y1:y2, x1:x2, 2);
            img_b = Imagem(y1:y2, x1:x2, 3);
            
            img_r = img_r(:);
            img_g = img_g(:);
            img_b = img_b(:);
            
            X(linha, coluna, 1) = mean(img_r);
            X(linha, coluna, 2) = mean(img_g);
            X(linha, coluna, 3) = mean(img_b);
        end
    end
end

