function r = posto (A)                
    dim = size(A,1); % apenas vale para matriz escalonada
    r = dim - sum(sum(abs(A')) == 0); %compara cada elemento do vetor que tem as somas das linhas de A com o inteiro zero
end 