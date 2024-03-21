    .macro dbo_isb_read
isbrd 6, (DBO_IOBA + 0), (DBO_ISB_ADRS + 0)
isbrd 5, (DBO_IOBA + 6), (DBO_ISB_ADRS + 64)
    .endm
.equ DBO_BYTES, 88
