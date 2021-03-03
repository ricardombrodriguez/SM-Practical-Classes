Ta = 0.001;
t = [0:Ta:3];

x = 2*sin(4*pi*t);
y = sin(10*pi*t + pi/2);
z = sin(6*pi*t) + sin(8*pi*t);
w = sin(6*pi*t) + sin(8*pi*t + 0.1);
q = sin(6*pi*t) + sin(7*pi*t) + sin(8*pi*t);

plot(t,x,'--g'  ,'LineWidth',1.5);
hold on
plot(t,y,'-r');
plot(t,z,'-b','LineWidth',2);
plot(t,w,'-y','LineWidth',1.5);
plot(t,q,'-k','LineWidth',2);
xlabel("Time(s)");
ylabel("Function");
title("Function x/y/z/w/q");
legend('x','y','z','w','q');
grid;