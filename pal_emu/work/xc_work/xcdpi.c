typedef struct {
  unsigned a;
  unsigned b;
} iscLv_t;

#include "c/gfifo.c"
#include "c/gfifo_display.c"
#include "c/xcDesSig.c"
#include "c/sfcall.c"
#include "c/ptcall.c"
#include "c/gsfis.c"
unsigned long long xc_num_gfifos() { return 38ULL; }
unsigned long long xc_num_vlg_gfifos() { return 0ULL; }
unsigned long long xc_num_sfifos() { return 6ULL; }
unsigned xc_gfifo_version() { return 1; }
extern void xc_OSF_Decoder();
extern void xc_finish();
int xctbTbcEvent(int tbc_id){
 switch(tbc_id){
  case 3: xc_OSF_Decoder(); return 0;
 }
 return 1;
}
