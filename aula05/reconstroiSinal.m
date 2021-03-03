function ReconstroiSinal (x,Ta)
  
  N = length(x);
  y = zeros(100*N,1); % Sinal reconstruido
  fa = 1/Ta;
  fy = 100 * fa;  % Frequencia de amostragem de Ys
  Ty = 1/fy;
  
  t = [0:(length(y)-1)]' * Ty;  % Vetor de instantes de tempo na nova discretizacao
  
  for n=1 : N
    y = y + x(n)*sinc(fa*(t-(n-1)*Ta));  % t -(n-1) => delta(t)
  end
  
  plot(t,y,[0:(N-1)]'*Ta,x,'.'); 
  xlabel('Tempo');
  ylabel('Sinal');
  grid;
end