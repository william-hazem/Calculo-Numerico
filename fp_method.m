# Método da falsa posição

disp("Programa para calcular a raiz de uma função não linear através do método da falsa posição");
tol = input("Insira a tolerância: ");
a = input("Insira o limite inferior do intervalo, a: ");
b = input("Insira o limite inferior do intervalo, b; ");  

contador = 0;
xi = 0;
xf = a - f(a)*(b-a)/(f(b)-f(a));
cmax = 300;

f = @func1;

while abs(f(xf)) > tol || abs(1-xi/xf) > tol || contador >= cmax
  # verifica em qual dos intervalos está a raiz
  if(f(a)*f(xf) < 0)
    #a = a;  # redudante(apenas para fixar)
    b = xf; 
  else
    a = xf;
    #b = b;
  end
  contador++;  # incrementa contador em 1
  xi = xf; # define a aproximação nova como antiga
  xf = a - f(a)*(b-a)/(f(b)-f(a));  # recalcula uma nova aproximação
  
  #repete até condição de parada
end

fprintf("Raiz encontrada com tolerância (tol) %f\n", tol);
fprintf("Raiz encontrada (xf) = %f\n", xf');
fprintf("Numero de iterações (contador) = %i\n", contador);