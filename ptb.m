function [ bern_koef ] = ptb( pow_koef )
    size = length(pow_koef);
    bern_koef = zeros(1, size);
    for i = 0:size-1
        sum = 0;
        for j = i:size-1
            sum = sum + (-1)^(i+j) * nchoosek(size-1, j) * nchoosek(j,i) * pow_koef(j+1);
        endfor
        bern_koef(i+1) = sum;
    endfunction
endfunction

