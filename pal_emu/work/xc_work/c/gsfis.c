extern int get_config_data(unsigned*, unsigned*, unsigned*);
extern void get_config_data_zyputf(unsigned*, unsigned*, unsigned*);
extern void get_config_data_zyackf(int);
void get_config_data_2_zyprefetch(int n) {
  int k, r, eos;
  unsigned operation[1];
  unsigned address[1];
  unsigned data[1];
  for (k = 0; k < n; k++) {
    r = get_config_data(operation, address, data);
    if (r & 1) {
      get_config_data_zyputf(operation, address, data);
    }
    if (r != 1) break;
  }
  get_config_data_zyackf((r >> 1));
}

extern int ib_service_data(unsigned*, unsigned*, unsigned*, unsigned*);
extern void ib_service_data_zyputf(unsigned*, unsigned*, unsigned*, unsigned*);
extern void ib_service_data_zyackf(int);
void ib_service_data_2_zyprefetch(int n) {
  int k, r, eos;
  unsigned tdata[2];
  unsigned tuser_string[1];
  unsigned tstrb[1];
  unsigned str_get[1];
  for (k = 0; k < n; k++) {
    r = ib_service_data(tdata, tuser_string, tstrb, str_get);
    if (r & 1) {
      ib_service_data_zyputf(tdata, tuser_string, tstrb, str_get);
    }
    if (r != 1) break;
  }
  ib_service_data_zyackf((r >> 1));
}

extern int ob_service_data(unsigned*, unsigned*, unsigned*, unsigned*);
extern void ob_service_data_zyputf(unsigned*, unsigned*, unsigned*, unsigned*);
extern void ob_service_data_zyackf(int);
void ob_service_data_2_zyprefetch(int n) {
  int k, r, eos;
  unsigned tdata[2];
  unsigned tuser_string[1];
  unsigned tstrb[1];
  unsigned str_get[1];
  for (k = 0; k < n; k++) {
    r = ob_service_data(tdata, tuser_string, tstrb, str_get);
    if (r & 1) {
      ob_service_data_zyputf(tdata, tuser_string, tstrb, str_get);
    }
    if (r != 1) break;
  }
  ob_service_data_zyackf((r >> 1));
}

