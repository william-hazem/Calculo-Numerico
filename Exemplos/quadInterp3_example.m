% Exemplo de aplicação da interpolação linear de
% Dado três pontos

addpath("./Metodos"); % Diretório dos métodos
addpath("./Metodos/interpolation");

% tempo
x = [0 1 2];
% temperatura
y = [10 60 80.5];

[a, b, c] = quadInterp3(x, y);
t = linspace(-1.5, 3, 50);

figure(1), hold on
scatter(x, y)
plot(t, a*t.^2 + b*t + c);

title("Interpolação Quadrática")
xlabel('t (s)')
ylabel('T (ºC)')
hold off
