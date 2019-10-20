clear;
close all;
clc;

wall = imread('Parede.jpg');

imshow(wall);
subplot(3,2,1);

wall2 = wall(1:2:end,1:2:end,:);
imshow(wall2);
subplot(3,2,2);

wall3 = wall(1:4:end,1:4:end,:);
imshow(wall3);
subplot(3,2,3);

wall4 = wall(1:8:end,1:8:end,:);
imshow(wall4);
subplot(3,2,4);

wall5 = wall(1:16:end,1:16:end,:);
imshow(wall5);
subplot(3,2,5);