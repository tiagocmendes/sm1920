clear;
close all;
clc;

Ta = 0.01;
f0 = 1;
T0 = 1/f0;
Np = 10;
t = [0:Ta:(Np*T0-Ta)]';
x = sin(2*pi*f0*t);
[X, fx] = Espetro(x, Ta, 21);

t = [0:Ta: (5-Ta)]';
y = sin(10*pi*t) + cos(12*pi*t) + cos(14*pi*t - pi/4);
[Y, fy] = Espetro(y, Ta, 22);

t = [0:1:5];
z = square(sin(pi*t));
figure(23);
plot(t,z);