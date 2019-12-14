program b14;
uses crt;
var
   S,X:string;
   p,i,j,len,pos : integer;
   yes : boolean;
begin
     yes := false;
     clrscr;
     readln(S);
     for i := 1 to length(S) div 2 do
     begin
          X := Copy(S,1,i);
          len := length(S) div i;
          {writeln(len);}
          for j := 1 to len do
          begin
               {writeln;
               writeln( X[j],'  ', S[j*len+1]);}
               if X[j] <> S[j*len+1] then
                    {writeln('NO');}
                    break
               else
               begin
                   yes := true;
                   pos := i;
                   break;
               end;
          end;
     end;
     if yes then writeln('YES   ',pos);
     readln;
end.