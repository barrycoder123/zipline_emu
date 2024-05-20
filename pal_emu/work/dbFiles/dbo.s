    .macro dbo_isb_read
isbrd 6, (DBO_IOBA + 0), (DBO_ISB_ADRS + 0)
isbrd 1, (DBO_IOBA + 6), (DBO_ISB_ADRS + 64)
isbrd 1, (DBO_IOBA + 7), (DBO_ISB_ADRS + 88)
    .endm
.equ DBO_BYTES, 64
