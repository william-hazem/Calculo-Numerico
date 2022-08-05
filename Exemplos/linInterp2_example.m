% Exemplo de aplicação da interpolação linear de
% Lei de ohm - Dado dois pontos

addpath("./Metodos"); % Diretório dos métodos
addpath("./Metodos/interpolation");

% Corrente em um resistor
x = [100e-3 500e-3];
% Queda de tensão no resistor
y = [100    500];

[a, b] = linInterp2(x, y);
t = linspace(0, 600e-3, 50);


figure(1), hold on
scatter(x, y)
plot(t, a + b*t);

title("Interpolação Linear")
xlabel('I (A)')
ylabel('V (V)')
hold off;
