function [x,Ta] = Reconstroi(X, f, fig)
  N = length(X);
  X = ifftshift(X);
  x = ifft(X)*N;
  fa = f(end)*2;
  Ta = 1/fa;
  t = [0:(N-1)]'*Ta;
  plot(t,x);
  xlabel('Time (s)');
  ylabel('Amplitude');
  title('Signal');
end