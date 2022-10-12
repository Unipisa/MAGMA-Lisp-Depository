      COMMON /ERMSG /ERMSG(10,50)
     * /NUMER/NUMER
C
      COMMON
     */ ITRACE /ITRACE
C
     */ PTRACE / PTRACE
C
     */ ECHOGC / ECHOGC
CSTAT
CSTAT      COMMON /CONCON/ CONCON
C
      DIMENSION
C    *DATA1(9), DATA4(9),DATA2(20),DATA3(20),
C    *DATA1(14),DATA4(9),DATA2(20),DATA3(20),
     *FUN(1284),RETP(1284),CP(1284),BLP(1284),SEGNO(1284),ABP(1284),
     *BIND(3072),VAR(3072),BBP(3072),SONBRO(4096),NREENT(4096),
     *VALORE(4096),INF(4096),LISTAR(4096),BLINK(4096)
C
      EQUIVALENCE
     *(ABLOCK(1),FUN(1)),
     *(ABLOCK(2),RETP(1)),
     *(ABLOCK(3),CP(1)),
     *(ABLOCK(4),BLP(1)),
     *(ABLOCK(5),SEGNO(1)),
     *(ABLOCK(6),ABP(1)),
     *(BBLOCK(1),BIND(1)),
     *(BBLOCK(2),VAR(1)),
     *(BBLOCK(3),BBP(1)),
     *(CBLOCK(1),SONBRO(1)),
     *(CBLOCK(2),NREENT(1)),
     *(CBLOCK(3),VALORE(1)),
     *(CBLOCK(3),INF(1)),
     *(CBLOCK(4),LISTAR(1)),
     *(CBLOCK(4),BLINK(1)),
     *(ZSPAZ,NBLANK)
      DATA ZNILLL/Z05000000/,ZNTYPE/Z01000000/,ZBASE/Z00800000/
      DATA MASK 3B / ZOOFFFFFF /, MASK4B / ZFFOOFFFF /
      DATA MASK5B /ZFFFFOOFF /, MASK6B / ZFFFFFFOO /
      DATA MASK7B / Z000000FF
      DATA UNO/1/
C    *DATA
C    *DATA1/' (LAM','BDA(',') (PR','INT(','APPL','Y(RE','AD ''',
C    *INPU','T)(R','EAD '''INP','UT))','''OUT','PUT>'/ ,
C    *DATA1/' (LAM','BDA(',')(PRINT(','APPL','Y(BE', 'AD) (',
C    *'READ','>    '/,
C    *DATA2/('LAM','BDA(','X Y ', 'Z)<P','UTD<', 'CAR (','SETO', Y (R'
C    *'EAD ','X()Z','>(CD','R Y>* , * (APP", "LY (Q" , "UOTE",
C    *' LOA', 'D) (L','IST ','X() (',')Z> '/'
C    *DATA3/' (LAM','BDA(',')(AP','PLY(','QUOT','E PE','RMES',') (CO',
C    *'NS(G','ETVA','L(QU','OTE ','ERRO','RN))',') () (','GETA','PF(Q',
C    *'UOTE',' LIS',' PX> '/,
C    *DATA4/'(LAM','BDA(','$$$$','$$$X',')($$','EVAL','$$ $',
C    *'$$$$','$$X>'/
      DATA NBLANK/'        '