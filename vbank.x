/* Virtual Bank RPC: serves as middleware for transactions */
program VBANK_PROG {
  version VBANK_V1 {
    int VB_credit (string, int) = 1;   /* 0 good  -1 error */
    int VB_debit  (string, int) = 2;
    int VB_transfer(string, string, int) = 3; 
  } = 1;
} = 0x20000002;