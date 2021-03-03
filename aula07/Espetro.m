function [X,f] = espetro(x,Ta)
    N = length(x);
    
    X = fftshift(fft(x))/N;
    
    f = [0 : (N-1)]'*(1/(N*Ta)) - 1/(2*Ta);
    
    plot(f, abs(X));
    xlabel("Frequência (Hz)");
    ylabel("FFT");
end

