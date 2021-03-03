t = [0:.01:5];
z = x .* y  %operação elemento a elemento, assim não se faz a multiplicação normal entre matrizes
plot(t,z,'-g.');