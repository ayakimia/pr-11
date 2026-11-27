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
  Randomize;
  for i := 1 to n do
    for j := 1 to n do
      a[i,j] := Random(201) - 100;
  writeln('Матриця:');
  for i := 1 to n do
  begin
    for j := 1 to n do
      write(a[i,j]:5);
    writeln;
  end;
  s := 0;
  for i := 1 to n do
    s := s + a[i,i];
  writeln('Середнє арифметичне: ', s / n:0:2);
end.
