# Gráficos da questão 02
clf;
x = -5:0.001:5;
# Função
f = @(x)3*x.^3+2*x.^2-18*x-17;
# Primeira derivada
f1 = @(x)9*x.^2 + 4*x -18;
# Segunda Derivada
f2 = @(x)18*x + 4;

ymax = 40;
ymin = -40;

subplot(3,1,1)
  plot(x, f(x));
  title("3x^3+2x^2-18x-17");
  line([-5 5],[0 0], "linestyle", "-", "color", "black");
  line([0 0], [ymim ymax], "linestyle", "-", "color", "black");
  xlabel("x");
  ylabel("y");
  axis ([-5 5 ymin ymax]);
  grid on;
  
subplot(312)
  plot(x, f1(x));
  title("9x^2 + 4x -18");
  line([-5 5],[0 0], "linestyle", "-", "color", "black");
  line([0 0], [-10 10], "linestyle", "-", "color", "black");
  axis ([-5 5 ymin ymax]);
  xlabel("x");
  ylabel("y");
  grid on;
subplot(313)
  plot(x, f2(x));
  title("19x+4");
  line([-5 5],[0 0], "linestyle", "-", "color", "black");
  line([0 0], [ymin ymax], "linestyle", "-", "color", "black");
  axis ([-5 5 ymin ymax]);
  xlabel("x");
  ylabel("y");
  grid on;