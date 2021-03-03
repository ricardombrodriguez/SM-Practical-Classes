function [ak, bk] = funcCoeficients(Ta,t0,x,K)
    N = round(t0/Ta);
    x = x(1:N);
    t = 2*pi*(0:N-1)/N;
    ak = zeros(1,K);
    bk = zeros(1,K);
    for k = 1:K
        ak(k) = 2/N*sum(x.*cos(k*t));
        bk(k) = 2/N*sum(x.*sin(k*t));
    end
end