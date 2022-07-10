% Implementação do Método da Falsa Posição
% Autor: William Henrique (william.martins@ee.ufcg.edu.br)
%
% @[in] a, limite esquerdo
% @[in] b, limite direito
% @[in] f, função desejada
% @[in] tol, tolerância de aproximação
%
% @[out] xf, raiz encontrada
% @[out] ni, mensagem de erro
% @[out] status:
%         0 - Ok
%         1 - Intervalo invalído
%         2 - Não convergiu
%%

function [xf, ni, status] = fp_method(a, b, f, tol = 1e-12, cmax = 300)

status = 0;
contador = 0;
xi = 0;
xf = a - f(a)*(b-a)/(f(b)-f(a));

if f(a)*f(b) < 0
  while abs(f(xf)) > tol && contador < cmax

  if(f(a)*f(xf) < 0)
    b = xf;
  else
    a = xf;
  end

  contador++;
  xi = xf;
  xf = a - f(a)*(b-a)/(f(b)-f(a));

  end
else
  status = 1;
end



ni = contador;
if(ni == cmax)
  status = 2;
end

end

