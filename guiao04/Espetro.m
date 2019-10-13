function [X,f] = Espetro(x, Ta, w, fig)
  
  N = length(x);
  if w == 0
    X = fftshift(fft(x)/N);
  else 
    X = fftshift(fft(x.*blackman(N))) / N;
  endif
    
  fa = 1 / Ta;
  df = 1 / (N*Ta);
  f = [0:(N-1)]'*df - fa / 2;
  figure(fig)
  plot(f, abs(X));
  xlabel('Frequency (Hz)');
  ylabel('Magnitude');
  title('Spectrum');
  

endfunction