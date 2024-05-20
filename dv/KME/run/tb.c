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
#define INBOUND_VEC_SIZE 85 // size of lines in inbound files
#define OUTBOUND_VEC_SIZE 85 // size of lines in outbound files
#define EoT 10
#define SoT 11
int num_transactions = 0;
static FILE *file_descriptor = NULL;
static FILE *ib_file = NULL;
static FILE *ob_file = NULL;

extern int get_config_data(uint8_t *operation, svBitVecVal *address, svBitVecVal *data);
extern int ib_service_data(uint64_t *tdata, uint32_t *tuser_string, svBitVecVal *tstrb, uint32_t *str_get);
extern int ob_service_data(uint64_t *tdata, uint32_t *tuser_string, svBitVecVal *tstrb, uint32_t *str_get);

int get_config_data(uint8_t *operation, svBitVecVal *address, svBitVecVal *data) {
    int str_get;
    char vector [CONFIG_VEC_SIZE];
    if (file_descriptor == NULL) {
        file_descriptor = fopen("../../dv/KME/tests/kme.config", "r");
    } 
    while (fgets(vector, CONFIG_VEC_SIZE, file_descriptor) != NULL) {
        str_get = sscanf(vector, "%s %016x %016x\n", operation, address, data);
        if (num_transactions++ == MAX_TRANSACTIONS - 1) {
            return EOS;
        } else {
            return VALID;//0x1
        }
    }
    return EOS;
}

int ib_service_data(uint64_t *tdata, uint32_t *tuser_string, svBitVecVal *tstrb, uint32_t *str_get) {
        // TODO:
        char *testname = getenv("TESTNAME");
        char filename[1000];
        sprintf(filename, "../../dv/KME/tests/%s.inbound", testname);
        char vector[INBOUND_VEC_SIZE];
        char user_string[12];
        int num_items;
        if (ib_file == NULL) {
            ib_file = fopen(filename, "r");
        } 
        while(fgets(vector, INBOUND_VEC_SIZE, ib_file) != NULL) {
            if (sscanf(vector, "%llx %s %016x\n", tdata, user_string, tstrb) == 3) {
                printf("read 3 items\n");
                *str_get = 3;
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
                printf("read 2 items\n");
                user_string[0] = '\0';
                *tuser_string = 0;
                *str_get = 2;
                printf("ib vector is --> %s\n", vector);
                printf("ib vector tdata --> %llx\n", *tdata);
                printf("ib vector tuser_string --> %s\n", user_string);
                printf("ib vector tstrb --> %02x\n", *tstrb);
            }
            return VALID;
        }
        return EOS;
}

int ob_service_data(uint64_t *tdata, uint32_t *tuser_string, svBitVecVal *tstrb, uint32_t *str_get) {
        char *testname = getenv("TESTNAME");
        char filename[1000];
        sprintf(filename, "../../dv/KME/tests/%s.outbound", testname);

        char vector[OUTBOUND_VEC_SIZE];
        char user_string[12];
        int num_items;
        if (ob_file == NULL) {
            ob_file = fopen(filename, "r");
        } 
        while(fgets(vector, sizeof(vector), ob_file) != NULL) {
            if (sscanf(vector, "%llx %s %016x\n", tdata, user_string, tstrb) == 3) {
                printf("read 3 items\n");
                *str_get = 3;
                printf("ob vector is --> %s\n", vector);
                printf("ob vector tdata --> %llx\n", *tdata);
                printf("ob vector tuser_string --> %s\n", user_string);
                printf("ob vector tstrb --> %02x\n", *tstrb);
                if (strcmp(user_string, "EoT") == 0) {
                    *tuser_string = EoT;
                } else if (strcmp(user_string, "SoT") == 0) {
                    *tuser_string = SoT;
                }
                return VALID;
            } else if (sscanf(vector, "%llx %016x\n", tdata, tstrb) == 2) {
                printf("read 2 items\n");
                user_string[0] = '\0';
                *tuser_string = 0;
                *str_get = 2;
                printf("ob vector is --> %s\n", vector);
                printf("ob vector tdata --> %llx\n", *tdata);
                printf("ob vector tuser_string --> %s\n", user_string);
                printf("ob vector tstrb --> %02x\n", *tstrb);
            }
            return VALID;
        }
        return EOS;
}

