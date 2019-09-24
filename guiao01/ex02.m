%
% Author: Tiago Mendes;
% University of Aveiro - September 2019 
%
  
clear all;
close all;
clc;

ta = 0.01; % tempo (ou periodo) de amostragem (sec)

% a) e b)
t = [0:ta:5]';
x = 2 * sin(4*pi*t);    % x(t) signal
y = cos(10*pi*t);       % y(t) signal
t_z = t;
z = x.*y;               % z(t) signal
t_w = [0:ta:10]';
w = 3*sin(pi*t_w) + 2*sin(6*pi*t_w); % w(t) signal 

figure(31);
plot(t,x,'-r');
hold on; 
plot(t,y,'--b', 'LineWidth', 2);
plot(t_z,z,'.-','Color',[0.2 0.8 0.2]);
plot(t_w,w,'-y','LineWidth',2);
hold off;
xlabel('Time (sec)');
ylabel('Amplitude');
legend('x(t)','y(t)','z(t)', 'w(t)');