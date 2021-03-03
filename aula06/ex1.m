%% 1)


Ta = 0.0001;
t = [0:Ta:2-Ta]';
N = length(t);
[x,t] = GeraSinal(N,Ta);

%% 2)

figure(2);
[X,f] = Espetro(x,Ta);

%% 3)

H = zeros(size(f))';
H((f > -2) & (f < 2)) = 1;
Y = H.*X;
figure(3);
[y,t] = Reconstroi(Y,f);
plot(t,y);

%% 4)

H = zeros(size(f))';
H((f < -2) | (f > 2)) = 1;
Y = H.*X;
figure(4);
[z,t] = Reconstroi(Y,f);
plot(t,z);

%% verificação da soma do sinal limpo + ruído

q = y + z;
figure(5);
plot(t,q);

%% 5)

pot_sinal = Potencia(x);
pot_ruido = Potencia(z);
snr_db = 10*log10(pot_sinal/pot_ruido);
%Px = VFS^2 / 8;
%dp = VFS / 2^N

