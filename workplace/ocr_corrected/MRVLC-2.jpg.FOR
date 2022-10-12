      IF(R(LIFE(I)).GT.S(K)) GO TO 9
6     IF(I.EQ.I1) GO TO 7
      IF(R(LIFE(I+1)).LE.R(K)) GO TO 7
      I=I+1
      GO TO 6
7     CAR(CAR(TRVL))=LIFE(I)
      GO TO 20
9     IF(I.EQ.I1) GO TO 11
      IF(R(LIFE(I+1)).LE.R(K)) GO TO 11
      I=I+1
      GO TO 10
11    IF(TRVL.EQ.PR) GO TO 12
      CDR(Q)=CDR(TRVL)
      TRVL=Q
      GO TO 8
12    CAR(TRVL)=CAR(CDR(TRVL))
      CDR(TRVL)=CDR(CDR(TRVL))
      GO TO 3
80    IF(CD(CDR(PR)).NE.NIL) GO TO 81
      OUT1=1
      CAR(PR)=IAND(CAR(PR),M2)
      CAR(CAR(PR))=IAND(CAR(CAR(PR)),M2)
      PR1=CDR(PR)
      CAR(PR1)=IAND(CAR(PR1),M2)
      CAR(CAR(PR1))=XAND(CAR(CAR(PR1)),M2)
      OUT2=CDR(CAR(PR1))
      GO TO 90
81    CAR(IAND(CAR(PR),M2))=IOR(1,M1)
      CDR(IAND(CAR(PR),M2))=CDR(PR)
      OUT1=0
      OUT2=0
90    CONTINUE
      RETURN
      END