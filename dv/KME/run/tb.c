#include <stdio.h>
#include "stdlib.h"
#include "svdpi.h"
#include <stdint.h>
#include <string.h>
// for printing with printf uint<size>_t via PRIu<size>
// for scanning with sscanf SCNu<size>
#include <inttypes.h> 

// GLOBALS for GSF_IS streaming 
#define VALID 0x1 // valid data
#define EOS   0x2 // end of stream 
#define MAX_TRANSACTIONS 3258 // number of data points in kme.config file
int num_transactions = 0;
static FILE *file_descriptor = NULL;

/*extern void tb_task (char* testname, char *seed, int *error_cntr, int argc, char *argv[]) {
extern void write(unsigned int *addr, unsigned int *data, unsigned int *response);
extern void read(unsigned int *addr, unsigned int *r_data, unsigned int *response);
*/
extern int get_config_data(svBitVecVal *operation, svBitVecVal *address, svBitVecVal *data);
extern int get_config_data(svBitVecVal *tdata, svBitVecVal *tuser_string, svBitVecVal *tstrb);

/*int error_cntr;
char *testname;
char *seed;*/

/*void apb_write (char *a, char *d, int *r) {
    // address, data from do_kme_config stored as string for processing
    // convert to int for extern void functions
    // TODO: hex string to actual value 
    uint64_t addr_val;
    uint32_t data_val;
    sscanf(a, "%x", &addr_val);
    sscanf(d, "%x", &data_val);
    write(&a, &d, &r);
}

void apb_read (char *a, char *r_d, int *r) {
    uint64_t addr_val;
    uint32_t rdata_val;
    sscanf(a, "%x", &addr_val);
    sscanf(r_d, "%x", &rdata_val);
    read(&a, &r_d, &r);
}*/

int get_config_data(svBitVecVal *operation, svBitVecVal *address, svBitVecVal *data) {
    // TODO: File processing for kme.config
    // most file IO functions from sys v -> c are equivalent 
    int str_get;
    int MAX = 70;
    char vector [MAX];
    if (file_descriptor == NULL) {
        printf("am i opening file\n");
        file_descriptor = fopen("../../dv/KME/tests/kme.config", "r");
    } 
    while (fgets(vector, MAX, file_descriptor) != NULL) {
        str_get = sscanf(vector, "%c %016x %016x\n", operation, address, data);
        printf("vector --> %s", vector);
        if (num_transactions++ == MAX_TRANSACTIONS - 1) {
            return EOS;
        } else {
            return VALID;//0x1
        }
    }
    return EOS;
}

int get_config_data(svBitVecVal *tdata, svBitVecVal *tuser_string, svBitVecVal *tstrb) {
        // TO DO: 
}


/* void service_ib_interface() {
    // TODO: Same ide as do_kme_config()
    char *tstrb;
    char *tdata;
    char *tuser_string;
    char *file_name;
    char *vector;

    int str_get;
    int file_descriptor;

    int saw_mega;
    int saw_guid_tlv;
    int have_guid_tlv;
    int megta_tlv_word_count;

    file_name = sprintf(file_name, "../../dv/KME/tests/%s.inbound", testname);
    file_descriptor = fopen(file_name, "r");
    if (file_descriptor == NULL) {
        printf("\nINBOUND_FATAL: File %s NOT found!\n", file_name);
    } else {
        printf("INBOUND_INFO: Opened test file --> %s", file_name);
    }

    saw_mega = 0;
    saw_guid_tlv = 0;
    mega_tlv_word_count = 0;
    have_guid_tlv = 0;

    while (!feof(file_descriptor)) {
        if (kme_ib_tready

    }




}*/

// see veriuser.h and mc_scan_plusargs command 
// eg) 
// if (testname=mc_scan_plusargs("TESTNAME=") ) {
//      <SUCCESS>
// } else {
//      <NO SUCCESS>
// }
/*
void tb_task (int argc, char *argv[]) {
    // TODO: 
    // migrate all non synth operations from kme_tb.sv (hw_top for our DPI-C
    // purposes)
    // vars: string testname string seed, int error cntr
    // migrate tasks and initial block 
    //------------------------------------------------------------------------
    //                       COMMAND LINE ARGS                                
    //------------------------------------------------------------------------
     
    // do getenv for reading command line arguments
    error_cntr = 0;

    // command line reading logic for SEED value
    // will assume there are always args argc > 0
    // want to find SEED as a substring of some command line argument
    // use strstr(haystack, needle) 
    char *seed_arg;
    // argv[0] is program path name, start at argv[1]
    for (int i = 1; i < argc; i++) {
        if (strstr(argv[i], "SEED")) {
            seed_arg = strstr(argv[i], "SEED");
            // ststr returns a pointer to the the first occurence of needle so at '='
            // want our value to be everything after that
            seed = ststr(seed_arg, "="); 
        } else {
            seed = "1";
        }
    }
    // logic for TESTNAME is the same as for SEED
    char *testname_arg;
    for (int i = 1; i < argc; i++) {
        if (strstr(argv[i], "TESTNAME")) {
            testname_arg = strstr(argv[i], "TESTNAME");
            // ststr returns a pointer to the the first occurence of needle so at '='
            // want our value to be everything after that
            testname = ststr(testname_arg, "="); 
        } else {
            testname = "unknown";
        }
    }
    //------------------------------------------------------------------------
    //                       DO_KME_CONFIG ()                              
    //------------------------------------------------------------------------
     
    
}
*/

