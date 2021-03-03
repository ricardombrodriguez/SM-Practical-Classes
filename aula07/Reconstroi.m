function [filtrado, t] = reconstroi(X, f)
    N = length(X);
    
    fa = max(abs(f))*2;
    Ta = 1/fa;
    
    filtrado = ifft(ifftshift(X))*N;
    
    t = [0:(N-1)]'*Ta;
end

