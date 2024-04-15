    .equ APPLY_MASK, 0x1
    .equ APPLY_ISB_OFFSET, 0x80
    .equ CAPTURE_MASK, 0x1
    .equ CAPTURE_ISB_OFFSET, 0x140
    .macro dbi_isb_write
isbwr 3, (DBI_IOBA + 0), (DBI_ISB_ADRS + 0)
isbwr 1, (DBI_IOBA + 3), (DBI_ISB_ADRS + 64)
isbwr 2, (DBI_IOBA + 4), (DBI_ISB_ADRS + 136)
isbwr 1, (DBI_IOBA + 6), (DBI_ISB_ADRS + 192)
isbwr 1, (DBI_IOBA + 7), (DBI_ISB_ADRS + 256)
isbwr 1, (DBI_IOBA + 8), (DBI_ISB_ADRS + 328)
    .endm
.equ DBI_BYTES, 72
.equ SA_DONE, (1 << 1)
