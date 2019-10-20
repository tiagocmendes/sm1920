
xa = 0.05;
x1 = [0:xa:5-xa]';
x2 = [0:xa:5-xa]';

y = zeros(length(x1));

for c = 1:length(x1)
  y(:,c) = cos(2*pi*(x1(c)-2*x2(:)));
end

x1 = [-5:xa:5-xa]';
x2 = [-5:xa:5-xa]';

z = zeros(length(x1));

for c = 1:length(x1)
  z(:,c) = cos(2*pi*sqrt(x1(c)^2 + x2(:).^2));
end

figure(11);
mesh(y);
view(2);
axis equal;


figure(12);
mesh(z);
view(2);
axis equal;

figure(21);
Espetro2(y, xa);
figure(22);
Espetro2(z, xa);
