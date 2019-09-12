Program cau3;
uses crt;
type
    ss =  string;
    stringarray = array [0..100] of ss;
var
   len,i,j,k : Integer;
   substringarray : stringarray;

procedure FindAllSubString(s : String; var result:stringarray;var leng:Integer) ;
var n,len,index : Integer;
    tmp: String;
    exist :boolean;
begin
     n := Length(s);
     tmp := '';
     leng :=0;
     exist :=false;
     for len:= 1 to n do
     begin
          for i := 0 to (n-len) do
          begin
              j := i + len - 1;

              for k:=i+1 to j+1 do
              begin

                   tmp := tmp + s[k];
              end;

              {need split into seprate function }
              exist := false;
              for index := 0 to leng do
              begin
                   if result[index] = tmp then
                    begin
                       exist := true;
                       break;
                    end;
              end;
              {and check exist here before add to array}
              if not exist then
              begin
                   result[leng]:=tmp;
                   leng:=leng+1;
              end;
              tmp:='';
          end;
     end;
end;
procedure PrintStringArray(data:Stringarray;len:Integer);
begin
     for i:=0 to len - 1 do
     Writeln(data[i]);
end;
begin
     clrscr;
     FindAllSubString('acgsdfdshhfg4354567456456546456vsf71',substringarray,len);

     writeln(len);
{     PrintStringArray(substringarray,len);}
     readln;
end.