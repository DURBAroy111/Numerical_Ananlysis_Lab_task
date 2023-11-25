A= input('Enter the elements of first matrix inside a third bracket as space between the elements of first row follwed by a semicolon then the elements of 2nd row and so on like ([2 3 ; 4 5]): ');

B= input ('Enter the elements of second matrix just like the first one: ');

[rA, cA]=size(A);
[rB, cB]= size (B);

maxvalue= max(A(:));
fprintf('The maximum value in matrix A is: %f\n', maxvalue);


if cA != rB
  fprintf('The number of columns in first matrix and the number of rows in second matrix have to be same');
 else
  c =A*B;
  fprintf('The result is: ');
  disp(c);

end;


