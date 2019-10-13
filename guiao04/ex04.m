clear all;
close all;
clc;

N = 500;
Ta = 0.001;
Ns = 20;
f = random('uniform', 1,20,Ns,1);
Phase = random('uniform', -pi, pi, Ns, 1);
t = [0: (N-1)]'*Ta;
x = zeros(N,1);
for n = 1:Ns 
  x = x + sin(2*pi*f(n)*t + Phase(n));
end
[X, fx] = Espetro(x,Ta,0, 41);