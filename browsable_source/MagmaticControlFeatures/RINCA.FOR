      SUBROUTINE RINCA(CXT1,H,KEYFOU)
      INTEGER*2 CXT1,KEYFOU,H,CXT,KEY
      COMMON
     */CXT/V1(3),CXT(256)
     */KEY/V2(3),KEY(256)
C
      ICXT1 = CXT1-1
      K = MOD(ICXT1,256)+1
      I = 0
      IH = H
      GO TO (1,2,1),IH
1     IF(CXT(K).EQ.0) GOTO 15
      IF(CXT(K).NE.CXT1) GO TO 4
      IF(IH.EQ.3) GO TO 5
      KEYFOU = KEY(K)
      RETURN
4     I = I+1
      IF(I.GT.256) GO TO 14
      K = MOD(K,256) +1
      GO TO (1,2,1) ,IH
2     IF(CXT(K).NE.O) GO TO 4
      CXT(K) = CXT1
      KEY(K) = KEYFOU
      RETURN
5     IF(KEYFOU.LT.O) GO TO 6
14    WRITE(6,13)
13    FORMAT(' SYSTEM ERROR - RINCA')
      CALL HLT
6     KEY(K) = -KEY(K)
      RETURN
15    KEYFOU =-1
      RETURN
      END
