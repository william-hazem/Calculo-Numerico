% Pivoteamento por ordem
% * Minimização de erros de precisão
% * Utilizado na decomposição LU
%
%
% @[in]     A, Matriz desejada        (nxn)
% @[in|out] o, ordem dos pivores      (n)
% @[in]     s, pivores                (n)
% @[in]     k, indice de pivoteamento
%%

function o = pivot(A, o, s, k)
  n = size(A, 2);
  p = k;
  % procura pelo maior elemento pivô nas linhas
  maior = abs(A(o(k), k) / s(o(k)));
  for ii = k + 1 : n
    dummy = abs(A(o(ii), k)/s(o(ii)));
    if dummy > maior
      maior = dummy;
      p = ii;
    end

  end
  dummy = o(p);
  o(p) = o(k);
  o(k) = dummy;

end
