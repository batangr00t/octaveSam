function y = f(t)
  w = 2*pi/10;  # T = 10 second, f = 1/10 Hz
  a0 = 1.0;
  an = [ 10, 2, 1,  0,  19, -10, 2 ];
  bn = [  2, 7, 5, 13, 1.2, 4, 17 ];
  
  # a0
  y = 8;
  
  # an
  for k = 1:size(an)(2)
    y += an(k)*cos(k*w*t);
  endfor
  
  # bn
  for k = 1:size(bn)(2)
    y += bn(k)*sin(k*w*t);
  endfor
  
endfunction