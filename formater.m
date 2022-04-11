function X = formater(x)
    % recibimos un vector con las posiciones, por ejemplo: 
    % >>> [x1 y1 x2 y2 u1 v1 u2 v2]
    % retorna una matriz tipo:
    % >>> [[x1 y1]; [x2 y2]; [u1 v1]; [u2 v2]]
    % correspondientes a: [ posicion_del_nodo_n; velocidad_del_nodo_n ];

    x = x(:); % garantizo que sea un vector columna
    X = [x([1:2:length(x)]) x([2:2:length(x)])];

end