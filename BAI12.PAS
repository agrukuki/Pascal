program b14;
uses crt;
var
   A:array[1..100] of string;
   Str :string;
   p,i,j,len : integer;
Function Count(S : String): integer;
Var cnt: Integer;
Begin
	If (S[1]=' ') Then
		cnt:=0
	Else
		cnt:=1;
	For i:= 1 To Length(S) Do
	Begin
		If (S[i]=' ') And (S[i+1]<>' ') Then
		Inc(cnt);
	End;
	Count := cnt;
End;
begin
     clrscr;
     readln(str);
     writeln(Count(str));
     readln;
end.
