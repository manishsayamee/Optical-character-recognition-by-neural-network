function [iron, N] = charsegment(image)
[r , c] = size(image);
image = [zeros(r,1), image , zeros(r,1)];
[r , c] = size(image);
z(1:c) = 0;

for i = 1:c
    for j = 1:r
        if image(j,i) == 1
            z(i) = z(i) + 1;
        end
    end
end

for i = 1:c
    if z(i) > 0
        z(i) = 1;
    end
end
N = sum(diff(z)>0); %number of characters

terp = diff(z);
terp = terp*-1;
terp = [terp 0];

if N ~=0
mat(r,50,N) = 0;
m = 1;

    for j = 1:c
        if terp(j) <0
            var = j+1;
                for ir2 = 1:r
                    mat(ir2,var,m) = image(ir2,var);
                end
            i = j+1;
            if j == c-1
                break;
            end
            while terp(i) ~= 1
            if terp(i) == 0
           
    
            end
            i = i+1;
            end
            for ir = var:i
                for cap = 1:r
                    mat(cap,ir,m) = image(cap,ir);
                end
            end
            m = m+1; 
        end
    end
end

for i =1:N-1
    mat(:,:,i+1) = circshift(mat(:,:,i+1),[0 , -i*20]);
end
iron = mat;
end