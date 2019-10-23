%
% Created by Tiago Carvalho Mendes
% October, 2019 - University of Aveiro
%


function p = Potencia(x,T,Ta)
  p = x'*x/length(x);
end 

%function p = Potencia(x,Ta,T)
%  p = (1/T)*((x.*x'*Ta);
%endfunction