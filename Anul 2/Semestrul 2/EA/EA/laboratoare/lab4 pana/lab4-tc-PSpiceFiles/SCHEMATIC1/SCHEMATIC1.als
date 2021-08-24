.ALIASES
J_J1            J1(d=OUT1 g=VIN s=N00204 ) CN @LAB4-TC.SCHEMATIC1(sch_1):INS28@JFET.BF245A.Normal(chips)
J_J2            J2(d=N00204 g=0 s=OUT2 ) CN @LAB4-TC.SCHEMATIC1(sch_1):INS46@JFET.BF245A.Normal(chips)
R_R1            R1(1=OUT1 2=V+ ) CN @LAB4-TC.SCHEMATIC1(sch_1):INS73@ANALOG.R.Normal(chips)
R_R2            R2(1=OUT2 2=V+ ) CN @LAB4-TC.SCHEMATIC1(sch_1):INS89@ANALOG.R.Normal(chips)
I_I1            I1(+=N00204 -=V- ) CN @LAB4-TC.SCHEMATIC1(sch_1):INS114@SOURCE.IDC.Normal(chips)
V_V1            V1(+=V+ -=0 ) CN @LAB4-TC.SCHEMATIC1(sch_1):INS139@SOURCE.VDC.Normal(chips)
V_V2            V2(+=0 -=V- ) CN @LAB4-TC.SCHEMATIC1(sch_1):INS155@SOURCE.VDC.Normal(chips)
V_V3            V3(+=VIN -=0 ) CN @LAB4-TC.SCHEMATIC1(sch_1):INS171@SOURCE.VDC.Normal(chips)
_    _(out1=OUT1)
_    _(out2=OUT2)
_    _(V+=V+)
_    _(V-=V-)
_    _(VIN=VIN)
.ENDALIASES
