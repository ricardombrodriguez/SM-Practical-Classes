clear all;
close all;
clc;

Ta = 1/25;

x1 = [-5:Ta:5];
x2 = [-5:Ta:5];
t = [0:Ta:5];

r = zeros(length(x1), length(x2));

for n = 1 : length(t)
  tic;
  for i = 1:length(x1)
    r(i, :) = 2*sin(2*pi*(sqrt(x1(i)^2 + x2.^2)) - 2*pi*t(n));
  end
  mesh(x1,x2,r);
  view(2);
  axis equal;
  drawnow();
  pause(Ta - toc);
end