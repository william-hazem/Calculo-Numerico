# Implementação do Método de Newton
# Autor: William Henrique Azevedo Martins
# Turma: 03

clear all;

# contador
k = 0;
limit = 300;

# tolerância
tol = input("Digite a tolerância: ");

# função - primeira derivada - segunda derivada
f =  @func1;
f1 = @func2;
f2 = @func3;

a = input("Digite o valor inicial: ");

# convergência
converg = (f(a)*f2(a) / (f1(a))^2);
converg = abs(converg);
cond = converg < 1;

fprintf("Convergência = %f", converg);

if cond == 1 
  while (k < limit && abs(f(a)) > tol)
  
    a = a - (f(a)/ f1(a));
   
    k++;
  endwhile
  fprintf("Número de aproximações: %i\n", k);
  fprintf("Raiz: %f\n", a);
end


