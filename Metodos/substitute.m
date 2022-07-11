% Decomposição LU
% Substituição regressiva
% 
% @[out]    x, resposta do sistema 
%%
function x = substitute(a, b, o)
  n = size(a, 2);

  for i = 2 : n
    soma = b(o(i));
    for j = 1 : i - 1
      soma = soma - a(o(i),j)*b(o(j));
    end
    b(o(i)) = soma;
  end

  x(n) = b(o(n))/a(o(n), n);
  for i = n - 1 : -1 : 1
    soma = 0;
    for j = i + 1 : n
      soma = soma + a(o(i), j) * x(j);
    end
    x(i) = (b(o(i)) - soma)/a(o(i), i);
  end

end %!substitute
