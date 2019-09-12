Program Lesson8_Program1;
uses crt;
Var
	FileContent : Text;
        a,b,k,x,y,ct: LongInt;
Begin
        ct := 0;
        ClrScr;
	Assign(FileContent, 'CAU1.INP');
	Reset(FileContent);
        Read(FileContent,a,b,k);
        If (a > 0) and (b > 0) then
        begin
             For x := a to b do
             begin
                  For y := a to b do
                  begin
                  If (a<=x*x) and (x*x<=b) and (a<=y*y*y) and (y*y*y<=b) and (abs(x*x-y*y*y)<=k) then ct := ct+1;
                  end;
             end;
        end;
        writeln(ct);
	Close(FileContent);
	Readln;
End.