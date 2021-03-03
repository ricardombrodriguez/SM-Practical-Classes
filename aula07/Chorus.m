function [y] = Chorus(x,fa, MaxDelay, NumComp)
    % MaxDelay é o número máximo de segundos que o sinal deve atrasar
    % NumComp é o "número de instrumentos que tem a orquestra", neste caso,
    % quantas guitarras queremos a tocar ao mesmo tempo

    N = length(x);
    
    y = zeros(N, 1);
    
    for n = 1 : NumComp
        CurDelay = random('uniform', 0, MaxDelay, 1,1);
        % se o CurDelay for 0 então não há atraso e dn é = a 1
        dn = max([1 round(CurDelay*fa)]);
        y(dn : end) = y(dn:end) + x(1 : end - dn+1);
    end
    
    Px = x'*x/N;
    Py = y'*y/N;
    
    y = y*sqrt(Px/Py);
end

