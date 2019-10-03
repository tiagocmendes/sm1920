%function p = power_sig(x,T,Ta)
%  p = 1/T*sum(abs(x).^2*Ta);
%end

%function p = power_sig(x,T,Ta)
%  p = (1/T)*((x.*x')*Ta);
%end

function p = power_sig(x,T,Ta)
  p = x'*x/length(x);
end 