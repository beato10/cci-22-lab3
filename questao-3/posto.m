function r = posto (A)                %alterar para exemplo do pdf do lab
    r = 0; % r de rank
    [m, n] = size(A);
    for ii = 1 : m
        jj = 1;
        while A(ii, jj) == 0 && jj < n
            jj = jj + 1;
        end
        if A(ii, jj) ~= 0
            r = r + 1;
        end
    end
end 