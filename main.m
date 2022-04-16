clear; clc; close all;

#Resolucion del Sistema de Ecuaciones Diferenciales con ODE23:
pasos = 150; %cantidad de pasos;
t_span = linspace(0,50,pasos); % saltos de tiempo;

% condiciones iniciales, excluyendo las pociciones del nodo 1:
Y = [10 0 20 0 30 0 40 0 10 7.5 30 7.5 20 10 ... % posiciones iniciales
     0 0 0 0 0 0 0 0 0 0 0 0 0 0];  % velocidades iniciales

% la funcion ODE23(@fundif_por_referencia,vector_de_tiempo,valores_iniciales);
[t posiciones] = ode23(@funcion_diferencial,t_span,Y);

% ______________________________________________________________________________
% inciso B
% inciso_b

% ______________________________________________________________________________
%animacion:
% si la tercera condicion es true genera el gif
animacion(t, posiciones, true);