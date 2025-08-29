#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>

/**
 * dispatch protobuf rpc call
 */
const char *call_tcx_api_abm(const char *hex_str);

/**
 *生成助记词
 */
const char *get_mnemonic(void);
