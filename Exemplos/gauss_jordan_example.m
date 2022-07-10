% Exemplo de aplicação do método de Newthon Raphson
% Solução de um circuito elétrico com acoplamento

addpath("./Metodos"); % Diretório dos métodos

% Impedâncias
Z = [
  (4 + 8j), -5j, -4j;
  -5j     , 3+2j, -3;
  -4j, -3, (8 + 9j);
];

% Tensão de saída
y = [12; 0; (-15.59 -9j)];

% Correntes
A = Gauss_Jordan(Z, y)

%verifica a soluçao
verificar = Z*A
