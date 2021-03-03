function [x,t] = CalcSignal(Ck,f0)
    N = length(Ck);
    Ta = 1/f0;
    t = [0:(N-1)]'*Ta;
    x = ifftshift(ifft(Ck));
    idx = find(x>0);
    x(idx) = -x(idx);
end