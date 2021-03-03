function [x,t] = Reconstroi(X,f)
    fa = max(abs(f))*2;
    Ta = 1/fa;
    N = length(X);
    x = ifft(ifftshift(X))*N;
    t = [0:(N-1)]'*Ta;
end