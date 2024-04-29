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
#define CONFIG_VEC_SIZE 70  // size of lines in inbound files
//#define INBOUND_VEC_SIZE 35  // size of lines in inbound files
#define INBOUND_VEC_SIZE 85 // size of lines in inbound files
#define EoT 10
#define SoT 11
int num_transactions = 0;
static FILE *file_descriptor = NULL;
static FILE *ib_file = NULL;

/*extern void tb_task (char* testname, char *seed, int *error_cntr, int argc, char *argv[]) {
extern void write(unsigned int *addr, unsigned int *data, unsigned int *response);
extern void read(unsigned int *addr, unsigned int *r_data, unsigned int *response);
*/
extern int get_config_data(char *operation, svBitVecVal *address, svBitVecVal *data);
extern int ib_service_data(uint64_t *tdata, int *tuser_string, svBitVecVal *tstrb, int *str_get);

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

int get_config_data(char *operation, svBitVecVal *address, svBitVecVal *data) {
    // TODO: File processing for kme.config
    // most file IO functions from sys v -> c are equivalent 
    int str_get;
    char vector [CONFIG_VEC_SIZE];
    if (file_descriptor == NULL) {
        file_descriptor = fopen("../../dv/KME/tests/kme.config", "r");
    } 
    while (fgets(vector, CONFIG_VEC_SIZE, file_descriptor) != NULL) {
        str_get = sscanf(vector, "%s %016x %016x\n", operation, address, data);
        //printf("vector --> %s", vector);
        //printf("vector operation --> %s\n", operation);
        if (num_transactions++ == MAX_TRANSACTIONS - 1) {
            return EOS;
        } else {
            return VALID;//0x1
        }
    }
    return EOS;
}

int ib_service_data(uint64_t *tdata, int *tuser_string, svBitVecVal *tstrb, int *str_get) {
        // TODO:
        //int str_get;
        char *testname = getenv("TESTNAME");
        char filename[1000];
        sprintf(filename, "../../dv/KME/tests/%s.inbound", testname);
        /*strcpy(filename, "../../dv/KME/tests/");
        strcat(filename, testname);
        strcat(filename, ".inbound");
        
        char wc_command[1000];
        strcpy(wc_command, "wc -l < ");
        strcat(wc_command, filename);
        FILE *wc = popen(wc_command, "r");
        char buf[25];
        int line_count;
        int num_transactions;
        fgets(buf, sizeof(buf), wc);
        line_count = atoi(buf);
        pclose(wc);
        */
        char vector[INBOUND_VEC_SIZE];
        char user_string[12];
        int num_items;
        if (ib_file == NULL) {
            ib_file = fopen(filename, "r");
        } 
        while(fgets(vector, INBOUND_VEC_SIZE, ib_file) != NULL) {
            //*str_get = sscanf(vector, "%llx %s %02x\n", tdata, tuser_string, tstrb);
            //*str_get = sscanf(vector, "%" SCNu64 "%s %016x\n", tdata, tuser_string, tstrb);
            //*str_get = sscanf(vector, "%s");
            // TODO: if u have str_get less than 3 then only two items to read
            //num_items = sscanf(vector, "%llx %s %02x\n", tdata, user_string, tstrb);
            //*str_get = num_items;
            //printf("num items read: %i\n", num_items);
            if (sscanf(vector, "%llx %s %016x\n", tdata, user_string, tstrb) == 3) {
                //sscanf(vector, "%llx %s %02x\n", tdata, user_string, tstrb);
                //sscanf(vector, "%llx %s %02x\n", tdata, user_string, tstrb);
                printf("read 3 items\n");
                *str_get = 3;
                //strncpy(tstrb, user_string, sizeof(tstrb));
                printf("ib vector is --> %s\n", vector);
                printf("ib vector tdata --> %llx\n", *tdata);
                printf("ib vector tuser_string --> %s\n", user_string);
                printf("ib vector tstrb --> %02x\n", *tstrb);
                if (strcmp(user_string, "EoT") == 0) {
                    *tuser_string = EoT;
                } else if (strcmp(user_string, "SoT") == 0) {
                    *tuser_string = SoT;
                }
                return VALID;
            } else if (sscanf(vector, "%llx %016x\n", tdata, tstrb) == 2) {
                // num items read is 2
                //printf("I only read in 2 items\n");
                printf("read 2 items\n");
                //sscanf(vector, "%llx %02x\n", tdata, tstrb);
                user_string[0] = '\0';
                *tuser_string = 0;
                printf("ib vector is --> %s\n", vector);
                printf("ib vector tdata --> %llx\n", *tdata);
                printf("ib vector tuser_string --> %s\n", user_string);
                printf("ib vector tstrb --> %02x\n", *tstrb);
            }
            /*if (num_transactions++ == line_count - 1) {
               return EOS;
            } else {
                return VALID;
            }*/
            return VALID;
        }
        return EOS;
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

