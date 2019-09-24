%
% Author: Tiago Mendes;
% University of Aveiro - September 2019 
%

clear all;
close all;
clc;

ta = 0.01;

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

figure(41);
mesh(t1,t2,q);
view(2);
colorbar;
cmap = colormap; % Divides the signal span in 64 levels, where each level corresponds to an RGV entry in cmap
gray_cmap = [[0:1/64:(1-1/64)]' [0:1/64:(1-1/64)]' [0:1/64:(1-1/64)]' ];
colormap(gray_cmap);
