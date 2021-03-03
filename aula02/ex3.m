disp("potência de x: " + Potencia(x,t));
disp("potência de y: " + Potencia(y,t));
disp("potência de z: " + Potencia(z,t));
disp("potência de w: " + Potencia(w,t));
disp("potência de q: " + Potencia(q,t));

function p = Potencia(x,t)
    p = sum(x .^ 2) / length(t);
end
