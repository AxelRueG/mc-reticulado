#Animacion del sistema:

pw = 10; %grosor del punto;
lw = 2;  %grosor de la linea;
velocidad = 0.01; %velocidad de reproduccion;

figure
for it = 1:length(t)
  [x y] = divide_xy([0 0 posiciones(it,1:14)]);
  % plot([M(7),M(9)],[M(8),M(10)],'lineWidth',lw,'color','k');
  % plot(M(9),M(10),'x','lineWidth',pw,'color','red');

  % BARRAS
  hold on
  plot([x(1) x(2)],[y(1) y(2)],'k','lineWidth',lw)
  plot([x(3) x(8)],[y(3) y(8)],'k','lineWidth',lw)
  plot([x(2) x(6)],[y(2) y(6)],'k','lineWidth',lw)
  plot([x(6) x(1)],[y(6) y(1)],'k','lineWidth',lw)
  plot([x(6) x(8)],[y(6) y(8)],'k','lineWidth',lw)
  plot([x(6) x(3)],[y(6) y(3)],'k','lineWidth',lw)
  plot([x(2) x(3)],[y(2) y(3)],'k','lineWidth',lw)
  plot([x(5) x(4)],[y(5) y(4)],'k','lineWidth',lw)
  plot([x(4) x(7)],[y(4) y(7)],'k','lineWidth',lw)
  plot([x(7) x(5)],[y(7) y(5)],'k','lineWidth',lw)
  plot([x(7) x(8)],[y(7) y(8)],'k','lineWidth',lw)
  plot([x(7) x(3)],[y(7) y(3)],'k','lineWidth',lw)
  plot([x(4) x(3)],[y(4) y(3)],'k','lineWidth',lw)

  % PUNTOS
  plot(x,y,'*b','lineWidth',pw);
  hold off
  axis([-10 50 -10 20]);
  pause(velocidad); %velocidad de la animacion;  
  plot([],[])
  axis([-10 50 -10 20]);
endfor