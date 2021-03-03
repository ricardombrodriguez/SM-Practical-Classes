function y = Eco(x,Ta,w,d)
    N = length(x);                              % calculo do numero de amostras do sinal  
    fa=1/Ta;                                    %
    y = x;                                      % copia de sinal
    for m = 1:length(w)                         % for loop para iteração das novas potencias de sinal
        dm=round(d(m)*fa);                      %
        delay=[zeros(dm,1);x(1:end-dm)];        % calculo do sinal com delay e atraso de d(m) segundos
        y=y+w(m)*delay;                         % somado sinal prévio com o sinal com delay e nova potencia
    end                                         %
    Px = x'*x/N;                                % Potência do sinal x.
    Py = y'*y/N;                                % Potência do sinal w.
    y = y*sqrt(Px/Py);                          % Balanceador da potencia de sinal
end          