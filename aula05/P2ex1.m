Ta = 0.05;
x1 = [0:Ta:(5-Ta)]';
x2 = x1;
y = zeros(length(x2), length(x1));
for n = 1:length(x1)
   y(:,n) = cos(2 * pi * (x1(n) - 2 * x2)); 
end
figure(1);
mesh(y); view(2);
axis equal;