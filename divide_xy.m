function [x y] = divide_xy(vec)
  x = [];
  y = [];
  for i = 1:length(vec)
    if (mod(i,2))
      x = [x vec(i)];
    else
      y = [y vec(i)];
    end
  end

end