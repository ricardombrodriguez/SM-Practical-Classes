%ex06)  A = 1; média = 0; desvio = 0.1;
   t = [0 : 0.01 : 10];
   y = sawtooth(4*pi*t,1/2);
   plot(t,y);
   N = length(y);
   r = random('normal',0,0.1,N,1);
%                            |...|-> matriz Nx1           
%   rn = random('normal',0,d,N,1)                        
%                  |     | |                              
%          tipo de <     | > desvio padrão                
%     distribuiçao       |                  (dados do enunciado)                            
%                      média 


   %onda -> 
   a=sum(y.^2)/N; 
   %ruido -> 
   b=sum(r.^2)/N;
   
   %RESPOSTA --->>> 
   10*log10(a/b)