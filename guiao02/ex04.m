%
% Author: Tiago Mendes;
% University of Aveiro - September 2019 
%

clear all;
close all;
clc;

ta = 0.0001;
t = [0:ta:10]';
x = sin(2*pi*t);
r = power_sig(x);