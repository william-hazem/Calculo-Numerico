% Implementação do Método da Bissecção
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

function [xf, ni, status] = bisection_method(a, b, f, tol = 1e-12, cmax = 300)

status = 0;
contador = 0;     % contador de iteração
xf = (a + b)/2;

if(f(a)*f(b) < 0)
  % Condição de Parada:
  %   f(xf) ~ 0 ou convergência muito lenta
  while (abs(f(xf)) > tol || abs(1-xi/xf) > tol) && contador <= cmax
    % verifica em qual dos sub-intervalos a raiz está
    if(f(a)*f(xf) < 0)
        b = xf;
    else
        a = xf;
    endif;

  contador++;         % incrementa contador em 1
  xi = xf;            % aproximação da raiz
  xf = (a + b) / 2;   % calculo da nova aproximação
  end;
else
  status = 1;
end; %if

ni = contador;

if(ni == cmax) % não convergiu
  status = 2;
end

end
