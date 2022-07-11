% Decomposição LU com pivoteamento e substituição regressiva
% 
% @[in]   A, Matriz desejada
% @[in]   b, Matriz de solução
% @[out]  x, solução
% @[out]  er, se -1 houve erro ou divisão por zeros
%%

function [x, er] = LUdecompose(A, b, tol = 1e-12)

  % decompõem a matriz em LU
  [A, o, s, er] = decompose(A, tol);

  % obtêm x, tal que Ax = b
  if er != 1
    x = substitute(A, b, o);
  end

end %!Ludecompose
