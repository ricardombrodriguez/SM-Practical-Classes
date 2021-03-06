%% USA-SE DOWNSAMPLE SE QUISER REDUZIR O SAMPLE POR UMA DETERMINADA QUANTIDADE, NESTE CASO QUERO REDUZIR A MATRIZ X POR 2!!

Ta = 0.02;
T = 5;
t = [0:Ta:T-Ta];
x = sin(2*pi*t);
figure(1);
plot(t,x);
x2 = downsample(x,2);
figure(2);
t2 = [0:Ta*2:T-Ta*2];
plot(t2,x2);

%% SEM MÉTODOS BUILT-IN DO MATLAB:

y = sin(2*pi*t + pi/3) + cos(5*pi*t - pi/4);
[m,i] = max(y)  % guardar máximo e respetivo index
maxk(y,3)
powery = sum(y.^2)/length(y);
figure(6);
plot(t,y);
q = fftshift(fft(y));
figure(7);
plot(t,q);
colorbar;

%% ADJWIDJWD

ta = 0.01;
t = [0:ta:5-ta];
z = sawtooth(2*pi*t-pi);
z2 = fftshift(fft(z))/length(z);
N = length(z);
fa = 1/ta;
f0 = 1 / (N*ta);
f = [0:(N-1)]' * f0 - fa/2;
figure(3);
plot(t,z);
figure(4);
plot(f, abs(z2));
xlabel('Frequência (Hz)');
ylabel('Magnitude');
title('Espetro');


%%

Ta = 0.01;
x = [0:Ta:5-Ta];
y = x;
z = zeros(length(x),length(y));
for ix = 1 : length(x)
   for iy = 1 : length(y)
       z(ix,iy) = cos(2*pi*(x(ix)-2*y(iy)));
   end
end
figure(87);
mesh(x,y,z);
Z = fft2(z);
figure(88);
imagesc(abs(fftshift(Z)));

%%

Ta = 0.01;
x = [-5:Ta:5-Ta];
y = x;
z = zeros(length(x),length(y));
for ix = 1 : length(x)
   for iy = 1 : length(y)
       z(ix,iy) = cos(2*pi*sqrt(x(ix)^2 + y(iy)^2));
   end
end
figure(88);
mesh(x,y,z);
colorbar;
color;
xlabel('x');
ylabel('y');
zlabel('z');

figure(89);
imagesc(abs(fftshift(fft(z))));

%%

Ta = 0.002;
t = [0:Ta:5-Ta];
r = sawtooth(4*pi*t);
figure(666);
plot(t,r);
R = fftshift(fft(r));
fa = 1/Ta;
N = length(r);
f = (0:N-1)*fa/N;
f = fftshift(f);
i = find(f >= 0.5*fa);
f(i) = f(i) - fa;
figure(6666);
plot(f,abs(R));


