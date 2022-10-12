      SUBROUTINE STRVL(PR)
      IMPLICIT INTEGER(A-Z)
      COMMON
     */CAR/A(4),CAR(5000)
     */CDR/B(4),CDR(5000)
     */NIL/NIL
     */NTYPEE/NTYPEE
      DIMENSION IVET(100)
      DATA M2/Z7FFFFFFF /
      WRITE(6,1) PR
1     FORMAT (' RVL DI INDIRIZZO', Z8)
      DO 2 I=1, 100
2     IVET(I) =0
      P=PR
      DO 3 I=1,100,2
10    IVET(I)=CAR(P)
11    IVET(I+1)=CDR(P)
      IF(CDR(P).EQ.NIL) GO TO 4
3     P=CDR(P)
        II=I+1
      WRITE(6,5) (IVET(J),J=1,II)
5     FORMAT(1X,12(1X,Z8))
      P=PR
      DO 6 I=1,100, 2
      PT = CAR(P)
20    IVET(I)=CAR(IAND(PT,M2))
21    IVET(I+1)=CDR(IAND(PT,M2))
      IF(CDR(P).EQ.NIL) GO TO 7
6     P=CDR(P)
7     II=I+1
      WRITE(6,5)(IVET(I),I=1,II)
      RETURN
      END
