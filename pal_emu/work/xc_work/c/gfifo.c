#include <stdlib.h>
#include <string.h>

#ifdef __cplusplus
  extern "C"{
#endif

extern const char* xctf_strget(int gid);
extern unsigned long long gfifoDisplaySimLtime(int tu, int tp);
extern unsigned gfifoDisplaySimStime(int tu, int tp);
extern double gfifoDisplaySimRtime(int tu, int tp);
extern void gfifoDisplayBVtoHexStr(unsigned *bvec, int nBits, unsigned minWidth, char *obuffer);
extern void gfifoDisplayLVtoHexStr(iscLv_t *lvec, int nBits, unsigned minWidth, char *obuffer);
extern int otb_vpi_printf(char *format, ...);
extern void *otb_sv_get_scope(void);
extern const char *otb_sv_get_name_from_scope(void *scope);
extern void otb_gsfifo_enter(const char *funcName);
extern void otb_gsfifo_exit(const char *funcName);
extern void otb_update_gsfifo_exit_permission(void *p, unsigned long long size, unsigned protGroup, int permission);
#define getScpName() otb_sv_get_name_from_scope(otb_sv_get_scope())

//#define DEBUG_GFIFO 1
//#define DEBUG_GFIFO_DISP 1
//#define DEBUG_SFIFO 1
//#define DEBUG_SFIFO_OUTPUT 1
//#define PROTECT_GSFIFO_MEM 1

static void Bv2Lv(iscLv_t *Lv, unsigned char *Bv, int blen) {
  int i;
  for (i = 0; blen >= 4; i++) {
    memcpy(&(Lv[i].a), Bv, 4);
    Lv[i].b = 0;
    blen -= 4; Bv += 4;
  }
  if (blen) {
    Lv[i].a = 0;
    memcpy(&(Lv[i].a), Bv, blen);
    Lv[i].b = 0;
  }
}

static void Bv2LvExt(iscLv_t *Lv, unsigned char *Bv, int blen, int nwords) {
  int i;
  for (i = 0; blen >= 4; i++) {
    memcpy(&(Lv[i].a), Bv, 4);
    Lv[i].b = 0;
    blen -= 4; Bv += 4;
  }
  if (blen) {
    Lv[i].a = 0;
    memcpy(&(Lv[i].a), Bv, blen);
    Lv[i].b = 0;
    i++;
  }
  for ( ; i < nwords; i++) {
    Lv[i].a = 0;
    Lv[i].b = 0;
  }
}

static void Bv2LvSignExt(iscLv_t *Lv, unsigned char *Bv, int blen, int nwords, int nbits) {
  int i;
  unsigned mask, lmask;
  int isSignedVal = *(Bv+blen-1) & 0x80;
  if (isSignedVal) {
    mask = 0xffffffff; lmask = 0xffffffff >> (32 - nbits);
  } else {
    mask = 0; lmask = 0;
  }
  for (i = 0; blen >= 4; i++) {
    memcpy(&(Lv[i].a), Bv, 4);
    Lv[i].b = 0;
    blen -= 4; Bv += 4;
  }
  if (blen) {
    Lv[i].a = (nwords > 0) ? mask : lmask;
    memcpy(&(Lv[i].a), Bv, blen);
    Lv[i].b = 0;
    i++;
  }
  if (nwords < i) return;
  for ( ; i < nwords; i++) {
    Lv[i].a = mask;
    Lv[i].b = 0;
  }
  if (nbits > 0) {
    Lv[i].a = lmask;
    Lv[i].b = 0;
  }
}

static void BvSignExt(char *Bv, int blen, int nbytes, int nbits) {
  int isSignedVal = *(Bv+blen-1) & 0x80;
  if (isSignedVal) {
    memset(Bv+blen, 0xff, nbytes - blen);
    if (nbits > 0) {
      *(Bv + nbytes) = 0xff >> (8-nbits);
    }
  }
  else {
    if (nbits > 0) nbytes++;
    memset(Bv+blen, 0, nbytes - blen);
  }
}

static void Lv2Bv(char *Bv, iscLv_t *Lv, int blen) {
  unsigned v;
  int i;
  for (i = 0; blen >= 4; i++) {
    v = Lv[i].a & ~Lv[i].b;
    memcpy(Bv, &v, 4);
    blen -= 4; Bv += 4;
  }
  if (blen) {
    v = Lv[i].a & ~Lv[i].b;
    memcpy(Bv, &v, blen);
  }
}

extern void xc_sfifo_info(void *fp, void **fp2, unsigned long *tid, char *fn);
extern void xc_sfifo_call(unsigned long tid, void *iarg, void **oarg);

#ifdef __cplusplus
}
#endif

#ifdef __cplusplus
  extern "C"{
#endif

void get_config_data_zyackf_m2p0_emu(int eos, unsigned long tid) {
#ifdef DEBUG_SFIFO
  otb_vpi_printf("TB calling SFIFO: %s.get_config_data_zyackf(%d)\n", getScpName(), eos);
#endif
  char iarg[4];

  memcpy(iarg+0, &eos, 4);

  xc_sfifo_call(tid, iarg, 0);
}

typedef void (*get_config_data_zyackf_fp) (int eos, unsigned long tid);

void get_config_data_zyackf(int eos) {
  unsigned long tid;
  get_config_data_zyackf_fp fp;
  xc_sfifo_info((void *) &get_config_data_zyackf, (void **) &fp, &tid, "get_config_data_zyackf");
  fp(eos, tid);
}

void get_config_data_zyputf_m2p0_emu(unsigned *operation, unsigned *address, unsigned *data, unsigned long tid) {
#ifdef DEBUG_SFIFO
  char xc__buf__0[6];
  gfifoDisplayBVtoHexStr(operation, 8, 0, xc__buf__0);
  char xc__buf__1[12];
  gfifoDisplayBVtoHexStr(address, 32, 0, xc__buf__1);
  char xc__buf__2[12];
  gfifoDisplayBVtoHexStr(data, 32, 0, xc__buf__2);
  otb_vpi_printf("TB calling SFIFO: %s.get_config_data_zyputf(0x%s, 0x%s, 0x%s)\n", getScpName(), xc__buf__0, xc__buf__1, xc__buf__2);
#endif
  char iarg[12];

  memcpy(iarg+0, operation, 1);
  memcpy(iarg+1, address, 4);
  memcpy(iarg+5, data, 4);

  xc_sfifo_call(tid, iarg, 0);
}

typedef void (*get_config_data_zyputf_fp) (unsigned *operation, unsigned *address, unsigned *data, unsigned long tid);

void get_config_data_zyputf(unsigned *operation, unsigned *address, unsigned *data) {
  unsigned long tid;
  get_config_data_zyputf_fp fp;
  xc_sfifo_info((void *) &get_config_data_zyputf, (void **) &fp, &tid, "get_config_data_zyputf");
  fp(operation, address, data, tid);
}

void ib_service_data_zyackf_m2p0_emu(int eos, unsigned long tid) {
#ifdef DEBUG_SFIFO
  otb_vpi_printf("TB calling SFIFO: %s.ib_service_data_zyackf(%d)\n", getScpName(), eos);
#endif
  char iarg[4];

  memcpy(iarg+0, &eos, 4);

  xc_sfifo_call(tid, iarg, 0);
}

typedef void (*ib_service_data_zyackf_fp) (int eos, unsigned long tid);

void ib_service_data_zyackf(int eos) {
  unsigned long tid;
  ib_service_data_zyackf_fp fp;
  xc_sfifo_info((void *) &ib_service_data_zyackf, (void **) &fp, &tid, "ib_service_data_zyackf");
  fp(eos, tid);
}

void ib_service_data_zyputf_m2p0_emu(unsigned *tdata, unsigned *tuser_string, unsigned *tstrb, unsigned *str_get, unsigned long tid) {
#ifdef DEBUG_SFIFO
  char xc__buf__0[20];
  gfifoDisplayBVtoHexStr(tdata, 64, 0, xc__buf__0);
  char xc__buf__1[12];
  gfifoDisplayBVtoHexStr(tuser_string, 32, 0, xc__buf__1);
  char xc__buf__2[6];
  gfifoDisplayBVtoHexStr(tstrb, 8, 0, xc__buf__2);
  char xc__buf__3[12];
  gfifoDisplayBVtoHexStr(str_get, 32, 0, xc__buf__3);
  otb_vpi_printf("TB calling SFIFO: %s.ib_service_data_zyputf(0x%s, 0x%s, 0x%s, 0x%s)\n", getScpName(), xc__buf__0, xc__buf__1, xc__buf__2, xc__buf__3);
#endif
  char iarg[20];

  memcpy(iarg+0, tdata, 8);
  memcpy(iarg+8, tuser_string, 4);
  memcpy(iarg+12, tstrb, 1);
  memcpy(iarg+13, str_get, 4);

  xc_sfifo_call(tid, iarg, 0);
}

typedef void (*ib_service_data_zyputf_fp) (unsigned *tdata, unsigned *tuser_string, unsigned *tstrb, unsigned *str_get, unsigned long tid);

void ib_service_data_zyputf(unsigned *tdata, unsigned *tuser_string, unsigned *tstrb, unsigned *str_get) {
  unsigned long tid;
  ib_service_data_zyputf_fp fp;
  xc_sfifo_info((void *) &ib_service_data_zyputf, (void **) &fp, &tid, "ib_service_data_zyputf");
  fp(tdata, tuser_string, tstrb, str_get, tid);
}

void ob_service_data_zyackf_m2p0_emu(int eos, unsigned long tid) {
#ifdef DEBUG_SFIFO
  otb_vpi_printf("TB calling SFIFO: %s.ob_service_data_zyackf(%d)\n", getScpName(), eos);
#endif
  char iarg[4];

  memcpy(iarg+0, &eos, 4);

  xc_sfifo_call(tid, iarg, 0);
}

typedef void (*ob_service_data_zyackf_fp) (int eos, unsigned long tid);

void ob_service_data_zyackf(int eos) {
  unsigned long tid;
  ob_service_data_zyackf_fp fp;
  xc_sfifo_info((void *) &ob_service_data_zyackf, (void **) &fp, &tid, "ob_service_data_zyackf");
  fp(eos, tid);
}

void ob_service_data_zyputf_m2p0_emu(unsigned *tdata, unsigned *tuser_string, unsigned *tstrb, unsigned *str_get, unsigned long tid) {
#ifdef DEBUG_SFIFO
  char xc__buf__0[20];
  gfifoDisplayBVtoHexStr(tdata, 64, 0, xc__buf__0);
  char xc__buf__1[12];
  gfifoDisplayBVtoHexStr(tuser_string, 32, 0, xc__buf__1);
  char xc__buf__2[6];
  gfifoDisplayBVtoHexStr(tstrb, 8, 0, xc__buf__2);
  char xc__buf__3[12];
  gfifoDisplayBVtoHexStr(str_get, 32, 0, xc__buf__3);
  otb_vpi_printf("TB calling SFIFO: %s.ob_service_data_zyputf(0x%s, 0x%s, 0x%s, 0x%s)\n", getScpName(), xc__buf__0, xc__buf__1, xc__buf__2, xc__buf__3);
#endif
  char iarg[20];

  memcpy(iarg+0, tdata, 8);
  memcpy(iarg+8, tuser_string, 4);
  memcpy(iarg+12, tstrb, 1);
  memcpy(iarg+13, str_get, 4);

  xc_sfifo_call(tid, iarg, 0);
}

typedef void (*ob_service_data_zyputf_fp) (unsigned *tdata, unsigned *tuser_string, unsigned *tstrb, unsigned *str_get, unsigned long tid);

void ob_service_data_zyputf(unsigned *tdata, unsigned *tuser_string, unsigned *tstrb, unsigned *str_get) {
  unsigned long tid;
  ob_service_data_zyputf_fp fp;
  xc_sfifo_info((void *) &ob_service_data_zyputf, (void **) &fp, &tid, "ob_service_data_zyputf");
  fp(tdata, tuser_string, tstrb, str_get, tid);
}

#ifdef __cplusplus
}
#endif

#ifdef __cplusplus
  extern "C"{
#endif

extern void _gfdL435_34_P0();

void _gfdL435_34_P0_gfifo_m2p0() {
#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_exit(__func__);
#endif
#ifdef DEBUG_GFIFO_DISP
  otb_vpi_printf("TB executing GFIFO: %s._gfdL435_34_P0()\n", getScpName());
#endif

  _gfdL435_34_P0();

#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_enter(__func__);
#endif
}

extern void _gfdL513_33_P0();

void _gfdL513_33_P0_gfifo_m2p0() {
#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_exit(__func__);
#endif
#ifdef DEBUG_GFIFO_DISP
  otb_vpi_printf("TB executing GFIFO: %s._gfdL513_33_P0()\n", getScpName());
#endif

  _gfdL513_33_P0();

#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_enter(__func__);
#endif
}

extern void _gfdL316_32_P0(unsigned *);

void _gfdL316_32_P0_gfifo_m2p0(unsigned char *idata) {
  unsigned _zy_gfdV_L316_40[9]; _zy_gfdV_L316_40[8] = 0; memcpy(_zy_gfdV_L316_40, idata+0, 35);
#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_exit(__func__);
#endif
#ifdef DEBUG_GFIFO_DISP
  char xc__buf__0[74];
  gfifoDisplayBVtoHexStr(_zy_gfdV_L316_40, 280, 0, xc__buf__0);
  otb_vpi_printf("TB executing GFIFO: %s._gfdL316_32_P0(0x%s)\n", getScpName(), xc__buf__0);
#endif

  _gfdL316_32_P0(_zy_gfdV_L316_40);

#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_enter(__func__);
#endif
}

extern void _gfdL318_31_P0(unsigned *);

void _gfdL318_31_P0_gfifo_m2p0(unsigned char *idata) {
  unsigned _zy_gfdV_L318_39[9]; _zy_gfdV_L318_39[8] = 0; memcpy(_zy_gfdV_L318_39, idata+0, 35);
#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_exit(__func__);
#endif
#ifdef DEBUG_GFIFO_DISP
  char xc__buf__0[74];
  gfifoDisplayBVtoHexStr(_zy_gfdV_L318_39, 280, 0, xc__buf__0);
  otb_vpi_printf("TB executing GFIFO: %s._gfdL318_31_P0(0x%s)\n", getScpName(), xc__buf__0);
#endif

  _gfdL318_31_P0(_zy_gfdV_L318_39);

#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_enter(__func__);
#endif
}

extern void get_config_data_2_zyprefetch(int);

void get_config_data_2_zyprefetch_gfifo_m2p0(unsigned char *idata) {
  int size; memcpy(&size, idata+0, 4);
#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_exit(__func__);
#endif
#ifdef DEBUG_GFIFO
  otb_vpi_printf("TB executing GFIFO: %s.get_config_data_2_zyprefetch(%d)\n", getScpName(), size);
#endif

  get_config_data_2_zyprefetch(size);

#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_enter(__func__);
#endif
}

extern void _gfdL327_30_P0(int);

void _gfdL327_30_P0_gfifo_m2p0(unsigned char *idata) {
  int _zy_gfdV_L250_66; memcpy(&_zy_gfdV_L250_66, idata+0, 4);
#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_exit(__func__);
#endif
#ifdef DEBUG_GFIFO_DISP
  otb_vpi_printf("TB executing GFIFO: %s._gfdL327_30_P0(%d)\n", getScpName(), _zy_gfdV_L250_66);
#endif

  _gfdL327_30_P0(_zy_gfdV_L250_66);

#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_enter(__func__);
#endif
}

extern void _gfdL330_29_P0(unsigned *, unsigned *, unsigned *);

void _gfdL330_29_P0_gfifo_m2p0(unsigned char *idata) {
  unsigned _zy_gfdV_L249_65[1]; memcpy(_zy_gfdV_L249_65, idata+0, 4);
  unsigned _zy_gfdV_L248_64[1]; memcpy(_zy_gfdV_L248_64, idata+4, 4);
  unsigned _zy_gfdV_L247_63[1]; _zy_gfdV_L247_63[0] = 0; memcpy(_zy_gfdV_L247_63, idata+8, 1);
#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_exit(__func__);
#endif
#ifdef DEBUG_GFIFO_DISP
  char xc__buf__0[6];
  gfifoDisplayBVtoHexStr(_zy_gfdV_L247_63, 8, 0, xc__buf__0);
  char xc__buf__1[12];
  gfifoDisplayBVtoHexStr(_zy_gfdV_L248_64, 32, 0, xc__buf__1);
  char xc__buf__2[12];
  gfifoDisplayBVtoHexStr(_zy_gfdV_L249_65, 32, 0, xc__buf__2);
  otb_vpi_printf("TB executing GFIFO: %s._gfdL330_29_P0(0x%s, 0x%s, 0x%s)\n", getScpName(), xc__buf__0, xc__buf__1, xc__buf__2);
#endif

  _gfdL330_29_P0(_zy_gfdV_L247_63, _zy_gfdV_L248_64, _zy_gfdV_L249_65);

#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_enter(__func__);
#endif
}

extern void _gfdL334_28_P0(unsigned *, unsigned *, unsigned *);

void _gfdL334_28_P0_gfifo_m2p0(unsigned char *idata) {
  unsigned _zy_gfdV_L334_34[1]; memcpy(_zy_gfdV_L334_34, idata+0, 4);
  unsigned _zy_gfdV_L249_62[1]; memcpy(_zy_gfdV_L249_62, idata+4, 4);
  unsigned _zy_gfdV_L248_61[1]; memcpy(_zy_gfdV_L248_61, idata+8, 4);
#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_exit(__func__);
#endif
#ifdef DEBUG_GFIFO_DISP
  char xc__buf__0[12];
  gfifoDisplayBVtoHexStr(_zy_gfdV_L248_61, 32, 0, xc__buf__0);
  char xc__buf__1[12];
  gfifoDisplayBVtoHexStr(_zy_gfdV_L249_62, 32, 0, xc__buf__1);
  char xc__buf__2[12];
  gfifoDisplayBVtoHexStr(_zy_gfdV_L334_34, 32, 0, xc__buf__2);
  otb_vpi_printf("TB executing GFIFO: %s._gfdL334_28_P0(0x%s, 0x%s, 0x%s)\n", getScpName(), xc__buf__0, xc__buf__1, xc__buf__2);
#endif

  _gfdL334_28_P0(_zy_gfdV_L248_61, _zy_gfdV_L249_62, _zy_gfdV_L334_34);

#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_enter(__func__);
#endif
}

extern void _gfdL336_27_P0(unsigned *);

void _gfdL336_27_P0_gfifo_m2p0(unsigned char *idata) {
  unsigned _zy_gfdV_L248_60[1]; memcpy(_zy_gfdV_L248_60, idata+0, 4);
#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_exit(__func__);
#endif
#ifdef DEBUG_GFIFO_DISP
  char xc__buf__0[12];
  gfifoDisplayBVtoHexStr(_zy_gfdV_L248_60, 32, 0, xc__buf__0);
  otb_vpi_printf("TB executing GFIFO: %s._gfdL336_27_P0(0x%s)\n", getScpName(), xc__buf__0);
#endif

  _gfdL336_27_P0(_zy_gfdV_L248_60);

#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_enter(__func__);
#endif
}

extern void _gfdL341_26_P0(unsigned *, unsigned *);

void _gfdL341_26_P0_gfifo_m2p0(unsigned char *idata) {
  unsigned _zy_gfdV_L249_59[1]; memcpy(_zy_gfdV_L249_59, idata+0, 4);
  unsigned _zy_gfdV_L341_29[1]; memcpy(_zy_gfdV_L341_29, idata+4, 4);
#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_exit(__func__);
#endif
#ifdef DEBUG_GFIFO_DISP
  char xc__buf__0[12];
  gfifoDisplayBVtoHexStr(_zy_gfdV_L341_29, 32, 0, xc__buf__0);
  char xc__buf__1[12];
  gfifoDisplayBVtoHexStr(_zy_gfdV_L249_59, 32, 0, xc__buf__1);
  otb_vpi_printf("TB executing GFIFO: %s._gfdL341_26_P0(0x%s, 0x%s)\n", getScpName(), xc__buf__0, xc__buf__1);
#endif

  _gfdL341_26_P0(_zy_gfdV_L341_29, _zy_gfdV_L249_59);

#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_enter(__func__);
#endif
}

extern void _gfdL351_25_P0(unsigned *);

void _gfdL351_25_P0_gfifo_m2p0(unsigned char *idata) {
  unsigned _zy_gfdV_L248_58[1]; memcpy(_zy_gfdV_L248_58, idata+0, 4);
#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_exit(__func__);
#endif
#ifdef DEBUG_GFIFO_DISP
  char xc__buf__0[12];
  gfifoDisplayBVtoHexStr(_zy_gfdV_L248_58, 32, 0, xc__buf__0);
  otb_vpi_printf("TB executing GFIFO: %s._gfdL351_25_P0(0x%s)\n", getScpName(), xc__buf__0);
#endif

  _gfdL351_25_P0(_zy_gfdV_L248_58);

#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_enter(__func__);
#endif
}

extern void ib_service_data_2_zyprefetch(int);

void ib_service_data_2_zyprefetch_gfifo_m2p0(unsigned char *idata) {
  int size; memcpy(&size, idata+0, 4);
#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_exit(__func__);
#endif
#ifdef DEBUG_GFIFO
  otb_vpi_printf("TB executing GFIFO: %s.ib_service_data_2_zyprefetch(%d)\n", getScpName(), size);
#endif

  ib_service_data_2_zyprefetch(size);

#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_enter(__func__);
#endif
}

extern void _gfdL519_24_P0();

void _gfdL519_24_P0_gfifo_m2p0() {
#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_exit(__func__);
#endif
#ifdef DEBUG_GFIFO_DISP
  otb_vpi_printf("TB executing GFIFO: %s._gfdL519_24_P0()\n", getScpName());
#endif

  _gfdL519_24_P0();

#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_enter(__func__);
#endif
}

extern void _gfdL522_23_P0();

void _gfdL522_23_P0_gfifo_m2p0() {
#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_exit(__func__);
#endif
#ifdef DEBUG_GFIFO_DISP
  otb_vpi_printf("TB executing GFIFO: %s._gfdL522_23_P0()\n", getScpName());
#endif

  _gfdL522_23_P0();

#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_enter(__func__);
#endif
}

extern void _gfdL373_22_P0(unsigned *);

void _gfdL373_22_P0_gfifo_m2p0(unsigned char *idata) {
  unsigned _zy_gfdV_L373_27[1]; memcpy(_zy_gfdV_L373_27, idata+0, 4);
#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_exit(__func__);
#endif
#ifdef DEBUG_GFIFO_DISP
  char xc__buf__0[10];
  gfifoDisplayBVtoHexStr(_zy_gfdV_L373_27, 25, 0, xc__buf__0);
  otb_vpi_printf("TB executing GFIFO: %s._gfdL373_22_P0(0x%s)\n", getScpName(), xc__buf__0);
#endif

  _gfdL373_22_P0(_zy_gfdV_L373_27);

#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_enter(__func__);
#endif
}

extern void _gfdL375_21_P0(unsigned *, unsigned *, unsigned *, unsigned *);

void _gfdL375_21_P0_gfifo_m2p0(unsigned char *idata) {
  unsigned _zy_gfdV_L222_57[1]; memcpy(_zy_gfdV_L222_57, idata+0, 4);
  unsigned _zy_gfdV_L219_56[1]; _zy_gfdV_L219_56[0] = 0; memcpy(_zy_gfdV_L219_56, idata+4, 1);
  unsigned _zy_gfdV_L221_55[1]; memcpy(_zy_gfdV_L221_55, idata+5, 4);
  unsigned _zy_gfdV_L220_54[2]; memcpy(_zy_gfdV_L220_54, idata+9, 8);
#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_exit(__func__);
#endif
#ifdef DEBUG_GFIFO_DISP
  char xc__buf__0[20];
  gfifoDisplayBVtoHexStr(_zy_gfdV_L220_54, 64, 0, xc__buf__0);
  char xc__buf__1[12];
  gfifoDisplayBVtoHexStr(_zy_gfdV_L221_55, 32, 0, xc__buf__1);
  char xc__buf__2[6];
  gfifoDisplayBVtoHexStr(_zy_gfdV_L219_56, 8, 0, xc__buf__2);
  char xc__buf__3[12];
  gfifoDisplayBVtoHexStr(_zy_gfdV_L222_57, 32, 0, xc__buf__3);
  otb_vpi_printf("TB executing GFIFO: %s._gfdL375_21_P0(0x%s, 0x%s, 0x%s, 0x%s)\n", getScpName(), xc__buf__0, xc__buf__1, xc__buf__2, xc__buf__3);
#endif

  _gfdL375_21_P0(_zy_gfdV_L220_54, _zy_gfdV_L221_55, _zy_gfdV_L219_56, _zy_gfdV_L222_57);

#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_enter(__func__);
#endif
}

extern void _gfdL381_20_P0();

void _gfdL381_20_P0_gfifo_m2p0() {
#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_exit(__func__);
#endif
#ifdef DEBUG_GFIFO_DISP
  otb_vpi_printf("TB executing GFIFO: %s._gfdL381_20_P0()\n", getScpName());
#endif

  _gfdL381_20_P0();

#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_enter(__func__);
#endif
}

extern void _gfdL390_19_P0(unsigned *);

void _gfdL390_19_P0_gfifo_m2p0(unsigned char *idata) {
  unsigned _zy_gfdV_L220_53[2]; memcpy(_zy_gfdV_L220_53, idata+0, 8);
#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_exit(__func__);
#endif
#ifdef DEBUG_GFIFO_DISP
  char xc__buf__0[20];
  gfifoDisplayBVtoHexStr(_zy_gfdV_L220_53, 64, 0, xc__buf__0);
  otb_vpi_printf("TB executing GFIFO: %s._gfdL390_19_P0(0x%s)\n", getScpName(), xc__buf__0);
#endif

  _gfdL390_19_P0(_zy_gfdV_L220_53);

#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_enter(__func__);
#endif
}

extern void _gfdL530_18_P0(unsigned *);

void _gfdL530_18_P0_gfifo_m2p0(unsigned char *idata) {
  unsigned _zy_gfdV_L529_52[1]; memcpy(_zy_gfdV_L529_52, idata+0, 4);
#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_exit(__func__);
#endif
#ifdef DEBUG_GFIFO_DISP
  char xc__buf__0[10];
  gfifoDisplayBVtoHexStr(_zy_gfdV_L529_52, 25, 0, xc__buf__0);
  otb_vpi_printf("TB executing GFIFO: %s._gfdL530_18_P0(0x%s)\n", getScpName(), xc__buf__0);
#endif

  _gfdL530_18_P0(_zy_gfdV_L529_52);

#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_enter(__func__);
#endif
}

extern void _gfdL412_17_P0(unsigned *);

void _gfdL412_17_P0_gfifo_m2p0(unsigned char *idata) {
  unsigned _zy_gfdV_L219_51[1]; _zy_gfdV_L219_51[0] = 0; memcpy(_zy_gfdV_L219_51, idata+0, 1);
#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_exit(__func__);
#endif
#ifdef DEBUG_GFIFO_DISP
  char xc__buf__0[6];
  gfifoDisplayBVtoHexStr(_zy_gfdV_L219_51, 8, 0, xc__buf__0);
  otb_vpi_printf("TB executing GFIFO: %s._gfdL412_17_P0(0x%s)\n", getScpName(), xc__buf__0);
#endif

  _gfdL412_17_P0(_zy_gfdV_L219_51);

#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_enter(__func__);
#endif
}

extern void ob_service_data_2_zyprefetch(int);

void ob_service_data_2_zyprefetch_gfifo_m2p0(unsigned char *idata) {
  int size; memcpy(&size, idata+0, 4);
#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_exit(__func__);
#endif
#ifdef DEBUG_GFIFO
  otb_vpi_printf("TB executing GFIFO: %s.ob_service_data_2_zyprefetch(%d)\n", getScpName(), size);
#endif

  ob_service_data_2_zyprefetch(size);

#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_enter(__func__);
#endif
}

extern void _gfdL519_16_P0();

void _gfdL519_16_P0_gfifo_m2p0() {
#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_exit(__func__);
#endif
#ifdef DEBUG_GFIFO_DISP
  otb_vpi_printf("TB executing GFIFO: %s._gfdL519_16_P0()\n", getScpName());
#endif

  _gfdL519_16_P0();

#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_enter(__func__);
#endif
}

extern void _gfdL522_15_P0();

void _gfdL522_15_P0_gfifo_m2p0() {
#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_exit(__func__);
#endif
#ifdef DEBUG_GFIFO_DISP
  otb_vpi_printf("TB executing GFIFO: %s._gfdL522_15_P0()\n", getScpName());
#endif

  _gfdL522_15_P0();

#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_enter(__func__);
#endif
}

extern void _gfdL444_14_P0(unsigned *);

void _gfdL444_14_P0_gfifo_m2p0(unsigned char *idata) {
  unsigned _zy_gfdV_L444_19[1]; memcpy(_zy_gfdV_L444_19, idata+0, 4);
#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_exit(__func__);
#endif
#ifdef DEBUG_GFIFO_DISP
  char xc__buf__0[10];
  gfifoDisplayBVtoHexStr(_zy_gfdV_L444_19, 25, 0, xc__buf__0);
  otb_vpi_printf("TB executing GFIFO: %s._gfdL444_14_P0(0x%s)\n", getScpName(), xc__buf__0);
#endif

  _gfdL444_14_P0(_zy_gfdV_L444_19);

#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_enter(__func__);
#endif
}

extern void _gfdL446_13_P0(unsigned *, unsigned *, unsigned *, unsigned *);

void _gfdL446_13_P0_gfifo_m2p0(unsigned char *idata) {
  unsigned _zy_gfdV_L235_50[1]; memcpy(_zy_gfdV_L235_50, idata+0, 4);
  unsigned _zy_gfdV_L231_49[1]; _zy_gfdV_L231_49[0] = 0; memcpy(_zy_gfdV_L231_49, idata+4, 1);
  unsigned _zy_gfdV_L233_48[1]; memcpy(_zy_gfdV_L233_48, idata+5, 4);
  unsigned _zy_gfdV_L232_47[2]; memcpy(_zy_gfdV_L232_47, idata+9, 8);
#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_exit(__func__);
#endif
#ifdef DEBUG_GFIFO_DISP
  char xc__buf__0[20];
  gfifoDisplayBVtoHexStr(_zy_gfdV_L232_47, 64, 0, xc__buf__0);
  char xc__buf__1[12];
  gfifoDisplayBVtoHexStr(_zy_gfdV_L233_48, 32, 0, xc__buf__1);
  char xc__buf__2[6];
  gfifoDisplayBVtoHexStr(_zy_gfdV_L231_49, 8, 0, xc__buf__2);
  char xc__buf__3[12];
  gfifoDisplayBVtoHexStr(_zy_gfdV_L235_50, 32, 0, xc__buf__3);
  otb_vpi_printf("TB executing GFIFO: %s._gfdL446_13_P0(0x%s, 0x%s, 0x%s, 0x%s)\n", getScpName(), xc__buf__0, xc__buf__1, xc__buf__2, xc__buf__3);
#endif

  _gfdL446_13_P0(_zy_gfdV_L232_47, _zy_gfdV_L233_48, _zy_gfdV_L231_49, _zy_gfdV_L235_50);

#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_enter(__func__);
#endif
}

extern void _gfdL460_12_P0(unsigned *);

void _gfdL460_12_P0_gfifo_m2p0(unsigned char *idata) {
  unsigned _zy_gfdV_L460_14[2]; memcpy(_zy_gfdV_L460_14, idata+0, 8);
#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_exit(__func__);
#endif
#ifdef DEBUG_GFIFO_DISP
  char xc__buf__0[20];
  gfifoDisplayBVtoHexStr(_zy_gfdV_L460_14, 64, 0, xc__buf__0);
  otb_vpi_printf("TB executing GFIFO: %s._gfdL460_12_P0(0x%s)\n", getScpName(), xc__buf__0);
#endif

  _gfdL460_12_P0(_zy_gfdV_L460_14);

#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_enter(__func__);
#endif
}

extern void _gfdL530_11_P0(unsigned *);

void _gfdL530_11_P0_gfifo_m2p0(unsigned char *idata) {
  unsigned _zy_gfdV_L529_46[1]; memcpy(_zy_gfdV_L529_46, idata+0, 4);
#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_exit(__func__);
#endif
#ifdef DEBUG_GFIFO_DISP
  char xc__buf__0[10];
  gfifoDisplayBVtoHexStr(_zy_gfdV_L529_46, 25, 0, xc__buf__0);
  otb_vpi_printf("TB executing GFIFO: %s._gfdL530_11_P0(0x%s)\n", getScpName(), xc__buf__0);
#endif

  _gfdL530_11_P0(_zy_gfdV_L529_46);

#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_enter(__func__);
#endif
}

extern void _gfdL480_10_P0(unsigned *);

void _gfdL480_10_P0_gfifo_m2p0(unsigned char *idata) {
  unsigned _zy_gfdV_L480_12[1]; _zy_gfdV_L480_12[0] = 0; memcpy(_zy_gfdV_L480_12, idata+0, 1);
#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_exit(__func__);
#endif
#ifdef DEBUG_GFIFO_DISP
  char xc__buf__0[6];
  gfifoDisplayBVtoHexStr(_zy_gfdV_L480_12, 8, 0, xc__buf__0);
  otb_vpi_printf("TB executing GFIFO: %s._gfdL480_10_P0(0x%s)\n", getScpName(), xc__buf__0);
#endif

  _gfdL480_10_P0(_zy_gfdV_L480_12);

#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_enter(__func__);
#endif
}

extern void _gfdL482_9_P0(unsigned *, unsigned *);

void _gfdL482_9_P0_gfifo_m2p0(unsigned char *idata) {
  unsigned _zy_gfdV_L232_45[2]; memcpy(_zy_gfdV_L232_45, idata+0, 8);
  unsigned _zy_gfdV_L482_10[2]; memcpy(_zy_gfdV_L482_10, idata+8, 8);
#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_exit(__func__);
#endif
#ifdef DEBUG_GFIFO_DISP
  char xc__buf__0[20];
  gfifoDisplayBVtoHexStr(_zy_gfdV_L482_10, 64, 0, xc__buf__0);
  char xc__buf__1[20];
  gfifoDisplayBVtoHexStr(_zy_gfdV_L232_45, 64, 0, xc__buf__1);
  otb_vpi_printf("TB executing GFIFO: %s._gfdL482_9_P0(0x%s, 0x%s)\n", getScpName(), xc__buf__0, xc__buf__1);
#endif

  _gfdL482_9_P0(_zy_gfdV_L482_10, _zy_gfdV_L232_45);

#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_enter(__func__);
#endif
}

extern void _gfdL487_8_P0(unsigned *, unsigned *);

void _gfdL487_8_P0_gfifo_m2p0(unsigned char *idata) {
  unsigned _zy_gfdV_L487_9[1]; _zy_gfdV_L487_9[0] = 0; memcpy(_zy_gfdV_L487_9, idata+0, 1);
  unsigned _zy_gfdV_L487_8[1]; _zy_gfdV_L487_8[0] = 0; memcpy(_zy_gfdV_L487_8, idata+1, 1);
#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_exit(__func__);
#endif
#ifdef DEBUG_GFIFO_DISP
  char xc__buf__0[6];
  gfifoDisplayBVtoHexStr(_zy_gfdV_L487_8, 8, 0, xc__buf__0);
  char xc__buf__1[6];
  gfifoDisplayBVtoHexStr(_zy_gfdV_L487_9, 8, 0, xc__buf__1);
  otb_vpi_printf("TB executing GFIFO: %s._gfdL487_8_P0(0x%s, 0x%s)\n", getScpName(), xc__buf__0, xc__buf__1);
#endif

  _gfdL487_8_P0(_zy_gfdV_L487_8, _zy_gfdV_L487_9);

#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_enter(__func__);
#endif
}

extern void _gfdL491_7_P0(unsigned *, unsigned *);

void _gfdL491_7_P0_gfifo_m2p0(unsigned char *idata) {
  unsigned _zy_gfdV_L231_44[1]; _zy_gfdV_L231_44[0] = 0; memcpy(_zy_gfdV_L231_44, idata+0, 1);
  unsigned _zy_gfdV_L491_6[1]; _zy_gfdV_L491_6[0] = 0; memcpy(_zy_gfdV_L491_6, idata+1, 1);
#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_exit(__func__);
#endif
#ifdef DEBUG_GFIFO_DISP
  char xc__buf__0[6];
  gfifoDisplayBVtoHexStr(_zy_gfdV_L491_6, 8, 0, xc__buf__0);
  char xc__buf__1[6];
  gfifoDisplayBVtoHexStr(_zy_gfdV_L231_44, 8, 0, xc__buf__1);
  otb_vpi_printf("TB executing GFIFO: %s._gfdL491_7_P0(0x%s, 0x%s)\n", getScpName(), xc__buf__0, xc__buf__1);
#endif

  _gfdL491_7_P0(_zy_gfdV_L491_6, _zy_gfdV_L231_44);

#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_enter(__func__);
#endif
}

extern void _gfdL496_6_P0(unsigned char, unsigned char);

void _gfdL496_6_P0_gfifo_m2p0(unsigned char *idata) {
  unsigned char _zy_gfdV_L496_5 = *(idata+0);
  unsigned char _zy_gfdV_L496_4 = *(idata+1);
#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_exit(__func__);
#endif
#ifdef DEBUG_GFIFO_DISP
  otb_vpi_printf("TB executing GFIFO: %s._gfdL496_6_P0(0x%u, 0x%u)\n", getScpName(), _zy_gfdV_L496_4, _zy_gfdV_L496_5);
#endif

  _gfdL496_6_P0(_zy_gfdV_L496_4, _zy_gfdV_L496_5);

#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_enter(__func__);
#endif
}

extern void _gfdL265_5_P0(unsigned *, unsigned *);

void _gfdL265_5_P0_gfifo_m2p0(unsigned char *idata) {
  unsigned _zy_gfdV_L265_3[9]; _zy_gfdV_L265_3[8] = 0; memcpy(_zy_gfdV_L265_3, idata+0, 35);
  unsigned _zy_gfdV_L265_2[9]; _zy_gfdV_L265_2[8] = 0; memcpy(_zy_gfdV_L265_2, idata+35, 35);
#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_exit(__func__);
#endif
#ifdef DEBUG_GFIFO_DISP
  char xc__buf__0[74];
  gfifoDisplayBVtoHexStr(_zy_gfdV_L265_2, 280, 0, xc__buf__0);
  char xc__buf__1[74];
  gfifoDisplayBVtoHexStr(_zy_gfdV_L265_3, 280, 0, xc__buf__1);
  otb_vpi_printf("TB executing GFIFO: %s._gfdL265_5_P0(0x%s, 0x%s)\n", getScpName(), xc__buf__0, xc__buf__1);
#endif

  _gfdL265_5_P0(_zy_gfdV_L265_2, _zy_gfdV_L265_3);

#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_enter(__func__);
#endif
}

extern void _gfdL268_4_P0(unsigned *, unsigned *);

void _gfdL268_4_P0_gfifo_m2p0(unsigned char *idata) {
  unsigned _zy_gfdV_L268_1[9]; _zy_gfdV_L268_1[8] = 0; memcpy(_zy_gfdV_L268_1, idata+0, 35);
  unsigned _zy_gfdV_L268_0[9]; _zy_gfdV_L268_0[8] = 0; memcpy(_zy_gfdV_L268_0, idata+35, 35);
#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_exit(__func__);
#endif
#ifdef DEBUG_GFIFO_DISP
  char xc__buf__0[74];
  gfifoDisplayBVtoHexStr(_zy_gfdV_L268_0, 280, 0, xc__buf__0);
  char xc__buf__1[74];
  gfifoDisplayBVtoHexStr(_zy_gfdV_L268_1, 280, 0, xc__buf__1);
  otb_vpi_printf("TB executing GFIFO: %s._gfdL268_4_P0(0x%s, 0x%s)\n", getScpName(), xc__buf__0, xc__buf__1);
#endif

  _gfdL268_4_P0(_zy_gfdV_L268_0, _zy_gfdV_L268_1);

#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_enter(__func__);
#endif
}

extern void _gfdL271_3_P0();

void _gfdL271_3_P0_gfifo_m2p0() {
#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_exit(__func__);
#endif
#ifdef DEBUG_GFIFO_DISP
  otb_vpi_printf("TB executing GFIFO: %s._gfdL271_3_P0()\n", getScpName());
#endif

  _gfdL271_3_P0();

#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_enter(__func__);
#endif
}

extern void _gfdL276_2_P0();

void _gfdL276_2_P0_gfifo_m2p0() {
#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_exit(__func__);
#endif
#ifdef DEBUG_GFIFO_DISP
  otb_vpi_printf("TB executing GFIFO: %s._gfdL276_2_P0()\n", getScpName());
#endif

  _gfdL276_2_P0();

#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_enter(__func__);
#endif
}

extern void _gfdL289_1_P0();

void _gfdL289_1_P0_gfifo_m2p0() {
#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_exit(__func__);
#endif
#ifdef DEBUG_GFIFO_DISP
  otb_vpi_printf("TB executing GFIFO: %s._gfdL289_1_P0()\n", getScpName());
#endif

  _gfdL289_1_P0();

#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_enter(__func__);
#endif
}

extern void _gfdL365_0_P0();

void _gfdL365_0_P0_gfifo_m2p0() {
#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_exit(__func__);
#endif
#ifdef DEBUG_GFIFO_DISP
  otb_vpi_printf("TB executing GFIFO: %s._gfdL365_0_P0()\n", getScpName());
#endif

  _gfdL365_0_P0();

#ifdef PROTECT_GSFIFO_MEM
  otb_gsfifo_enter(__func__);
#endif
}

#ifdef __cplusplus
}
#endif

