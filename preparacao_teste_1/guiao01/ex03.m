%
% Created by Tiago Carvalho Mendes
% October, 2019 - University of Aveiro
%

clear;
close all;
clc;

Ta = 0.01;
t1 = [0:Ta:5-Ta]';
t2 = t1;
q = zeros(length(t1), length(t2));
for n = 1:length(t1)
  q(n, :) = 2*sin(2*pi*(2*t1(n) + t2));
end

figure(41);
mesh(t1,t2,q);
view(2);
cmap = colormap;
gray_cmap = [ [0:1/64:(1-1/64)]' [0:1/64:(1-1/64)]' [0:1/64:(1-1/64)]' ];
colormap(gray_cmap);