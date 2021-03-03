function [y] = Reverb(x,fa,Delay,Gain)
    N=length(x);
    y=zeros(N, 1);
    D = round(Delay*fa);
    
    for n = 1 : N
        y(n) = x(n) + Gain*y(max([1 n-D]));
    end
    
    Px = x'*x/N;
    Py = y'*y/N;
    y = y*sqrt(Px/Py);
end

