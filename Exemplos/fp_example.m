% Exemplo de aplicação do método da falsa posiçao

addpath("./Metodos"); % Diretório dos métodos

t = linspace(0, 10, 100);
my_function = @(t)10 .* ( 2 * t .* exp(-t) .* (1 - exp(-t)) + ...
                      t.^2 .* (2 * exp(-2 * t) -exp(-t) ));

% escolhe os limites
a = 2.0;
b = 2.5;

% calcula a raiz em torno de a e b
[xf, ni, status] = fp_method(a, b, my_function);

printf("Zero encontrado em t = %.4f s\n", xf);
printf("Número de iterações: %d\n", ni);

figure(1)
plot(t, my_function(t), ...
  a,  my_function(a),     "markersize", 10, ...
  b,  my_function(b),     "markersize", 10, ...
  xf, my_function(xf),    "markersize", 10
), grid on

string = sprintf("Zero de f(t) pelo Método da falsa posição modificado (iterações: %d)", ni);
title(string);
string = sprintf("f(%.4f s) = 0", xf);
legend("f(t)","a", "b", string, "fontsize", 12);
xlabel("t");
