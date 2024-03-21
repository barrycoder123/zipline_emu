/* sfcall.c: generated by interface compiler */

#include "sfcall.h"

extern unsigned long long displaySimLtime(int tu, int tp);
extern unsigned displaySimStime(int tu, int tp);

extern void xctf_OSF_get_iargs(int chId, int gpid, void* iargs);
extern void xctf_OSF_put_oargs(int chId, int gpid, void* oargs);
extern const char *xctf_strget(int gid);


#ifdef __cplusplus
extern "C" {
#endif

typedef int (*_zyifsyn_write_2_xpt_callback_fp)(iscLv_t* addr, iscLv_t* data, char* response, int gpid);
int _zyifsyn_write_2_xpt(iscLv_t* addr, iscLv_t* data, char* response, int *svgpid)
{
  _zyifsyn_write_2_xpt_callback_fp fp;
  int gpid;
  int retval;
  xctf_ISF_port_info((void *) &_zyifsyn_write_2_xpt, (int **) &fp, &gpid);
  *svgpid = gpid;
  retval = fp(addr, data, response, gpid);
  return retval;
}

int _zyifsyn_write_2_xpt_0_2_emu(iscLv_t* addr, iscLv_t* data, char* response, int gpid)
{

  char iargs[12];
  char oargs[4];

  int disabled;

  // iargs = {a, b}
  Lv2Bvx(iargs+0, addr, 8);

  Lv2Bvx(iargs+8, data, 4);

  // call dut task
  xctf_ISF_task_call_begin(gpid, iargs, oargs);

  return 0;
}

int _zyifsyn_write_2_ipt_p2(iscLv_t* addr, iscLv_t* data, char* response, int gpid) {

  char iargs[12];
  char oargs[4];

  xctf_ISF_task_call_end(gpid, iargs, oargs);

  // {c, d} = oargs
  *response = ((oargs[0] & 0x3) == 0x1) ? 1 : 0;
  return 0;
}

extern int _zyifsyn_write_2_xpt_0_2_sim(iscLv_t* addr, iscLv_t* data, char* response, int gpid);
typedef int (*_zyifsyn_read_2_xpt_callback_fp)(iscLv_t* addr, iscLv_t* data, char* response, int gpid);
int _zyifsyn_read_2_xpt(iscLv_t* addr, iscLv_t* data, char* response, int *svgpid)
{
  _zyifsyn_read_2_xpt_callback_fp fp;
  int gpid;
  int retval;
  xctf_ISF_port_info((void *) &_zyifsyn_read_2_xpt, (int **) &fp, &gpid);
  *svgpid = gpid;
  retval = fp(addr, data, response, gpid);
  return retval;
}

int _zyifsyn_read_2_xpt_0_2_emu(iscLv_t* addr, iscLv_t* data, char* response, int gpid)
{

  char iargs[8];
  char oargs[8];

  int disabled;

  // iargs = {a, b}
  Lv2Bvx(iargs+0, addr, 8);

  // call dut task
  xctf_ISF_task_call_begin(gpid, iargs, oargs);

  return 0;
}

int _zyifsyn_read_2_ipt_p2(iscLv_t* addr, iscLv_t* data, char* response, int gpid) {

  char iargs[8];
  char oargs[8];

  xctf_ISF_task_call_end(gpid, iargs, oargs);

  // {c, d} = oargs
  Bv2Lvx(data, oargs+0, 4);
  *response = ((oargs[4] & 0x3) == 0x1) ? 1 : 0;
  return 0;
}

extern int _zyifsyn_read_2_xpt_0_2_sim(iscLv_t* addr, iscLv_t* data, char* response, int gpid);

#ifdef __cplusplus
}
#endif

#ifdef __cplusplus
extern "C" {
#endif

int _zyifsyn_write_2_ipt(iscLv_t* addr, iscLv_t* data, char* response, int *gpid) {
  return _zyifsyn_write_2_xpt(addr,  data,  response, gpid);

}

int _zyifsyn_read_2_ipt(iscLv_t* addr, iscLv_t* data, char* response, int *gpid) {
  return _zyifsyn_read_2_xpt(addr,  data,  response, gpid);

}


#ifdef __cplusplus
}
#endif

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
}
#endif