%
% Created by Tiago Carvalho Mendes
% October, 2019 - University of Aveiro
%

clear;
close all;
clc;

Ta = 0.01;
t = [0:Ta:5-Ta]';
x = 2*sin(4*pi*t);
y = cos(10*pi*t);  
z = x.*y;
t_w = [0:Ta:10-Ta]';
w = 3 * sin(pi*t_w) + 2*sin(6*pi*t_w);

figure(31);
plot(t,x,'-r');
hold on;
plot(t,y, '--b', 'LineWidth', 2);
plot(t,z, '.-', 'Color', [0.2 0.8 0.2]);
plot(t, w, '-y', 'LineWidth', 2);
hold off;
xlabel('Time (s)');
ylabel('Amplitude');
legend('x(t)', 'y(t)', 'z(t)', 'w(t)');  