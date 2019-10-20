clear;
close all;
clc;

Ta = 0.2;
t = [0:Ta:5]';
x = sin(2*pi*t);

figure(21);
ReconstroiSinal(x, Ta);

Ta = 0.04;
t = [0:Ta:5]';
y = sin(10*pi*t) + cos(12*pi*t) + cos(14*pi*t-pi/4);
figure(22);
ReconstroiSinal(y, Ta);

Ta = 0.1;
t = [-5:Ta:5-Ta]';
z = sinc(5*t);
figure(23);
ReconstroiSinal(z,Ta);