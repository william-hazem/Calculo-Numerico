% Decompõem/Fatora uma matriz
%
% @[in|out] A, Matriz desejada
% @[in]     tol, tolerância de aproximação de zero
% @[in]     o, ordem dos pivores
% @[in]     s, pivores com maior coeficiente
% @[out]    er, se -1 erro de zero
%%

function [A, o, s, er] = decompose(A, tol)
er = 0;
n = size(A, 2);
o = [];
s = [];
% busca os maiores valores para serem os pivores
for i = 1 : n
  o(i) = i;
  s(i) = abs(A(i, 1));
  for j = 2 : n
    if abs(A(i,j)) > s(i)
      s(i) = abs(A(i, j));
    end
  end
end

for k = 1 : n-1

  % recupera a ordem do pivoteamento
  o = pivot(A, o, s, k);
  % verifica se o pivoteamento falhou
  if abs(A(o(k),k) / s(o(k))) < tol
    er = -1;
    break
  end

  for i = k + 1 : n
    fator = A(o(i), k) / A(o(k), k);
    A(o(i), k) = fator;
    for j = k + 1 : n
      A(o(i),j) = A(o(i),j) - fator*A(o(k), j);
    end
  end

end
k = n -1;
if (abs(A(o(k), k)) / s(o(k))) < tol
  er = -1;
end



end %!decompose
