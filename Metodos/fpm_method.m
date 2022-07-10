% Implementação do Método da Falsa Posição Modificado
% Autor: William Henrique (william.martins@ee.ufcg.edu.br)
%
% @[in] a, limite esquerdo
% @[in] b, limite direito
% @[in] f, função desejada
% @[in] tol, tolerância de aproximação  (1e-12 padrão IEEE)
%
% @[out] xf, raiz encontrada
% @[out] ni, número de iterações
% @[out] status, status de execução
%           0 - OK
%           1 - troca de sinal entre o intervalo [a, b]
%           2 - Convergência lenta
%%

function [xf, ni, status] = fpm_method(a, b, f, tol = 1e-12, cmax = 300)

if f(a)*f(b) > 0
  status = 1;
  xf = [];
  ni = -1;
  return;
end


status    = 0;
contador  = 0;

% primeira aproximação
xi = 0;
xf = (a*f(b) - b*f(a)) / (f(b) - f(a));


while abs(f(xf)) > tol && contador <= cmax

  % verifica em qual intervalo se encontra a raiz
  if(f(a)*f(xf) < 0)
    b = xf;
    F = f(a);
    G = f(b);
    if (f(xi)*f(xf) > 0)
      F = F/2;
    end

  else
    a = xf;
    F = f(a);
    G = f(b);
    if (f(xi)*f(xf) > 0)
      G = G/2;
    end
  end

  contador++;  # incrementa contador em 1
  xi = xf;
  xf = a - F*(b-a)/(G - F);

end

ni = contador;
if(ni == cmax) % não convergiu
  status = 2;
end

end %!function
