f = @(x) x^3 - 5*x - 2;
df = @(x) 3*x^2 - 5;
a = 1;
n = 30 ;
roots = [];
tolerance = 1e-6;


if df(a)~=0
 for i=1:n
   c= a - (f(a)/df(a));
   fprintf('C%d = %.4f\n',i,c)
    roots = [roots; c];
     if abs(f(c)) < tolerance
        break;
        else
          a = c;

       endif

  endfor
else
  disp('Derivative of the function in the initial guess is zero');
end;


x = linspace(a, a+2, 100);
y = f(x);

figure;
plot(x, y,'k','LineWidth', 2); % Plot the function
hold on;
plot(roots, f(roots), 'ro', 'MarkerSize', 10); % Plot roots
xlabel('Variable x');
ylabel('Variable y');
title('Newton-Rapson Method: Finding Roots');
legend('Function', 'Roots');
grid on;
hold off;
