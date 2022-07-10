% Implementação do Método de Newthon-Raphson
% Autor: William Henrique (william.martins@ee.ufcg.edu.br)
%
% @[in] xo, palpite inicial
% @[in] f, função de interesse
% @[in] f1, primeira derivada
% @[in] f2, segunda derivada
% @[in] tol, tolerância de aproximação  (1e-12 padrão IEEE)
%
% @[out] xf, raiz encontrada
% @[out] ni, número de iterações
% @[out] status, status de execução
%           0 - Oni
%           1 - troca de sinal entre o intervalo [a, b]
%           2 - Convergência lenta
%           3 - Não converge
%%

function [xo, ni, status] = newthon_raphson(xo, f, f1, f2, tol = 1e-12, cmax = 300)

status = 0;
ni = 0;      % contador

% teste de convergência
% f(t) e f'(t) têm que ser continuo, ou continuo por partes em um intervalo fechado
converg = (f(xo)*f2(xo) / (f1(xo))^2);
converg = abs(converg);
cond = converg < 1;
disp(converg);
if converg >= 1 % não converge
  status = 3;
  return;
end


while ni <= cmax && abs(f(xo)) > tol

  xo = xo - (f(xo)/ f1(xo));
  disp("sadsa");
  ni++;
end;

end
