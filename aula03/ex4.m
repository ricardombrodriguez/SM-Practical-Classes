%Função par

Ta = 0.001;
f0 = 1;
Np = 10;
ak = [0 2/pi 0 -2/(3*pi) 0 2/(5*pi)];
bk = zeros(size(ak));

[x,t] = funcFourier(Ta,f0,Np,ak,bk);
plot(x,t);
grid;