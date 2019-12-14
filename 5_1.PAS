program ct51;
uses crt;
var tt,ut,t1,m1,t2,m2,bcnn:longint;
function UCLN(x:longint;y:longint):longint;
var t,i : longint;
begin
     UCLN := 1;
     if y > x then
     begin
          t := y;
          y := x;
          x := t;
     end;
     for i := 2 to x do
         if (x mod i = 0) and (y mod i = 0) then
         begin
              UCLN := i;
              break;
         end;
end;
begin
     clrscr;
     write('nhap tu, mau phan so thu nhat : ');readln(t1,m1);
     write('nhap tu, mau phan so thu hai : ');readln(t2,m2);
     writeln('Phan so da nhap : ',t1,'/',m1,'; ',t2,'/',m2);
     bcnn := m1 * m2 div UCLN(m1,m2);
     t1 := bcnn div m1*t1;
     t2 := bcnn div m2*t2;
     writeln('Phan so sau khi quy dong : ',t1,'/',bcnn,'; ',t2,'/',bcnn);
     tt := t1 + t2;
     ut := UCLN(tt,bcnn);
     tt := tt div ut;
     bcnn := bcnn div ut;
     writeln('Tong hai phan so: ',tt,'/',bcnn);
     readln;
end.