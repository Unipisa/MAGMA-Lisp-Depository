C
      FLA = 1
      NAPPOI = 0
      KKK=ASIZE-11
      DO 3 I=1,KKK,6
3     ABP(I) = I+6
      KKK2=ASIZE-5
      ABP(KKK2) = NIL
      KKK=ASIZE-23
      DO 31 I=KKK,KKK2,6
31    RETP(I) =BUFLAG
C
      FLC = 1
      KKK=CSIZE-7
      CPOINT = DO 4 I=1,KKK,4
4     BLINK(I) = I+4
      KKK2=CSIZE-3
      BLINK(KKK 2) = NIL
      KKK=CSIZE-43
      DO 41 I=KKK,KKK2,4
41    NREENT(I)=BUFLAG
C
      FLB = 1
      KKK=BSIZE-5
      BPOINT = 0
      DO 5 I=1,KKK,3
5     BBP(I)=I+3
      KKK2=BSIZE-2
      BBP(KKK2) = NIL
C
C     FREE STORAGE.
C        FSSIZE = 30000
C
C****** AZZERAMENTO CDR
C
      B2(4)=0
      DO 2349 I=1,FSSIZE
2349  CDR(I)=0
      FLFS = 0
      B1(4) = 1
      FSM2 = FSSIZE-1
      DO 6 I=1,FSM2
6     CAR(I) = I+1
      CAR(FSM2+1) = NIL
      FSMBUF=FSM2-200
      PSM1=PSSIZE-1
      DO 61 I=FSMBUF, FSM1
61    CDR(I)=BUFLAG
      CDR(FSM2+1)=BUFLAG
C
C    SPAZIO BINARIO
C
      BINSPL=16383