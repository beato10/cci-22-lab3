% Questao 1c
A = [0.5000 0.3333 1.4000 0.8889; 
     1.0000 2.0000 1.5000 0.7143; 
     1.5000 2.3333 2.9000 1.6032; 
     8.0000 3.0000 4.0000 1.0000];
b = [0.6667; 3.0000; 3.6667; 7.0000];
x = GP(A,b);
y = A\b;