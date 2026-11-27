program AverageOnMainDiagonal;
var
  a: array[1..100, 1..100] of integer;
  n, i, j, s: integer;
begin
  write('Розмір матриці (1..100): ');
  readln(n);
  if (n < 1) or (n > 100) then
  begin
    writeln('Неправильний розмір');
    exit;
  end;
  writeln('Введіть елементи матриці:');
  for i := 1 to n do
    for j := 1 to n do
      read(a[i,j]);
  s := 0;
  for i := 1 to n do
    s := s + a[i,i];
  writeln('Середнє арифметичне: ', s / n:0:2);
end.
