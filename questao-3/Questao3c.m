% Questao 3c
% Primeiro sistema
A = hilb(8);
b1 = [1; 2; 3; 4; 5; 6; 7; 8];
resultado1 = Condicionamento_Refinamento(A,b1);
valorCond1 = Condicionamento_Norma(A);
x1 = GP(A,b1);

% Segundo sistema
b2 = [1; 2; 3; 4; 5; 6; 7; 8.3];
x2 = GP(A,b2);

% Terceiro sistema
b3 = [1; 2; 3; 4; 5; 6.1; 7; 8];
x3 = GP(A,b3);
