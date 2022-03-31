#Animacion del sistema:

figure
pw = 10; %grosor del punto;
lw = 2;  %grosor de la linea;
velocidad = 0.01; %velocidad de reproduccion;

axis ([-18,36,-15,30]); %tamaño del plot;
for asd = 1:length(t)
  M = vec(asd,:); %vector de posiciones;
  
  hold on;
  plot([0,M(1)], [5,M(2)],'lineWidth',lw,'color','k'); 
  plot([0,M(1)],[10,M(2)],'lineWidth',lw,'color','k'); 
  plot([0,M(3)],[10,M(4)],'lineWidth',lw,'color','k');
  plot([M(1),M(3)],[M(2),M(4)],'lineWidth',lw,'color','k');
  plot([M(1),M(5)],[M(2),M(6)],'lineWidth',lw,'color','k');
  plot([M(3),M(5)],[M(4),M(6)],'lineWidth',lw,'color','k');
  plot([M(3),M(7)],[M(4),M(8)],'lineWidth',lw,'color','k');
  plot([M(5),M(7)],[M(6),M(8)],'lineWidth',lw,'color','k');
  plot([M(5),M(9)],[M(6),M(10)],'lineWidth',lw,'color','k');
  plot([M(7),M(9)],[M(8),M(10)],'lineWidth',lw,'color','k');
    
  plot(0,5,'x','lineWidth',pw,'color','red');
  plot(0,10,'x','lineWidth',pw,'color','red');
  plot(M(1),M(2),'x','lineWidth',pw,'color','red');
  plot(M(3),M(4),'x','lineWidth',pw,'color','red');
  plot(M(5),M(6),'x','lineWidth',pw,'color','red');
  plot(M(7),M(8),'x','lineWidth',pw,'color','red');
  plot(M(9),M(10),'x','lineWidth',pw,'color','red');
  
  hold off;
  
  pause(velocidad); %velocidad de la animacion;
  
  if asd<length(t)  %limpiar grafica;
    plot(0,5);
    axis ([-18,36,-15,30]);
  endif
  
endfor