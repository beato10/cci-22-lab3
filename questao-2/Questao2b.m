% Questao 2b
A = eye(20);
b = zeros(20,1);
[L,U,P] = LUP(A);
x = SolucaoLU(L, U, P, b);
y = A\b;