%%____________________________________________________________________________
% @TODO: esto esta mal
% Esfuerzos en la barra a = 2  --> nodo 3 y 8
% figure 
% subplot(2,1,1); plot(t,posiciones(:,3));
% title('fuerza en x');ylabel('fuerza [N]');xlabel('tiempo [s]');
% subplot(2,1,2); plot(t,posiciones(:,4));
% title('fuerza en y');ylabel('fuerza [N]');xlabel('tiempo [s]');

%%____________________________________________________________________________
% Posicion del nodo b = 3
figure 
subplot(2,1,1); plot(t,posiciones(:,3));
title('posicion en x del nodo 3');ylabel('posicion');xlabel('tiempo [s]');
subplot(2,1,2); plot(t,posiciones(:,4));
title('posicion en y del nodo 3');ylabel('posicion');xlabel('tiempo [s]');

% Busco el mayor desplazamiento ______________________________________________
% me quedo con las posiciones
[x0 y0] = divide_xy(Y(1:14));
% matriz que tendra una columna por cada nodo una fila por cada valor de t
desplazamientos = zeros(pasos,7);
for i = 1:pasos
  [xt yt] = divide_xy(posiciones(i,1:14));
  dif = [(xt - x0); (yt - y0)];

  col = zeros(1,7);
  for j = 1:length(dif)
    col(j) = norm(dif(:,j)); % distancia euclidea
  end
  desplazamientos(i,:) = col;
end

[val  i] = max(desplazamientos); % obtenemos los maximos desplazamientos de cada nodo
[mval j] = max(val); % el maximo desplazamiento de los nodos
printf('el maximo desplazamiento es en nodo %d con un val %f; en el t igual a: %f \n',j, mval, t(i(j)))

