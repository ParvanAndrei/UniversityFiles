.ALIASES
X_U1A           U1A(+=0 -=N00190 V+=N00249 V-=N00256 OUT=OUT ) CN @LAB2.SCHEMATIC1(sch_1):INS32@EVAL.LM324.Normal(chips)
V_V1            V1(+=N00249 -=0 ) CN @LAB2.SCHEMATIC1(sch_1):INS78@SOURCE.VDC.Normal(chips)
V_V2            V2(+=0 -=N00256 ) CN @LAB2.SCHEMATIC1(sch_1):INS94@SOURCE.VDC.Normal(chips)
V_V3            V3(+=IN -=0 ) CN @LAB2.SCHEMATIC1(sch_1):INS110@SOURCE.VDC.Normal(chips)
R_R1            R1(1=IN 2=N00190 ) CN @LAB2.SCHEMATIC1(sch_1):INS135@ANALOG.R.Normal(chips)
R_R2            R2(1=N00190 2=OUT ) CN @LAB2.SCHEMATIC1(sch_1):INS151@ANALOG.R.Normal(chips)
R_R3            R3(1=OUT 2=0 ) CN @LAB2.SCHEMATIC1(sch_1):INS167@ANALOG.R.Normal(chips)
_    _(in=IN)
_    _(out=OUT)
.ENDALIASES
