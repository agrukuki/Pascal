PROGRAM HISO;
USES CRT;
VAR
   N,I,J,MAX,HI:LONGINT;
   A : ARRAY[1..10000] OF LONGINT;
BEGIN
     CLRSCR;
     READLN(N);
     FOR I := 1 TO N DO
         READ(A[I]);
     READLN;
     FOR J := 2 TO N DO
         FOR I := 1 TO J DO
         BEGIN
              HI := A[J] - A[I];
              IF HI > MAX THEN MAX := HI;
         END;
     WRITELN(MAX);
     READLN;
END.