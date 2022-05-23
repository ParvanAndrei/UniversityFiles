#include <genlib.h>
main(){
  int i;
  GENLIB_DEF_LOFIG("counter");

  GENLIB_LOCON("vdd",IN,"vdd");
  GENLIB_LOCON("vss",IN,"vss");
  GENLIB_LOCON("vdde",IN,"vdde");
  GENLIB_LOCON("vsse",IN,"vsse");
  GENLIB_LOCON("i",IN,"i");
  GENLIB_LOCON("reset",IN,"reset");
  GENLIB_LOCON("o",OUT,"o");
  GENLIB_LOCON("ck",IN,"ck");



  GENLIB_LOINS("pvsse_sp","p1","cki","vdde","vdd","vsse","vss",0);
  GENLIB_LOINS("pvdde_sp","p2","cki","vdde","vdd","vsse","vss",0);
  GENLIB_LOINS("pvddeck_sp","p3","clock","cki","vdde","vdd","vsse","vss",0);
  GENLIB_LOINS("pvssi_sp","p4","cki","vdde","vdd","vsse","vss",0);
  GENLIB_LOINS("pvddi_sp","p5","cki","vdde","vdd","vsse","vss",0);

  GENLIB_LOINS("pi_sp", "p6",
    "i", "ii",
    "cki", "vdde", "vdd", "vsse", "vss", 0);

  GENLIB_LOINS("pi_sp", "p7",
    "reset", "resetreset",
    "cki", "vdde", "vdd", "vsse", "vss", 0);

  GENLIB_LOINS("pck_sp", "p8",
    "ck",
    "cki", "vdde", "vdd", "vsse", "vss", 0);

  GENLIB_LOINS("po_sp", "p9",
    "oo", "o",
    "cki", "vdde", "vdd", "vsse", "vss", 0);

  GENLIB_LOINS("counterm", "counterm",
    "clock", "ii", "resetreset", "oo",
    "vdd", "vss", 0);

  GENLIB_SAVE_LOFIG();
  exit(0); 
}