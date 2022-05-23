#include <genlib.h>  
  
main()  
{  
int i;  
  
   GENLIB_DEF_LOFIG("ifr_top");  
  
   GENLIB_LOCON("vdd",           IN,        "vdd");    
   GENLIB_LOCON("vss",           IN,        "vss");    
   GENLIB_LOCON("vdde",          IN,       "vdde");   
   GENLIB_LOCON("vsse",          IN,       "vsse");
   GENLIB_LOCON("ck",            IN,       "ck");    
   GENLIB_LOCON("reset",         IN,      "reset");  
   GENLIB_LOCON("a[3:0]",        IN,     "a[3:0]");    
   GENLIB_LOCON("b[3:0]",        IN,     "b[3:0]");    
   GENLIB_LOCON("req",         IN,      "req");    
   GENLIB_LOCON("ready",        OUT,      "ready");    
   GENLIB_LOCON("cat[3:0]",    OUT,    "cat[3:0]"); 
   GENLIB_LOCON("rest[4:0]",    OUT,  "rest[4:0]");     
     
                              
   GENLIB_LOINS ("pvsse_sp", "p20", "cki", "vdde", "vdd", "vsse", "vss", 0);  
   GENLIB_LOINS ("pvdde_sp", "p21", "cki", "vdde", "vdd", "vsse", "vss", 0);  
   GENLIB_LOINS ("pvddeck_sp", "p22", "clock", "cki", "vdde", "vdd", "vsse", "vss",0); 
   GENLIB_LOINS ("pvssi_sp", "p23", "cki", "vdde", "vdd", "vsse", "vss", 0);  
   GENLIB_LOINS ("pvddi_sp", "p24", "cki", "vdde", "vdd", "vsse", "vss", 0);  
  
   for (i = 0; i < 4; i++)  
    GENLIB_LOINS("pi_sp", GENLIB_NAME("p%d", i),   
          GENLIB_NAME("a[%d]", i), GENLIB_NAME("aa[%d]", i),   
         "cki", "vdde", "vdd", "vsse", "vss", 0);  
  
   for (i = 0; i < 4; i++)  
    GENLIB_LOINS("pi_sp", GENLIB_NAME("p%d", i + 4),   
          GENLIB_NAME("b[%d]", i), GENLIB_NAME("bb[%d]", i),   
         "cki", "vdde", "vdd", "vsse", "vss", 0);  
  
   for (i = 0; i < 4; i++)  
    GENLIB_LOINS("po_sp", GENLIB_NAME("p%d", i + 8),   
          GENLIB_NAME("catcat[%d]", i), GENLIB_NAME("cat[%d]", i),  
         "cki", "vdde", "vdd", "vsse", "vss", 0);  
  
   GENLIB_LOINS("po_sp", "p25",  
         "restrest[0]", "rest[0]",  
         "cki", "vdde", "vdd", "vsse", "vss", 0); 
GENLIB_LOINS("po_sp", "p12",  
         "restrest[1]", "rest[1]",  
         "cki", "vdde", "vdd", "vsse", "vss", 0); 
GENLIB_LOINS("po_sp", "p13",  
         "restrest[2]", "rest[2]",  
         "cki", "vdde", "vdd", "vsse", "vss", 0); 
GENLIB_LOINS("po_sp", "p14",  
         "restrest[3]", "rest[3]",  
         "cki", "vdde", "vdd", "vsse", "vss", 0); 
GENLIB_LOINS("po_sp", "p15",  
         "restrest[4]", "rest[4]",  
         "cki", "vdde", "vdd", "vsse", "vss", 0);  

   GENLIB_LOINS("pi_sp", "p16",  
         "req", "reqreq",  
         "cki", "vdde", "vdd", "vsse", "vss", 0);  
     
   GENLIB_LOINS("pi_sp", "p17",  
        "reset", "resetreset",  
         "cki", "vdde", "vdd", "vsse", "vss", 0);  
     
   GENLIB_LOINS("pck_sp", "p18",  
         "ck",  
         "cki", "vdde", "vdd", "vsse", "vss", 0);  
     
   GENLIB_LOINS("po_sp", "p19",  
         "readyready", "ready",  
         "cki", "vdde", "vdd", "vsse", "vss", 0);  
     
     GENLIB_LOINS("ifr", "ifr","clock", "resetreset",
  	     "aa[3:0]", "bb[3:0]","reqreq","readyready", 
   	     "catcat[3:0]","restrest[4:0]",
         "vdd", "vss", 0);  
  
   GENLIB_SAVE_LOFIG();  
   exit(0);   
}  
