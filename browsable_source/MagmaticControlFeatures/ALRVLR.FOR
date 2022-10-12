C   / *****************************************************************
C   * 
C   *           == LETTURA DI UN VALORE NELLA RVL ==
C   *
C   *              PROCEDURA TIPO FUNCTION
C   *       PARAMETRI IN EXTERNAL=
C   *                             sAAK = CHIAVE DI ACCESSO DA USARE.
C   *
C   *       SE TIPO DI DATO (MARCA DEL PUNT) E` = / RVLTYP
C   *       (NON RIDEFINITO) , RITORNA ALLA ROUTINE CHIAMANTE CON
C   *       IL VALORE CHE ERA MEMORIZZATO IN PUNT.
C   *
C   *       SE TIPO DI DATO = RVLTYP (RIDEFINITO), SCANDISCE LA RVL
C   *       RICERCANDO IL VALORE SOTTO LA CHIAVE AAK:
C   *       1)  SE ESSA E` PRESENTE, RITORNA IL VALORE CHE LE E`
C   *           ASSOCIATO.
C   *       2)  SE NON E` PRESENTE RITORNA IL VALORE SOTTO LA
C   *           CHIAVE CHE E` PRIMO AVO PRESENTE DI AAK.
C   ***************************************************************** /
      INTEGER FUNCTION ALRVLR (PUNT)
      IMPLICIT INTEGER (A-Z)
      INTEGER*2 R,S,AAK,REDEFT
      COMMON
     */CAR/ V(4) , CAR(15767)
     */CDR/ V1(4) ,CDR(15767)
     */R/ V2(3) , R(128)
     */S/V3(3),S(128)
     */AAK/AAK
     */REDEFT/REDEFT
     */NTYPEE/ NTYPEE
C
      IF (REDEFT.NE.PUNT/NTYPEE) GO TO 1
      K2 = MOD(PUNT, NTYPEE)
      K12=CAR(K2)
      K2=CDR(K2)
      AK1=CAR(K 12)
      RAAK=R(AAK)
      IF (RAAK.GT.AK1) GOTO 2
      K2=CDR(K12)
2     RK = CAR(CAR(K2))
      IF (RAAK.GE.R(RK)) GO TO 3
      K2 = CDR(K2)
      GO TO 2
3     IF (RAAK.EQ.R(RK)) GO TO 10
      SAAK=S(AAK)
4     IF (SAAK.LE.S(RK)) GO TO 11
      K2 = CDR(K2)
      RK = CAR(CAR(K2))
      GO TO 4
10    CAR(K12)=RAAK
22    ALRVLR=CDR(CAR(K2))
      CDR(K12)=K2
      RETURN
11    CAR(K12)=R(RK)
      GOTO 22
1     ALR VLR = PUNT
      RETURN
      END
