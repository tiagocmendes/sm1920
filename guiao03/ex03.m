clear all;
close all;
clc;

Ta = 0.001;   % Sampling period (sec).
f0 = 1;       % Fundamental frequency (Hz).
Np = 10;      % Number of periods;
bk = [0 4/pi 0 4/(3*pi) 0 4/(5*pi) 0 4/(7*pi) 0 4/(9*pi) 0 4/(11*pi) 0 4/(13*pi)]';
ak = zeros(size(bk));   

[x,t] = fourier_function(Ta,f0,Np,ak,bk)
figure(31);
plot(t,x);
grid;