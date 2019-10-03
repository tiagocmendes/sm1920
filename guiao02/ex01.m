%
% Author: Tiago Mendes;
% University of Aveiro - September 2019 
%

clear all;
close all;
clc;

ta = 0.5/20; % tempo de amostragem

t = [0:ta:5]';

x = 2 * sin(4*pi*t);
y = sin(10*pi*t + pi/2);
z = sin(6*pi*t) + sin(8*pi*t);
figure(11);
plot(t,x,t,y,'-r', 'LineWidth',2,t,z,'-y', 'LineWidth',2);
xlabel("Time (s)");
ylabel("Amplitude");
title("x signal");
legend('x','y','z');
grid;

