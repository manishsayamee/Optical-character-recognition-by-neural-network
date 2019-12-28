function [binary] = makebinary(image)

[r,c] = size(image);
binary = zeros(r , c);

for i = 1:r
    for j = 1:c
        if image(i,j) > 115
            binary(i,j) = 1;
        end
    end
end
end