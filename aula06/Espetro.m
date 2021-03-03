function [X,f] = Espetro(x,Ta)
    N = length(x);
    deltaf = 1/(N*Ta);
    fa=1/Ta;
    X = fftshift(fft(x))/N;
    f=[ (-fa/2) : deltaf : ((+fa/2) - deltaf)]';
    % ou: f = [0: (N-1)]' * deltaf - fa/2;

    plot(f, abs(X));
    xlabel('Frequência(Hz)'); ylabel('Espetro');
end