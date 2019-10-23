clear all;
close all;
clc;

Ta = 0.001;
f0 = 1;
Np = 10;
ak = [0 0 0 0 0]';
bk = [1 0.5 0.25 0.1 0.05]';

[x,t] = FourierFunction(Ta,f0,Np,ak, bk);

figure(41);
plot(t,x);