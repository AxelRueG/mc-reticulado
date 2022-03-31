% sistema de ecuaciones diferenciales
function diff = funcion_diferencial(t,X)
  % ode23 solo acepta vectores numericos
  % formateamos en x un vector de vectores
  % con x(i,:) la posicion o velocidad en [x y] de la masa i
  x = formater(X);

%posiciones originales:
  x1o = [0 0];
  x2o = [10 0];
  x3o = [20 0];
  x4o = [30 0];
  x5o = [40 0];
  x6o = [10 7.5];
  x7o = [30 7.5];
  x8o = [20 10];

%Valores del sistema dado:
  m = [1 1 2 1 1 1 1 1];            % masas
  k = [2 4 2 2 2 4 2 2 2 2 2 4 2];  % rigidez
  P = [0 1];                        % fuerza externa

% _____________________________________________________________________________
%Definimos las fuerza que se ejercen entre las masas:  
  F12 = fuerza( x1o, x1o, x2o, x(1,:), k(1));
  F16 = fuerza( x1o, x1o, x6o, x(5,:), k(4));
  F23 = fuerza( x2o, x(1,:), x3o, x(2,:), k(7));
  F26 = fuerza( x2o, x(1,:), x6o, x(5,:), k(3));
  F36 = fuerza( x3o, x(2,:), x6o, x(5,:), k(6));
  F38 = fuerza( x3o, x(2,:), x8o, x(7,:), k(2));
  F37 = fuerza( x3o, x(2,:), x7o, x(6,:), k(12));
  F34 = fuerza( x3o, x(2,:), x4o, x(3,:), k(13));
  F47 = fuerza( x4o, x(3,:), x7o, x(6,:), k(9));
  F45 = fuerza( x4o, x(3,:), x5o, x(4,:), k(8));
  F57 = fuerza( x5o, x(4,:), x7o, x(6,:), k(10));
  F68 = fuerza( x6o, x(5,:), x8o, x(7,:), k(5));
  F78 = fuerza( x7o, x(6,:), x8o, x(7,:), k(11));
% _____________________________________________________________________________
%Velocidades:
  dx2dt = x(8,:); %u3 
  dx3dt = x(9,:); %u4
  dx4dt = x(10,:); %u5
  dx5dt = x(11,:); %u6
  dx6dt = x(12,:); %u7
  dx7dt = x(13,:); %u7
  dx8dt = x(14,:); %u7

%Aceleraciones:
  dv2dt = (-F12+F23+F26+(2/3*P))/m(2);
  dv3dt = (-F23+F36+F38+F37+F34+P)/m(3);
  dv4dt = (-F34+F47+F45+(2/3*P))/m(4);
  dv5dt = (-F45+F57)/m(5);
  dv5dt(2) = 0; % porque no se nueve en y
  dv6dt = (-F16-F26-F36+F68)/m(6);
  dv7dt = (-F37-F47-F57+F78)/m(7);
  dv8dt = (-F68-F38-F78)/m(8);

% _____________________________________________________________________________
  diff = [dx2dt(1) dx2dt(2) dx3dt(1) dx3dt(2) dx4dt(1) dx4dt(2) dx5dt(1) dx5dt(2) dx6dt(1) dx6dt(2) dx7dt(1) dx7dt(2) dx8dt(1) dx8dt(2) dv2dt(1) dv2dt(2) dv3dt(1) dv3dt(2) dv4dt(1) dv4dt(2) dv5dt(1) dv5dt(2) dv6dt(1) dv6dt(2) dv7dt(1) dv7dt(2) dv8dt(1) dv8dt(2)];
end