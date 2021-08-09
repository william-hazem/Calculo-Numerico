# Resolução da questão 04
# William Henrique Azevedo Martins - Turma 03

### Item A
a = @(x) x^5 - 22*x^2 -25*x + 15
pa = [1 0 0 -22 -25 15]
### Item B
b = @(b) 3*x^7-12*x^5-4*x^4-12*x^2-3*x^2-12*x-23
pb = [3 0 -12 -4 -12 -3 -12 -23]
### Raizes - Item A
ra = roots(pa)
### Raizes - Item B
rb = roots(pb)
more off;
disp("Raizes do item A\n");
for i=1:5
  disp(ra(i))
endfor

disp("Raizes do item B\n");
for i=1:7
  disp(rb(i))
endfor

### Resposta:
#ra =
#
#   3.05715 + 0.00000i
#  -1.03267 + 2.61745i
#  -1.03267 - 2.61745i
#  -1.42629 + 0.00000i
#   0.43449 + 0.00000i
   
#rb =
#   2.36382 + 0.00000i
#  -2.04945 + 0.00000i
#   0.69217 + 0.85759i
#   0.69217 - 0.85759i
#  -0.37361 + 1.10898i
#  -0.37361 - 1.10898i
#  -0.95148 + 0.00000i
