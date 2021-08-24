.ALIASES
R_RL2           RL2(1=0 2=OUT2 ) CN @LAB6-TEMA10.SCHEMATIC1(sch_1):INS709@ANALOG.R.Normal(chips)
R_R3            R3(1=IN 2=N00687 ) CN @LAB6-TEMA10.SCHEMATIC1(sch_1):INS739@ANALOG.R.Normal(chips)
X_U1            U1(+=0 -=N00687 V+=V+ V-=V- OUT=OUT2 ) CN @LAB6-TEMA10.SCHEMATIC1(sch_1):INS605@EVAL.uA741.Normal(chips)
V_V1            V1(+=V+ -=0 ) CN @LAB6-TEMA10.SCHEMATIC1(sch_1):INS589@SOURCE.VDC.Normal(chips)
R_R4            R4(1=N00687 2=OUT2 ) CN @LAB6-TEMA10.SCHEMATIC1(sch_1):INS755@ANALOG.R.Normal(chips)
V_V3            V3(+=IN -=0 ) CN @LAB6-TEMA10.SCHEMATIC1(sch_1):INS787@SOURCE.VSIN.Normal(chips)
V_V2            V2(+=0 -=V- ) CN @LAB6-TEMA10.SCHEMATIC1(sch_1):INS693@SOURCE.VDC.Normal(chips)
_    _(IN=IN)
_    _(OUT2=OUT2)
_    _(V+=V+)
_    _(V-=V-)
.ENDALIASES
