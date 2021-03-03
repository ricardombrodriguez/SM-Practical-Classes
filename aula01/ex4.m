t1 = [0:.01:5]
t2 = [0:.01:5]
    q = zeros(length(t1),length(t2));

for n = 1 : length(t2)
   q(:,n) = 2 * sin(2*pi*(2*t1+t2(n)));
end

%este último é mais eficiente porque é so um ciclo for - O(n)
%q(:,n) admite todas as linhas (:) e (n) colunas

mesh(t1,t2,q);  %mesh cria um gráfico 3d (x,y,z)
xlabel('t1');
ylabel('t2');
zlabel('q(t1,t2)');

colormap('gray');
colorbar();