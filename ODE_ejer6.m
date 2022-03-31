clear; clc; close all;

#Resolucion del Sistema de Ecuaciones Diferenciales con ODE23:

pasos = 6 %cantidad de pasos;
t_span = linspace(0,50,pasos) % saltos de tiempo;

Y = [10 0 20 0 30 0 40 0 10 7.5 30 7.5 20 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0];  % velocidades

#la funcion ODE23(@fundif_por_referencia,vector_de_tiempo,valores_iniciales);
[t vec] = ode23(@funcion_diferencial,t_span,Y); % resolucion del S.E.D.

vec

% %ploteo de las fuerzas a lo largo del 50seg en el nodo 3:
% pos_x = 1; %posicion en x de un punto (todos los impares en el intervalo [1,10]);
% pos_y = 2; %posicion en y de un punto (todos los pares en el intervalo [1,10]);

% figure
% plot(t,vec(:,pos_x));
% figure
% plot(t,vec(:,pos_y));

% % _____________________________________________________________________________
% %animacion:
% animacion;