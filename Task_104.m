f = @(x) x^3 - 5*x - 2;
df = @(x) 3*x^2 - 5;
a = 1;
n = 30 ;
if df(a)~=0
 for i=1:n
   c= a - (f(a)/df(a));
   fprintf('C%d = %.4f\n',i,c)

   a = c;

  endfor
else
  disp('Derivative of the function in the initial guess is zero');
  end;

