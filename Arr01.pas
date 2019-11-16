function inputArray(): Array of integer; // На выходе динамический массив целых чисел оканчивающийся 0
begin
  var element: integer;
  SetLength(Result, 0);
  repeat
   element := ReadInteger;
   if element>=0
    then begin
          SetLength(Result,Result.Length+1);
          Result[Result.Length-1]:= element;
         end
    else WriteLn('Вы должны ввести целое положительное число или 0. Ввод проигнорирован');
  until element=0; 
end;

procedure printArray(a: array of integer); 
begin
  foreach x: integer in a do
    if x<>0 // 0 не печатаем
      then write(x, ' ');
  writeln;
end;

function Average(a: array of integer): Real; //Функция для подсчета среднего арифмитического
begin
  Result:=0.0;  
  foreach x: integer in a do
    Result += x;
  Result:=Result/(a.Length - 1)
end;

var a: array of integer;

begin
  a:=inputArray();
  writeLn('Вы ввели массив ');
  printArray(a);  
  writeLn('Среднее арифметическое равно: ',Average(a));
end.