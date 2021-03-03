    
function [x,t] = funcFourier(Ta,f0,Np,ak,bk)
  N = round(Np/(f0*Ta));  % Nº de amostras do sinal 
  t = [0:(N-1)]'*Ta;       % Vetor de instantes de tempo 
  x = zeros(size(t));     % x = zeros(N,1);
  for k = 1:length(ak)
    x = x + ak(k)*cos(2*pi*(k-1)*f0*t) + bk(k)*sin(2*pi*(k-1)*f0*t);
  end
end
