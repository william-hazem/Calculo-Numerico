close all;
clear all;
clc;
home;
# Domínio de x
x = -5:pi/100:5;
# f(x)
y = 5*x.*exp(-2*(x.^2)) - 2*cos(x) - 1;

a = -3.;
b = -1.3;
c = 1.8;
d = 2.4;
e = 4.0;
f = 4.5;
F = func2(a);
G = func2(b);
C = func2(c);
D = func2(d);
E = func2(e);
F = func2(f);
### Plota o Gráfico
hold on;
plot(x, y, "color", "black");
title("5xexp(-2x^2) - 2sin(x) - 1");
# plota uma linha horizontal
plot([min(x),max(x)],[0,0], "color", [194/255, 197/255, 204/255]);
# plota a e b
plot([a,a],[0,func2(a)], "color", "red", "linestyle", "--")
plot([b,b],[func2(b),0], "color", "red", "linestyle", "--")
plot(a, func2(a), "color", "blue", "*", 
  b, 0, "color", "blue", "*")
text(a-.2, 0.2, "a", "color", "b")
text(b-0.2, 0.2, "b", "color", "b")

# plota c e d

plot([c,c],[0,C], "color", "red", "linestyle", "--")
plot([d,d],[D,0], "color", "red", "linestyle", "--")
plot(c, 0, "color", "blue", "*", 
  d, 0, "color", "blue", "*")
text(c-.2, 0.2, "c", "color", "b")
text(d-0.2, 0.2, "d", "color", "b")

# plota e e f

plot([e,e],[0,E], "color", "red", "linestyle", "--")
plot([f,f],[F,0], "color", "red", "linestyle", "--")
plot(e, 0, "color", "blue", "*", 
  f, 0, "color", "blue", "*")
text(e-.2, 0.2, "e", "color", "b")
text(f-0.2, 0.2, "f", "color", "b")
set(gca, "XTick", min(x):1:max(x))

xlabel("x")
ylabel("f(x)")
axis("tight")
grid on
hold off;
### !Plote