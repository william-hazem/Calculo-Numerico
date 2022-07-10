% Implementação do Método de Newthon-Raphson
% Autor: William Henrique (william.martins@ee.ufcg.edu.br)
%
% @[in] X, matrix de coeficientes
% @[in] y, vetor de soluções
%
% @[out] ry, entradas do sistema
%%

function ry = Gauss_Jordan(X, y)

[p, q] = size(X)
[n, m] = size(y)

% verifica se as dimensões são válidas
if p != n || p != q
  return;
endif

for k=1:p % alterna entre as linhas de pivoteamento
  pivo = X(k, k);

  if pivo == 0 % evita divisões por zero
    if k >= p
      break
    else
      k = k + 1;
    endif
  endif

  l = X(k, :);
  for i=1:p % itera as linhas da matrix
    m = X(i, k) / pivo;
    if k != i
      X(i, :) = X(i, :) - m*l;
      y(i) = y(i) - m*y(k);
    endif
  endfor
endfor

for n=1:p % transforma a matrix dos coeficiente em uma matrix diagonal unitária
  pivo = X(n, n);
  X(n, n) = X(n, n) / pivo;
  y(n) = y(n) / pivo;
endfor

ry = y;

endfunction;
