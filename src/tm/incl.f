REQUIRE JMP ~nn/lib/jmp.f

: INCLUDED1 ( i*x c-addr u -- j*x ) \ 94 FILE
  2DUP TYPE CR
  CURFILE @ >R
  2DUP HEAP-COPY CURFILE !

  2DUP 2>R INCLUDE-PROBE 2R> ROT
  IF +ModuleDirName INCLUDE-PROBE ELSE 2DROP 0 THEN
  CURFILE @ FREE DROP
  R> CURFILE !
  THROW
;

' INCLUDED1 ' INCLUDED JMP