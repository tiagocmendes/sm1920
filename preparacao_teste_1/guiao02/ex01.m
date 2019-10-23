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
plot(t,x);

y = sin(10*pi*t + pi/2);
plot(t,y);

z = sin(6*pi*t) + sin(8*pi*t);
plot(t,z);

w = sin(6*pi*t) + sin(8*pi*t + 0.1);
plot(t,w);

q = sin(6*pi*t) + sin(7*pi*t)+ sin(8*pi*t);
plot(t,q);

s = mdc(3, mdc(3.5,4));

