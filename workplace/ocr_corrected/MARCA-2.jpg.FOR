998   FORMAT(' M2',Z8,I3,I8)
      IF(MAR.EQ.0) GO TO 60
      IF(MAR.EQ.ATOMT) GOTO 121
      IF(MAR.EQ.NAPPID) GOTO 122
      IF(MAR.EQ.COMPT.OR.MAR.EQ.ARRAYT) GOTO 123
      GOTO 30
121   VALUE(K)=IOR(VALUE(K),M1)
      GO TO 30
122   CAR(K)=IOR(CAR(K),M1)
      GOTO 30
123   BINSP(K)=TOR(BINSP(K),M1)
      GOTO 30
60    Q=CDRL
      IF(CAR(Q).LT.0) GO TO 30
      CDR(P) =T
      T=P
      P=Q
      GO TO 10
30    IF(T.EQ.M2) GO TO 40
      Q =T
      IF(CDR(Q).LT.0) GO TO 35
      T=CDR(Q)
      CDR(Q)=P
32    P=Q
      GO TO 30
35    CDR(Q)=IAND(CDR(Q),M2)
      T=IAND(CAR(Q),M2)
      CAR(Q)=IOR(P,M1)
      P=Q
      GO TO 20
40    CONTINUE
      RETURN
      END