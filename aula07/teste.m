Q = imread('Garca.jpg');
T = zeros(size(Q));
for l = 1 : height(T)
    for c = 1 : length(T)
        if 
        T(l,c,:) = Q(l,c,:) - Q(l,c+1,:); 
    end
end

