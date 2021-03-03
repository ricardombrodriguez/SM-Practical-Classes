t = [0 : 0.001 : 2-0.001];
z = 2*sin(pi*t) + cos(2*pi*t);
plot(t,z);
pr = 0.026;
pz = sum(z.^2)/length(z);
SNRdb = 10*log10(pz/pr);
ENOB = (SNRdb - 1.76) / 6.02