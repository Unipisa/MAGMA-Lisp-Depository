C
C     NOMI DI ATOMI
C
      B = 0
      MMFLAG = 0
C
      ECHOGC = 1
      ZNIL = ZNILLL
      ISW1=0
      OSW1=0
C  **** AZZERAMENTO  CONTROLLO - INIZ. ASIZE, BSIZE, CSIZE.
      ASIZE=642*6
      ASIZE=ASIZE*2
      BSIZE=1536*3
       BSIZE=BSIZE* 2
      CSIZE=1536*4
       CSIZE=CSIZE*2
C  ******
      DO 2346 I=1,ASIZE
2346  ABLOCK(I) =0
      DO 2347 I=1,BSIZE
2347  BBLOCK(I) =0
      DO 2348 I=1,CSIZE
2348  CBLOCK(I =0
C  ***************** NOME DELL`ATOMO $ERROR$$ *******
C
C     TIPI
C
      LISTT = 0
      BASEFT = 1
      COMMAT = 2
      NLAMBD = 3
      NNAMBD = 4
      ATOMT = 5
      NAPPID = 6
      CXTT = 7
      COMPT=12
      ARRAYT=13
      REDEFT = 31
      SNUM = 9
      LNUM = 11
      TUPLE = 32
      CLASS = 33
      BAG = 34 
      STR = 30
C
C     COSTANTI VARIE
C
      RUNO = 256
      FLAG = 65536
      UNNO = 65536
      NTYPEE = ZNTYPE
      ATOMT1 = 5*NTYPEE
      NATOML = 6*NTYPEE
      UNNO2 = UNNO/2