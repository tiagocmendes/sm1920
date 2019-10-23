Ta = 0.01;
t = [0:Ta:5-Ta]';

x = 2*sin(4*pi*t);
y = sin(10*pi*t + pi/2);
z = sin(6*pi*t) + sin(8*pi*t);
w = sin(6*pi*t) + sin(8*pi*t + 0.1);
q = sin(6*pi*t) + sin(7*pi*t)+ sin(8*pi*t);

p1 = Potencia(x, Ta, 0.5);
p2 = Potencia(y, Ta, 0.2);
p3 = Potencia(z, Ta, 1);
p4 = Potencia(w, Ta, 1);
p5 = Potencia(q, Ta, 2); 