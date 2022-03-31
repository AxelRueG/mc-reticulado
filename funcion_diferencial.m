#Definicion de la funcion f(t,x):

%Definimos la funcion a llamar
function diff = funcion_diferencial(t,x)
%Variables originales:
  x1o = [0 0];
  x2o = [10 0];
  x3o = [20 0];
  x4o = [30 0];
  x5o = [40 0];
  x6o = [10 7.5];
  x7o = [30 7.5];
  x8o = [20 10];

%Valores del sistema dado:
  m = [1 1 2 1 1 1 1 1]; % masas
  k = [2 4 2 2 2 4 2 2 2 2 2 4 2];  % rigidez
  P = [0 1]; % fuerza externa
  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  
%Velocidades:
  dx2dt = x(8); %u3 
  dx3dt = x(9); %u4
  dx4dt = x(10); %u5
  dx5dt = x(11); %u6
  dx6dt = x(12); %u7
  dx7dt = x(13); %u7
  dx8dt = x(14); %u7

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Definimos las fuerza que se ejercen entre las masas:  
  F12 = fuerza( x1o, x1o, x2o, x(1), k(1));
  F16 = fuerza( x1o, x1o, x6o, x(5), k(4));
  F23 = fuerza( x20, x(1), x3o, x(2), k(7));
  F26 = fuerza( x20, x(1), x6o, x(5), k(3));
  F36 = fuerza( x3o, x(2), x6o, x(5), k(6));
  F38 = fuerza( x3o, x(2), x8o, x(7), k(2));
  F37 = fuerza( x3o, x(2), x7o, x(6), k(12));
  F34 = fuerza( x3o, x(2), x4o, x(3), k(13));
  F47 = fuerza( x4o, x(3), x7o, x(6), k(9));
  F45 = fuerza( x4o, x(3), x5o, x(4), k(8));
  F57 = fuerza( x5o, x(4), x7o, x(6), k(10));
  F68 = fuerza( x6o, x(5), x8o, x(7), k(5));
  F78 = fuerza( x7o, x(6), x8o, x(7), k(11));

%Aceleraciones:
  %-F13-F23+F34
  du3dt = (1/m3)*(-F13(1)-F23(1)+F34(1));
  dv3dt = (1/m3)*(-F13(2)-F23(2)+F34(2));
  

% _____________________________________________________________________________
  diff = [dx3dt,dy3dt,dx4dt,dy4dt,dx5dt,dy5dt,dx6dt,dy6dt,dx7dt,dy7dt,du3dt,dv3dt,du4dt,dv4dt,du5dt,dv5dt,du6dt,dv6dt,du7dt,dv7dt];
end