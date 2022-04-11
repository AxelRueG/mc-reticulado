% resive una fila de las posiciones de la particula en un tiempo t
% retorna un vector con las posiciones de (x) y otro con las posiciones de (y)
% para facilitar el ploteo de las particulas
function [x y] = divide_xy(vec)

  x = vec([1:2:length(vec)]);
  y = vec([2:2:length(vec)]);

end