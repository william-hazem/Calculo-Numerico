#Gráficos da Questão 03, e suas raizes
# William Henrique Azevedo Martins - Turma 03
clf;
close all;
clear all;

xa = -6:0.01:10;
xb = -5:0.01:5;
xc = xb;
# Função - Item A
fa =  @(x)2*exp(x.^-1)-3*cos(x);
# Função - Item B
fb = @(x) 4*cos(x)-3*exp(2*x);
# Função - Item C
fc = @(x) 3*cosh(2*x)-3*exp(2*x)-1.7;

# Raizes usando as funções do MATLAB
x1 = fzero(fa, -1);       # Item A
x2 = fzero(fb, [-2.5 -1]) # Item B
x3 = fzero(fc, [-0.5 0]); # Item C

fprintf("Raizes\nx1=%f\nx2=%f\nx3=%f\n", x1,x2,x3);

### Item A
subplot(2, 3, 1)
  plot(xa, fa(xa), x1, fa(x1), 'o-r');
  title("Item A");
  axis ([-6 10 -10 15]);
  line([0 0], [-40 40], "color", "black");
  line([-6 10], [0 0], "color", "black");
  xlabel("x");
  ylabel("y");
  set(gca, "XTick", min(xa):1.5:max(xa))
  grid on;
  
### Item B
subplot(2, 3, 2)
  plot(xb, fb(xb), x2, fb(x2), 'o-r');
  title("Item B");
  axis ([-5 5 -45 45]);
  line([0 0], [-45 45], "color", "black");
  line([-5 5], [0 0], "color", "black");
  xlabel("x");
  ylabel("y");
  set(gca, "XTick", min(xb):1:max(xb));
  grid on;
### Item C
subplot(2, 3, 3)
  
  plot(xc, fc(xc), x3, fc(x3), 'o-r');
  title("Item C");
  axis ([-5 5 -45 45]);
  line([0 0], [-45 45], "color", "black");
  line([-5 5], [0 0], "color", "black");
  xlabel("x");
  ylabel("y");
  set(gca, "XTick", min(xc):1:max(xc));
  grid on;