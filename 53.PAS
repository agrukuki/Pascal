Program b5_3;
uses crt;
var
   n,i,j : integer;
   a : array[1..40] of integer;
begin
     clrscr;
     readln(n);
     for i := 0 to 1 do
         for j := 1 to n do
             a[j+n*i] := j;

     for i := 0 to n-1 do
     begin
          for j := 1 to n do
              write(a[j+i],' ');
          writeln;
     end;
     readln;
end.