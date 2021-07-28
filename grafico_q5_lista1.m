# Definindo um range para possibilitar a criação do gráfico
x = -5: pi/100 :5;
y = 3*x.*exp(-2*x.^2) - 2*sin(x) - 1;
#y = 2*x.^3 + 3*x.^2 -18*x - 17;

# Plotando o gráfico
plot(x, y);

title("Gráfico de f(x) = 2x^3+3x^2-18x-17", "fontsize", 15);
xlabel("Eixo x");
ylabel("Eixo y");
legend("f(x)", "location", "southeast");
grid on
