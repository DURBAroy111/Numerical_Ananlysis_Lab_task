f = @(x) x^3 - 5*x - 2;
a = 2;
b = 3;
n = 35;
if f(a) * f(b) <0
 for i=1:n
   c= (a+b)/2;
    fprintf('C%d = %.4f\n',i,c)
   if f(a)*f(c)<0
     b= c;

   elseif
     f(b)*f(c)<0
     a = c;
   endif
  endfor
else
  disp('No root is present between these numbers');
  end;

