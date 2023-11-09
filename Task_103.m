f = @(x) x^3 - 5*x - 2;
a = 2;
b = 3;
n = 15;
roots = [];
tolerance = 1e-6;

if f(a) * f(b) <0
 for i=1:n
   c= ((a*f(b))-(b*f(a)))/((f(b)-f(a)));
   fprintf('C%d = %.4f\n',i,c)
   roots = [roots; c];
     if abs(f(c)) < tolerance
        break;

   elseif f(a)*f(c)<0
     b= c;

   else
     a = c;
   endif
  endfor
else
  disp('No root is present between these numbers');
end;


x = linspace(a, b, 100);
y = f(x);

figure;
plot(x, y,'k','LineWidth', 2); % Plot the function
hold on;
plot(roots, f(roots), 'ro', 'MarkerSize', 10); % Plot roots
xlabel('Variable x');
ylabel('Variable y');
title('False position Method: Finding Roots');
legend('Function', 'Roots');
grid on;
hold off;

