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

figure(21);
plot(t,x);
grid on;
title('Signal x(t)');
legend('x(t)');
xlabel('Time (s)');
ylabel('Amplitude');


y = cos(10*pi*t);
figure(22);
plot(t,y);
grid on;
title('Signal y(t)');
legend('y(t)');
xlabel('Time (s)');
ylabel('Amplitude');

z = x.*y;
figure(23)
plot(t,z);
grid on;
title('Signal z(t)');
legend('z(t)');
xlabel('Time (s)');
ylabel('Amplitude');

t = [0:Ta:10-Ta]';
w = 3 * sin(pi*t) + 2*sin(6*pi*t);
figure(24)
plot(t,w);
grid on;
title('Signal w(t)');
legend('w(t)');
xlabel('Time (s)');
ylabel('Amplitude');

t1 = [0:Ta:5-Ta]';
t2 = t1;
q = zeros(length(t1), length(t2));
for n = 1:length(t1)
  q(n, :) = 2*sin(2*pi*(2*t1(n) + t2));
end

figure(25);
mesh(t1,t2,q);
view(2);
