% Quadratic Interpolation (quadInterp3)
% Linear Interpolation of three given data
%
% @[in] x, 3x1 data
% @[in] y, 3x2 data

function [a, b, c] = quadInterp3(x, y)

  b1 = y(1);
  b2 = (y(2) - y(1))/(x(2) - x(1));
  b3 = ((y(3) - y(2))/(x(3) - x(2)) - b2) / (x(3) - x(1));

  c = b1 - b2*x(1) + b3*x(1)*x(2);
  b = b2 - b3*x(1) - b3*x(2);
  a = b3;

end
