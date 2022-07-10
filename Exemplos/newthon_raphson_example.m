% Exemplo de aplicação do método de Newthon Raphson

addpath("./Metodos"); % Diretório dos métodos

t = linspace(0, 10, 100);
f   = @(t) -2*t.^2 + t + 10;  % f
f1  = @(t) -4*t + 1;          % f'
f2  = @(t) -4;                % f''

% palpite inicial
a = xo = 3.0;
[xo, ni, status] = newthon_raphson(xo, f, f1, f2);

printf("Zero encontrado em t = %.4f s\n", xo);
printf("Número de iterações: %d\n", ni);

figure(1)
plot(t, f(t), ...
  a,   f(a),      "markersize", 10,
  xo,  f(xo),     "markersize", 10
), grid on

string = sprintf("Zero de f(t) pelo Método de Newthon-Raphson (iterações: %d)", ni);
title(string);
string = sprintf("f(%.4f s) = 0", xf);
legend("f(t)","xo", string, "fontsize", 12);
xlabel("t");
