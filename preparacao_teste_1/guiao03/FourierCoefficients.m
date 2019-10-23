function [ak,bk] = FourierCoefficients(Ta, T0, x, K)
  N = length(x);
  t = [0:(N-1)]'*Ta;
  
  ak = zeros(K+1,1);
  bk = zeros(K+1,1);
  ak(1) = mean(x);
  bk(1) = 0;
  for k = 2:K
    ak(k) = (2/N)*x'*cos(2*pi*(k-1)*t/T0);
    bk(k) = (2/N)*x'*sin(2*pi*(k-1)*t/T0);
  endfor
endfunction