%Função ímpar

Ta = 0.001;   
f0 = 1;       
Np = 10;      
bk = [0 4/pi 0 4/(3*pi) 0 4/(5*pi) 0 4/(7*pi) 0 4/(9*pi) 0 4/(11*pi) 0 4/(13*pi)]';
ak = zeros(size(bk));   

[x,t] = funcFourier(Ta,f0,Np,ak,bk);
plot(t,x);
grid;


