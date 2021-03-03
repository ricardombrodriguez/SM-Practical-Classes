ta = 0.001;
t = [0:ta:5-ta];
p = Power(x,ta)

x = sin(2*pi*t);
plot(t,x);

function power = Power(x,ta)
    power = sum(x.^2)/length(x);
end