%% a)

Ta = 0.01;
Np = 10;
t = [0:Ta:Np-Ta];
x = sin(2*pi*t);        %f = T = 1
[X,f,f0] = Espetro(x,Ta);
[y,t2] = CalcSignal(X,f0);


%% b)

Ta = 0.01;
T = 5;
t = [0:Ta:T-Ta];
y = sin(10*pi*t) + cos(12*pi*t) + cos(14*pi*t-pi/4);
[Y,f] = Espetro(y,Ta,22);

%% c)

Ta = 0.001;
T = 5;
t = [0:Ta:T-Ta];
z = (square(2*pi*t)+1)/2;
[Z,f] = Espetro(z,Ta,23);

%% d)

Ta = 0.001;
T = 5;
t = [0:Ta:T-Ta];
q = sawtooth(2*pi*1*t,1/2);
[Q,f] = Espetro(q,Ta,24);
