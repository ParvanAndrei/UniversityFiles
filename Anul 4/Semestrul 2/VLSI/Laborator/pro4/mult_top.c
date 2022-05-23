#include <genlib.h>  
  
main()  
{  
int i;  
  
   GENLIB_DEF_LOFIG("mult_top");  
  
   GENLIB_LOCON("vdd",           IN,        "vdd");    
   GENLIB_LOCON("vss",           IN,        "vss");    
   GENLIB_LOCON("vdde",          IN,       "vdde");   
   GENLIB_LOCON("vsse",          IN,       "vsse");   
   GENLIB_LOCON("a[3:0]",        IN,     "a[3:0]");    
   GENLIB_LOCON("b[3:0]",        IN,     "b[3:0]");    
   GENLIB_LOCON("reset",         IN,      "reset");    
   GENLIB_LOCON("start",         IN,      "start");    
   GENLIB_LOCON("ck",            IN,         "ck");    
   GENLIB_LOCON("ready",        OUT,      "ready");    
   GENLIB_LOCON("prod[7:0]",    OUT,  "prod[7:0]");    
     
                              
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
  
   for (i = 0; i < 8; i++)  
    GENLIB_LOINS("po_sp", GENLIB_NAME("p%d", i + 8),   
          GENLIB_NAME("prodprod[%d]", i), GENLIB_NAME("prod[%d]", i),  
         "cki", "vdde", "vdd", "vsse", "vss", 0);  
  
  
   GENLIB_LOINS("pi_sp", "p16",  
         "start", "startstart",  
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
     
   GENLIB_LOINS("mult", "mult",  
   	     "clock", "resetreset",
  	     "aa[3:0]", "bb[3:0]", 
         "startstart",
   	     "prodprod[7:0]",
         "readyready", 
         "vdd", "vss", 0);  
  
   GENLIB_SAVE_LOFIG();  
   exit(0);   
}  
