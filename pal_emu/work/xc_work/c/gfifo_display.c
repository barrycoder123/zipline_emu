#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#if defined(__linux)
#include <inttypes.h>
#else
#include <sys/types.h>
#endif

#ifdef __cplusplus /* If this is a C++ compiler, use C linkage */
extern "C" {
#endif

/**************** extern declarations ******************************************/
typedef unsigned long long ullong;
extern ullong        gfifoDisplaySimTime(void);
extern ullong        gfifoDisplaySimLtime(int unit, int mprec);
extern unsigned      gfifoDisplaySimStime(int unit, int mprec);
extern double        gfifoDisplaySimRtime(int unit, int mprec);
extern char*         xc_gfifo_scope_name(void);
extern int           xctf_printf(const char *str);
extern void          xctf_fwrite(unsigned fd, int len, char *ndata);
extern void          xctf_fwrite_u(unsigned fd, int len, char *ndata);
extern unsigned      xctf_get_fd(char *fdName);

extern void gfifoDisplayBufferInit(char *buf);
extern void gfifoDisplayString(char* dest, unsigned* blen, char *str);
extern void gfifoDisplayRealTime(double realt, unsigned minWidth, char* obuffer);
extern void gfifoDisplayChar8toBVStr(unsigned char uchr, char* obuffer);
extern void gfifoDisplayChar8toBinStr(unsigned char uchr, unsigned minWidth, char* obuffer);
extern void gfifoDisplayChar8toOctStr(unsigned char uchr, unsigned minWidth, char* obuffer);
extern void gfifoDisplayChar8toHexStr(unsigned char uchr, unsigned minWidth, char* obuffer);
extern void gfifoDisplayChar8toDecStr(unsigned char uchr, unsigned minWidth, int issigned, char* obuffer);
extern void gfifoDisplayChar8toString(unsigned char uchr, unsigned minWidth, char* obuffer);
extern void gfifoDisplayShort16toBVStr(unsigned short ushr, char* obuffer);
extern void gfifoDisplayShort16toBinStr(unsigned short ushr, unsigned minWidth, char* obuffer);
extern void gfifoDisplayShort16toOctStr(unsigned short ushr, unsigned minWidth, char* obuffer);
extern void gfifoDisplayShort16toHexStr(unsigned short ushr, unsigned minWidth, char* obuffer);
extern void gfifoDisplayShort16toDecStr(unsigned short ushr, unsigned minWidth, int issigned, char* obuffer);
extern void gfifoDisplayShort16toString(unsigned short ushr, unsigned minWidth, char* obuffer);
extern void gfifoDisplayInt32toBVStr(unsigned uint,  char* obuffer);
extern void gfifoDisplayInt32toBinStr(unsigned uint, unsigned minWidth, char* obuffer);
extern void gfifoDisplayInt32toOctStr(unsigned uint, unsigned minWidth, char* obuffer);
extern void gfifoDisplayInt32toHexStr(unsigned uint, unsigned minWidth, char* obuffer);
extern void gfifoDisplayInt32toDecStr(unsigned uint, unsigned minWidth, int issigned, char* obuffer);
extern void gfifoDisplayInt32toString(unsigned uint, unsigned minWidth, char* obuffer);
extern void gfifoDisplayInt64toBVStr(ullong uint64, char* obuffer);
extern void gfifoDisplayInt64toBinStr(ullong uint64, unsigned minWidth, char* obuffer);
extern void gfifoDisplayInt64toOctStr(ullong uint64, unsigned minWidth, char* obuffer);
extern void gfifoDisplayInt64toHexStr(ullong uint64, unsigned minWidth, char* obuffer);
extern void gfifoDisplayInt64toDecStr(ullong uint64, unsigned minWidth, int issigned, char* obuffer);
extern void gfifoDisplayInt64toString(ullong uint64, unsigned minWidth, char* obuffer);
extern void gfifoDisplayBitstrtoBVStr(char* ibinstr, int nBits,  char* obuffer);
extern void gfifoDisplayBitstrtoBinStr(char* ibinstr, int nBits, unsigned minWidth, char* obuffer);
extern void gfifoDisplayBitstrtoOctStr(char* ibinstr, int nBits, unsigned minWidth, char* obuffer);
extern void gfifoDisplayBitstrtoHexStr(char* ibinstr, int nBits, unsigned minWidth, char* obuffer);
extern void gfifoDisplayBitstrtoDecStr(char* ibinstr, int nBits, unsigned minWidth, int issigned, char* obuffer);
extern void gfifoDisplayBitstrtoString(char* ibinstr, int nBits, unsigned minWidth, char* obuffer);
extern void gfifoDisplayBVtoBVStr(uint32_t *bvec, int nBits,  char* obuffer);
extern void gfifoDisplayBVtoBinStr(uint32_t *bvec, int nBits, unsigned minWidth, char* obuffer);
extern void gfifoDisplayBVtoOctStr(uint32_t *bvec, int nBits, unsigned minWidth, char* obuffer);
extern void gfifoDisplayBVtoHexStr(uint32_t *bvec, int nBits, unsigned minWidth, char* obuffer);
extern void gfifoDisplayBVtoDecStr(uint32_t *bvec, int nBits, unsigned minWidth, int issigned, char* obuffer);
extern void gfifoDisplayBVtoString(uint32_t *bvec, int nBits, unsigned minWidth, char* obuffer);
extern void gfifoDisplayChar8toLVStr(unsigned char uchr, char* obuffer);
extern void gfifoDisplayChar8toLVBinStr(unsigned char uchr, int nBits, int convertBVToLV, char* obuffer);
extern void gfifoDisplayBVtoLVtoUnformattedStr_z(uint32_t *bvec, int nBits, char* obuffer);
extern void gfifoDisplayInt32toLVStr(unsigned uint, char* obuffer);
extern void gfifoDisplayShort16toLVStr(unsigned short usint, char* obuffer);
extern void gfifoDisplayInt64toLVStr(unsigned long long, char* obuffer);
extern void gfifoDisplayRealtoTime(double realt, unsigned minWidth, int munit, char* obuffer);
extern void gfifoDisplayInt32toTime(unsigned uint, unsigned minWidth, int munit, char* obuffer);
extern void gfifoDisplayInt64toTime(ullong uint64, unsigned minWidth, int munit, char* obuffer);
extern void gfifoDisplayChar8toTime(unsigned char uchr, unsigned minWidth, int munit, char* obuffer);
extern void gfifoDisplayShort16toTime(unsigned short ushr, unsigned minWidth, int munit, char* obuffer);
extern void gfifoDisplayBVtoTime(uint32_t *bvec, int nBits, unsigned minWidth, int munit, char* obuffer);
extern void gfifoDisplayLVtoTime(iscLv_t *lvec, int nBits, unsigned minWidth, int munit, char* obuffer);
extern void gfifoDisplayBitstrtoTime(char* ibinstr, int nBits, unsigned minWidth, int munit, char* obuffer);
extern void gfifoDisplayStrToMinwidthString(char *ibuffer, unsigned minWidth, char* obuffer);
extern void gfifoDisplayLongtoRealStr(long longt, char *cFormatString, char* obuffer);
extern void gfifoDisplayBVtoRealStr(uint32_t *bvec, char *cFormatString, char* obuffer);
extern void gfifoDisplayRealtoStr(double realt, char *cFormatString, char* obuffer);
extern void gfifoDisplayRealtoIntStr(double realt, unsigned minwidth, int issigned, char* obuffer);
extern void gfifoDisplayRealtoOctStr(double realt, unsigned minwidth, char* obuffer);
extern void gfifoDisplayRealtoBinStr(double realt, unsigned minwidth, char* obuffer);
/*******************************************************************************/


/* Import DPI function '_gfdL365_0_P0' for display at line 365 in file '/home/ibarry/Project-Zipline-master/dv/KME/run/kme_tb.sv' */
void _gfdL365_0_P0(  )
{
    char __gfdispbuf[1092];
    unsigned __gfdispblen = 0;
    gfifoDisplayBufferInit(__gfdispbuf);
    char __gfdispscratchbuf[1045];
    __gfdispscratchbuf[0] = '\0';
    ullong   __gfdispsimltime = gfifoDisplaySimLtime(-9, -9 );
    {
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"APB_INFO:  @time:");
        gfifoDisplayInt64toDecStr(__gfdispsimltime, 939524116, 0, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)" Exiting APB engine config ...");
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n");

    }
        xctf_printf((char*)__gfdispbuf);
}

/* Import DPI function '_gfdL289_1_P0' for display at line 289 in file '/home/ibarry/Project-Zipline-master/dv/KME/run/kme_tb.sv' */
void _gfdL289_1_P0(  )
{
    char __gfdispbuf[1062];
    unsigned __gfdispblen = 0;
    gfifoDisplayBufferInit(__gfdispbuf);
    {
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"--- \"rst_n\" has been DE-ASSERTED! ---");
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n");

    }
        xctf_printf((char*)__gfdispbuf);
}

/* Import DPI function '_gfdL276_2_P0' for display at line 276 in file '/home/ibarry/Project-Zipline-master/dv/KME/run/kme_tb.sv' */
void _gfdL276_2_P0(  )
{
    char __gfdispbuf[1031];
    unsigned __gfdispblen = 0;
    gfifoDisplayBufferInit(__gfdispbuf);
    {
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"STOP \n");
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n");

    }
        xctf_printf((char*)__gfdispbuf);
}

/* Import DPI function '_gfdL271_3_P0' for display at line 271 in file '/home/ibarry/Project-Zipline-master/dv/KME/run/kme_tb.sv' */
void _gfdL271_3_P0(  )
{
    char __gfdispbuf[1068];
    unsigned __gfdispblen = 0;
    gfifoDisplayBufferInit(__gfdispbuf);
    {
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"--- \"rst_n\" is being asserted for 100ns ---");
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n");

    }
        xctf_printf((char*)__gfdispbuf);
}

/* Import DPI function '_gfdL268_4_P0' for display at line 268 in file '/home/ibarry/Project-Zipline-master/dv/KME/run/kme_tb.sv' */
void _gfdL268_4_P0( uint32_t* _zy_gfdV_L268_0, uint32_t* _zy_gfdV_L268_1 )
{
    char __gfdispbuf[1110];
    unsigned __gfdispblen = 0;
    gfifoDisplayBufferInit(__gfdispbuf);
    char __gfdispscratchbuf[1060];
    __gfdispscratchbuf[0] = '\0';
    {
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"TESTNAME=");
        gfifoDisplayBVtoString(_zy_gfdV_L268_0, 280, 35, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)" SEED=");
        gfifoDisplayBVtoString(_zy_gfdV_L268_1, 280, 35, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n");

    }
        xctf_printf((char*)__gfdispbuf);
}

/* Import DPI function '_gfdL265_5_P0' for display at line 265 in file '/home/ibarry/Project-Zipline-master/dv/KME/run/kme_tb.sv' */
void _gfdL265_5_P0( uint32_t* _zy_gfdV_L265_2, uint32_t* _zy_gfdV_L265_3 )
{
    char __gfdispbuf[1110];
    unsigned __gfdispblen = 0;
    gfifoDisplayBufferInit(__gfdispbuf);
    char __gfdispscratchbuf[1060];
    __gfdispscratchbuf[0] = '\0';
    {
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"TESTNAME=");
        gfifoDisplayBVtoString(_zy_gfdV_L265_2, 280, 35, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)" SEED=");
        gfifoDisplayBVtoString(_zy_gfdV_L265_3, 280, 35, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n");

    }
        xctf_printf((char*)__gfdispbuf);
}

/* Import DPI function '_gfdL496_6_P0' for display at line 496 in file '/home/ibarry/Project-Zipline-master/dv/KME/run/kme_tb.sv' */
void _gfdL496_6_P0( unsigned char _zy_gfdV_L496_4, unsigned char _zy_gfdV_L496_5 )
{
    char __gfdispbuf[1121];
    unsigned __gfdispblen = 0;
    gfifoDisplayBufferInit(__gfdispbuf);
    char __gfdispscratchbuf[1045];
    __gfdispscratchbuf[0] = '\0';
    ullong   __gfdispsimltime = gfifoDisplaySimLtime(-9, -9 );
    {
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"OUTBOUND_ERROR:  @time:");
        gfifoDisplayInt64toDecStr(__gfdispsimltime, 939524116, 0, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"   kme_ob_tlast MISMATCH --> Actual: 0x");
        gfifoDisplayChar8toHexStr(_zy_gfdV_L496_4, 1, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"  Expect: 0x");
        gfifoDisplayChar8toHexStr(_zy_gfdV_L496_5, 1, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n");

    }
        xctf_printf((char*)__gfdispbuf);
}

/* Import DPI function '_gfdL491_7_P0' for display at line 491 in file '/home/ibarry/Project-Zipline-master/dv/KME/run/kme_tb.sv' */
void _gfdL491_7_P0( uint32_t* _zy_gfdV_L491_6, uint32_t* _zy_gfdV_L231_44 )
{
    char __gfdispbuf[1123];
    unsigned __gfdispblen = 0;
    gfifoDisplayBufferInit(__gfdispbuf);
    char __gfdispscratchbuf[1045];
    __gfdispscratchbuf[0] = '\0';
    ullong   __gfdispsimltime = gfifoDisplaySimLtime(-9, -9 );
    {
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"OUTBOUND_ERROR:  @time:");
        gfifoDisplayInt64toDecStr(__gfdispsimltime, 939524116, 0, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"   kme_ob_tstrb MISMATCH --> Actual: 0x");
        gfifoDisplayBVtoHexStr(_zy_gfdV_L491_6, 8, 2, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"  Expect: 0x");
        gfifoDisplayBVtoHexStr(_zy_gfdV_L231_44, 8, 2, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n");

    }
        xctf_printf((char*)__gfdispbuf);
}

/* Import DPI function '_gfdL487_8_P0' for display at line 487 in file '/home/ibarry/Project-Zipline-master/dv/KME/run/kme_tb.sv' */
void _gfdL487_8_P0( uint32_t* _zy_gfdV_L487_8, uint32_t* _zy_gfdV_L487_9 )
{
    char __gfdispbuf[1123];
    unsigned __gfdispblen = 0;
    gfifoDisplayBufferInit(__gfdispbuf);
    char __gfdispscratchbuf[1045];
    __gfdispscratchbuf[0] = '\0';
    ullong   __gfdispsimltime = gfifoDisplaySimLtime(-9, -9 );
    {
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"OUTBOUND_ERROR:  @time:");
        gfifoDisplayInt64toDecStr(__gfdispsimltime, 939524116, 0, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"   kme_ob_tuser MISMATCH --> Actual: 0x");
        gfifoDisplayBVtoHexStr(_zy_gfdV_L487_8, 8, 2, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"  Expect: 0x");
        gfifoDisplayBVtoHexStr(_zy_gfdV_L487_9, 8, 2, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n");

    }
        xctf_printf((char*)__gfdispbuf);
}

/* Import DPI function '_gfdL482_9_P0' for display at line 482 in file '/home/ibarry/Project-Zipline-master/dv/KME/run/kme_tb.sv' */
void _gfdL482_9_P0( uint32_t* _zy_gfdV_L482_10, uint32_t* _zy_gfdV_L232_45 )
{
    char __gfdispbuf[1151];
    unsigned __gfdispblen = 0;
    gfifoDisplayBufferInit(__gfdispbuf);
    char __gfdispscratchbuf[1045];
    __gfdispscratchbuf[0] = '\0';
    ullong   __gfdispsimltime = gfifoDisplaySimLtime(-9, -9 );
    {
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"OUTBOUND_ERROR:  @time:");
        gfifoDisplayInt64toDecStr(__gfdispsimltime, 939524116, 0, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"   kme_ob_tdata MISMATCH --> Actual: 0x");
        gfifoDisplayBVtoHexStr(_zy_gfdV_L482_10, 64, 16, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"  Expect: 0x");
        gfifoDisplayBVtoHexStr(_zy_gfdV_L232_45, 64, 16, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n");

    }
        xctf_printf((char*)__gfdispbuf);
}

/* Import DPI function '_gfdL480_10_P0' for display at line 480 in file '/home/ibarry/Project-Zipline-master/dv/KME/run/kme_tb.sv' */
void _gfdL480_10_P0( uint32_t* _zy_gfdV_L480_12 )
{
    char __gfdispbuf[1060];
    unsigned __gfdispblen = 0;
    gfifoDisplayBufferInit(__gfdispbuf);
    char __gfdispscratchbuf[1028];
    __gfdispscratchbuf[0] = '\0';
    {
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"after seeing str != 3 tuser is ");
        gfifoDisplayBVtoDecStr(_zy_gfdV_L480_12, 8, 3, 0, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n");
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n");

    }
        xctf_printf((char*)__gfdispbuf);
}

/* Import DPI function '_gfdL530_11_P0' for display at line 530 in file '/home/ibarry/Project-Zipline-master/dv/KME/run/kme_tb.sv' */
void _gfdL530_11_P0( uint32_t* _zy_gfdV_L529_46 )
{
    char __gfdispbuf[1071];
    unsigned __gfdispblen = 0;
    gfifoDisplayBufferInit(__gfdispbuf);
    char __gfdispscratchbuf[1029];
    __gfdispscratchbuf[0] = '\0';
    {
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"inside translate function the tuser is : ");
        gfifoDisplayBVtoString(_zy_gfdV_L529_46, 25, 4, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n");
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n");

    }
        xctf_printf((char*)__gfdispbuf);
}

/* Import DPI function '_gfdL460_12_P0' for display at line 460 in file '/home/ibarry/Project-Zipline-master/dv/KME/run/kme_tb.sv' */
void _gfdL460_12_P0( uint32_t* _zy_gfdV_L460_14 )
{
    char __gfdispbuf[1107];
    unsigned __gfdispblen = 0;
    gfifoDisplayBufferInit(__gfdispbuf);
    char __gfdispscratchbuf[1045];
    __gfdispscratchbuf[0] = '\0';
    ullong   __gfdispsimltime = gfifoDisplaySimLtime(-9, -9 );
    {
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"OUTBOUND_INFO_MINE:  @time:");
        gfifoDisplayInt64toDecStr(__gfdispsimltime, 939524116, 0, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"   kme_ob_tdata: 0x");
        gfifoDisplayBVtoHexStr(_zy_gfdV_L460_14, 64, 16, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n");

    }
        xctf_printf((char*)__gfdispbuf);
}

/* Import DPI function '_gfdL446_13_P0' for display at line 446 in file '/home/ibarry/Project-Zipline-master/dv/KME/run/kme_tb.sv' */
void _gfdL446_13_P0( uint32_t* _zy_gfdV_L232_47, uint32_t* _zy_gfdV_L233_48, uint32_t* _zy_gfdV_L231_49, uint32_t* _zy_gfdV_L235_50 )
{
    char __gfdispbuf[1130];
    unsigned __gfdispblen = 0;
    gfifoDisplayBufferInit(__gfdispbuf);
    char __gfdispscratchbuf[1041];
    __gfdispscratchbuf[0] = '\0';
    {
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"OUTBOUND INFO: tdata = 0x");
        gfifoDisplayBVtoHexStr(_zy_gfdV_L232_47, 64, 16, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)", tuser_string = ");
        gfifoDisplayBVtoDecStr(_zy_gfdV_L233_48, 32, 10, 0, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)", tstrb = 0x");
        gfifoDisplayBVtoHexStr(_zy_gfdV_L231_49, 8, 2, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)", str_get = ");
        gfifoDisplayBVtoDecStr(_zy_gfdV_L235_50, 32, 10, 0, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n");
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n");

    }
        xctf_printf((char*)__gfdispbuf);
}

/* Import DPI function '_gfdL444_14_P0' for display at line 444 in file '/home/ibarry/Project-Zipline-master/dv/KME/run/kme_tb.sv' */
void _gfdL444_14_P0( uint32_t* _zy_gfdV_L444_19 )
{
    char __gfdispbuf[1045];
    unsigned __gfdispblen = 0;
    gfifoDisplayBufferInit(__gfdispbuf);
    char __gfdispscratchbuf[1029];
    __gfdispscratchbuf[0] = '\0';
    {
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"user_string is ");
        gfifoDisplayBVtoString(_zy_gfdV_L444_19, 25, 4, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n");
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n");

    }
        xctf_printf((char*)__gfdispbuf);
}

/* Import DPI function '_gfdL522_15_P0' for display at line 522 in file '/home/ibarry/Project-Zipline-master/dv/KME/run/kme_tb.sv' */
void _gfdL522_15_P0(  )
{
    char __gfdispbuf[1042];
    unsigned __gfdispblen = 0;
    gfifoDisplayBufferInit(__gfdispbuf);
    {
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"am i translating\n");
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n");

    }
        xctf_printf((char*)__gfdispbuf);
}

/* Import DPI function '_gfdL519_16_P0' for display at line 519 in file '/home/ibarry/Project-Zipline-master/dv/KME/run/kme_tb.sv' */
void _gfdL519_16_P0(  )
{
    char __gfdispbuf[1042];
    unsigned __gfdispblen = 0;
    gfifoDisplayBufferInit(__gfdispbuf);
    {
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"am i translating\n");
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n");

    }
        xctf_printf((char*)__gfdispbuf);
}

/* Import DPI function '_gfdL412_17_P0' for display at line 412 in file '/home/ibarry/Project-Zipline-master/dv/KME/run/kme_tb.sv' */
void _gfdL412_17_P0( uint32_t* _zy_gfdV_L219_51 )
{
    char __gfdispbuf[1064];
    unsigned __gfdispblen = 0;
    gfifoDisplayBufferInit(__gfdispbuf);
    char __gfdispscratchbuf[1027];
    __gfdispscratchbuf[0] = '\0';
    {
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"am i getting correct tstrb values: 0x");
        gfifoDisplayBVtoHexStr(_zy_gfdV_L219_51, 8, 2, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n");

    }
        xctf_printf((char*)__gfdispbuf);
}

/* Import DPI function '_gfdL530_18_P0' for display at line 530 in file '/home/ibarry/Project-Zipline-master/dv/KME/run/kme_tb.sv' */
void _gfdL530_18_P0( uint32_t* _zy_gfdV_L529_52 )
{
    char __gfdispbuf[1071];
    unsigned __gfdispblen = 0;
    gfifoDisplayBufferInit(__gfdispbuf);
    char __gfdispscratchbuf[1029];
    __gfdispscratchbuf[0] = '\0';
    {
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"inside translate function the tuser is : ");
        gfifoDisplayBVtoString(_zy_gfdV_L529_52, 25, 4, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n");
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n");

    }
        xctf_printf((char*)__gfdispbuf);
}

/* Import DPI function '_gfdL390_19_P0' for display at line 390 in file '/home/ibarry/Project-Zipline-master/dv/KME/run/kme_tb.sv' */
void _gfdL390_19_P0( uint32_t* _zy_gfdV_L220_53 )
{
    char __gfdispbuf[1059];
    unsigned __gfdispblen = 0;
    gfifoDisplayBufferInit(__gfdispbuf);
    char __gfdispscratchbuf[1041];
    __gfdispscratchbuf[0] = '\0';
    {
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"mega tlv word #2: ");
        gfifoDisplayBVtoHexStr(_zy_gfdV_L220_53, 64, 16, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n");

    }
        xctf_printf((char*)__gfdispbuf);
}

/* Import DPI function '_gfdL381_20_P0' for display at line 381 in file '/home/ibarry/Project-Zipline-master/dv/KME/run/kme_tb.sv' */
void _gfdL381_20_P0(  )
{
    char __gfdispbuf[1059];
    unsigned __gfdispblen = 0;
    gfifoDisplayBufferInit(__gfdispbuf);
    {
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"I should be here after seeing SoT\n");
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n");

    }
        xctf_printf((char*)__gfdispbuf);
}

/* Import DPI function '_gfdL375_21_P0' for display at line 375 in file '/home/ibarry/Project-Zipline-master/dv/KME/run/kme_tb.sv' */
void _gfdL375_21_P0( uint32_t* _zy_gfdV_L220_54, uint32_t* _zy_gfdV_L221_55, uint32_t* _zy_gfdV_L219_56, uint32_t* _zy_gfdV_L222_57 )
{
    char __gfdispbuf[1115];
    unsigned __gfdispblen = 0;
    gfifoDisplayBufferInit(__gfdispbuf);
    char __gfdispscratchbuf[1041];
    __gfdispscratchbuf[0] = '\0';
    {
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"tdata = 0x");
        gfifoDisplayBVtoHexStr(_zy_gfdV_L220_54, 64, 16, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)", tuser_string = ");
        gfifoDisplayBVtoDecStr(_zy_gfdV_L221_55, 32, 10, 0, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)", tstrb = 0x");
        gfifoDisplayBVtoHexStr(_zy_gfdV_L219_56, 8, 2, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)", str_get = ");
        gfifoDisplayBVtoDecStr(_zy_gfdV_L222_57, 32, 10, 0, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n");
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n");

    }
        xctf_printf((char*)__gfdispbuf);
}

/* Import DPI function '_gfdL373_22_P0' for display at line 373 in file '/home/ibarry/Project-Zipline-master/dv/KME/run/kme_tb.sv' */
void _gfdL373_22_P0( uint32_t* _zy_gfdV_L373_27 )
{
    char __gfdispbuf[1045];
    unsigned __gfdispblen = 0;
    gfifoDisplayBufferInit(__gfdispbuf);
    char __gfdispscratchbuf[1029];
    __gfdispscratchbuf[0] = '\0';
    {
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"user_string is ");
        gfifoDisplayBVtoString(_zy_gfdV_L373_27, 25, 4, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n");
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n");

    }
        xctf_printf((char*)__gfdispbuf);
}

/* Import DPI function '_gfdL522_23_P0' for display at line 522 in file '/home/ibarry/Project-Zipline-master/dv/KME/run/kme_tb.sv' */
void _gfdL522_23_P0(  )
{
    char __gfdispbuf[1042];
    unsigned __gfdispblen = 0;
    gfifoDisplayBufferInit(__gfdispbuf);
    {
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"am i translating\n");
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n");

    }
        xctf_printf((char*)__gfdispbuf);
}

/* Import DPI function '_gfdL519_24_P0' for display at line 519 in file '/home/ibarry/Project-Zipline-master/dv/KME/run/kme_tb.sv' */
void _gfdL519_24_P0(  )
{
    char __gfdispbuf[1042];
    unsigned __gfdispblen = 0;
    gfifoDisplayBufferInit(__gfdispbuf);
    {
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"am i translating\n");
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n");

    }
        xctf_printf((char*)__gfdispbuf);
}

/* Import DPI function '_gfdL351_25_P0' for display at line 351 in file '/home/ibarry/Project-Zipline-master/dv/KME/run/kme_tb.sv' */
void _gfdL351_25_P0( uint32_t* _zy_gfdV_L248_58 )
{
    char __gfdispbuf[1141];
    unsigned __gfdispblen = 0;
    gfifoDisplayBufferInit(__gfdispbuf);
    char __gfdispscratchbuf[1045];
    __gfdispscratchbuf[0] = '\0';
    ullong   __gfdispsimltime = gfifoDisplaySimLtime(-9, -9 );
    {
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n\nAPB_FATAL:  @time:");
        gfifoDisplayInt64toDecStr(__gfdispsimltime, 939524116, 0, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"   Slave ERROR and/or TIMEOUT on the WRITE operation to address 0x");
        gfifoDisplayBVtoHexStr(_zy_gfdV_L248_58, 32, 8, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n\n");
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n");

    }
        xctf_printf((char*)__gfdispbuf);
}

/* Import DPI function '_gfdL341_26_P0' for display at line 341 in file '/home/ibarry/Project-Zipline-master/dv/KME/run/kme_tb.sv' */
void _gfdL341_26_P0( uint32_t* _zy_gfdV_L341_29, uint32_t* _zy_gfdV_L249_59 )
{
    char __gfdispbuf[1122];
    unsigned __gfdispblen = 0;
    gfifoDisplayBufferInit(__gfdispbuf);
    char __gfdispscratchbuf[1045];
    __gfdispscratchbuf[0] = '\0';
    ullong   __gfdispsimltime = gfifoDisplaySimLtime(-9, -9 );
    {
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"APB_ERROR:  @time:");
        gfifoDisplayInt64toDecStr(__gfdispsimltime, 939524116, 0, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"   Data MISMATCH --> Actual: 0x");
        gfifoDisplayBVtoHexStr(_zy_gfdV_L341_29, 32, 8, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"  Expect: 0x");
        gfifoDisplayBVtoHexStr(_zy_gfdV_L249_59, 32, 8, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n");

    }
        xctf_printf((char*)__gfdispbuf);
}

/* Import DPI function '_gfdL336_27_P0' for display at line 336 in file '/home/ibarry/Project-Zipline-master/dv/KME/run/kme_tb.sv' */
void _gfdL336_27_P0( uint32_t* _zy_gfdV_L248_60 )
{
    char __gfdispbuf[1140];
    unsigned __gfdispblen = 0;
    gfifoDisplayBufferInit(__gfdispbuf);
    char __gfdispscratchbuf[1045];
    __gfdispscratchbuf[0] = '\0';
    ullong   __gfdispsimltime = gfifoDisplaySimLtime(-9, -9 );
    {
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n\nAPB_FATAL:  @time:");
        gfifoDisplayInt64toDecStr(__gfdispsimltime, 939524116, 0, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"   Slave ERROR and/or TIMEOUT on the READ operation to address 0x");
        gfifoDisplayBVtoHexStr(_zy_gfdV_L248_60, 32, 8, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n\n");
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n");

    }
        xctf_printf((char*)__gfdispbuf);
}

/* Import DPI function '_gfdL334_28_P0' for display at line 334 in file '/home/ibarry/Project-Zipline-master/dv/KME/run/kme_tb.sv' */
void _gfdL334_28_P0( uint32_t* _zy_gfdV_L248_61, uint32_t* _zy_gfdV_L249_62, uint32_t* _zy_gfdV_L334_34 )
{
    char __gfdispbuf[1122];
    unsigned __gfdispblen = 0;
    gfifoDisplayBufferInit(__gfdispbuf);
    char __gfdispscratchbuf[1033];
    __gfdispscratchbuf[0] = '\0';
    {
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"MY INFO: curr address: 0x");
        gfifoDisplayBVtoHexStr(_zy_gfdV_L248_61, 32, 8, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)" --> data_from_config: 0x");
        gfifoDisplayBVtoHexStr(_zy_gfdV_L249_62, 32, 8, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)" --> data_from_apb: 0x");
        gfifoDisplayBVtoHexStr(_zy_gfdV_L334_34, 32, 8, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n");
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n");

    }
        xctf_printf((char*)__gfdispbuf);
}

/* Import DPI function '_gfdL330_29_P0' for display at line 330 in file '/home/ibarry/Project-Zipline-master/dv/KME/run/kme_tb.sv' */
void _gfdL330_29_P0( uint32_t* _zy_gfdV_L247_63, uint32_t* _zy_gfdV_L248_64, uint32_t* _zy_gfdV_L249_65 )
{
    char __gfdispbuf[1080];
    unsigned __gfdispblen = 0;
    gfifoDisplayBufferInit(__gfdispbuf);
    char __gfdispscratchbuf[1033];
    __gfdispscratchbuf[0] = '\0';
    {
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"operation = ");
        gfifoDisplayBVtoString(_zy_gfdV_L247_63, 8, 1, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)", address = 0x");
        gfifoDisplayBVtoHexStr(_zy_gfdV_L248_64, 32, 8, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)", data = 0x");
        gfifoDisplayBVtoHexStr(_zy_gfdV_L249_65, 32, 8, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n");
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n");

    }
        xctf_printf((char*)__gfdispbuf);
}

/* Import DPI function '_gfdL327_30_P0' for display at line 327 in file '/home/ibarry/Project-Zipline-master/dv/KME/run/kme_tb.sv' */
void _gfdL327_30_P0( int _zy_gfdV_L250_66 )
{
    char __gfdispbuf[1060];
    unsigned __gfdispblen = 0;
    gfifoDisplayBufferInit(__gfdispbuf);
    char __gfdispscratchbuf[1033];
    __gfdispscratchbuf[0] = '\0';
    {
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"curr value of retval --> 0x");
        gfifoDisplayInt32toHexStr(_zy_gfdV_L250_66, 8, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n");

    }
        xctf_printf((char*)__gfdispbuf);
}

/* Import DPI function '_gfdL318_31_P0' for display at line 318 in file '/home/ibarry/Project-Zipline-master/dv/KME/run/kme_tb.sv' */
void _gfdL318_31_P0( uint32_t* _zy_gfdV_L318_39 )
{
    char __gfdispbuf[1075];
    unsigned __gfdispblen = 0;
    gfifoDisplayBufferInit(__gfdispbuf);
    char __gfdispscratchbuf[1060];
    __gfdispscratchbuf[0] = '\0';
    {
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\nTest ");
        gfifoDisplayBVtoString(_zy_gfdV_L318_39, 280, 35, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)" PASSED!\n");
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n");

    }
        xctf_printf((char*)__gfdispbuf);
}

/* Import DPI function '_gfdL316_32_P0' for display at line 316 in file '/home/ibarry/Project-Zipline-master/dv/KME/run/kme_tb.sv' */
void _gfdL316_32_P0( uint32_t* _zy_gfdV_L316_40 )
{
    char __gfdispbuf[1075];
    unsigned __gfdispblen = 0;
    gfifoDisplayBufferInit(__gfdispbuf);
    char __gfdispscratchbuf[1060];
    __gfdispscratchbuf[0] = '\0';
    {
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\nTest ");
        gfifoDisplayBVtoString(_zy_gfdV_L316_40, 280, 35, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)" FAILED!\n");
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n");

    }
        xctf_printf((char*)__gfdispbuf);
}

/* Import DPI function '_gfdL513_33_P0' for display at line 513 in file '/home/ibarry/Project-Zipline-master/dv/KME/run/kme_tb.sv' */
void _gfdL513_33_P0(  )
{
    char __gfdispbuf[1094];
    unsigned __gfdispblen = 0;
    gfifoDisplayBufferInit(__gfdispbuf);
    char __gfdispscratchbuf[1045];
    __gfdispscratchbuf[0] = '\0';
    ullong   __gfdispsimltime = gfifoDisplaySimLtime(-9, -9 );
    {
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"OUTBOUND_INFO:  @time:");
        gfifoDisplayInt64toDecStr(__gfdispsimltime, 939524116, 0, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)" Exiting OUTBOUND thread...");
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n");

    }
        xctf_printf((char*)__gfdispbuf);
}

/* Import DPI function '_gfdL435_34_P0' for display at line 435 in file '/home/ibarry/Project-Zipline-master/dv/KME/run/kme_tb.sv' */
void _gfdL435_34_P0(  )
{
    char __gfdispbuf[1092];
    unsigned __gfdispblen = 0;
    gfifoDisplayBufferInit(__gfdispbuf);
    char __gfdispscratchbuf[1045];
    __gfdispscratchbuf[0] = '\0';
    ullong   __gfdispsimltime = gfifoDisplaySimLtime(-9, -9 );
    {
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"INBOUND_INFO:  @time:");
        gfifoDisplayInt64toDecStr(__gfdispsimltime, 939524116, 0, __gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)__gfdispscratchbuf);
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)" Exiting INBOUND thread...");
        gfifoDisplayString(__gfdispbuf, &__gfdispblen , (char *)"\n");

    }
        xctf_printf((char*)__gfdispbuf);
}


#ifdef __cplusplus /* If this is a C++ compiler, end C linkage */
}
#endif
