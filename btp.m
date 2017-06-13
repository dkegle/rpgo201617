function [ pow_koef ] = btp( bern_koef )
    size = length(bern_koef);
    pow_koef = zeros(1, size);
    for i=0:size-1
        sum = 0;
        for j = i:size-1
            sum = sum + nchoosek(j, i) / nchoosek(size-1, i) * bern_koef(j+1);
        end
        pow_koef(i+1) = sum;
    end
end

