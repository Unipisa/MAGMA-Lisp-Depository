C    MARCATURA E AGGIORNAMENTO
C    DELLE LISTE DEI VALORI RIDEFINITI
C
      SUBROUTINE MRVL(PR,OUT1,OUT2)
      IMPLICIT INTEGER (A-Z)
      INTEGER*2 R,S,CXTX
      COMMON
     */CAR/A(4),CAR(5000)
     */CDR/B(4),CDR(5000)
     */CXTX/F3(3),CXTX(128)
     */R/F1(3),R(128)
     */S/F2(3),S(128)
     */LIFE/LIFE(128)
     */I1/I1
     */VALUE/C(4),VALUE(1023)
     */NTYPEE/NTYPEE
     */NIL/NIL
      DATA M1/Z80000000/
      DATA M2/Z7FFFFFFF/
      IF(CAR(PR).GE.0) GOTO 100
      WRITE(6,101)
101   FORMAT(' SYSTEM ERROR : MRVL')
      CALL HLT
100   CAR(CAR(PR))=IOR(CAR(CAR(PR)),M1)
      CAR(PR)=IOR(CAR(PR),M1)
      Q=PR
      TRVL=CDR(PR)
      I=1
3     IF(CAR(TRVL).GE.0) GOTO 102
      WRITE (6,101)
      CALL HLT
102     K=CAR(CAR(TRVL))
      IF(CXTX(K).LT.0) GOTO 5
1     IF(LIFE(I).EQ.K) GOTO 20
      I=I+1
      GOTO 1
20    K2=MOD(CDR(CAR(TRVL)),NTYPEE)
      MAR=CDR(CAR(TRVL))/NTYPEE+1
      CAR(CAR(TRVL))=IOR(CAR(CAR(TRVL)),M1)
      CAR(TRVL)=IOR(CAR(TRVL),M1)
      GOTO (41,2,2,41,41,42,43,2,2,2),MAR
41    CALL MARCA(K2)
      GOTO 2
42    VALUE(K2)=IOR(VALUE(K2),M1)
      GOTO 2
43    CAR(K2)=IOR(CAR(K2),M1)
2     IF(I.EQ.I1) GOTO 4
      I=I+1
8     IP(CDR(TRVL).EQ.NIL) GOTO 80
      Q=TRVL
      TRVL=CDR(TRVL)
      GOTO 3
4     CDR(TRVL)=NIL
      GOTO 80
5     IF(R(LIFE(I)).LT.R(K)) GOTO 11
10    IF(R(LIFE(I)).GT.S(K)) GOTO 9
6     IF(I.EQ.I1) GOTO 7
      IF(R(LIFE(I+1)).LE.R(K)) GOTO 7
      I=I+1
      GOTO 6
7     CAR(CAR(TRVL))=LIFE (I)
      GOTO 20
9     IF(I.EQ.I1) GOTO 11
      IF(R(LIFE(I+1)).LE.R (K) ) GOTO 11
      I=I+1
      GOTO 10
11    IF(TRVL.EQ.PR) GOTO 12
      CDR(Q)=CDR(TRVL)
      TRVL=Q
      GOTO 8
12    CAR(TRVL)=CAR(CDR(TRVL))
      CDR(TRVL)=CDR(CDR(TRVL))
      GOTO 3
80    IF(CDR(CDR(PR)).NE.NIL) GOTO 81
      OUT1=1
      CAR(PR)=IAND(CAR(PR),M2)
      CAR(CAR(PR))=IAND(CAR(CAR(PR)),M2)
      PR1=CDR(PR)
      CAR(PR1)=IAND(CAR(PR1),M2)
      CAR(CAR(PR1))=IAND(CAR(CAR(PR1)),M2)
      OUT2=CDR(CAR(PR 1))
      GOTO 90
81    CAR(IAND(CAR(PR),M2))=IOR(1,M1)
      CDR(IAND(CAR(PR),M2))=CDR (PR)
      OUT1=0
      OUT2=0
90    CONTINUE
      RETURN
      END
