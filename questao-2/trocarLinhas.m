function A = trocarLinhas (A, linhaAtual, linhaMaior) %aqui faz o que? altera matriz P
    linhaAux = A(linhaAtual, : );
    A(linhaAtual, : ) = A(linhaMaior, : );
    A(linhaMaior, : ) = linhaAux;
end