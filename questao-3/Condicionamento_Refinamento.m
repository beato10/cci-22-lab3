function resultado = Condicionamento_Refinamento(A,b)
    dim = length(A);
    x = zeros(dim,1);
    r = zeros(dim,1);
    delta = zeros(dim,1);
   
    %colocar antes transformar em LU
    [L,U,P] = LUP(A);
    x = SolucaoLU(L,U,P,b);
    
    % Resíduos
    r = b - A*x; % primeiro residuo
    delta = SolucaoLU(L,U,P,r); % Resolver Ad = r
    x = x + delta; % Primeira aproximacao
    
    
    r = b - A*x; % segundo residuo
    delta = SolucaoLU(L,U,P,r); % Resolver Ad = r
    x = x + delta; % Segunda aproximacao
    
    
    r = b - A*x; % terceiro residuo
    delta = SolucaoLU(L,U,P,r); % Resolver Ad = r
    x = x + delta; % Terceira aproximacao

    resultado = max(abs(delta ./ x)) < 10*eps; % epsilon da maquina
end