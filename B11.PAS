program B11;
uses crt;
type
        arr = array[1..100] of longint;
var
        x,i,j,t,n,cnt,m,s:longint;
        a : arr;
function Hecxa(b:longint):arr;
var
        s,r,i,p : Longint;
        ar : arr;
begin
     cnt := 0;
     i := 0;
     s := 0;
     while b > 0 do
     begin
          r := b mod 16;
          b := b div 16;
          inc(cnt);
          ar[cnt] := r;
     end;
     for i := 1 to cnt do
          Hecxa[i] := ar[cnt-i+1];
end;
begin
     clrscr;
     repeat
        write('nhap x : ');readln(x);
     until (x >= 1) and (x <= 1000000000);
     a := Hecxa(x);
     n := cnt;
     for i:= 1 to n do
        write(a[i]);
     writeln;
     for i := 1 to n-1 do
        for j := i+1 to n do
            if a[i] < a[j] then
            begin
                 t := a[i];
                 a[i] := a[j];
                 a[j] := t;
            end;
     s := 0;
     m := 1;
     for i:=1 to n do
        write(a[i]);
     writeln;
     for i := n downto 1 do
     begin
          {writeln(m,' * ',b[i],' = ',b[i]*m);}
          s := s + a[i]*m;
          m := m * 16;
     end;
     writeln(s);
     readln;
end.