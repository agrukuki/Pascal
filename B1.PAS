program b1;
uses crt;
var
   t: char;
   s:string;
   n,i:longint;
begin
     clrscr;
     write('nhap xau S : ');readln(s);
     n := length(s);
     if n mod 2 = 1 then
     begin
        for i := 1 to n div 2 do
        begin
             if i mod 2 = 1 then
             begin
                  writeln(s[i],' <> ',s[n+1-i]);
                  t := s[i];
                  s[i] := s[n+1-i];
                  s[n+1-i] := t;

             end
             else
             begin
                  writeln(s[i],' <> ',s[n div 2 +i]);
                  t := s[i];
                  s[i] := s[n div 2+i];
                  s[n div 2+i] := t;

             end;
        end;
     end
     else
     begin
         for i := 1 to n div 2 do
         begin
             if i mod 2 = 1 then
             begin
                  writeln(s[i],' <> ',s[n+1-i]);
                  t := s[i];
                  s[i] := s[n+1-i];
                  s[n+1-i] := t;

             end
             else
             begin
                  writeln(s[i],' <> ',s[n div 2+i-1]);
                  t := s[i];
                  s[i] := s[n div 2+i-1];
                  s[n div 2+i-1] := t;

             end;
        end;
     end;
     write(s);
     readln;
end.