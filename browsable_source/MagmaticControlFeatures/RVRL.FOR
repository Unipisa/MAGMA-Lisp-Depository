      INTEGER FUNCTION RVLR(KEY,PUNT)
C
      IMPLICIT INTEGER(A-Z)
      INTEGER*2 R,S
C	
      COMMON
     */ UNIT / UNIT
     */ CAR / V(4),CAR(15767)
     */ CDR / B(4),CDR(15767)
     */ R / C(3),R(128)
     */ S / F(3),S(128)
     */ NIL / NIL
C
      IP(PUNT.EQ.NIL) GO TO 5
      PUNTEM = PUNT
2     RK = CAR(CAR(PUNT))
      IF(R(KEY).GE.R(RK)) GO TO 3
      PUNT = CDR(PUNT)
      IF(PUNT.NE.NIL) GO TO 2
5     WRITE(UNIT,100)
100   FORMAT(1X,'RVLR - SYSTEM ERROR')
      CALL HLT
3     IF(R(KEY).EQ.R(RK)) GO TO 20
4     IF(S(KEY).LE.S(RK)) GO TO 10
      PUNT = CDR(PUNT)
      IF(PUNT.EQ.NIL) GO TO 5
      RK = CAR(CAR(PUNT))
      GO TO 4
20    RVLR = CDR(CAR(PUNT))
      PUNT = CDR(PUNT)
      RETURN
10    RVLR = CDR(CAR(PUNT))
      PUNT = PUNTEM
      RETURN
      END
