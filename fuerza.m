#Funcion de fuerza del resote entre dos masas:
function f = fuerza(x_i0,x_i,x_j0,x_j,k)
  f = k*(1-(norm(x_j0-x_i0)/norm(x_j-x_i)))*(x_j-x_i);
  
  % corroboramos que no haya division por cero
  if (sum(f) == inf)
    f = zeros(1,length(x_i));
  end
end