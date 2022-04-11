function X = formater(x)
    % recibimos un vector con las posiciones, por ejemplo: 
    % >>> [x1 y1 x2 y2 u1 v1 u2 v2]
    % retorna una matriz tipo:
    % >>> [[x1 y1]; [x2 y2]; [u1 v1]; [u2 v2]]
    % correspondientes a: [ posicion_del_nodo_n; velocidad_del_nodo_n ];
    
    len = length(x);
    X = [];
    for i = 1:2:len
        X = [X; [x(i) x(i+1)]];
    end
end