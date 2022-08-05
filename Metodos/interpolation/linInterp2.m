% Linear Interpolation (linInterp2)
% Linear Interpolation of two given data
%
% @[in] x, 2x1 data
% @[in] y, 2x2 data

function [a, b] = linInterp2(x, y)
  a =  y(1) - (y(2) - y(1))/(x(2) - x(1))*x(1);
  b = (y(2) - y(1))/(x(2) - x(1));

end
