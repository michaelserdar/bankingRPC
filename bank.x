/* BANK RPC: credit/debit to a banks database */
program BANK_PROG {
  version BANK_V1 {
    int B_credit(string, int) = 1;   /* returns 0 on success, -1 on error */
    int B_debit (string, int) = 2;
  } = 1;
} = 0x20000001; /* hex value for program id (used the one from hmwk demo) */