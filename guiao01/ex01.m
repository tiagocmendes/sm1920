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
y = cos(10*pi*t);   % y(t) signal
figure(1);
plot(t,x,t,y);
xlabel('Time (sec)');
ylabel('Amplitude');
title('Example of graphics');
legend('x(t)', 'y(t)');
grid;

% c)
t_z = t;
z = x.*y;
figure(2);
plot(t_z,z);
xlabel('Time (sec)');
ylabel('Amplitude');
title('Example of graphic');
legend('z(t)');
grid;

% d)
t_w = [0:ta:10]';
w = 3*sin(pi*t_w) + 2*sin(6*pi*t_w);
figure(3);
plot(t_w,w);
xlabel('Time (sec)');
ylabel('Amplitude');
title('Example of graphic');
legend('w(t)');
grid;

% e)
t1 = [0:ta:5]';
t2 = t1;

q = zeros(length(t1),length(t2));
for n = 1 : length(t1)
  q(n, :) = 2 * sin(2*pi*(2*t1(n) + t2));
end 

%
% solucao alternativa
%
% for n = 1:length(t1)
%  for m = 1:length(t2)
%    q(n,m) = 2 * sin(2*pi*(2*t1(n) + t2(m)));
%  end 
% end
%

figure(4);
mesh(t1,t2,q);