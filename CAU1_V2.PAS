Program Lesson8_Program1;
uses crt;
Var
	FileContent : Text;
        a,b,k,x,y,sa,sb,ca,cb,ct,Yn,Yn1,y2: Real;

Function  Cbrt(n : Real) : Real;
Begin
    If n = 0 then Cbrt := 0
    else Cbrt := Exp(Ln(n) / 3);
End;

Begin
        b :=0;
        ct := 0;
        ClrScr;
	Assign(FileContent, 'CAU1.INP');
	Reset(FileContent);
        Read(FileContent,a,b,k);
        sa := sqrt(a);
        sb := sqrt(b);
        ca := Cbrt(a);
        cb := Cbrt(b);
        x := sa;
        y := ca;
        y2 := y;
        If (a > 0) and (b > 0) then
        begin
             While x <= sb do
             begin
                  y := y2;
                  While y <= cb do
                  begin
                       If (abs(x*x-y*y*y)<=k) then ct := ct+1;
                       y := y + 1;
                  end;
                  x := x + 1;
             end;
        end;
        writeln(ct:5:1);
	Close(FileContent);
	Readln;
End.