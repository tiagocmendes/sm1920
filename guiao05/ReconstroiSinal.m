function ReconstroiSinal(x, Ta)
  fa = 1 / Ta;
  N = length(x); % numero de amostras do sinal 
  xt = zeros(N*100,1); % xt e o sinal reconstruido das amostras de x
  Ts = Ta / 100; % periodo de amostragem de xt
  t = [0:(N*100-1)]'*Ts; % instantes de tempo de xt 
  for n = 1:N
    xt = xt + x(n)*sinc(fa*(t - (n-1)*Ta)); % (t- (n-1)*Ta) deslocar o tempo por cada amostra
  end
  plot(t, xt, [0:(N-1)]'*Ta, x,'.');
  xlabel('Tempo (seg)');
end