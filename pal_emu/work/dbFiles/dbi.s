    .equ APPLY_MASK, 0x1
    .equ APPLY_ISB_OFFSET, 0x0
    .equ CAPTURE_MASK, 0x2
    .equ CAPTURE_ISB_OFFSET, 0x0
    .macro dbi_isb_write
isbwr 1, (DBI_IOBA + 0), (DBI_ISB_ADRS + 8)
isbwr 1, (DBI_IOBA + 1), (DBI_ISB_ADRS + 64)
isbwr 1, (DBI_IOBA + 2), (DBI_ISB_ADRS + 128)
isbwr 1, (DBI_IOBA + 3), (DBI_ISB_ADRS + 192)
isbwr 1, (DBI_IOBA + 4), (DBI_ISB_ADRS + 256)
isbwr 1, (DBI_IOBA + 5), (DBI_ISB_ADRS + 320)
    .endm
.equ DBI_BYTES, 48
.equ SA_DONE, (1 << 1)
