load("Guitar03.mat");
%sound(x, fa);

Ta = 1/fa;
x = x - mean(x);
[X, f] = espetro(x, Ta);
xlim([-4e3 4e3]);

fc1 = 600;
fc2 = 400;

H = zeros(length(f), 1);
% um filtro ____|----|_____|----|_____
H(f > -fc1 & f < -fc2 | f > fc2 & f < fc1) = 1;
Y = H.*X;

figure(20);
plot(f, abs(Y));
xlabel("Frequência (Hz)");
ylabel("FFT");
xlim([-4e3 4e3]);

% sinal reconttruído para poder ser reproduzido
[w, tn] = reconstroi(Y, f);

N = length(x);

% cálculo da potência
Px = x'*x/N;
Pw = w'*w/N;

% isto apenas serve para manter a amplitude do sinal sempre nos mesmos
% valores
w = w * sqrt(Px/Pw);
%sound(w, fa);
%%
MaxDelay = 0.3;
NumComp = 5;
c = Chorus(x, fa, MaxDelay, NumComp);
sound(c, fa);

figure(2);
[C, fc] = espetro(c, Ta);
xlim([0 1.5e3]);
%%
Delay = 0.2;
Gain = 0.8;
r = Reverb(x, fa, Delay, Gain);
sound(r, fa);

figure(3);
[R, fr] = espetro(r, Ta);
xlim([0 1.5e3]);
