clf;
x = -5:0.001:5;
# Função
f = @(x)3*exp(x)-8*sin(2*x);
# Primeira derivada
f1 = @(x)3*exp(x)-16*cos(2*x);
# Segunda Derivada
f2 = @(x)3*exp(x)+32*sin(2*x);


subplot(3,1,1)
  plot(x, f(x));
  title("3e^x-8sin(2x)");
  line([-5 5],[0 0], "linestyle", "-", "color", "black");
  line([0 0], [-20 20], "linestyle", "-", "color", "black");
  xlabel("x");
  ylabel("y");
  axis ([-5 5 -20 20]);
  grid on;
  
subplot(312)
  plot(x, f1(x));
  title("3e^x-16cos(2x)");
  line([-5 5],[0 0], "linestyle", "-", "color", "black");
  line([0 0], [-10 10], "linestyle", "-", "color", "black");
  axis ([-5 5 -20 20]);
  xlabel("x");
  ylabel("y");
  grid on;
subplot(313)
  plot(x, f2(x));
  title("3e^x+32sin(2x)");
  line([-5 5],[0 0], "linestyle", "-", "color", "black");
  line([0 0], [-20 20], "linestyle", "-", "color", "black");
  axis ([-5 5 -20 20]);
  xlabel("x");
  ylabel("y");
  grid on;