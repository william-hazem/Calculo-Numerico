clear all;
# Método da falsa posição modificado

disp("Programa para calcular a raiz de uma função não linear através do método da falsa posição");
tol = input("Insira a tolerância: ");
a = input("Insira o limite inferior do intervalo, a: ");
b = input("Insira o limite inferior do intervalo, b; ");  
f = @func1;
contador = 0;
xi = 0;
xf = a - f(a)*(b-a)/(f(b)-f(a));
cmax = 300;



while abs(f(xf)) > tol || abs(1-xi/xf) > tol || contador >= cmax
  # verifica em qual dos intervalos está a raiz
  if(f(a)*f(xf) < 0)
    b = xf;
    F = f(a);
    G = f(b); 
    if (f(xi)*f(xf) > 0)
      F = F/2; 
    end
  
  else
    a = xf;
    F = f(a);
    G = f(b);
    if (f(xi)*f(xf) > 0)
      G = G/2;
    end
  end
  contador++;  # incrementa contador em 1
  
  xi = xf;
  xf = a - F*(b-a)/(G - F);
  
  #repete até condição de parada
end

fprintf("Raiz encontrada com tolerância (tol) %f\n", tol);
fprintf("Raiz encontrada (xf) = %f\n", xf');
fprintf("Numero de iterações (contador) = %i\n", contador);