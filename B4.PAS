program b54;
uses crt;
type
    arr = array[1..100] of integer;
var
   i,j,k,m,n,r : longint;
   a,x : arr;
function exp(e:integer;x:integer):longint;
var t : longint;
begin
     t := e;
     for i := 2 to x do
         t := t * e;
     exp := t;
end;
function knit(ar : arr) : boolean;
var b:integer;
begin
     knit := true;
     for b := 1 to n-1 do
         if (ar[b] = ar[b+1]) then knit := false;
end;

begin
     clrscr;
     readln(n);
     for i := 1 to n do
     begin
         readln(r);
         if r > 0 then r := 1
         else r := -1;
         a[i] := r;
     end;
     for i := 1 to n do
         for j := 1 to n-i+1 do
             begin
                  for k := i to i+j-1 do
                      x[k] := a[k];
                  for k := i to i+j-1 do
                      write(x[k],' ');
                  writeln;
                  if (knit(x)) and (j > m) then m := j;
             end;
     writeln(m);
     readln;
end.