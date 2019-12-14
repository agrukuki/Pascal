program b2;
uses crt;
var a,b,c,min,max : longint;
begin
     clrscr;
     write('Nhap a,b,c : ');readln(a,b,c);
     while (a >= 10) or (b >= 10) or (c >= 10) do
     begin
          min := a; max :=a;
          if max < b then max := b;
          if max < c then max := c;
          if min > b then min := b;
          if min > c then min := c;

          if max = a then dec(a,min);
          if max = b then dec(b,min);
          if max = c then dec(c,min);
     end;
     writeln('d = ',a,'   e = ',b,'   f = ',c);
     readln;
end.