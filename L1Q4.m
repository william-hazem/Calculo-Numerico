close all;
clear all;
# Domínio de x
x = -5:5/500:5;
# f(x)
y = sin(2*x-5) - 0.6*x;

a = -3.15;
b = -1.3;

### Plota o Gráfico
hold on;
# plota uma linha horizontal
plot([-5,5],[0,0], "color", "black")
# plota a e b
plot([a,a],[func1(a),0], "color", "red", "linestyle", "--")
plot([b,b],[func1(b),0], "color", "red", "linestyle", "--")
plot(a, 0, "color", "blue", "*", 
  b, 0, "color", "blue", "*")
text(a-.2, 0.2, "a", "color", "b")
text(b-0.2, 0.2, "b", "color", "b")
# plota f(x)
plot(x, y);

title("Gráfico de f(x)")
xlabel("x")
ylabel("f(x)")
axis("equal")
grid on
hold off;
### !Plote