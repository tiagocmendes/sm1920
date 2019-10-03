function s = mdc(a,b)

while (a != b)
  if (a > b)
    a = a - b;
  else
    b = b - a;
   endif 
endwhile
s = a; 