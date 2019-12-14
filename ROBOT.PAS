program robot;
uses crt;
var
   n,i,j,e : longint;
   command : array [1..100] of byte;
begin
     clrscr;
     readln(n);
     while n <> 1 do
     begin
          inc(i);
          if n mod 2 = 0 then
          begin
               command[i] := 2;
               n := n div 2;
          end
          else
          begin
               command[i] := 1;
               dec(n);
          end;
     end;
     write('C1 ');
     inc(e,1);
     for j := i-1 downto 1 do
     begin
          if command[j] = 2 then
          begin
               write('N2 ');
               inc(e,4);
          end
          else
          begin
               write('C1 ');
               inc(e,2);
          end;
     end;
     writeln;
     write(e);
     readln;
end.