function result = riemannsum(f, lin)
  result = ( sum(f(lin)) - f(lin(end)) ) * (lin(2) - lin(1));
  
endfunction