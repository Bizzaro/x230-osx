/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLoAhS2C.aml, Tue Jul 18 23:26:40 2017
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x0000FFFC (65532)
 *     Revision         0x01 **** 32-bit table (V1), no 64-bit math support
 *     Checksum         0xC6
 *     OEM ID           "Apple "
 *     OEM Table ID     "TP-G2   "
 *     OEM Revision     0x00002670 (9840)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20140926 (538183974)
 */
DefinitionBlock ("", "DSDT", 1, "Apple ", "TP-G2   ", 0x00002670)
{
    /*
     * iASL Warning: There was 1 external control method found during
     * disassembly, but only 0 were resolved (1 unresolved). Additional
     * ACPI tables may be required to properly disassemble the code. This
     * resulting disassembler output file may not compile because the
     * disassembler did not know how many arguments to assign to the
     * unresolved methods. Note: SSDTs can be dynamically loaded at
     * runtime and may or may not be available via the host OS.
     *
     * To specify the tables needed to resolve external control method
     * references, the -e option can be used to specify the filenames.
     * Example iASL invocations:
     *     iasl -e ssdt1.aml ssdt2.aml ssdt3.aml -d dsdt.aml
     *     iasl -e dsdt.aml ssdt2.aml -d ssdt1.aml
     *     iasl -e ssdt*.aml -d dsdt.aml
     *
     * In addition, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     * Invocation:
     *     iasl -fe refs.txt -d dsdt.aml
     *
     * The following methods were unresolved and many not compile properly
     * because the disassembler had to guess at the number of arguments
     * required for each:
     */
    External (_PR_.CLVL, IntObj)    // Warning: Unknown object
    External (_PR_.CPU0._PSS, IntObj)    // Warning: Unknown object
    External (_SB_.PCI0.SAT1.PRIM.GTME, UnknownObj)    // Warning: Unknown object
    External (_SB_.PCI0.SAT1.PRT1, UnknownObj)    // Warning: Unknown object
    External (_SB_.PCI0.SAT1.SCND.GTME, UnknownObj)    // Warning: Unknown object
    External (_SB_.PCI0.SAT1.SCND.MSTR, UnknownObj)    // Warning: Unknown object
    External (DTGP, MethodObj)    // Warning: Unknown method, guessing 4 arguments
    External (PDC0, UnknownObj)    // Warning: Unknown object
    External (PDC1, UnknownObj)    // Warning: Unknown object
    External (PDC2, UnknownObj)    // Warning: Unknown object
    External (PDC3, UnknownObj)    // Warning: Unknown object
    External (PDC4, UnknownObj)    // Warning: Unknown object
    External (PDC5, UnknownObj)    // Warning: Unknown object
    External (PDC6, UnknownObj)    // Warning: Unknown object
    External (PDC7, UnknownObj)    // Warning: Unknown object

    Scope (_PR)
    {
        Processor (CPU0, 0x01, 0x00000410, 0x06) {}
        Processor (CPU1, 0x02, 0x00000410, 0x06) {}
        Processor (CPU2, 0x03, 0x00000410, 0x06) {}
        Processor (CPU3, 0x04, 0x00000410, 0x06) {}
        Processor (CPU4, 0x05, 0x00000410, 0x06) {}
        Processor (CPU5, 0x06, 0x00000410, 0x06) {}
        Processor (CPU6, 0x07, 0x00000410, 0x06) {}
        Processor (CPU7, 0x08, 0x00000410, 0x06) {}
    }

    Scope (\)
    {
        Method (PNTF, 1, NotSerialized)
        {
            If (And (PPMF, 0x0400))
            {
                If (LOr (LAnd (And (PDC0, 0x08), LOr (LEqual (Arg0, 0x80), LEqual (Arg0, 0x82))), LAnd (And (PDC0, 0x10), LEqual (Arg0, 0x81))))
                {
                    Notify (\_PR.CPU0, Arg0)
                }

                If (LOr (LAnd (And (PDC1, 0x08), LOr (LEqual (Arg0, 0x80), LEqual (Arg0, 0x82))), LAnd (And (PDC1, 0x10), LEqual (Arg0, 0x81))))
                {
                    Notify (\_PR.CPU1, Arg0)
                }

                If (LOr (LAnd (And (PDC2, 0x08), LOr (LEqual (Arg0, 0x80), LEqual (Arg0, 0x82))), LAnd (And (PDC2, 0x10), LEqual (Arg0, 0x81))))
                {
                    Notify (\_PR.CPU2, Arg0)
                }

                If (LOr (LAnd (And (PDC3, 0x08), LOr (LEqual (Arg0, 0x80), LEqual (Arg0, 0x82))), LAnd (And (PDC3, 0x10), LEqual (Arg0, 0x81))))
                {
                    Notify (\_PR.CPU3, Arg0)
                }

                If (LOr (LAnd (And (PDC4, 0x08), LOr (LEqual (Arg0, 0x80), LEqual (Arg0, 0x82))), LAnd (And (PDC4, 0x10), LEqual (Arg0, 0x81))))
                {
                    Notify (\_PR.CPU4, Arg0)
                }

                If (LOr (LAnd (And (PDC5, 0x08), LOr (LEqual (Arg0, 0x80), LEqual (Arg0, 0x82))), LAnd (And (PDC5, 0x10), LEqual (Arg0, 0x81))))
                {
                    Notify (\_PR.CPU5, Arg0)
                }

                If (LOr (LAnd (And (PDC6, 0x08), LOr (LEqual (Arg0, 0x80), LEqual (Arg0, 0x82))), LAnd (And (PDC6, 0x10), LEqual (Arg0, 0x81))))
                {
                    Notify (\_PR.CPU6, Arg0)
                }

                If (LOr (LAnd (And (PDC7, 0x08), LOr (LEqual (Arg0, 0x80), LEqual (Arg0, 0x82))), LAnd (And (PDC7, 0x10), LEqual (Arg0, 0x81))))
                {
                    Notify (\_PR.CPU7, Arg0)
                }
            }
            ElseIf (LOr (LEqual (Arg0, 0x80), LOr (LEqual (Arg0, 0x81), LEqual (Arg0, 0x82))))
            {
                Notify (\_PR.CPU0, Arg0)
            }
        }
    }

    OperationRegion (MNVS, SystemMemory, 0xDAF9D018, 0x1000)
    Field (MNVS, DWordAcc, NoLock, Preserve)
    {
        Offset (0xD00), 
        GAPA,   32, 
        GAPL,   32, 
        DCKI,   32, 
        DCKS,   32, 
        VCDL,   1, 
        VCDC,   1, 
        VCDT,   1, 
        VCDD,   1, 
            ,   1, 
        VCSS,   1, 
        VCDB,   1, 
        VCIN,   1, 
        VVPO,   8, 
        BRTN,   8, 
        BRLV,   8, 
        CDFL,   8, 
        CDAH,   8, 
        PMOD,   2, 
        PDIR,   1, 
        PDMA,   1, 
        Offset (0xD17), 
        LFDC,   1, 
        Offset (0xD18), 
        C2NA,   1, 
        C3NA,   1, 
        C4NA,   1, 
        C6NA,   1, 
        C7NA,   1, 
        Offset (0xD19), 
        Offset (0xD1A), 
            ,   2, 
            ,   1, 
        NHPS,   1, 
        NPME,   1, 
        Offset (0xD1B), 
        UOPT,   8, 
        BTID,   32, 
        DPP0,   1, 
        DPP1,   1, 
        DPP2,   1, 
        DPP3,   1, 
        DPP4,   1, 
        DPP5,   1, 
        Offset (0xD21), 
        Offset (0xD22), 
        TCRT,   16, 
        TPSV,   16, 
        TTC1,   16, 
        TTC2,   16, 
        TTSP,   16, 
        SRAH,   8, 
        SRHE,   8, 
        SRE1,   8, 
        SRE2,   8, 
        SRE3,   8, 
        SRE4,   8, 
        SRE5,   8, 
        SRE6,   8, 
        SRU1,   8, 
        SRU2,   8, 
        SRU3,   8, 
        SRU7,   8, 
        SRU4,   8, 
        SRU5,   8, 
        SRU8,   8, 
        SRPB,   8, 
        SRLP,   8, 
        SRSA,   8, 
        SRSM,   8, 
        CWAC,   1, 
        CWAS,   1, 
        CWUE,   1, 
        CWUS,   1, 
        Offset (0xD40), 
        CWAP,   16, 
        CWAT,   16, 
        DBGC,   1, 
        Offset (0xD45), 
        FS1L,   16, 
        FS1M,   16, 
        FS1H,   16, 
        FS2L,   16, 
        FS2M,   16, 
        FS2H,   16, 
        FS3L,   16, 
        FS3M,   16, 
        FS3H,   16, 
        TATC,   1, 
            ,   6, 
        TATL,   1, 
        TATW,   8, 
        TNFT,   4, 
        TNTT,   4, 
        TDFA,   4, 
        TDTA,   4, 
        TDFD,   4, 
        TDTD,   4, 
        TCFA,   4, 
        TCTA,   4, 
        TCFD,   4, 
        TCTD,   4, 
        TSFT,   4, 
        TSTT,   4, 
        TIT0,   8, 
        TCR0,   16, 
        TPS0,   16, 
        TIT1,   8, 
        TCR1,   16, 
        TPS1,   16, 
        TIT2,   8, 
        TCR2,   16, 
        TPS2,   16, 
        TIF0,   8, 
        TIF1,   8, 
        TIF2,   8, 
        Offset (0xD78), 
        BTHI,   1, 
        Offset (0xD79), 
        HDIR,   1, 
        HDEH,   1, 
        HDSP,   1, 
        HDPP,   1, 
        HDUB,   1, 
        HDMC,   1, 
        Offset (0xD7A), 
        TPME,   8, 
        BIDE,   4, 
        IDET,   4, 
            ,   1, 
        DTSE,   1, 
        Offset (0xD7D), 
        DTS0,   8, 
        DTS1,   8, 
        DT00,   1, 
        DT01,   1, 
        DT02,   1, 
        DT03,   1, 
        Offset (0xD80), 
        LIDB,   1, 
        C4WR,   1, 
        C4AC,   1, 
        ODDX,   1, 
        CMPR,   1, 
        ILNF,   1, 
        PLUX,   1, 
        Offset (0xD81), 
        Offset (0xD8C), 
            ,   4, 
            ,   1, 
        IDMM,   1, 
        Offset (0xD8D), 
            ,   3, 
            ,   1, 
            ,   1, 
        LIDS,   1, 
        Offset (0xD8E), 
        Offset (0xD8F), 
            ,   4, 
        Offset (0xD90), 
        TCG0,   1, 
        TCG1,   1, 
        Offset (0xD91), 
        SWGP,   8, 
        IPMS,   8, 
        IPMB,   120, 
        IPMR,   24, 
        IPMO,   24, 
        IPMA,   8, 
        VIGD,   1, 
        VDSC,   1, 
            ,   2, 
        VDSP,   1, 
        Offset (0xDAA), 
        Offset (0xDAD), 
        ASFT,   8, 
        PL1L,   8, 
        PL1M,   8, 
        CHKC,   32, 
        CHKE,   32, 
        ATRB,   32, 
        Offset (0xDBD), 
        PPCR,   8, 
        TPCR,   5, 
        Offset (0xDBF), 
        Offset (0xDCE), 
        CTDP,   8, 
        PPCA,   8, 
        TPCA,   5, 
        Offset (0xDD1), 
        BFWB,   296, 
        OSPX,   1, 
        OSC4,   1, 
        Offset (0xDF7), 
        SPEN,   1, 
        SCRM,   1, 
        GFPL,   1, 
        ETAU,   1, 
        IHBC,   1, 
        APMD,   1, 
        Offset (0xDF8), 
        FTPS,   8, 
        HIST,   8, 
        LPST,   8, 
        LWST,   8, 
        Offset (0xDFF), 
        MTAU,   8, 
        Offset (0xE20), 
        HPET,   32, 
        PKLI,   16, 
        VLCX,   16, 
        VNIT,   8, 
        VBD0,   8, 
        VBDT,   128, 
        VBPL,   16, 
        VBPH,   16, 
        VBML,   8, 
        VBMH,   8, 
        VEDI,   1024, 
        PDCI,   16, 
        ISCG,   32, 
        ISSP,   1, 
        ISWK,   2, 
        Offset (0xEC7), 
        SHA1,   160, 
        FFDT,   1, 
        Offset (0xEDC), 
        LWCP,   1, 
        LWEN,   1, 
        Offset (0xEDD), 
        USBR,   1, 
        Offset (0xEDE), 
        Offset (0xEE1), 
        APST,   8, 
        Offset (0xEE3)
    }

    Field (MNVS, ByteAcc, NoLock, Preserve)
    {
        Offset (0xB00), 
        WITM,   8, 
        WSEL,   8, 
        WLS0,   8, 
        WLS1,   8, 
        WLS2,   8, 
        WLS3,   8, 
        WLS4,   8, 
        WLS5,   8, 
        WLS6,   8, 
        WLS7,   8, 
        WLS8,   8, 
        WLS9,   8, 
        WLSA,   8, 
        WLSB,   8, 
        WLSC,   8, 
        WLSD,   8, 
        WENC,   8, 
        WKBD,   8, 
        WPTY,   8, 
        WPAS,   1032, 
        WPNW,   1032, 
        WSPM,   8, 
        WSPS,   8, 
        WSMN,   8, 
        WSMX,   8, 
        WSEN,   8, 
        WSKB,   8, 
        WASB,   8, 
        WASI,   16, 
        WASD,   8, 
        WASS,   32
    }

    Field (MNVS, ByteAcc, NoLock, Preserve)
    {
        Offset (0xA00), 
        DBGS,   1024
    }

    OperationRegion (GNVS, SystemMemory, 0xDAF6CE18, 0x01C8)
    Field (GNVS, AnyAcc, Lock, Preserve)
    {
        OSYS,   16, 
        SMIF,   8, 
        PRM0,   8, 
        PRM1,   8, 
        Offset (0x10), 
        PWRS,   8, 
        Offset (0x1E), 
        Offset (0x25), 
        REVN,   8, 
        Offset (0x28), 
        APIC,   8, 
        TCNT,   8, 
        PCP0,   8, 
        PCP1,   8, 
        PPCM,   8, 
        PPMF,   32, 
        C67L,   8, 
        Offset (0x3C), 
        IGDS,   8, 
        TLST,   8, 
        CADL,   8, 
        PADL,   8, 
        CSTE,   16, 
        NSTE,   16, 
        SSTE,   16, 
        NDID,   8, 
        DID1,   32, 
        DID2,   32, 
        DID3,   32, 
        DID4,   32, 
        DID5,   32, 
        KSV0,   32, 
        KSV1,   8, 
        Offset (0x67), 
        BLCS,   8, 
        BRTL,   8, 
        Offset (0x78), 
        TPMP,   8, 
        Offset (0x7A), 
        MORD,   8, 
        TCGP,   8, 
        PPRP,   32, 
        PPRQ,   8, 
        LPPR,   8, 
        GTF0,   56, 
        GTF2,   56, 
        IDEM,   8, 
        GTF1,   56, 
        BID,    8, 
        PLID,   8, 
        AOAC,   8, 
        SLDR,   32, 
        WAKR,   8, 
        Offset (0xAA), 
        ASLB,   32, 
        IBTT,   8, 
        IPAT,   8, 
        ITVF,   8, 
        ITVM,   8, 
        IPSC,   8, 
        IBLC,   8, 
        IBIA,   8, 
        ISSC,   8, 
        I409,   8, 
        I509,   8, 
        I609,   8, 
        I709,   8, 
        IPCF,   8, 
        IDMS,   8, 
        IF1E,   8, 
        HVCO,   8, 
        NXD1,   32, 
        NXD2,   32, 
        NXD3,   32, 
        NXD4,   32, 
        NXD5,   32, 
        NXD6,   32, 
        NXD7,   32, 
        NXD8,   32, 
        GSMI,   8, 
        PAVP,   8, 
        Offset (0xE1), 
        OSCC,   8, 
        NEXP,   8, 
        SDGV,   8, 
        SDDV,   8, 
        Offset (0xEB), 
        DSEN,   8, 
        ECON,   8, 
        Offset (0xEE), 
        CTYP,   8, 
        L01C,   8, 
        VFN0,   8, 
        VFN1,   8, 
        Offset (0x100), 
        NVGA,   32, 
        NVHA,   32, 
        AMDA,   32, 
        DID6,   32, 
        DID7,   32, 
        DID8,   32, 
        EBAS,   32, 
        CPSP,   32, 
        EECP,   32, 
        EVCP,   32, 
        XBAS,   32, 
        OBS1,   32, 
        OBS2,   32, 
        OBS3,   32, 
        OBS4,   32, 
        OBS5,   32, 
        OBS6,   32, 
        OBS7,   32, 
        OBS8,   32, 
        Offset (0x157), 
        ATMC,   8, 
        PTMC,   8, 
        ATRA,   8, 
        PTRA,   8, 
        PNHM,   32, 
        TBAB,   32, 
        TBAH,   32, 
        RTIP,   8, 
        TSOD,   8, 
        ATPC,   8, 
        PTPC,   8, 
        PFLV,   8, 
        BREV,   8, 
        HGMD,   8, 
        PWOK,   8, 
        HLRS,   8, 
        DSEL,   8, 
        ESEL,   8, 
        PSEL,   8, 
        PWEN,   8, 
        PRST,   8, 
        DPBM,   8, 
        DPCM,   8, 
        DPDM,   8, 
        ALFP,   8, 
        IMON,   8, 
        PDTS,   8, 
        PKGA,   8, 
        PAMT,   8, 
        AC0F,   8, 
        AC1F,   8, 
        Offset (0x1B2), 
        XHCM,   8, 
        XHPM,   8
    }

    Scope (_SB)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            If (CondRefOf (\_OSI, Local0))
            {
                If (_OSI ("Windows 2001"))
                {
                    Store (One, WNTF)
                    Store (One, WXPF)
                    Store (Zero, WSPV)
                }

                If (_OSI ("Windows 2001 SP1"))
                {
                    Store (One, WSPV)
                }

                If (_OSI ("Windows 2001 SP2"))
                {
                    Store (0x02, WSPV)
                }

                If (LOr (_OSI ("Darwin"), _OSI ("Windows 2006")))
                {
                    Store (One, WVIS)
                }

                If (LOr (_OSI ("Darwin"), _OSI ("Windows 2009")))
                {
                    Store (One, WIN7)
                    Store (One, ^GDCK.XHOS)
                }

                If (LOr (_OSI ("Darwin"), _OSI ("Windows 2012")))
                {
                    Store (One, WIN8)
                    Store (One, ^GDCK.XHOS)
                }

                If (_OSI ("Linux"))
                {
                    Store (One, LNUX)
                }

                If (_OSI ("FreeBSD"))
                {
                    Store (One, LNUX)
                }
            }
            ElseIf (LEqual (SCMP (_OS, "Microsoft Windows NT"), Zero))
            {
                Store (One, WNTF)
            }

            If (LGreaterEqual (_REV, 0x02))
            {
                Store (One, H8DR)
            }

            Store (One, OSIF)
            Store (^PCI0.LPC.EC.AC._PSR (), PWRS)
            ^PCI0.LPC.MOU.MHID ()
            If (LNUX)
            {
                ^PCI0.LPC.EC.SAUM (0x02)
                UCMS (0x1C)
            }

            Store (SRAH, ^PCI0.RID)
            If (VIGD)
            {
                Store (SRHE, ^PCI0.IGPU.RID)
            }
            Else
            {
                Store (SRHE, ^PCI0.PEG.RID)
            }

            Store (SRE1, ^PCI0.EXP1.RID)
            Store (SRE2, ^PCI0.EXP2.RID)
            Store (SRE3, ^PCI0.EXP3.RID)
            Store (SRU7, ^PCI0.EHC1.RID)
            Store (SRU8, ^PCI0.EHC2.RID)
            Store (SRLP, ^PCI0.LPC.RID)
            Store (SRSA, ^PCI0.SAT1.RID)
            Store (SRSM, ^PCI0.SMBU.RID)
            If (VDSP)
            {
                Store (VHYB (0x05, Zero), Local1)
                If (And (Local1, 0x80))
                {
                    If (WIN7)
                    {
                        If (LNotEqual (And (Local1, 0x03), 0x03))
                        {
                            VHYB (0x06, 0x03)
                        }
                    }
                    ElseIf (LEqual (And (Local1, 0x03), 0x03))
                    {
                        VHYB (0x06, 0x02)
                    }
                }
            }

            UCMS (0x1D)
        }

        Device (LNKA)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LNot (VPIR (^^PCI0.LPC.PIRA)))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Or (^^PCI0.LPC.PIRA, 0x80, ^^PCI0.LPC.PIRA)
            }

            Name (BUFA, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, )
                    {}
            })
            CreateWordField (BUFA, One, IRA1)
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                And (^^PCI0.LPC.PIRA, 0x8F, Local0)
                If (VPIR (Local0))
                {
                    ShiftLeft (One, Local0, IRA1)
                }
                Else
                {
                    Store (Zero, IRA1)
                }

                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA2)
                FindSetRightBit (IRA2, Local0)
                And (^^PCI0.LPC.PIRA, 0x70, Local1)
                Or (Local1, Decrement (Local0), Local1)
                Store (Local1, ^^PCI0.LPC.PIRA)
            }
        }

        Device (LNKB)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LNot (VPIR (^^PCI0.LPC.PIRB)))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Or (^^PCI0.LPC.PIRB, 0x80, ^^PCI0.LPC.PIRB)
            }

            Name (BUFB, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, )
                    {}
            })
            CreateWordField (BUFB, One, IRB1)
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                And (^^PCI0.LPC.PIRB, 0x8F, Local0)
                If (VPIR (Local0))
                {
                    ShiftLeft (One, Local0, IRB1)
                }
                Else
                {
                    Store (Zero, IRB1)
                }

                Return (BUFB)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRB2)
                FindSetRightBit (IRB2, Local0)
                And (^^PCI0.LPC.PIRB, 0x70, Local1)
                Or (Local1, Decrement (Local0), Local1)
                Store (Local1, ^^PCI0.LPC.PIRB)
            }
        }

        Device (LNKC)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LNot (VPIR (^^PCI0.LPC.PIRC)))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Or (^^PCI0.LPC.PIRC, 0x80, ^^PCI0.LPC.PIRC)
            }

            Name (BUFC, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, )
                    {}
            })
            CreateWordField (BUFC, One, IRC1)
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                And (^^PCI0.LPC.PIRC, 0x8F, Local0)
                If (VPIR (Local0))
                {
                    ShiftLeft (One, Local0, IRC1)
                }
                Else
                {
                    Store (Zero, IRC1)
                }

                Return (BUFC)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRC2)
                FindSetRightBit (IRC2, Local0)
                And (^^PCI0.LPC.PIRC, 0x70, Local1)
                Or (Local1, Decrement (Local0), Local1)
                Store (Local1, ^^PCI0.LPC.PIRC)
            }
        }

        Device (LNKD)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LNot (VPIR (^^PCI0.LPC.PIRD)))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Or (^^PCI0.LPC.PIRD, 0x80, ^^PCI0.LPC.PIRD)
            }

            Name (BUFD, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, )
                    {}
            })
            CreateWordField (BUFD, One, IRD1)
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                And (^^PCI0.LPC.PIRD, 0x8F, Local0)
                If (VPIR (Local0))
                {
                    ShiftLeft (One, Local0, IRD1)
                }
                Else
                {
                    Store (Zero, IRD1)
                }

                Return (BUFD)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRD2)
                FindSetRightBit (IRD2, Local0)
                And (^^PCI0.LPC.PIRD, 0x70, Local1)
                Or (Local1, Decrement (Local0), Local1)
                Store (Local1, ^^PCI0.LPC.PIRD)
            }
        }

        Device (LNKE)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x05)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LNot (VPIR (^^PCI0.LPC.PIRE)))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Or (^^PCI0.LPC.PIRE, 0x80, ^^PCI0.LPC.PIRE)
            }

            Name (BUFE, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, )
                    {}
            })
            CreateWordField (BUFE, One, IRE1)
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                And (^^PCI0.LPC.PIRE, 0x8F, Local0)
                If (VPIR (Local0))
                {
                    ShiftLeft (One, Local0, IRE1)
                }
                Else
                {
                    Store (Zero, IRE1)
                }

                Return (BUFE)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRE2)
                FindSetRightBit (IRE2, Local0)
                And (^^PCI0.LPC.PIRE, 0x70, Local1)
                Or (Local1, Decrement (Local0), Local1)
                Store (Local1, ^^PCI0.LPC.PIRE)
            }
        }

        Device (LNKF)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x06)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LNot (VPIR (^^PCI0.LPC.PIRF)))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Or (^^PCI0.LPC.PIRF, 0x80, ^^PCI0.LPC.PIRF)
            }

            Name (BUFF, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, )
                    {}
            })
            CreateWordField (BUFF, One, IRF1)
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                And (^^PCI0.LPC.PIRF, 0x8F, Local0)
                If (VPIR (Local0))
                {
                    ShiftLeft (One, Local0, IRF1)
                }
                Else
                {
                    Store (Zero, IRF1)
                }

                Return (BUFF)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRF2)
                FindSetRightBit (IRF2, Local0)
                And (^^PCI0.LPC.PIRF, 0x70, Local1)
                Or (Local1, Decrement (Local0), Local1)
                Store (Local1, ^^PCI0.LPC.PIRF)
            }
        }

        Device (LNKG)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x07)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LNot (VPIR (^^PCI0.LPC.PIRG)))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Or (^^PCI0.LPC.PIRG, 0x80, ^^PCI0.LPC.PIRG)
            }

            Name (BUFG, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, )
                    {}
            })
            CreateWordField (BUFG, One, IRG1)
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                And (^^PCI0.LPC.PIRG, 0x8F, Local0)
                If (VPIR (Local0))
                {
                    ShiftLeft (One, Local0, IRG1)
                }
                Else
                {
                    Store (Zero, IRG1)
                }

                Return (BUFG)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRG2)
                FindSetRightBit (IRG2, Local0)
                And (^^PCI0.LPC.PIRG, 0x70, Local1)
                Or (Local1, Decrement (Local0), Local1)
                Store (Local1, ^^PCI0.LPC.PIRG)
            }
        }

        Device (LNKH)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x08)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LNot (VPIR (^^PCI0.LPC.PIRH)))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Or (^^PCI0.LPC.PIRH, 0x80, ^^PCI0.LPC.PIRH)
            }

            Name (BUFH, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, )
                    {}
            })
            CreateWordField (BUFH, One, IRH1)
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                And (^^PCI0.LPC.PIRH, 0x8F, Local0)
                If (VPIR (Local0))
                {
                    ShiftLeft (One, Local0, IRH1)
                }
                Else
                {
                    Store (Zero, IRH1)
                }

                Return (BUFH)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRH2)
                FindSetRightBit (IRH2, Local0)
                And (^^PCI0.LPC.PIRH, 0x70, Local1)
                Or (Local1, Decrement (Local0), Local1)
                Store (Local1, ^^PCI0.LPC.PIRH)
            }
        }

        Method (VPIR, 1, NotSerialized)
        {
            Store (One, Local0)
            If (And (Arg0, 0x80))
            {
                Store (Zero, Local0)
            }
            Else
            {
                And (Arg0, 0x0F, Local1)
                If (LLess (Local1, 0x03))
                {
                    Store (Zero, Local0)
                }
                ElseIf (LOr (LEqual (Local1, 0x08), LEqual (Local1, 0x0D)))
                {
                    Store (Zero, Local0)
                }
            }

            Return (Local0)
        }

        Device (MEM)
        {
            Name (_HID, EisaId ("PNP0C01"))  // _HID: Hardware ID
            Name (MEMS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x000A0000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0x000C0000,         // Address Base
                    0x00000000,         // Address Length
                    _Y00)
                Memory32Fixed (ReadOnly,
                    0x000C4000,         // Address Base
                    0x00000000,         // Address Length
                    _Y01)
                Memory32Fixed (ReadOnly,
                    0x000C8000,         // Address Base
                    0x00000000,         // Address Length
                    _Y02)
                Memory32Fixed (ReadOnly,
                    0x000CC000,         // Address Base
                    0x00000000,         // Address Length
                    _Y03)
                Memory32Fixed (ReadOnly,
                    0x000D0000,         // Address Base
                    0x00000000,         // Address Length
                    _Y04)
                Memory32Fixed (ReadOnly,
                    0x000D4000,         // Address Base
                    0x00000000,         // Address Length
                    _Y05)
                Memory32Fixed (ReadOnly,
                    0x000D8000,         // Address Base
                    0x00000000,         // Address Length
                    _Y06)
                Memory32Fixed (ReadOnly,
                    0x000DC000,         // Address Base
                    0x00000000,         // Address Length
                    _Y07)
                Memory32Fixed (ReadOnly,
                    0x000E0000,         // Address Base
                    0x00000000,         // Address Length
                    _Y08)
                Memory32Fixed (ReadOnly,
                    0x000E4000,         // Address Base
                    0x00000000,         // Address Length
                    _Y09)
                Memory32Fixed (ReadOnly,
                    0x000E8000,         // Address Base
                    0x00000000,         // Address Length
                    _Y0A)
                Memory32Fixed (ReadOnly,
                    0x000EC000,         // Address Base
                    0x00000000,         // Address Length
                    _Y0B)
                Memory32Fixed (ReadOnly,
                    0x000F0000,         // Address Base
                    0x00010000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0x00100000,         // Address Base
                    0x01EE0000,         // Address Length
                    _Y0C)
                Memory32Fixed (ReadOnly,
                    0xFEC00000,         // Address Base
                    0x00140000,         // Address Length
                    _Y0D)
                Memory32Fixed (ReadOnly,
                    0xFED4C000,         // Address Base
                    0x012B4000,         // Address Length
                    _Y0E)
            })
            CreateDWordField (MEMS, \_SB.MEM._Y00._LEN, MC0L)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y01._LEN, MC4L)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y02._LEN, MC8L)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y03._LEN, MCCL)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y04._LEN, MD0L)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y05._LEN, MD4L)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y06._LEN, MD8L)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y07._LEN, MDCL)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y08._LEN, ME0L)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y09._LEN, ME4L)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y0A._LEN, ME8L)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y0B._LEN, MECL)  // _LEN: Length
            CreateBitField (MEMS, \_SB.MEM._Y00._RW, MC0W)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y01._RW, MC4W)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y02._RW, MC8W)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y03._RW, MCCW)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y04._RW, MD0W)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y05._RW, MD4W)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y06._RW, MD8W)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y07._RW, MDCW)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y08._RW, ME0W)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y09._RW, ME4W)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y0A._RW, ME8W)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y0B._RW, MECW)  // _RW_: Read-Write Status
            CreateDWordField (MEMS, \_SB.MEM._Y0C._BAS, MEB1)  // _BAS: Base Address
            CreateDWordField (MEMS, \_SB.MEM._Y0C._LEN, MEL1)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y0D._LEN, MEL2)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y0E._LEN, MEL3)  // _LEN: Length
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                And (^^PCI0.PAM1, 0x03, Local0)
                If (Local0)
                {
                    Store (0x4000, MC0L)
                    If (And (Local0, 0x02))
                    {
                        Store (One, MC0W)
                    }
                }

                And (^^PCI0.PAM1, 0x30, Local0)
                If (Local0)
                {
                    Store (0x4000, MC4L)
                    If (And (Local0, 0x20))
                    {
                        Store (One, MC4W)
                    }
                }

                And (^^PCI0.PAM2, 0x03, Local0)
                If (Local0)
                {
                    Store (0x4000, MC8L)
                    If (And (Local0, 0x02))
                    {
                        Store (One, MC8W)
                    }
                }

                And (^^PCI0.PAM2, 0x30, Local0)
                If (Local0)
                {
                    Store (0x4000, MCCL)
                    If (And (Local0, 0x20))
                    {
                        Store (One, MCCW)
                    }
                }

                And (^^PCI0.PAM3, 0x03, Local0)
                If (Local0)
                {
                    Store (0x4000, MD0L)
                    If (And (Local0, 0x02))
                    {
                        Store (One, MD0W)
                    }
                }

                And (^^PCI0.PAM3, 0x30, Local0)
                If (Local0)
                {
                    Store (0x4000, MD4L)
                    If (And (Local0, 0x20))
                    {
                        Store (One, MD4W)
                    }
                }

                And (^^PCI0.PAM4, 0x03, Local0)
                If (Local0)
                {
                    Store (0x4000, MD8L)
                    If (And (Local0, 0x02))
                    {
                        Store (One, MD8W)
                    }
                }

                And (^^PCI0.PAM4, 0x30, Local0)
                If (Local0)
                {
                    Store (0x4000, MDCL)
                    If (And (Local0, 0x20))
                    {
                        Store (One, MDCW)
                    }
                }

                And (^^PCI0.PAM5, 0x03, Local0)
                If (Local0)
                {
                    Store (0x4000, ME0L)
                    If (And (Local0, 0x02))
                    {
                        Store (One, ME0W)
                    }
                }

                And (^^PCI0.PAM5, 0x30, Local0)
                If (Local0)
                {
                    Store (0x4000, ME4L)
                    If (And (Local0, 0x20))
                    {
                        Store (One, ME4W)
                    }
                }

                And (^^PCI0.PAM6, 0x03, Local0)
                If (Local0)
                {
                    Store (0x4000, ME8L)
                    If (And (Local0, 0x02))
                    {
                        Store (One, ME8W)
                    }
                }

                And (^^PCI0.PAM6, 0x30, Local0)
                If (Local0)
                {
                    Store (0x4000, MECL)
                    If (And (Local0, 0x20))
                    {
                        Store (One, MECW)
                    }
                }

                Subtract (MEMX, MEB1, MEL1)
                If (LNotEqual (^^PCI0.LPC.TPM._STA (), 0x0F))
                {
                    Store (0x01400000, MEL2)
                    Store (Zero, MEL3)
                }

                Return (MEMS)
            }
        }

        Device (LID)
        {
            Name (_HID, EisaId ("PNP0C0D"))  // _HID: Hardware ID
            Method (_LID, 0, NotSerialized)  // _LID: Lid Status
            {
                If (LAnd (LEqual (ILNF, Zero), LEqual (PLUX, Zero)))
                {
                    If (H8DR)
                    {
                        Return (^^PCI0.LPC.EC.HPLD)
                    }
                    ElseIf (And (RBEC (0x46), 0x04))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
                Else
                {
                    Return (One)
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                If (LWCP)
                {
                    Return (Package (0x02)
                    {
                        0x1D, 
                        0x04
                    })
                }
                Else
                {
                    Return (Package (0x02)
                    {
                        0x1D, 
                        0x03
                    })
                }
            }

            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                If (H8DR)
                {
                    If (Arg0)
                    {
                        Store (One, ^^PCI0.LPC.EC.HWLO)
                    }
                    Else
                    {
                        Store (Zero, ^^PCI0.LPC.EC.HWLO)
                    }
                }
                ElseIf (Arg0)
                {
                    MBEC (0x32, 0xFF, 0x04)
                }
                Else
                {
                    MBEC (0x32, 0xFB, Zero)
                }

                If (LWCP)
                {
                    If (Arg0)
                    {
                        Store (One, LWEN)
                    }
                    Else
                    {
                        Store (Zero, LWEN)
                    }
                }
            }
        }

        Device (SLPB)
        {
            Name (_HID, EisaId ("PNP0C0E"))  // _HID: Hardware ID
            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (Package (0x02)
                {
                    0x1D, 
                    0x03
                })
            }

            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                If (H8DR)
                {
                    If (Arg0)
                    {
                        Store (One, ^^PCI0.LPC.EC.HWFN)
                    }
                    Else
                    {
                        Store (Zero, ^^PCI0.LPC.EC.HWFN)
                    }
                }
                ElseIf (Arg0)
                {
                    MBEC (0x32, 0xFF, 0x10)
                }
                Else
                {
                    MBEC (0x32, 0xEF, Zero)
                }
            }
        }

        Scope (\)
        {
            Name (UPC0, Package (0x04)
            {
                0xFF, 
                Zero, 
                Zero, 
                Zero
            })
            Name (PLD0, Buffer (0x10)
            {
                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0008 */  0x91, 0x12, 0x80, 0x00, 0x03, 0x00, 0x00, 0x00 
            })
            Name (UPC1, Package (0x04)
            {
                0xFF, 
                Zero, 
                Zero, 
                Zero
            })
            Name (PLD1, Buffer (0x10)
            {
                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0008 */  0x91, 0x12, 0x00, 0x01, 0x03, 0x00, 0x00, 0x00 
            })
            Name (UPC2, Package (0x04)
            {
                0xFF, 
                0xFF, 
                Zero, 
                Zero
            })
            Name (PLD2, Buffer (0x10)
            {
                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0008 */  0x33, 0x1C, 0x80, 0x01, 0x03, 0x00, 0x00, 0x00 
            })
            Name (UPC3, Package (0x04)
            {
                0xFF, 
                0x02, 
                Zero, 
                Zero
            })
            Name (PLD3, Buffer (0x10)
            {
                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0008 */  0x48, 0x1D, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00 
            })
            Name (UPC4, Package (0x04)
            {
                0xFF, 
                Zero, 
                Zero, 
                Zero
            })
            Name (PLD4, Buffer (0x10)
            {
                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0008 */  0x69, 0x0C, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00 
            })
            Name (UPC5, Package (0x04)
            {
                0xFF, 
                0x02, 
                Zero, 
                Zero
            })
            Name (PLD5, Buffer (0x10)
            {
                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0008 */  0x19, 0x12, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00 
            })
            Name (UPC6, Package (0x04)
            {
                Zero, 
                0xFF, 
                Zero, 
                Zero
            })
            Name (PLD6, Buffer (0x10)
            {
                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0008 */  0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
            })
            Name (UPC7, Package (0x04)
            {
                0xFF, 
                0xFF, 
                Zero, 
                Zero
            })
            Name (PLD7, Buffer (0x10)
            {
                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0008 */  0x33, 0x1C, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00 
            })
            Name (UPC9, Package (0x04)
            {
                0xFF, 
                Zero, 
                Zero, 
                Zero
            })
            Name (PLD9, Buffer (0x10)
            {
                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0008 */  0x59, 0x12, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00 
            })
            Name (UPCI, Package (0x04)
            {
                0xFF, 
                0xFF, 
                Zero, 
                Zero
            })
            Name (PLDI, Buffer (0x10)
            {
                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0008 */  0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
            })
            Name (PLDC, Buffer (0x14)
            {
                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0008 */  0x24, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0010 */  0xC2, 0x00, 0x8A, 0x00                         
            })
        }

        Device (PCI0)
        {
            Name (_BBN, Zero)  // _BBN: BIOS Bus Number
            Name (_ADR, Zero)  // _ADR: Address
            Name (RID, Zero)
            Name (_S3D, 0x02)  // _S3D: S3 Device State
            Name (LRRT, Package (0x16)
            {
                Package (0x04)
                {
                    0x0001FFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    One, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x02, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x03, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0019FFFF, 
                    Zero, 
                    LNKE, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001BFFFF, 
                    Zero, 
                    LNKG, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    One, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x02, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x03, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    Zero, 
                    LNKH, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    One, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x02, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x03, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    Zero, 
                    LNKF, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    One, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x02, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x03, 
                    LNKA, 
                    Zero
                }
            })
            Name (ARRT, Package (0x16)
            {
                Package (0x04)
                {
                    0x0001FFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    One, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x03, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x0019FFFF, 
                    Zero, 
                    Zero, 
                    0x14
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x001BFFFF, 
                    Zero, 
                    Zero, 
                    0x16
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    One, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x03, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    Zero, 
                    Zero, 
                    0x17
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    One, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x02, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x03, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    Zero, 
                    Zero, 
                    0x15
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    One, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x03, 
                    Zero, 
                    0x10
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (GPIC)
                {
                    Return (ARRT)
                }
                Else
                {
                    Return (LRRT)
                }
            }

            Name (_HID, EisaId ("PNP0A08"))  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03"))  // _CID: Compatible ID
            OperationRegion (MHCS, PCI_Config, 0x40, 0xC0)
            Field (MHCS, DWordAcc, NoLock, Preserve)
            {
                Offset (0x40), 
                PAM0,   8, 
                PAM1,   8, 
                PAM2,   8, 
                PAM3,   8, 
                PAM4,   8, 
                PAM5,   8, 
                PAM6,   8, 
                Offset (0x7C), 
                    ,   20, 
                TLUD,   12
            }

            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0100,             // Length
                    ,, _Y1D)
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x0CF7,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0CF8,             // Length
                    ,, , TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0D00,             // Range Minimum
                    0xFFFF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0xF300,             // Length
                    ,, , TypeStatic, DenseTranslation)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000A0000,         // Range Minimum
                    0x000BFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000C3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y0F, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C4000,         // Range Minimum
                    0x000C7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y10, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C8000,         // Range Minimum
                    0x000CBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y11, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000CC000,         // Range Minimum
                    0x000CFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y12, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D0000,         // Range Minimum
                    0x000D3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y13, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D4000,         // Range Minimum
                    0x000D7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y14, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D8000,         // Range Minimum
                    0x000DBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y15, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000DC000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y16, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E0000,         // Range Minimum
                    0x000E3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y17, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E4000,         // Range Minimum
                    0x000E7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y18, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E8000,         // Range Minimum
                    0x000EBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y19, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000EC000,         // Range Minimum
                    0x000EFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y1A, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00100000,         // Range Minimum
                    0xFEBFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0xFEB00000,         // Length
                    ,, _Y1B, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0xFED40000,         // Range Minimum
                    0xFED4BFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x0000C000,         // Length
                    ,, _Y1C, AddressRangeMemory, TypeStatic)
            })
            CreateDWordField (_CRS, \_SB.PCI0._Y0F._LEN, C0LN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y10._LEN, C4LN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y11._LEN, C8LN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y12._LEN, CCLN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y13._LEN, D0LN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y14._LEN, D4LN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y15._LEN, D8LN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y16._LEN, DCLN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y17._LEN, E0LN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y18._LEN, E4LN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y19._LEN, E8LN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y1A._LEN, ECLN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y1B._MIN, XXMN)  // _MIN: Minimum Base Address
            CreateDWordField (_CRS, \_SB.PCI0._Y1B._MAX, XXMX)  // _MAX: Maximum Base Address
            CreateDWordField (_CRS, \_SB.PCI0._Y1B._LEN, XXLN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y1C._MIN, F4MN)  // _MIN: Minimum Base Address
            CreateDWordField (_CRS, \_SB.PCI0._Y1C._MAX, F4MX)  // _MAX: Maximum Base Address
            CreateDWordField (_CRS, \_SB.PCI0._Y1C._LEN, F4LN)  // _LEN: Length
            CreateWordField (_CRS, \_SB.PCI0._Y1D._MAX, B0MX)  // _MAX: Maximum Base Address
            CreateWordField (_CRS, \_SB.PCI0._Y1D._LEN, B0LN)  // _LEN: Length
            Method (_INI, 0, Serialized)  // _INI: Initialize
            {
                Store (0x3F, B0MX)
                Store (0x40, B0LN)
                If (LNot (OSIF))
                {
                    ^^_INI ()
                }

                ShiftLeft (TLUD, 0x14, Local0)
                Store (Local0, MEMX)
                Store (Local0, XXMN)
                Add (Subtract (XXMX, XXMN), One, XXLN)
                If (LEqual (TPMP, Zero))
                {
                    Store (Zero, F4LN)
                }

                If (And (PAM1, 0x03))
                {
                    Store (Zero, C0LN)
                }

                If (And (PAM1, 0x30))
                {
                    Store (Zero, C4LN)
                }

                If (And (PAM2, 0x03))
                {
                    Store (Zero, C8LN)
                }

                If (And (PAM2, 0x30))
                {
                    Store (Zero, CCLN)
                }

                If (And (PAM3, 0x03))
                {
                    Store (Zero, D0LN)
                }

                If (And (PAM3, 0x30))
                {
                    Store (Zero, D4LN)
                }

                If (And (PAM4, 0x03))
                {
                    Store (Zero, D8LN)
                }

                If (And (PAM4, 0x30))
                {
                    Store (Zero, DCLN)
                }

                If (And (PAM5, 0x03))
                {
                    Store (Zero, E0LN)
                }

                If (And (PAM5, 0x30))
                {
                    Store (Zero, E4LN)
                }

                If (And (PAM6, 0x03))
                {
                    Store (Zero, E8LN)
                }

                If (And (PAM6, 0x30))
                {
                    Store (Zero, ECLN)
                }
            }

            Name (SUPP, Zero)
            Name (CTRL, Zero)
            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                CreateDWordField (Arg3, Zero, CDW1)
                CreateDWordField (Arg3, 0x04, CDW2)
                CreateDWordField (Arg3, 0x08, CDW3)
                If (^XHCI.CUID (Arg0))
                {
                    Return (^XHCI.POSC (Arg1, Arg2, Arg3))
                }

                If (LEqual (Arg0, ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */))
                {
                    Store (CDW2, SUPP)
                    Store (CDW3, CTRL)
                    And (CTRL, 0x0D, CTRL)
                    If (LNot (And (CDW1, One)))
                    {
                        If (And (CTRL, One))
                        {
                            If (LNot (VIGD))
                            {
                                Store (Zero, ^PEG.HPGP)
                                Store (Zero, ^PEG.GMGP)
                            }

                            Store (Zero, ^EXP1.HPCE)
                            Store (One, ^EXP1.HPCS)
                            Store (One, ^EXP1.PDC)
                            Store (Zero, ^EXP3.HPCE)
                            Store (One, ^EXP3.HPCS)
                            Store (One, ^EXP3.PDC)
                            Store (One, NHPS)
                        }

                        If (And (CTRL, 0x04))
                        {
                            If (LNot (VIGD))
                            {
                                Store (Zero, ^PEG.PMGP)
                                Store (Zero, ^PEG.GMGP)
                            }

                            If (^EXP1.PMCE)
                            {
                                Store (Zero, ^EXP1.PMCE)
                                Store (One, ^EXP1.PMCS)
                            }

                            If (^EXP2.PMCE)
                            {
                                Store (Zero, ^EXP2.PMCE)
                                Store (One, ^EXP2.PMCS)
                            }

                            If (^EXP3.PMCE)
                            {
                                Store (Zero, ^EXP3.PMCE)
                                Store (One, ^EXP3.PMCS)
                            }

                            Store (Zero, ^LPC.EXPE)
                            Store (One, NPME)
                        }
                    }

                    If (LNotEqual (Arg1, One))
                    {
                        Or (CDW1, 0x0A, CDW1)
                    }

                    If (LNotEqual (CDW3, CTRL))
                    {
                        Or (CDW1, 0x10, CDW1)
                    }

                    Store (CTRL, CDW3)
                }
                Else
                {
                    Or (CDW1, 0x06, CDW1)
                }

                Return (Arg3)
            }

            Mutex (MDGS, 0x00)
            Name (VDEE, One)
            Name (VDDA, Buffer (0x02) {})
            CreateBitField (VDDA, Zero, VUPC)
            CreateBitField (VDDA, One, VQDL)
            CreateBitField (VDDA, 0x02, VQDC)
            CreateBitField (VDDA, 0x03, VQD0)
            CreateBitField (VDDA, 0x04, VQD1)
            CreateBitField (VDDA, 0x05, VQD2)
            CreateBitField (VDDA, 0x06, VSDL)
            CreateBitField (VDDA, 0x07, VSDC)
            CreateBitField (VDDA, 0x08, VSD0)
            CreateBitField (VDDA, 0x09, VSD1)
            CreateBitField (VDDA, 0x0A, VSD2)
            CreateBitField (VDDA, 0x0B, VSD3)
            CreateBitField (VDDA, 0x0C, VSD4)
            CreateBitField (VDDA, 0x0D, VSD5)
            CreateBitField (VDDA, 0x0E, MSWT)
            Device (IGPU)
            {
                Name (_ADR, 0x00020000)  // _ADR: Address
                Name (RID, Zero)
                OperationRegion (VPCG, PCI_Config, Zero, 0x0100)
                Field (VPCG, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xD4), 
                    VPWR,   8
                }

                Name (MIDL, 0x0400)
                Name (MIDC, 0x0100)
                Name (MID0, 0x0300)
                Name (MID1, 0x0301)
                Name (MID2, 0x0302)
                Name (MID3, 0x0303)
                Name (MID4, 0x0304)
                Name (MID5, 0x0305)
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    Store (^^^LID._LID (), CLID)
                }

                Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                {
                    Noop
                }

                Method (_PS1, 0, NotSerialized)  // _PS1: Power State 1
                {
                    Noop
                }

                Method (_PS2, 0, NotSerialized)  // _PS2: Power State 2
                {
                    Noop
                }

                Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                {
                    Noop
                }

                Method (VSWT, 0, NotSerialized)
                {
                    GHDS (Zero)
                }

                Method (VLOC, 1, NotSerialized)
                {
                    If (LEqual (Arg0, ^^^LID._LID ()))
                    {
                        VSLD (Arg0)
                        If (LEqual (VPWR, Zero))
                        {
                            Store (Arg0, CLID)
                            GNOT (0x02, Zero)
                        }
                    }
                }

                Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
                {
                    And (Arg0, 0x03, Arg0)
                    If (LEqual (Arg0, 0x02))
                    {
                        Store (0x14, Local0)
                        While (Local0)
                        {
                            Decrement (Local0)
                            Acquire (MDGS, 0xFFFF)
                            If (LEqual (Zero, MSWT))
                            {
                                Store (One, MSWT)
                                Store (Zero, Local0)
                                Store (Arg0, VDEE)
                            }

                            Release (MDGS)
                            Sleep (0xC8)
                        }
                    }
                    Else
                    {
                        Acquire (MDGS, 0xFFFF)
                        If (LEqual (VDEE, 0x02))
                        {
                            Store (Zero, MSWT)
                        }

                        If (LGreater (Arg0, 0x02))
                        {
                            Store (One, VDEE)
                        }
                        Else
                        {
                            Store (Arg0, VDEE)
                        }

                        Release (MDGS)
                    }
                }

                Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
                {
                    Store (Zero, NDID)
                    If (LNotEqual (DIDL, Zero))
                    {
                        Increment (NDID)
                    }

                    If (LNotEqual (DDL2, Zero))
                    {
                        Increment (NDID)
                    }

                    If (LNotEqual (DDL3, Zero))
                    {
                        Increment (NDID)
                    }

                    If (LNotEqual (DDL4, Zero))
                    {
                        Increment (NDID)
                    }

                    If (LNotEqual (DDL5, Zero))
                    {
                        Increment (NDID)
                    }

                    If (LNotEqual (DDL6, Zero))
                    {
                        Increment (NDID)
                    }

                    If (LNotEqual (DDL7, Zero))
                    {
                        Increment (NDID)
                    }

                    If (LNotEqual (DDL8, Zero))
                    {
                        Increment (NDID)
                    }

                    If (LEqual (NDID, One))
                    {
                        Name (TMP1, Package (0x01)
                        {
                            Ones
                        })
                        Store (Or (0x80010000, And (0x0F0F, DIDL)), Index (TMP1, Zero))
                        Return (TMP1)
                    }

                    If (LEqual (NDID, 0x02))
                    {
                        Name (TMP2, Package (0x02)
                        {
                            Ones, 
                            Ones
                        })
                        Store (Or (0x80010000, And (0x0F0F, DIDL)), Index (TMP2, Zero))
                        Store (Or (0x80010000, And (0x0F0F, DDL2)), Index (TMP2, One))
                        Return (TMP2)
                    }

                    If (LEqual (NDID, 0x03))
                    {
                        Name (TMP3, Package (0x03)
                        {
                            Ones, 
                            Ones, 
                            Ones
                        })
                        Store (Or (0x80010000, And (0x0F0F, DIDL)), Index (TMP3, Zero))
                        Store (Or (0x80010000, And (0x0F0F, DDL2)), Index (TMP3, One))
                        Store (Or (0x80010000, And (0x0F0F, DDL3)), Index (TMP3, 0x02))
                        Return (TMP3)
                    }

                    If (LEqual (NDID, 0x04))
                    {
                        Name (TMP4, Package (0x04)
                        {
                            Ones, 
                            Ones, 
                            Ones, 
                            Ones
                        })
                        Store (Or (0x80010000, And (0x0F0F, DIDL)), Index (TMP4, Zero))
                        Store (Or (0x80010000, And (0x0F0F, DDL2)), Index (TMP4, One))
                        Store (Or (0x80010000, And (0x0F0F, DDL3)), Index (TMP4, 0x02))
                        Store (Or (0x80010000, And (0x0F0F, DDL4)), Index (TMP4, 0x03))
                        Return (TMP4)
                    }

                    If (LEqual (NDID, 0x05))
                    {
                        Name (TMP5, Package (0x05)
                        {
                            Ones, 
                            Ones, 
                            Ones, 
                            Ones, 
                            Ones
                        })
                        Store (Or (0x80010000, And (0x0F0F, DIDL)), Index (TMP5, Zero))
                        Store (Or (0x80010000, And (0x0F0F, DDL2)), Index (TMP5, One))
                        Store (Or (0x80010000, And (0x0F0F, DDL3)), Index (TMP5, 0x02))
                        Store (Or (0x80010000, And (0x0F0F, DDL4)), Index (TMP5, 0x03))
                        Store (Or (0x80010000, And (0x0F0F, DDL5)), Index (TMP5, 0x04))
                        Return (TMP5)
                    }

                    If (LEqual (NDID, 0x06))
                    {
                        Name (TMP6, Package (0x06)
                        {
                            Ones, 
                            Ones, 
                            Ones, 
                            Ones, 
                            Ones, 
                            Ones
                        })
                        Store (Or (0x80010000, And (0x0F0F, DIDL)), Index (TMP6, Zero))
                        Store (Or (0x80010000, And (0x0F0F, DDL2)), Index (TMP6, One))
                        Store (Or (0x80010000, And (0x0F0F, DDL3)), Index (TMP6, 0x02))
                        Store (Or (0x80010000, And (0x0F0F, DDL4)), Index (TMP6, 0x03))
                        Store (Or (0x80010000, And (0x0F0F, DDL5)), Index (TMP6, 0x04))
                        Store (Or (0x80010000, And (0x0F0F, DDL6)), Index (TMP6, 0x05))
                        Return (TMP6)
                    }

                    If (LEqual (NDID, 0x07))
                    {
                        Name (TMP7, Package (0x07)
                        {
                            Ones, 
                            Ones, 
                            Ones, 
                            Ones, 
                            Ones, 
                            Ones, 
                            Ones
                        })
                        Store (Or (0x80010000, And (0x0F0F, DIDL)), Index (TMP7, Zero))
                        Store (Or (0x80010000, And (0x0F0F, DDL2)), Index (TMP7, One))
                        Store (Or (0x80010000, And (0x0F0F, DDL3)), Index (TMP7, 0x02))
                        Store (Or (0x80010000, And (0x0F0F, DDL4)), Index (TMP7, 0x03))
                        Store (Or (0x80010000, And (0x0F0F, DDL5)), Index (TMP7, 0x04))
                        Store (Or (0x80010000, And (0x0F0F, DDL6)), Index (TMP7, 0x05))
                        Store (Or (0x80010000, And (0x0F0F, DDL7)), Index (TMP7, 0x06))
                        Return (TMP7)
                    }

                    If (LGreater (NDID, 0x07))
                    {
                        Name (TMP8, Package (0x08)
                        {
                            Ones, 
                            Ones, 
                            Ones, 
                            Ones, 
                            Ones, 
                            Ones, 
                            Ones, 
                            Ones
                        })
                        Store (Or (0x80010000, And (0x0F0F, DIDL)), Index (TMP8, Zero))
                        Store (Or (0x80010000, And (0x0F0F, DDL2)), Index (TMP8, One))
                        Store (Or (0x80010000, And (0x0F0F, DDL3)), Index (TMP8, 0x02))
                        Store (Or (0x80010000, And (0x0F0F, DDL4)), Index (TMP8, 0x03))
                        Store (Or (0x80010000, And (0x0F0F, DDL5)), Index (TMP8, 0x04))
                        Store (Or (0x80010000, And (0x0F0F, DDL6)), Index (TMP8, 0x05))
                        Store (Or (0x80010000, And (0x0F0F, DDL7)), Index (TMP8, 0x06))
                        Store (Or (0x80010000, And (0x0F0F, DDL8)), Index (TMP8, 0x07))
                        Return (TMP8)
                    }

                    Return (Package (0x01)
                    {
                        0x0400
                    })
                }

                Method (VDSW, 1, NotSerialized)
                {
                    If (LEqual (VPWR, Zero))
                    {
                        GDCK (Arg0)
                    }
                }

                Method (VCAD, 1, NotSerialized)
                {
                    Store (Zero, Local0)
                    If (LEqual (And (DIDL, 0x0F0F), Arg0))
                    {
                        Store (0x0D, Local0)
                    }
                    ElseIf (LEqual (And (DDL2, 0x0F0F), Arg0))
                    {
                        Store (0x0D, Local0)
                    }
                    ElseIf (LEqual (And (DDL3, 0x0F0F), Arg0))
                    {
                        Store (0x0D, Local0)
                    }
                    ElseIf (LEqual (And (DDL4, 0x0F0F), Arg0))
                    {
                        Store (0x0D, Local0)
                    }
                    ElseIf (LEqual (And (DDL5, 0x0F0F), Arg0))
                    {
                        Store (0x0D, Local0)
                    }
                    ElseIf (LEqual (And (DDL6, 0x0F0F), Arg0))
                    {
                        Store (0x0D, Local0)
                    }
                    ElseIf (LEqual (And (DDL7, 0x0F0F), Arg0))
                    {
                        Store (0x0D, Local0)
                    }
                    ElseIf (LEqual (And (DDL8, 0x0F0F), Arg0))
                    {
                        Store (0x0D, Local0)
                    }

                    If (LEqual (And (CPDL, 0x0F0F), Arg0))
                    {
                        Or (0x10, Local0, Local0)
                    }
                    ElseIf (LEqual (And (CPL2, 0x0F0F), Arg0))
                    {
                        Or (0x10, Local0, Local0)
                    }
                    ElseIf (LEqual (And (CPL3, 0x0F0F), Arg0))
                    {
                        Or (0x10, Local0, Local0)
                    }
                    ElseIf (LEqual (And (CPL4, 0x0F0F), Arg0))
                    {
                        Or (0x10, Local0, Local0)
                    }
                    ElseIf (LEqual (And (CPL5, 0x0F0F), Arg0))
                    {
                        Or (0x10, Local0, Local0)
                    }
                    ElseIf (LEqual (And (CPL6, 0x0F0F), Arg0))
                    {
                        Or (0x10, Local0, Local0)
                    }
                    ElseIf (LEqual (And (CPL7, 0x0F0F), Arg0))
                    {
                        Or (0x10, Local0, Local0)
                    }
                    ElseIf (LEqual (And (CPL8, 0x0F0F), Arg0))
                    {
                        Or (0x10, Local0, Local0)
                    }

                    If (LEqual (And (CADL, 0x0F0F), Arg0))
                    {
                        Or (0x02, Local0, Local0)
                    }
                    ElseIf (LEqual (And (CAL2, 0x0F0F), Arg0))
                    {
                        Or (0x02, Local0, Local0)
                    }
                    ElseIf (LEqual (And (CAL3, 0x0F0F), Arg0))
                    {
                        Or (0x02, Local0, Local0)
                    }
                    ElseIf (LEqual (And (CAL4, 0x0F0F), Arg0))
                    {
                        Or (0x02, Local0, Local0)
                    }
                    ElseIf (LEqual (And (CAL5, 0x0F0F), Arg0))
                    {
                        Or (0x02, Local0, Local0)
                    }
                    ElseIf (LEqual (And (CAL6, 0x0F0F), Arg0))
                    {
                        Or (0x02, Local0, Local0)
                    }
                    ElseIf (LEqual (And (CAL7, 0x0F0F), Arg0))
                    {
                        Or (0x02, Local0, Local0)
                    }
                    ElseIf (LEqual (And (CAL8, 0x0F0F), Arg0))
                    {
                        Or (0x02, Local0, Local0)
                    }

                    Return (Local0)
                }

                Method (NDDS, 1, NotSerialized)
                {
                    If (LEqual (And (NADL, 0x0F0F), Arg0))
                    {
                        Return (One)
                    }
                    ElseIf (LEqual (And (NDL2, 0x0F0F), Arg0))
                    {
                        Return (One)
                    }
                    ElseIf (LEqual (And (NDL3, 0x0F0F), Arg0))
                    {
                        Return (One)
                    }
                    ElseIf (LEqual (And (NDL4, 0x0F0F), Arg0))
                    {
                        Return (One)
                    }
                    ElseIf (LEqual (And (NDL5, 0x0F0F), Arg0))
                    {
                        Return (One)
                    }
                    ElseIf (LEqual (And (NDL6, 0x0F0F), Arg0))
                    {
                        Return (One)
                    }
                    ElseIf (LEqual (And (NDL7, 0x0F0F), Arg0))
                    {
                        Return (One)
                    }
                    ElseIf (LEqual (And (NDL8, 0x0F0F), Arg0))
                    {
                        Return (One)
                    }

                    Return (Zero)
                }

                Device (LCD0)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return (0x0400)
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        Return (VCAD (MIDL))
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (MIDL))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        And (Arg0, One, VSDL)
                    }

                    Method (_DDC, 1, NotSerialized)  // _DDC: Display Data Current
                    {
                        If (LEqual (Arg0, One))
                        {
                            Return (VEDI)
                        }
                        ElseIf (LEqual (Arg0, 0x02))
                        {
                            Return (VEDI)
                        }

                        Return (Zero)
                    }
                }

                Device (CRT0)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return (0x0100)
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        Return (VCAD (MIDC))
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (MIDC))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        And (Arg0, One, VSDC)
                    }
                }

                Device (DVI0)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return (0x0300)
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        Return (VCAD (MID0))
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (MID0))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        And (Arg0, One, VSD0)
                    }
                }

                Device (DVI1)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return (0x0301)
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        Return (VCAD (MID1))
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (MID1))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        And (Arg0, One, VSD1)
                    }
                }

                Device (DVI2)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return (0x0302)
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        Return (VCAD (MID2))
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (MID2))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        And (Arg0, One, VSD2)
                    }
                }

                Device (DVI3)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return (0x0303)
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        Return (VCAD (MID3))
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (MID3))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        And (Arg0, One, VSD3)
                    }
                }

                Device (DVI4)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return (0x0304)
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        Return (VCAD (MID4))
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (MID4))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        And (Arg0, One, VSD4)
                    }
                }

                Device (DVI5)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return (0x0305)
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        Return (VCAD (MID5))
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (MID5))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        And (Arg0, One, VSD5)
                    }
                }

                OperationRegion (IGDP, PCI_Config, 0x40, 0xC0)
                Field (IGDP, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x12), 
                        ,   1, 
                    GIVD,   1, 
                        ,   2, 
                    GUMA,   3, 
                    Offset (0x14), 
                        ,   4, 
                    GMFN,   1, 
                    Offset (0x18), 
                    Offset (0xA4), 
                    ASLE,   8, 
                    Offset (0xA8), 
                    GSSE,   1, 
                    GSSB,   14, 
                    GSES,   1, 
                    Offset (0xB0), 
                        ,   12, 
                    CDVL,   1, 
                    Offset (0xB2), 
                    Offset (0xB5), 
                    LBPC,   8, 
                    Offset (0xBC), 
                    ASLS,   32
                }

                OperationRegion (IGDM, SystemMemory, ASLB, 0x2000)
                Field (IGDM, AnyAcc, NoLock, Preserve)
                {
                    SIGN,   128, 
                    SIZE,   32, 
                    OVER,   32, 
                    SVER,   256, 
                    VVER,   128, 
                    GVER,   128, 
                    MBOX,   32, 
                    DMOD,   32, 
                    Offset (0x100), 
                    DRDY,   32, 
                    CSTS,   32, 
                    CEVT,   32, 
                    Offset (0x120), 
                    DIDL,   32, 
                    DDL2,   32, 
                    DDL3,   32, 
                    DDL4,   32, 
                    DDL5,   32, 
                    DDL6,   32, 
                    DDL7,   32, 
                    DDL8,   32, 
                    CPDL,   32, 
                    CPL2,   32, 
                    CPL3,   32, 
                    CPL4,   32, 
                    CPL5,   32, 
                    CPL6,   32, 
                    CPL7,   32, 
                    CPL8,   32, 
                    CADL,   32, 
                    CAL2,   32, 
                    CAL3,   32, 
                    CAL4,   32, 
                    CAL5,   32, 
                    CAL6,   32, 
                    CAL7,   32, 
                    CAL8,   32, 
                    NADL,   32, 
                    NDL2,   32, 
                    NDL3,   32, 
                    NDL4,   32, 
                    NDL5,   32, 
                    NDL6,   32, 
                    NDL7,   32, 
                    NDL8,   32, 
                    ASLP,   32, 
                    TIDX,   32, 
                    CHPD,   32, 
                    CLID,   32, 
                    CDCK,   32, 
                    SXSW,   32, 
                    EVTS,   32, 
                    CNOT,   32, 
                    NRDY,   32, 
                    Offset (0x200), 
                    SCIE,   1, 
                    GEFC,   4, 
                    GXFC,   3, 
                    GESF,   8, 
                    Offset (0x204), 
                    PARM,   32, 
                    DSLP,   32, 
                    Offset (0x300), 
                    ARDY,   32, 
                    ASLC,   32, 
                    TCHE,   32, 
                    ALSI,   32, 
                    BCLP,   32, 
                    PFIT,   32, 
                    CBLV,   32, 
                    BCLM,   320, 
                    CPFM,   32, 
                    EPFM,   32, 
                    PLUT,   592, 
                    PFMB,   32, 
                    CCDV,   32, 
                    PCFT,   32, 
                    SROT,   32, 
                    IUER,   32, 
                    FDSP,   64, 
                    FDSS,   32, 
                    Offset (0x400), 
                    GVD1,   49152, 
                    PHED,   32, 
                    BDDC,   2048
                }

                Name (DBTB, Package (0x15)
                {
                    Zero, 
                    0x07, 
                    0x38, 
                    0x01C0, 
                    0x0E00, 
                    0x3F, 
                    0x01C7, 
                    0x0E07, 
                    0x01F8, 
                    0x0E38, 
                    0x0FC0, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    0x7000, 
                    0x7007, 
                    0x7038, 
                    0x71C0, 
                    0x7E00
                })
                Name (CDCT, Package (0x05)
                {
                    Package (0x02)
                    {
                        0xE4, 
                        0x0140
                    }, 

                    Package (0x02)
                    {
                        0xDE, 
                        0x014D
                    }, 

                    Package (0x02)
                    {
                        0xDE, 
                        0x014D
                    }, 

                    Package (0x02)
                    {
                        Zero, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        0xDE, 
                        0x014D
                    }
                })
                Name (SUCC, One)
                Name (NVLD, 0x02)
                Name (CRIT, 0x04)
                Name (NCRT, 0x06)
                Method (GSCI, 0, Serialized)
                {
                    If (LEqual (GEFC, 0x04))
                    {
                        Store (GBDA (), GXFC)
                    }

                    If (LEqual (GEFC, 0x06))
                    {
                        Store (SBCB (), GXFC)
                    }

                    Store (Zero, GEFC)
                    Store (One, ^^LPC.SCIS)
                    Store (Zero, GSSE)
                    Store (Zero, SCIE)
                    Return (Zero)
                }

                Method (GBDA, 0, Serialized)
                {
                    If (LEqual (GESF, Zero))
                    {
                        Store (0x0241, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, One))
                    {
                        Store (0x0202, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x04))
                    {
                        And (PARM, 0xEFFF0000, PARM)
                        And (PARM, ShiftLeft (DerefOf (Index (DBTB, IBTT)), 0x10), PARM)
                        Or (IBTT, PARM, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x05))
                    {
                        If (^^^LID._LID ())
                        {
                            Store (One, LIDS)
                        }
                        Else
                        {
                            Store (Zero, LIDS)
                        }

                        Store (IPSC, PARM)
                        Add (PARM, One, PARM)
                        Add (PARM, 0x0300, PARM)
                        Add (PARM, 0x00010000, PARM)
                        Or (PARM, ShiftLeft (LIDS, 0x10), PARM)
                        Or (PARM, ShiftLeft (IBIA, 0x14), PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x06))
                    {
                        Store (ITVF, PARM)
                        Or (PARM, ShiftLeft (ITVM, 0x04), PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x07))
                    {
                        Store (GIVD, PARM)
                        XOr (PARM, One, PARM)
                        Or (PARM, ShiftLeft (GMFN, One), PARM)
                        Or (PARM, 0x1800, PARM)
                        Or (PARM, 0x00060000, PARM)
                        Or (ShiftLeft (DerefOf (Index (DerefOf (Index (CDCT, HVCO)), CDVL)), 0x15), PARM, PARM)
                        Store (One, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x0A))
                    {
                        Store (Zero, PARM)
                        If (ISSC)
                        {
                            Or (PARM, 0x03, PARM)
                        }

                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    Store (Zero, GESF)
                    Return (CRIT)
                }

                Method (SBCB, 0, Serialized)
                {
                    If (LEqual (GESF, Zero))
                    {
                        Store (0x0101, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, One))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x03))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x04))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x05))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x06))
                    {
                        Store (And (PARM, 0x0F), ITVF)
                        Store (ShiftRight (And (PARM, 0xF0), 0x04), ITVM)
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x07))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x08))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x09))
                    {
                        And (PARM, 0xFF, IBTT)
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x0A))
                    {
                        And (PARM, 0xFF, IPSC)
                        If (And (ShiftRight (PARM, 0x08), 0xFF))
                        {
                            And (ShiftRight (PARM, 0x08), 0xFF, IPAT)
                            Decrement (IPAT)
                        }

                        And (ShiftRight (PARM, 0x14), 0x07, IBIA)
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x0B))
                    {
                        And (ShiftRight (PARM, One), One, IF1E)
                        If (And (PARM, 0x0001E000))
                        {
                            And (ShiftRight (PARM, 0x0D), 0x0F, IDMS)
                        }
                        Else
                        {
                            And (ShiftRight (PARM, 0x11), 0x0F, IDMS)
                        }

                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x10))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x11))
                    {
                        Store (ShiftLeft (LIDS, 0x08), PARM)
                        Add (PARM, 0x0100, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x12))
                    {
                        If (And (PARM, One))
                        {
                            If (LEqual (ShiftRight (PARM, One), One))
                            {
                                Store (One, ISSC)
                            }
                            Else
                            {
                                Store (Zero, GESF)
                                Return (CRIT)
                            }
                        }
                        Else
                        {
                            Store (Zero, ISSC)
                        }

                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x13))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x14))
                    {
                        And (PARM, 0x0F, PAVP)
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    Store (Zero, GESF)
                    Return (SUCC)
                }

                Method (PDRD, 0, NotSerialized)
                {
                    If (LNot (DRDY))
                    {
                        Sleep (ASLP)
                    }

                    Return (LNot (DRDY))
                }

                Method (PSTS, 0, NotSerialized)
                {
                    If (LGreater (CSTS, 0x02))
                    {
                        Sleep (ASLP)
                    }

                    Return (LEqual (CSTS, 0x03))
                }

                Method (GNOT, 2, NotSerialized)
                {
                    If (PDRD ())
                    {
                        Return (One)
                    }

                    Store (Arg0, CEVT)
                    Store (0x03, CSTS)
                    If (LAnd (LEqual (CHPD, Zero), LEqual (Arg1, Zero)))
                    {
                        If (LNotEqual (Arg0, One))
                        {
                            If (LAnd (WXPF, LNot (WVIS)))
                            {
                                Notify (PCI0, Arg1)
                            }
                            Else
                            {
                                Notify (IGPU, Arg1)
                            }
                        }
                    }

                    Notify (IGPU, 0x80)
                    Return (Zero)
                }

                Method (GHDS, 1, NotSerialized)
                {
                    Store (Arg0, TIDX)
                    Return (GNOT (One, Zero))
                }

                Method (GLID, 1, NotSerialized)
                {
                    Store (Arg0, CLID)
                    Return (GNOT (0x02, Zero))
                }

                Method (GLIS, 1, NotSerialized)
                {
                    Store (Arg0, CLID)
                    Return (Zero)
                }

                Method (GDCK, 1, NotSerialized)
                {
                    Store (Arg0, CDCK)
                    Return (GNOT (0x04, 0x80))
                }

                Method (GDCS, 1, NotSerialized)
                {
                    Store (Arg0, CDCK)
                }

                Method (PARD, 0, NotSerialized)
                {
                    If (LNot (ARDY))
                    {
                        Sleep (ASLP)
                    }

                    Return (LNot (ARDY))
                }

                Method (AINT, 2, NotSerialized)
                {
                    If (LNot (And (TCHE, ShiftLeft (One, Arg0))))
                    {
                        Return (One)
                    }

                    If (PARD ())
                    {
                        Return (One)
                    }

                    If (LEqual (Arg0, 0x02))
                    {
                        XOr (PFIT, 0x07, PFIT)
                        Or (PFIT, 0x80000000, PFIT)
                        Store (0x04, ASLC)
                    }
                    ElseIf (LEqual (Arg0, One))
                    {
                        Store (Arg1, BCLP)
                        Or (BCLP, 0x80000000, BCLP)
                        Store (0x0A, ASLC)
                    }
                    ElseIf (LEqual (Arg0, 0x03))
                    {
                        Store (Arg1, PFMB)
                        Or (PFMB, 0x80000100, PFMB)
                    }
                    ElseIf (LEqual (Arg0, Zero))
                    {
                        Store (Arg1, ALSI)
                        Store (One, ASLC)
                    }
                    Else
                    {
                        Return (One)
                    }

                    Store (One, ASLE)
                    Return (Zero)
                }

                OperationRegion (RMPC, PCI_Config, 0x10, 0x04)
                Field (RMPC, AnyAcc, NoLock, Preserve)
                {
                    BAR1,   32
                }

                Device (PNLF)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_HID, EisaId ("APP0002"))  // _HID: Hardware ID
                    Name (_CID, "backlight")  // _CID: Compatible ID
                    Name (_UID, 0x0A)  // _UID: Unique ID
                    Name (_STA, 0x0B)  // _STA: Status
                    OperationRegion (BRIT, SystemMemory, And (BAR1, 0xFFFFFFF0), 0x000E1184)
                    Field (BRIT, AnyAcc, Lock, Preserve)
                    {
                        Offset (0x48250), 
                        LEV2,   32, 
                        LEVL,   32, 
                        Offset (0x70040), 
                        P0BL,   32, 
                        Offset (0xC8250), 
                        LEVW,   32, 
                        LEVX,   32, 
                        Offset (0xE1180), 
                        PCHL,   32
                    }

                    Name (LMAX, 0x0710)
                    Name (KMAX, 0x0710)
                    Name (KPCH, Ones)
                    Method (_INI, 0, NotSerialized)  // _INI: Initialize
                    {
                        If (LNot (KPCH))
                        {
                            Store (PCHL, KPCH)
                        }

                        If (LNot (LMAX))
                        {
                            Store (ShiftRight (LEVX, 0x10), LMAX)
                        }

                        If (LNot (LMAX))
                        {
                            Store (KMAX, LMAX)
                        }

                        Store (ShiftLeft (LMAX, 0x10), KLVX)
                        If (LNotEqual (LMAX, KMAX))
                        {
                            Store (Zero, Local0)
                            While (LLess (Local0, SizeOf (_BCL)))
                            {
                                Store (DerefOf (Index (_BCL, Local0)), Local1)
                                Divide (Multiply (Local1, LMAX), KMAX, , Local1)
                                Store (Local1, Index (_BCL, Local0))
                                Increment (Local0)
                            }

                            Divide (Multiply (XRGL, LMAX), KMAX, , XRGL)
                            Divide (Multiply (XRGH, LMAX), KMAX, , XRGH)
                        }

                        Store (ShiftRight (LEVX, 0x10), Local1)
                        If (LNotEqual (Local1, LMAX))
                        {
                            Store (LEVL, Local0)
                            If (LOr (LNot (Local0), LNot (Local1)))
                            {
                                Store (LMAX, Local0)
                                Store (LMAX, Local1)
                            }

                            Divide (Multiply (Local0, LMAX), Local1, , Local0)
                            If (LGreater (LEVL, LMAX))
                            {
                                Store (KLVX, LEVX)
                                Store (Local0, LEVL)
                            }
                            Else
                            {
                                Store (Local0, LEVL)
                                Store (KLVX, LEVX)
                            }
                        }
                    }

                    Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                    {
                        If (LAnd (LNotEqual (KPCH, Ones), LNotEqual (PCHL, KPCH)))
                        {
                            Store (KPCH, PCHL)
                        }

                        If (LNotEqual (LEVW, 0x80000000))
                        {
                            Store (0x80000000, LEVW)
                        }

                        If (LNotEqual (LEVX, KLVX))
                        {
                            Store (KLVX, LEVX)
                        }

                        Store (Match (_BCL, MGE, Arg0, MTR, Zero, 0x02), Local0)
                        If (LEqual (Local0, Ones))
                        {
                            Subtract (SizeOf (_BCL), One, Local0)
                        }

                        If (LNotEqual (LEV2, 0x80000000))
                        {
                            Store (0x80000000, LEV2)
                        }

                        Store (DerefOf (Index (_BCL, Local0)), LEVL)
                    }

                    Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
                    {
                        Store (Match (_BCL, MGE, LEVL, MTR, Zero, 0x02), Local0)
                        If (LEqual (Local0, Ones))
                        {
                            Subtract (SizeOf (_BCL), One, Local0)
                        }

                        Return (DerefOf (Index (_BCL, Local0)))
                    }

                    Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
                    {
                        ^^_DOS (Arg0)
                    }

                    Method (XBCM, 1, NotSerialized)
                    {
                        If (LAnd (LNotEqual (KPCH, Ones), LNotEqual (PCHL, KPCH)))
                        {
                            Store (KPCH, PCHL)
                        }

                        If (LNotEqual (LEVW, 0x80000000))
                        {
                            Store (0x80000000, LEVW)
                        }

                        If (LNotEqual (LEVX, KLVX))
                        {
                            Store (KLVX, LEVX)
                        }

                        If (LGreater (Arg0, XRGH))
                        {
                            Store (XRGH, Arg0)
                        }

                        If (LAnd (Arg0, LLess (Arg0, XRGL)))
                        {
                            Store (XRGL, Arg0)
                        }

                        If (LNotEqual (LEV2, 0x80000000))
                        {
                            Store (0x80000000, LEV2)
                        }

                        Store (Arg0, LEVL)
                    }

                    Method (XBQC, 0, NotSerialized)
                    {
                        Store (LEVL, Local0)
                        If (LGreater (Local0, XRGH))
                        {
                            Store (XRGH, Local0)
                        }

                        If (LAnd (Local0, LLess (Local0, XRGL)))
                        {
                            Store (XRGL, Local0)
                        }

                        Return (Local0)
                    }

                    Name (XOPT, 0x02)
                    Name (XRGL, 0x28)
                    Name (XRGH, 0x0710)
                    Name (KLVX, 0x07100000)
                    Name (_BCL, Package (0x43)  // _BCL: Brightness Control Levels
                    {
                        0x0710, 
                        0x01DF, 
                        Zero, 
                        0x35, 
                        0x37, 
                        0x39, 
                        0x3B, 
                        0x3E, 
                        0x42, 
                        0x47, 
                        0x4D, 
                        0x53, 
                        0x5B, 
                        0x63, 
                        0x6C, 
                        0x77, 
                        0x82, 
                        0x8E, 
                        0x9A, 
                        0xA8, 
                        0xB7, 
                        0xC6, 
                        0xD6, 
                        0xE8, 
                        0xFA, 
                        0x010D, 
                        0x0121, 
                        0x0135, 
                        0x014B, 
                        0x0162, 
                        0x0179, 
                        0x0191, 
                        0x01AA, 
                        0x01C5, 
                        0x01DF, 
                        0x01FB, 
                        0x0218, 
                        0x0236, 
                        0x0254, 
                        0x0273, 
                        0x0294, 
                        0x02B5, 
                        0x02D7, 
                        0x02FA, 
                        0x031D, 
                        0x0342, 
                        0x0368, 
                        0x038E, 
                        0x03B5, 
                        0x03DE, 
                        0x0407, 
                        0x0431, 
                        0x045B, 
                        0x0487, 
                        0x04B4, 
                        0x04E1, 
                        0x0510, 
                        0x053F, 
                        0x056F, 
                        0x05A0, 
                        0x05D2, 
                        0x0605, 
                        0x0638, 
                        0x066D, 
                        0x06A2, 
                        0x06D9, 
                        0x0710
                    })
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If (LEqual (Arg2, Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                           
                        })
                    }

                    Return (Package (0x04)
                    {
                        "AAPL,ig-platform-id", 
                        Buffer (0x04)
                        {
                             0x03, 0x00, 0x66, 0x01                         
                        }, 

                        "hda-gfx", 
                        Buffer (0x0A)
                        {
                            "onboard-1"
                        }
                    })
                }
            }

            Device (LPC)
            {
                Name (_ADR, 0x001F0000)  // _ADR: Address
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Name (RID, Zero)
                Device (SIO)
                {
                    Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                    Name (_UID, Zero)  // _UID: Unique ID
                    Name (SCRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0010,             // Range Minimum
                            0x0010,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0090,             // Range Minimum
                            0x0090,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0024,             // Range Minimum
                            0x0024,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0028,             // Range Minimum
                            0x0028,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x002C,             // Range Minimum
                            0x002C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0030,             // Range Minimum
                            0x0030,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0034,             // Range Minimum
                            0x0034,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0038,             // Range Minimum
                            0x0038,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x003C,             // Range Minimum
                            0x003C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A4,             // Range Minimum
                            0x00A4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A8,             // Range Minimum
                            0x00A8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00AC,             // Range Minimum
                            0x00AC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B0,             // Range Minimum
                            0x00B0,             // Range Maximum
                            0x01,               // Alignment
                            0x06,               // Length
                            )
                        IO (Decode16,
                            0x00B8,             // Range Minimum
                            0x00B8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00BC,             // Range Minimum
                            0x00BC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0050,             // Range Minimum
                            0x0050,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        IO (Decode16,
                            0x0072,             // Range Minimum
                            0x0072,             // Range Maximum
                            0x01,               // Alignment
                            0x06,               // Length
                            )
                        IO (Decode16,
                            0x0400,             // Range Minimum
                            0x0400,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x0500,             // Range Minimum
                            0x0500,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x0800,             // Range Minimum
                            0x0800,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x15E0,             // Range Minimum
                            0x15E0,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x1600,             // Range Minimum
                            0x1600,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        Memory32Fixed (ReadWrite,
                            0xF8000000,         // Address Base
                            0x04000000,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0x00000000,         // Address Base
                            0x00001000,         // Address Length
                            _Y1E)
                        Memory32Fixed (ReadWrite,
                            0xFED1C000,         // Address Base
                            0x00004000,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0xFED10000,         // Address Base
                            0x00004000,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0xFED18000,         // Address Base
                            0x00001000,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0xFED19000,         // Address Base
                            0x00001000,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0xFED45000,         // Address Base
                            0x00007000,         // Address Length
                            )
                    })
                    CreateDWordField (SCRS, \_SB.PCI0.LPC.SIO._Y1E._BAS, TRMB)  // _BAS: Base Address
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Store (TBAB, TRMB)
                        If (LEqual (^^TPM._STA (), 0x0F))
                        {
                            Return (SCRS)
                        }
                        Else
                        {
                            Subtract (SizeOf (SCRS), 0x02, Local0)
                            Name (BUF0, Buffer (Local0) {})
                            Add (Local0, SizeOf (^^TPM.BUF1), Local0)
                            Name (BUF1, Buffer (Local0) {})
                            Store (SCRS, BUF0)
                            Concatenate (BUF0, ^^TPM.BUF1, BUF1)
                            Return (BUF1)
                        }
                    }
                }

                OperationRegion (LPCS, PCI_Config, Zero, 0x0100)
                Field (LPCS, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x60), 
                    PIRA,   8, 
                    PIRB,   8, 
                    PIRC,   8, 
                    PIRD,   8, 
                    SERQ,   8, 
                    Offset (0x68), 
                    PIRE,   8, 
                    PIRF,   8, 
                    PIRG,   8, 
                    PIRH,   8, 
                    Offset (0x80), 
                    XU1A,   3, 
                        ,   1, 
                    XU2A,   3, 
                    Offset (0x81), 
                    XPA,    2, 
                        ,   2, 
                    XFA,    1, 
                    Offset (0x82), 
                    XU1E,   1, 
                    XU2E,   1, 
                    XPE,    1, 
                    XFE,    1, 
                    Offset (0x84), 
                    XG1E,   1, 
                        ,   1, 
                    XG1A,   14, 
                    Offset (0x88), 
                    XG2E,   1, 
                        ,   1, 
                    XG2A,   14, 
                    Offset (0xA0), 
                        ,   2, 
                    CLKR,   1, 
                        ,   7, 
                    EXPE,   1, 
                    Offset (0xA2), 
                    Offset (0xAC), 
                    Offset (0xAD), 
                    Offset (0xAE), 
                    XUSB,   1, 
                    Offset (0xB8), 
                        ,   12, 
                    GR06,   2
                }

                OperationRegion (LPIO, SystemIO, 0x0500, 0x80)
                Field (LPIO, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x0C), 
                    Offset (0x0D), 
                    Offset (0x0E), 
                        ,   6, 
                    GLIS,   1, 
                    Offset (0x0F), 
                    Offset (0x10), 
                    Offset (0x2C), 
                        ,   6, 
                    XHPD,   1, 
                    Offset (0x38), 
                        ,   6, 
                    PIDH,   2, 
                    Offset (0x3A), 
                    PIDL,   2, 
                    Offset (0x48), 
                    DOI0,   1, 
                    DOI1,   1, 
                    DOI2,   1, 
                    DOI3,   1
                }

                OperationRegion (PMIO, SystemIO, 0x0400, 0x80)
                Field (PMIO, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x2A), 
                        ,   6, 
                    XHPE,   1, 
                    Offset (0x42), 
                        ,   1, 
                    SWGE,   1, 
                    Offset (0x64), 
                        ,   9, 
                    SCIS,   1, 
                    Offset (0x66)
                }

                OperationRegion (IO_T, SystemIO, 0x0800, 0x10)
                Field (IO_T, ByteAcc, NoLock, Preserve)
                {
                    TRPI,   16, 
                    Offset (0x04), 
                    Offset (0x06), 
                    Offset (0x08), 
                    TRP0,   8, 
                    Offset (0x0A), 
                    Offset (0x0B), 
                    Offset (0x0C), 
                    Offset (0x0D), 
                    Offset (0x0E), 
                    Offset (0x0F), 
                    Offset (0x10)
                }

                Device (PIC)
                {
                    Name (_HID, EisaId ("PNP0000"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0020,             // Range Minimum
                            0x0020,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                    })
                }

                Device (TIMR)
                {
                    Name (_HID, EisaId ("PNP0100"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                    })
                }

                Device (HPET)
                {
                    Name (_HID, EisaId ("PNP0103"))  // _HID: Hardware ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (LAnd (WNTF, LNot (WXPF)))
                        {
                            Return (Zero)
                        }
                        Else
                        {
                            Return (0x0F)
                        }

                        Return (Zero)
                    }

                    Name (BUF0, ResourceTemplate ()
                    {
                        IRQNoFlags ()
                            {0,8,11,15}
                        Memory32Fixed (ReadOnly,
                            0xFED00000,         // Address Base
                            0x00000400,         // Address Length
                            _Y1F)
                    })
                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        CreateDWordField (BUF0, \_SB.PCI0.LPC.HPET._Y1F._BAS, HPT0)  // _BAS: Base Address
                        Store (\HPET, HPT0)
                        Return (BUF0)
                    }
                }

                Device (DMAC)
                {
                    Name (_HID, EisaId ("PNP0200"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x00C0,             // Range Minimum
                            0x00C0,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        DMA (Compatibility, BusMaster, Transfer8_16, )
                            {4}
                    })
                }

                Device (SPKR)
                {
                    Name (_HID, EisaId ("PNP0800"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                    })
                }

                Device (FPU)
                {
                    Name (_HID, EisaId ("PNP0C04"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x00F0,             // Range Minimum
                            0x00F0,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {13}
                    })
                }

                Device (RTC)
                {
                    Name (_HID, EisaId ("PNP0B00"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                    })
                }

                Device (KBD)
                {
                    Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
                    {
                        If (WIN8)
                        {
                            Return (0x7100AE30)
                        }

                        Return (0x0303D041)
                    }

                    Name (_CID, EisaId ("PNP0303"))  // _CID: Compatible ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {1}
                    })
                }

                Device (MOU)
                {
                    Name (_HID, EisaId ("IBM3780"))  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP0F13"))  // _CID: Compatible ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IRQNoFlags ()
                            {12}
                    })
                    Method (MHID, 0, NotSerialized)
                    {
                        If (PADD)
                        {
                            Store (0x80374D24, _HID)
                        }
                        Else
                        {
                            Store (0x2000AE30, _HID)
                        }
                    }
                }

                OperationRegion (IMGA, SystemIO, 0x15E0, 0x10)
                Field (IMGA, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x01), 
                    Offset (0x02), 
                    Offset (0x03), 
                    WAKR,   16, 
                    Offset (0x0C), 
                    GAIX,   8, 
                    Offset (0x0E), 
                    GADT,   8, 
                    Offset (0x10)
                }

                IndexField (GAIX, GADT, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x50), 
                        ,   3, 
                    IVPW,   1, 
                    DVPW,   1, 
                    BLPL,   1, 
                    Offset (0x51), 
                    TP4R,   1, 
                    PADR,   1, 
                    BPAD,   1, 
                        ,   1, 
                        ,   1, 
                    PADD,   1, 
                    Offset (0x60), 
                    EPWG,   1, 
                        ,   1, 
                    CSON,   1, 
                    DSCI,   1, 
                    DSCS,   1, 
                    DLAN,   1, 
                    Offset (0xC2), 
                    GAID,   8
                }

                Scope (\_SB)
                {
                    Name (TCGP, Buffer (0x08)
                    {
                         0x1F, 0xE0, 0x1F, 0x01, 0x02, 0x04, 0x08, 0xF0 
                    })
                    CreateByteField (TCGP, Zero, PPRQ)
                    CreateByteField (TCGP, One, PPL1)
                    CreateByteField (TCGP, 0x02, PPRP)
                    CreateByteField (TCGP, 0x03, TPRS)
                    CreateByteField (TCGP, 0x04, PPOR)
                    CreateByteField (TCGP, 0x05, TPMV)
                    CreateByteField (TCGP, 0x06, MOR)
                    CreateByteField (TCGP, 0x07, TVEN)
                    OperationRegion (TCGC, SystemIO, 0x72, 0x02)
                    Field (TCGC, ByteAcc, Lock, Preserve)
                    {
                        TIDX,   8, 
                        TPDA,   8
                    }

                    IndexField (TIDX, TPDA, ByteAcc, Lock, Preserve)
                    {
                        Offset (0x40), 
                        TPP1,   8, 
                        PPLO,   8, 
                        TPP3,   8
                    }

                    OperationRegion (SMIP, SystemIO, 0xB2, 0x02)
                    Field (SMIP, ByteAcc, NoLock, Preserve)
                    {
                        SMIT,   8, 
                        SMID,   8
                    }
                }

                Device (TPM)
                {
                    Name (TMPV, Zero)
                    Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
                    {
                        If (LEqual (TVID, 0x15D1))
                        {
                            Return (0x0201D824)
                        }

                        If (LOr (LEqual (TVID, 0x1050), LEqual (TVID, 0x100B)))
                        {
                            Return (0x0010A35C)
                        }

                        If (LEqual (TVID, 0x19FA))
                        {
                            Return (0x0435CF4D)
                        }

                        If (LEqual (TDID, 0x1002))
                        {
                            Return (0x02016D08)
                        }

                        If (LEqual (TDID, 0x1001))
                        {
                            Return (0x01016D08)
                        }

                        If (LEqual (TVID, 0x1114))
                        {
                            Return (0x00128D06)
                        }

                        If (LEqual (TVID, 0x104A))
                        {
                            Return (0x0012AF4D)
                        }

                        Return (0x310CD041)
                    }

                    Name (_CID, EisaId ("PNP0C31"))  // _CID: Compatible ID
                    Name (_UID, One)  // _UID: Unique ID
                    OperationRegion (TMMB, SystemMemory, 0xFED40000, 0x1000)
                    Field (TMMB, ByteAcc, Lock, Preserve)
                    {
                        ACCS,   8, 
                        Offset (0x18), 
                        TSTA,   8, 
                        TBCA,   8, 
                        Offset (0xF00), 
                        TVID,   16, 
                        TDID,   16
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (LEqual (ACCS, 0xFF))
                        {
                            Return (Zero)
                        }
                        ElseIf (LEqual (TPME, Zero))
                        {
                            Return (Zero)
                        }

                        Return (0x0F)
                    }

                    Name (BUF1, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0xFED40000,         // Address Base
                            0x00005000,         // Address Length
                            )
                    })
                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        Return (BUF1)
                    }

                    Method (UCMP, 2, NotSerialized)
                    {
                        If (LNotEqual (0x10, SizeOf (Arg0)))
                        {
                            Return (Zero)
                        }

                        If (LNotEqual (0x10, SizeOf (Arg1)))
                        {
                            Return (Zero)
                        }

                        Store (Zero, Local0)
                        While (LLess (Local0, 0x10))
                        {
                            If (LNotEqual (DerefOf (Index (Arg0, Local0)), DerefOf (Index (Arg1, Local0))))
                            {
                                Return (Zero)
                            }

                            Increment (Local0)
                        }

                        Return (One)
                    }

                    Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                    {
                        Name (TTMP, Buffer (One)
                        {
                             0x00                                           
                        })
                        CreateByteField (TTMP, Zero, TMPV)
                        If (LEqual (UCMP (Arg0, ToUUID ("3dddfaa6-361b-4eb4-a424-8d10089d1653") /* Physical Presence Interface */), One))
                        {
                            If (LEqual (Arg2, Zero))
                            {
                                Return (Buffer (0x02)
                                {
                                     0xFF, 0x01                                     
                                })
                            }

                            If (LEqual (Arg2, One))
                            {
                                Return (Buffer (0x04)
                                {
                                    "1.2"
                                })
                            }

                            If (LEqual (Arg2, 0x02))
                            {
                                If (TPRS)
                                {
                                    If (LLessEqual (DerefOf (Index (Arg3, Zero)), 0x0B))
                                    {
                                        Store (DerefOf (Index (Arg3, Zero)), SMID)
                                        Store (0xC1, SMIT)
                                        Store (DerefOf (Index (Arg3, Zero)), TPP1)
                                        Return (Zero)
                                    }

                                    If (LAnd (LGreaterEqual (DerefOf (Index (Arg3, Zero)), 0x0E), LLessEqual (DerefOf (Index (Arg3, Zero)), 0x12)))
                                    {
                                        Store (DerefOf (Index (Arg3, Zero)), SMID)
                                        Store (0xC1, SMIT)
                                        Store (DerefOf (Index (Arg3, Zero)), TPP1)
                                        Return (Zero)
                                    }

                                    If (LOr (LEqual (DerefOf (Index (Arg3, Zero)), 0x15), LEqual (DerefOf (Index (Arg3, Zero)), 0x16)))
                                    {
                                        Store (DerefOf (Index (Arg3, Zero)), SMID)
                                        Store (0xC1, SMIT)
                                        Store (DerefOf (Index (Arg3, Zero)), TPP1)
                                        Return (Zero)
                                    }

                                    Return (One)
                                }

                                Return (0x02)
                            }

                            If (LEqual (Arg2, 0x03))
                            {
                                Name (TMP1, Package (0x02)
                                {
                                    Zero, 
                                    Ones
                                })
                                Store (TPP1, TMPV)
                                Store (And (TMPV, PPRQ, TMPV), Index (TMP1, One))
                                Return (TMP1)
                            }

                            If (LEqual (Arg2, 0x04))
                            {
                                Return (0x02)
                            }

                            If (LEqual (Arg2, 0x05))
                            {
                                Name (TMP2, Package (0x03)
                                {
                                    Zero, 
                                    Ones, 
                                    Ones
                                })
                                Store (PPLO, Index (TMP2, One))
                                If (LOr (LOr (LGreater (PPLO, 0x16), LEqual (PPLO, 0x0C)), LEqual (PPLO, 0x0D)))
                                {
                                    Store (0xFFFFFFF1, Index (TMP2, 0x02))
                                    Return (TMP2)
                                }

                                If (LEqual (PPRQ, 0xFF))
                                {
                                    Store (0xFFFFFFF1, Index (TMP2, 0x02))
                                    Return (TMP2)
                                }

                                Store (TPP3, TMPV)
                                If (And (TMPV, 0x04))
                                {
                                    Store (0xFFFFFFF0, Index (TMP2, 0x02))
                                    Return (TMP2)
                                }

                                Store (Zero, Index (TMP2, 0x02))
                                Return (TMP2)
                            }

                            If (LEqual (Arg2, 0x06))
                            {
                                Return (0x03)
                            }

                            If (LEqual (Arg2, 0x07))
                            {
                                If (TPRS)
                                {
                                    If (LLessEqual (DerefOf (Index (Arg3, Zero)), 0x0B))
                                    {
                                        Store (DerefOf (Index (Arg3, Zero)), SMID)
                                        Store (0xC1, SMIT)
                                        Store (DerefOf (Index (Arg3, Zero)), TPP1)
                                        Return (Zero)
                                    }

                                    If (LAnd (LGreaterEqual (DerefOf (Index (Arg3, Zero)), 0x0E), LLessEqual (DerefOf (Index (Arg3, Zero)), 0x12)))
                                    {
                                        Store (DerefOf (Index (Arg3, Zero)), SMID)
                                        Store (0xC1, SMIT)
                                        Store (DerefOf (Index (Arg3, Zero)), TPP1)
                                        Return (Zero)
                                    }

                                    If (LOr (LEqual (DerefOf (Index (Arg3, Zero)), 0x15), LEqual (DerefOf (Index (Arg3, Zero)), 0x16)))
                                    {
                                        Store (DerefOf (Index (Arg3, Zero)), SMID)
                                        Store (0xC1, SMIT)
                                        Store (DerefOf (Index (Arg3, Zero)), TPP1)
                                        Return (Zero)
                                    }

                                    Return (One)
                                }

                                Return (0x02)
                            }

                            If (LEqual (Arg2, 0x08))
                            {
                                Name (PPIP, Zero)
                                Name (PPIC, Zero)
                                Store (TPP3, TMPV)
                                If (And (TMPV, 0x10))
                                {
                                    Store (One, PPIP)
                                }

                                If (And (TMPV, 0x20))
                                {
                                    Store (One, PPIC)
                                }

                                If (LEqual (DerefOf (Index (Arg3, Zero)), 0x05))
                                {
                                    If (LGreater (PPIC, Zero))
                                    {
                                        Return (0x04)
                                    }

                                    Return (0x03)
                                }

                                If (LAnd (LGreaterEqual (DerefOf (Index (Arg3, Zero)), One), LLessEqual (DerefOf (Index (Arg3, Zero)), 0x04)))
                                {
                                    If (LGreater (PPIP, Zero))
                                    {
                                        Return (0x04)
                                    }

                                    Return (0x03)
                                }

                                If (LAnd (LGreaterEqual (DerefOf (Index (Arg3, Zero)), 0x06), LLessEqual (DerefOf (Index (Arg3, Zero)), 0x0B)))
                                {
                                    If (LGreater (PPIP, Zero))
                                    {
                                        Return (0x04)
                                    }

                                    Return (0x03)
                                }

                                If (LOr (LEqual (DerefOf (Index (Arg3, Zero)), 0x0E), LAnd (LGreaterEqual (DerefOf (Index (Arg3, Zero)), 0x15), LLessEqual (DerefOf (Index (Arg3, Zero)), 0x16))))
                                {
                                    If (LAnd (LGreater (PPIP, Zero), LGreater (PPIC, Zero)))
                                    {
                                        Return (0x04)
                                    }

                                    Return (0x03)
                                }

                                If (LOr (LEqual (DerefOf (Index (Arg3, Zero)), 0x10), LEqual (DerefOf (Index (Arg3, Zero)), 0x12)))
                                {
                                    Return (0x03)
                                }

                                If (LOr (LEqual (DerefOf (Index (Arg3, Zero)), Zero), LOr (LEqual (DerefOf (Index (Arg3, Zero)), 0x0F), LEqual (DerefOf (Index (Arg3, Zero)), 0x11))))
                                {
                                    Return (0x04)
                                }

                                Return (Zero)
                            }

                            Return (One)
                        }

                        If (LEqual (UCMP (Arg0, ToUUID ("376054ed-cc13-4675-901c-4756d7f2d45d")), One))
                        {
                            If (LEqual (Arg2, Zero))
                            {
                                Return (Buffer (One)
                                {
                                     0x01                                           
                                })
                            }

                            If (LEqual (Arg2, One))
                            {
                                If (And (DerefOf (Index (Arg3, Zero)), One))
                                {
                                    Store (One, MORD)
                                    If (And (DerefOf (Index (Arg3, Zero)), 0x10))
                                    {
                                        Store (0x83, SMID)
                                        Store (0xC1, SMIT)
                                    }
                                    Else
                                    {
                                        Store (0x81, SMID)
                                        Store (0xC1, SMIT)
                                    }
                                }
                                Else
                                {
                                    Store (Zero, MORD)
                                    If (And (DerefOf (Index (Arg3, Zero)), 0x10))
                                    {
                                        Store (0x82, SMID)
                                        Store (0xC1, SMIT)
                                    }
                                    Else
                                    {
                                        Store (0x80, SMID)
                                        Store (0xC1, SMIT)
                                    }
                                }

                                Return (Zero)
                            }

                            Return (One)
                        }

                        Return (Buffer (One)
                        {
                             0x00                                           
                        })
                    }

                    Method (CMOR, 0, NotSerialized)
                    {
                        Store (Zero, MORD)
                        Store (0x80, SMID)
                        Store (0xC1, SMIT)
                    }
                }

                Device (EC)
                {
                    Name (_HID, EisaId ("PNP0C09"))  // _HID: Hardware ID
                    Name (_UID, Zero)  // _UID: Unique ID
                    Name (_GPE, 0x11)  // _GPE: General Purpose Events
                    Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                    {
                        If (LEqual (Arg0, 0x03))
                        {
                            Store (Arg1, H8DR)
                        }
                    }

                    OperationRegion (ECOR, EmbeddedControl, Zero, 0x0100)
                    Field (ECOR, ByteAcc, NoLock, Preserve)
                    {
                        HDBM,   1, 
                            ,   1, 
                            ,   1, 
                        HFNE,   1, 
                            ,   1, 
                            ,   1, 
                        HLDM,   1, 
                        Offset (0x01), 
                        BBLS,   1, 
                        BTCM,   1, 
                            ,   1, 
                            ,   1, 
                            ,   1, 
                        HBPR,   1, 
                        BTPC,   1, 
                        Offset (0x02), 
                        SLIS,   1, 
                            ,   4, 
                        SNLK,   1, 
                        Offset (0x03), 
                            ,   5, 
                        HAUM,   2, 
                        Offset (0x05), 
                        HSPA,   1, 
                        Offset (0x06), 
                        HSUN,   8, 
                        HSRP,   8, 
                        Offset (0x0C), 
                        HLCL,   8, 
                            ,   4, 
                        CALM,   1, 
                        Offset (0x0E), 
                        HFNS,   2, 
                        Offset (0x0F), 
                            ,   6, 
                        NULS,   1, 
                        Offset (0x10), 
                        HAM0,   8, 
                        HAM1,   8, 
                        HAM2,   8, 
                        HAM3,   8, 
                        HAM4,   8, 
                        HAM5,   8, 
                        HAM6,   8, 
                        HAM7,   8, 
                        HAM8,   8, 
                        HAM9,   8, 
                        HAMA,   8, 
                        HAMB,   8, 
                        HAMC,   8, 
                        HAMD,   8, 
                        HAME,   8, 
                        HAMF,   8, 
                        Offset (0x23), 
                        HANT,   8, 
                        Offset (0x26), 
                            ,   2, 
                        HANA,   2, 
                        Offset (0x27), 
                        Offset (0x2A), 
                        HATR,   8, 
                        HT0H,   8, 
                        HT0L,   8, 
                        HT1H,   8, 
                        HT1L,   8, 
                        HFSP,   8, 
                            ,   6, 
                        HMUT,   1, 
                        Offset (0x31), 
                            ,   2, 
                        HUWB,   1, 
                        Offset (0x32), 
                        HWPM,   1, 
                        HWLB,   1, 
                        HWLO,   1, 
                        HWDK,   1, 
                        HWFN,   1, 
                        HWBT,   1, 
                        HWRI,   1, 
                        HWBU,   1, 
                        HWLU,   1, 
                        Offset (0x34), 
                            ,   3, 
                        PIBS,   1, 
                            ,   3, 
                        HPLO,   1, 
                        Offset (0x36), 
                        Offset (0x38), 
                        HB0S,   7, 
                        HB0A,   1, 
                        HB1S,   7, 
                        HB1A,   1, 
                        HCMU,   1, 
                            ,   2, 
                        OVRQ,   1, 
                        DCBD,   1, 
                        DCWL,   1, 
                        DCWW,   1, 
                        HB1I,   1, 
                            ,   1, 
                        KBLT,   1, 
                        BTPW,   1, 
                        BTDT,   1, 
                        HUBS,   1, 
                        BDPW,   1, 
                        BDDT,   1, 
                        HUBB,   1, 
                        Offset (0x46), 
                            ,   1, 
                        BTWK,   1, 
                        HPLD,   1, 
                            ,   1, 
                        HPAC,   1, 
                        BTST,   1, 
                        HPBU,   1, 
                        Offset (0x47), 
                        ACSB,   1, 
                            ,   1, 
                        HBID,   1, 
                            ,   3, 
                        HBCS,   1, 
                        HPNF,   1, 
                            ,   1, 
                        GSTS,   1, 
                            ,   2, 
                        HLBU,   1, 
                        DOCD,   1, 
                        HCBL,   1, 
                        Offset (0x4C), 
                        HTMH,   8, 
                        HTML,   8, 
                        AK00,   8, 
                        AK01,   8, 
                        HMPR,   8, 
                            ,   7, 
                        HMDN,   1, 
                        Offset (0x78), 
                        TMP0,   8, 
                        Offset (0x80), 
                        Offset (0x81), 
                        HIID,   8, 
                        Offset (0x83), 
                        HFNI,   8, 
                        HSPD,   16, 
                        Offset (0x88), 
                        TSL0,   7, 
                        TSR0,   1, 
                        TSL1,   7, 
                        TSR1,   1, 
                        TSL2,   7, 
                        TSR2,   1, 
                        TSL3,   7, 
                        TSR3,   1, 
                        Offset (0x8D), 
                        HDAA,   3, 
                        HDAB,   3, 
                        HDAC,   2, 
                        Offset (0xB0), 
                        HDEN,   32, 
                        HDEP,   32, 
                        HDEM,   8, 
                        HDES,   8, 
                        Offset (0xBB), 
                        PLSL,   8, 
                        PLMS,   8, 
                        PLLS,   8, 
                        PLTU,   8, 
                        Offset (0xC8), 
                        ATMX,   8, 
                        HWAT,   8, 
                        Offset (0xCC), 
                        PWMH,   8, 
                        PWML,   8, 
                        Offset (0xED), 
                            ,   4, 
                        HDDD,   1
                    }

                    Method (_INI, 0, NotSerialized)  // _INI: Initialize
                    {
                        If (H8DR)
                        {
                            Store (Zero, HSPA)
                        }
                        Else
                        {
                            MBEC (0x05, 0xFE, Zero)
                        }

                        BINI ()
                        ^HKEY.WGIN ()
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0062,             // Range Minimum
                            0x0062,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0066,             // Range Minimum
                            0x0066,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                    })
                    Method (LED, 2, NotSerialized)
                    {
                        Or (Arg0, Arg1, Local0)
                        If (H8DR)
                        {
                            Store (Local0, HLCL)
                        }
                        Else
                        {
                            WBEC (0x0C, Local0)
                        }
                    }

                    Name (BAON, Zero)
                    Name (WBON, Zero)
                    Method (BEEP, 1, NotSerialized)
                    {
                        If (LEqual (Arg0, 0x05))
                        {
                            Store (Zero, WBON)
                        }

                        Store (WBON, Local2)
                        If (BAON)
                        {
                            If (LEqual (Arg0, Zero))
                            {
                                Store (Zero, BAON)
                                If (WBON)
                                {
                                    Store (0x03, Local0)
                                    Store (0x08, Local1)
                                }
                                Else
                                {
                                    Store (Zero, Local0)
                                    Store (Zero, Local1)
                                }
                            }
                            Else
                            {
                                Store (0xFF, Local0)
                                Store (0xFF, Local1)
                                If (LEqual (Arg0, 0x11))
                                {
                                    Store (Zero, WBON)
                                }

                                If (LEqual (Arg0, 0x10))
                                {
                                    Store (One, WBON)
                                }
                            }
                        }
                        Else
                        {
                            Store (Arg0, Local0)
                            Store (0xFF, Local1)
                            If (LEqual (Arg0, 0x0F))
                            {
                                Store (Arg0, Local0)
                                Store (0x08, Local1)
                                Store (One, BAON)
                            }

                            If (LEqual (Arg0, 0x11))
                            {
                                Store (Zero, Local0)
                                Store (Zero, Local1)
                                Store (Zero, WBON)
                            }

                            If (LEqual (Arg0, 0x10))
                            {
                                Store (0x03, Local0)
                                Store (0x08, Local1)
                                Store (One, WBON)
                            }
                        }

                        If (LEqual (Arg0, 0x03))
                        {
                            Store (Zero, WBON)
                            If (Local2)
                            {
                                Store (0x07, Local0)
                                If (LOr (LEqual (SPS, 0x03), LEqual (SPS, 0x04)))
                                {
                                    Store (Zero, Local2)
                                    Store (0xFF, Local0)
                                    Store (0xFF, Local1)
                                }
                            }
                        }

                        If (LEqual (Arg0, 0x07))
                        {
                            If (Local2)
                            {
                                Store (Zero, Local2)
                                Store (0xFF, Local0)
                                Store (0xFF, Local1)
                            }
                        }

                        If (H8DR)
                        {
                            If (LAnd (Local2, LNot (WBON)))
                            {
                                Store (Zero, HSRP)
                                Store (Zero, HSUN)
                                Sleep (0x64)
                            }

                            If (LNotEqual (Local1, 0xFF))
                            {
                                Store (Local1, HSRP)
                            }

                            If (LNotEqual (Local0, 0xFF))
                            {
                                Store (Local0, HSUN)
                            }
                        }
                        Else
                        {
                            If (LAnd (Local2, LNot (WBON)))
                            {
                                WBEC (0x07, Zero)
                                WBEC (0x06, Zero)
                                Sleep (0x64)
                            }

                            If (LNotEqual (Local1, 0xFF))
                            {
                                WBEC (0x07, Local1)
                            }

                            If (LNotEqual (Local0, 0xFF))
                            {
                                WBEC (0x06, Local0)
                            }
                        }

                        If (LEqual (Arg0, 0x03)) {}
                        If (LEqual (Arg0, 0x07))
                        {
                            Sleep (0x01F4)
                        }
                    }

                    Method (EVNT, 1, NotSerialized)
                    {
                        If (H8DR)
                        {
                            If (Arg0)
                            {
                                Or (HAM7, One, HAM7)
                                Or (HAM5, 0x04, HAM5)
                            }
                            Else
                            {
                                And (HAM7, 0xFE, HAM7)
                                And (HAM5, 0xFB, HAM5)
                            }
                        }
                        ElseIf (Arg0)
                        {
                            MBEC (0x17, 0xFF, One)
                            MBEC (0x15, 0xFF, 0x04)
                        }
                        Else
                        {
                            MBEC (0x17, 0xFE, Zero)
                            MBEC (0x15, 0xFB, Zero)
                        }
                    }

                    Name (USPS, Zero)
                    PowerResource (PUBS, 0x03, 0x0000)
                    {
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            If (H8DR)
                            {
                                Store (HUBS, Local0)
                            }
                            Else
                            {
                                And (RBEC (0x3B), 0x10, Local0)
                            }

                            If (Local0)
                            {
                                Return (One)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Method (_ON, 0, NotSerialized)  // _ON_: Power On
                        {
                            Store (0x64, Local0)
                            While (LAnd (USPS, Local0))
                            {
                                Sleep (One)
                                Decrement (Local0)
                            }

                            If (H8DR)
                            {
                                Store (One, HUBS)
                            }
                            Else
                            {
                                MBEC (0x3B, 0xFF, 0x10)
                            }
                        }

                        Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                        {
                            Store (One, USPS)
                            If (H8DR)
                            {
                                Store (Zero, HUBS)
                            }
                            Else
                            {
                                MBEC (0x3B, 0xEF, Zero)
                            }

                            Sleep (0x14)
                            Store (Zero, USPS)
                        }
                    }

                    Method (CHKS, 0, NotSerialized)
                    {
                        Store (0x03E8, Local0)
                        While (HMPR)
                        {
                            Sleep (One)
                            Decrement (Local0)
                            If (LNot (Local0))
                            {
                                Return (0x8080)
                            }
                        }

                        If (HMDN)
                        {
                            Return (Zero)
                        }

                        Return (0x8081)
                    }

                    Method (LPMD, 0, NotSerialized)
                    {
                        Store (Zero, Local0)
                        Store (Zero, Local1)
                        Store (Zero, Local2)
                        If (H8DR)
                        {
                            If (HPAC)
                            {
                                If (HPLO)
                                {
                                    Store (LPST, Local0)
                                }
                                ElseIf (LLess (HWAT, 0x5A))
                                {
                                    If (HB0A)
                                    {
                                        If (LOr (And (HB0S, 0x10), LLess (And (HB0S, 0x07), 0x02)))
                                        {
                                            Store (One, Local1)
                                        }
                                    }
                                    Else
                                    {
                                        Store (One, Local1)
                                    }

                                    If (HB1A)
                                    {
                                        If (LOr (And (HB1S, 0x10), LLess (And (HB1S, 0x07), 0x02)))
                                        {
                                            Store (One, Local2)
                                        }
                                    }
                                    Else
                                    {
                                        Store (One, Local2)
                                    }

                                    If (LAnd (Local1, Local2))
                                    {
                                        Store (LPST, Local0)
                                    }
                                }
                            }
                        }
                        ElseIf (And (RBEC (0x46), 0x10))
                        {
                            If (And (RBEC (0x34), 0x80))
                            {
                                Store (LPST, Local0)
                            }
                            ElseIf (LLess (RBEC (0xC9), 0x5A))
                            {
                                Store (RBEC (0x38), Local3)
                                If (And (Local3, 0x80))
                                {
                                    If (LOr (And (Local3, 0x10), LLess (And (Local3, 0x07), 0x02)))
                                    {
                                        Store (One, Local1)
                                    }
                                }
                                Else
                                {
                                    Store (One, Local2)
                                }

                                Store (RBEC (0x39), Local3)
                                If (And (Local3, 0x80))
                                {
                                    If (LOr (And (Local3, 0x10), LLess (And (Local3, 0x07), 0x02)))
                                    {
                                        Store (One, Local1)
                                    }
                                }
                                Else
                                {
                                    Store (One, Local2)
                                }

                                If (LAnd (Local1, Local2))
                                {
                                    Store (LPST, Local0)
                                }
                            }
                        }

                        Return (Local0)
                    }

                    Method (CLPM, 0, NotSerialized)
                    {
                        If (And (PPMF, One))
                        {
                            If (OSPX)
                            {
                                PNTF (0x80)
                            }
                            Else
                            {
                                Store (LPMD (), Local0)
                                If (Local0)
                                {
                                    STEP (0x04)
                                }
                                Else
                                {
                                    STEP (0x05)
                                }
                            }
                        }
                    }

                    Mutex (MCPU, 0x00)
                    Method (_Q10, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (^HKEY.MHKK (One))
                        {
                            ^HKEY.MHKQ (0x1001)
                        }
                    }

                    Method (_Q11, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Noop
                    }

                    Method (_Q12, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (^HKEY.MHKK (0x02))
                        {
                            ^HKEY.MHKQ (0x1002)
                        }
                    }

                    Method (_Q13, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (^HKEY.DHKC)
                        {
                            ^HKEY.MHKQ (0x1004)
                        }
                        Else
                        {
                            Notify (SLPB, 0x80)
                        }
                    }

                    Method (_Q64, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (^HKEY.MHKK (0x10))
                        {
                            ^HKEY.MHKQ (0x1005)
                        }
                    }

                    Method (_Q65, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (^HKEY.MHKK (0x20))
                        {
                            ^HKEY.MHKQ (0x1006)
                        }
                    }

                    Method (_Q16, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (^HKEY.MHKK (0x40))
                        {
                            ^HKEY.MHKQ (0x1007)
                        }
                        Else
                        {
                            If (LEqual (VHYB (0x03, Zero), 0x03))
                            {
                                Notify (IGPU, 0x80)
                                Return (Zero)
                            }

                            If (VIGD)
                            {
                                ^^^IGPU.VSWT ()
                            }
                            Else
                            {
                                ^^^PEG.VID.VSWT ()
                            }
                        }
                    }

                    Method (_Q17, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (^HKEY.MHKK (0x80))
                        {
                            ^HKEY.MHKQ (0x1008)
                        }
                        ElseIf (LNot (WNTF))
                        {
                            VEXP ()
                        }
                    }

                    Method (_Q18, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (^HKEY.MHKK (0x0100))
                        {
                            ^HKEY.MHKQ (0x1009)
                        }

                        Noop
                    }

                    Method (_Q66, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (^HKEY.MHKK (0x0200))
                        {
                            ^HKEY.MHKQ (0x100A)
                        }
                    }

                    Method (_Q1A, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (^HKEY.MHKK (0x0400))
                        {
                            ^HKEY.MHKQ (0x100B)
                        }
                    }

                    Method (_Q1B, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        ^HKEY.MHKQ (0x100C)
                    }

                    Method (_Q62, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (^HKEY.MHKK (0x1000))
                        {
                            ^HKEY.MHKQ (0x100D)
                        }
                    }

                    Method (_Q60, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (^HKEY.MHKK (0x2000))
                        {
                            ^HKEY.MHKQ (0x100E)
                        }
                    }

                    Method (_Q61, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (^HKEY.MHKK (0x4000))
                        {
                            ^HKEY.MHKQ (0x100F)
                        }
                    }

                    Method (_Q1F, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (^HKEY.MHKK (0x00020000))
                        {
                            ^HKEY.MHKQ (0x1012)
                        }

                        UCMS (0x0E)
                    }

                    Method (_Q67, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (^HKEY.MHKK (0x00040000))
                        {
                            ^HKEY.MHKQ (0x1013)
                        }
                    }

                    Method (_Q1C, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (^HKEY.MHKK (0x01000000))
                        {
                            ^HKEY.MHKQ (0x1019)
                        }
                    }

                    Method (_Q1D, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (^HKEY.MHKK (0x02000000))
                        {
                            ^HKEY.MHKQ (0x101A)
                        }
                    }

                    Method (_Q26, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (VIGD)
                        {
                            If (WVIS)
                            {
                                VBTD ()
                            }

                            BRNS ()
                        }
                        Else
                        {
                            UCMS (0x12)
                        }

                        If (^^^PEG.VID.ISOP ())
                        {
                            Notify (^^^PEG.VID, 0xDF)
                        }

                        Sleep (0x01F4)
                        Notify (AC, 0x80)
                        Notify (\_TZ.THM0, 0x80)
                        If (WXPF)
                        {
                            Acquire (MCPU, 0xFFFF)
                        }

                        Store (One, PWRS)
                        If (And (PPMF, One))
                        {
                            If (OSPX)
                            {
                                PNTF (0x80)
                            }
                        }

                        If (WXPF)
                        {
                            Sleep (0x64)
                        }

                        If (OSC4)
                        {
                            PNTF (0x81)
                        }

                        If (WXPF)
                        {
                            Release (MCPU)
                        }

                        ^HKEY.MHKQ (0x6040)
                        ATMC ()
                    }

                    Method (_Q2E, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        ^HKEY.MHKQ (0x6040)
                    }

                    Method (_Q27, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (VIGD)
                        {
                            If (WVIS)
                            {
                                VBTD ()
                            }

                            BRNS ()
                        }
                        Else
                        {
                            UCMS (0x12)
                        }

                        If (^^^PEG.VID.ISOP ())
                        {
                            Notify (^^^PEG.VID, 0xDF)
                        }

                        Sleep (0x01F4)
                        Notify (AC, 0x80)
                        Notify (\_TZ.THM0, 0x80)
                        If (WXPF)
                        {
                            Acquire (MCPU, 0xFFFF)
                        }

                        Store (Zero, PWRS)
                        If (And (PPMF, One))
                        {
                            If (OSPX)
                            {
                                PNTF (0x80)
                            }
                        }

                        If (WXPF)
                        {
                            Sleep (0x64)
                        }

                        If (OSC4)
                        {
                            PNTF (0x81)
                        }

                        If (WXPF)
                        {
                            Release (MCPU)
                        }

                        ^HKEY.MHKQ (0x6040)
                        ATMC ()
                    }

                    Method (_Q2F, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        ^HKEY.MHKQ (0x6040)
                    }

                    Method (_Q2A, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        VCMS (One, ^^^^LID._LID ())
                        If (LEqual (ILNF, Zero))
                        {
                            ^HKEY.MHKQ (0x5002)
                            If (LEqual (PLUX, Zero))
                            {
                                If (VIGD)
                                {
                                    ^^^IGPU.GLIS (One)
                                    ^^^IGPU.VLOC (One)
                                }
                                Else
                                {
                                    ^^^PEG.VID.VLOC (One)
                                }

                                Notify (LID, 0x80)
                            }
                        }
                    }

                    Method (_Q2B, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        UCMS (0x0D)
                        VCMS (One, ^^^^LID._LID ())
                        If (LEqual (ILNF, Zero))
                        {
                            ^HKEY.MHKQ (0x5001)
                            If (LEqual (PLUX, Zero))
                            {
                                If (VIGD)
                                {
                                    ^^^IGPU.GLIS (Zero)
                                }
                                Else
                                {
                                    ^^^PEG.VID.VLOC (Zero)
                                }

                                Notify (LID, 0x80)
                            }
                        }
                    }

                    Method (_Q3D, 0, NotSerialized)  // _Qxx: EC Query
                    {
                    }

                    Method (_Q48, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (And (PPMF, One))
                        {
                            If (OSPX)
                            {
                                PNTF (0x80)
                            }
                            Else
                            {
                                STEP (0x04)
                            }

                            Store (One, CALM)
                        }
                    }

                    Method (_Q49, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (And (PPMF, One))
                        {
                            If (OSPX)
                            {
                                PNTF (0x80)
                            }
                            Else
                            {
                                STEP (0x05)
                            }
                        }
                    }

                    Method (_Q7F, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Fatal (0x01, 0x80010000, 0x02C3)
                    }

                    Method (_Q4E, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        ^HKEY.MHKQ (0x6011)
                    }

                    Method (_Q4F, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        ^HKEY.MHKQ (0x6012)
                    }

                    Method (_Q46, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        ^HKEY.MHKQ (0x6012)
                    }

                    Method (_Q22, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CLPM ()
                        If (HB0A)
                        {
                            Notify (BAT0, 0x80)
                        }

                        If (HB1A)
                        {
                            Notify (BAT1, 0x80)
                        }
                    }

                    Method (_Q4A, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CLPM ()
                        Notify (BAT0, 0x81)
                    }

                    Method (_Q4B, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CLPM ()
                        Notify (BAT0, 0x80)
                    }

                    Method (_Q4C, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CLPM ()
                        If (WNTF)
                        {
                            If (HB1A)
                            {
                                Store (One, ^BAT1.XB1S)
                                Notify (BAT1, One)
                            }
                            Else
                            {
                                Notify (BAT1, 0x03)
                            }
                        }
                        Else
                        {
                            Notify (BAT1, 0x81)
                        }
                    }

                    Method (_Q4D, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CLPM ()
                        If (And (^BAT1.B1ST, ^BAT1.XB1S))
                        {
                            Notify (BAT1, 0x80)
                        }
                    }

                    Method (_Q24, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CLPM ()
                        Notify (BAT0, 0x80)
                    }

                    Method (_Q25, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (And (^BAT1.B1ST, ^BAT1.XB1S))
                        {
                            CLPM ()
                            Notify (BAT1, 0x80)
                        }
                    }

                    Method (BATW, 1, NotSerialized)
                    {
                        Store (^BAT1.XB1S, Local0)
                        If (H8DR)
                        {
                            Store (HB1A, Local1)
                        }
                        ElseIf (And (RBEC (0x39), 0x80))
                        {
                            Store (One, Local1)
                        }
                        Else
                        {
                            Store (Zero, Local1)
                        }

                        If (XOr (Local0, Local1))
                        {
                            Store (Local1, ^BAT1.XB1S)
                            Notify (BAT1, One)
                        }
                    }

                    Field (ECOR, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0xA0), 
                        RC00,   8, 
                        RC01,   8, 
                        FC00,   8, 
                        FC01,   8, 
                        SBAE,   16, 
                        SBRS,   16, 
                        AC00,   8, 
                        AC01,   8, 
                        BV00,   8, 
                        BV01,   8, 
                        SBAF,   16, 
                        SBBS,   16
                    }

                    Field (ECOR, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0xA0), 
                        SB00,   8, 
                        SB01,   8, 
                        SBMD,   16, 
                        SBCC,   16
                    }

                    Field (ECOR, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0xA0), 
                        DC00,   8, 
                        DC01,   8, 
                        DV00,   8, 
                        DV01,   8, 
                        SBOM,   16, 
                        SBSI,   16, 
                        SBDT,   16, 
                        SN00,   8, 
                        SN01,   8
                    }

                    Field (ECOR, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0xA0), 
                        CH00,   8, 
                        CH01,   8, 
                        CH02,   8, 
                        CH03,   8
                    }

                    Field (ECOR, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0xA0), 
                        BMNX,   128
                    }

                    Field (ECOR, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0xA0), 
                        BDNX,   128
                    }

                    Mutex (BATM, 0x00)
                    Method (GBIF, 3, NotSerialized)
                    {
                        Acquire (BATM, 0xFFFF)
                        If (Arg2)
                        {
                            Or (Arg0, One, HIID)
                            Store (B1B2 (SB00, SB01), Local7)
                            ShiftRight (Local7, 0x0F, Local7)
                            XOr (Local7, One, Index (Arg1, Zero))
                            Store (Arg0, HIID)
                            If (Local7)
                            {
                                Multiply (B1B2 (FC00, FC01), 0x0A, Local1)
                            }
                            Else
                            {
                                Store (B1B2 (FC00, FC01), Local1)
                            }

                            Store (Local1, Index (Arg1, 0x02))
                            Or (Arg0, 0x02, HIID)
                            If (Local7)
                            {
                                Multiply (B1B2 (DC00, DC01), 0x0A, Local0)
                            }
                            Else
                            {
                                Store (B1B2 (DC00, DC01), Local0)
                            }

                            Store (Local0, Index (Arg1, One))
                            Divide (Local1, 0x14, Local2, Index (Arg1, 0x05))
                            If (Local7)
                            {
                                Store (0xC8, Index (Arg1, 0x06))
                            }
                            ElseIf (B1B2 (DV00, DV01))
                            {
                                Divide (0x00030D40, B1B2 (DV00, DV01), Local2, Index (Arg1, 0x06))
                            }
                            Else
                            {
                                Store (Zero, Index (Arg1, 0x06))
                            }

                            Store (B1B2 (DV00, DV01), Index (Arg1, 0x04))
                            Store (B1B2 (SN00, SN01), Local0)
                            Name (SERN, Buffer (0x06)
                            {
                                "     "
                            })
                            Store (0x04, Local2)
                            While (Local0)
                            {
                                Divide (Local0, 0x0A, Local1, Local0)
                                Add (Local1, 0x30, Index (SERN, Local2))
                                Decrement (Local2)
                            }

                            Store (SERN, Index (Arg1, 0x0A))
                            Or (Arg0, 0x06, HIID)
                            Store (RECB (0xA0, 0x80), Index (Arg1, 0x09))
                            Or (Arg0, 0x04, HIID)
                            Name (BTYP, Buffer (0x05)
                            {
                                 0x00, 0x00, 0x00, 0x00, 0x00                   
                            })
                            Store (B1B4 (CH00, CH01, CH02, CH03), BTYP)
                            Store (BTYP, Index (Arg1, 0x0B))
                            Or (Arg0, 0x05, HIID)
                            Store (RECB (0xA0, 0x80), Index (Arg1, 0x0C))
                        }
                        Else
                        {
                            Store (Ones, Index (Arg1, One))
                            Store (Zero, Index (Arg1, 0x05))
                            Store (Zero, Index (Arg1, 0x06))
                            Store (Ones, Index (Arg1, 0x02))
                        }

                        Release (BATM)
                        Return (Arg1)
                    }

                    Method (GBST, 4, NotSerialized)
                    {
                        Acquire (BATM, 0xFFFF)
                        If (And (Arg1, 0x20))
                        {
                            Store (0x02, Local0)
                        }
                        ElseIf (And (Arg1, 0x40))
                        {
                            Store (One, Local0)
                        }
                        Else
                        {
                            Store (Zero, Local0)
                        }

                        If (And (Arg1, 0x07)) {}
                        Else
                        {
                            Or (Local0, 0x04, Local0)
                        }

                        If (LEqual (And (Arg1, 0x07), 0x07))
                        {
                            Store (0x04, Local0)
                            Store (Zero, Local1)
                            Store (Zero, Local2)
                            Store (Zero, Local3)
                        }
                        Else
                        {
                            Store (Arg0, HIID)
                            Store (B1B2 (BV00, BV01), Local3)
                            If (Arg2)
                            {
                                Multiply (B1B2 (RC00, RC01), 0x0A, Local2)
                            }
                            Else
                            {
                                Store (B1B2 (RC00, RC01), Local2)
                            }

                            Store (B1B2 (AC00, AC01), Local1)
                            If (LGreaterEqual (Local1, 0x8000))
                            {
                                If (And (Local0, One))
                                {
                                    Subtract (0x00010000, Local1, Local1)
                                }
                                Else
                                {
                                    Store (Zero, Local1)
                                }
                            }
                            ElseIf (LNot (And (Local0, 0x02)))
                            {
                                Store (Zero, Local1)
                            }

                            If (Arg2)
                            {
                                Multiply (Local3, Local1, Local1)
                                Divide (Local1, 0x03E8, Local7, Local1)
                            }
                        }

                        Store (Local0, Index (Arg3, Zero))
                        Store (Local1, Index (Arg3, One))
                        Store (Local2, Index (Arg3, 0x02))
                        Store (Local3, Index (Arg3, 0x03))
                        Release (BATM)
                        Return (Arg3)
                    }

                    Device (BAT0)
                    {
                        Name (_HID, EisaId ("PNP0C0A"))  // _HID: Hardware ID
                        Name (_UID, Zero)  // _UID: Unique ID
                        Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
                        {
                            _SB
                        })
                        Name (B0ST, Zero)
                        Name (BT0I, Package (0x0D)
                        {
                            Zero, 
                            Ones, 
                            Ones, 
                            One, 
                            0x2A30, 
                            Zero, 
                            Zero, 
                            One, 
                            One, 
                            "", 
                            "", 
                            "", 
                            ""
                        })
                        Name (BT0P, Package (0x04) {})
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            If (H8DR)
                            {
                                Store (HB0A, B0ST)
                            }
                            ElseIf (And (RBEC (0x38), 0x80))
                            {
                                Store (One, B0ST)
                            }
                            Else
                            {
                                Store (Zero, B0ST)
                            }

                            If (B0ST)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x0F)
                            }
                        }

                        Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
                        {
                            Store (Zero, Local7)
                            Store (0x0A, Local6)
                            While (LAnd (LNot (Local7), Local6))
                            {
                                If (HB0A)
                                {
                                    If (LEqual (And (HB0S, 0x07), 0x07))
                                    {
                                        Sleep (0x03E8)
                                        Decrement (Local6)
                                    }
                                    Else
                                    {
                                        Store (One, Local7)
                                    }
                                }
                                Else
                                {
                                    Store (Zero, Local6)
                                }
                            }

                            Return (GBIF (Zero, BT0I, Local7))
                        }

                        Method (_BST, 0, NotSerialized)  // _BST: Battery Status
                        {
                            XOr (DerefOf (Index (BT0I, Zero)), One, Local0)
                            Return (GBST (Zero, HB0S, Local0, BT0P))
                        }

                        Method (_BTP, 1, NotSerialized)  // _BTP: Battery Trip Point
                        {
                            And (HAM4, 0xEF, HAM4)
                            If (Arg0)
                            {
                                Store (Arg0, Local1)
                                If (LNot (DerefOf (Index (BT0I, Zero))))
                                {
                                    Divide (Local1, 0x0A, Local0, Local1)
                                }

                                And (Local1, 0xFF, HT0L)
                                And (ShiftRight (Local1, 0x08), 0xFF, HT0H)
                                Or (HAM4, 0x10, HAM4)
                            }
                        }
                    }

                    Device (BAT1)
                    {
                        Name (_HID, EisaId ("PNP0C0A"))  // _HID: Hardware ID
                        Name (_UID, One)  // _UID: Unique ID
                        Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
                        {
                            _SB
                        })
                        Name (B1ST, Zero)
                        Name (XB1S, One)
                        Name (BT1I, Package (0x0D)
                        {
                            Zero, 
                            Ones, 
                            Ones, 
                            One, 
                            0x2A30, 
                            Zero, 
                            Zero, 
                            One, 
                            One, 
                            "", 
                            "", 
                            "", 
                            ""
                        })
                        Name (BT1P, Package (0x04) {})
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (Zero)
                        }

                        Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
                        {
                            Store (Zero, Local7)
                            Store (0x0A, Local6)
                            While (LAnd (LNot (Local7), Local6))
                            {
                                If (HB1A)
                                {
                                    If (LEqual (And (HB1S, 0x07), 0x07))
                                    {
                                        Sleep (0x03E8)
                                        Decrement (Local6)
                                    }
                                    Else
                                    {
                                        Store (One, Local7)
                                    }
                                }
                                Else
                                {
                                    Store (Zero, Local6)
                                }
                            }

                            Return (GBIF (0x10, BT1I, Local7))
                        }

                        Method (_BST, 0, NotSerialized)  // _BST: Battery Status
                        {
                            XOr (DerefOf (Index (BT1I, Zero)), One, Local0)
                            Return (GBST (0x10, HB1S, Local0, BT1P))
                        }

                        Method (_BTP, 1, NotSerialized)  // _BTP: Battery Trip Point
                        {
                            And (HAM4, 0xDF, HAM4)
                            If (Arg0)
                            {
                                Store (Arg0, Local1)
                                If (LNot (DerefOf (Index (BT1I, Zero))))
                                {
                                    Divide (Local1, 0x0A, Local0, Local1)
                                }

                                And (Local1, 0xFF, HT1L)
                                And (ShiftRight (Local1, 0x08), 0xFF, HT1H)
                                Or (HAM4, 0x20, HAM4)
                            }
                        }

                        Method (_EJ0, 1, NotSerialized)  // _EJx: Eject Device
                        {
                            If (Arg0)
                            {
                                Store (Zero, B1ST)
                                Store (Zero, XB1S)
                            }
                        }
                    }

                    Device (AC)
                    {
                        Name (_HID, "ACPI0003")  // _HID: Hardware ID
                        Name (_UID, Zero)  // _UID: Unique ID
                        Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
                        {
                            _SB
                        })
                        Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
                        {
                            If (H8DR)
                            {
                                Return (HPAC)
                            }
                            ElseIf (And (RBEC (0x46), 0x10))
                            {
                                Return (One)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }
                    }

                    Device (WGSH)
                    {
                        Name (_HID, EisaId ("LEN0078"))  // _HID: Hardware ID
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            If (WIN8)
                            {
                                Return (0x0F)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Method (WLSW, 0, NotSerialized)
                        {
                            Return (GSTS)
                        }
                    }

                    Device (HKEY)
                    {
                        Name (_HID, EisaId ("LEN0068"))  // _HID: Hardware ID
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (MHKV, 0, NotSerialized)
                        {
                            Return (0x0100)
                        }

                        Name (DHKC, Zero)
                        Name (DHKB, One)
                        Mutex (XDHK, 0x00)
                        Name (DHKH, Zero)
                        Name (DHKW, Zero)
                        Name (DHKS, Zero)
                        Name (DHKD, Zero)
                        Name (DHKN, 0x0808)
                        Name (DHKT, Zero)
                        Name (DHWW, Zero)
                        Method (MHKA, 0, NotSerialized)
                        {
                            Return (0x07FFFFFB)
                        }

                        Method (MHKN, 0, NotSerialized)
                        {
                            Return (DHKN)
                        }

                        Method (MHKK, 1, NotSerialized)
                        {
                            If (DHKC)
                            {
                                Return (And (DHKN, Arg0))
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Method (MHKM, 2, NotSerialized)
                        {
                            Acquire (XDHK, 0xFFFF)
                            If (LGreater (Arg0, 0x20))
                            {
                                Noop
                            }
                            Else
                            {
                                ShiftLeft (One, Decrement (Arg0), Local0)
                                If (And (Local0, 0x07FFFFFB))
                                {
                                    If (Arg1)
                                    {
                                        Or (Local0, DHKN, DHKN)
                                    }
                                    Else
                                    {
                                        And (DHKN, XOr (Local0, Ones), DHKN)
                                    }
                                }
                                Else
                                {
                                    Noop
                                }
                            }

                            Release (XDHK)
                        }

                        Method (MHKS, 0, NotSerialized)
                        {
                            Notify (SLPB, 0x80)
                        }

                        Method (MHKC, 1, NotSerialized)
                        {
                            Store (Arg0, DHKC)
                        }

                        Method (MHKP, 0, NotSerialized)
                        {
                            Acquire (XDHK, 0xFFFF)
                            If (DHWW)
                            {
                                Store (DHWW, Local1)
                                Store (Zero, DHWW)
                            }
                            ElseIf (DHKW)
                            {
                                Store (DHKW, Local1)
                                Store (Zero, DHKW)
                            }
                            ElseIf (DHKD)
                            {
                                Store (DHKD, Local1)
                                Store (Zero, DHKD)
                            }
                            ElseIf (DHKS)
                            {
                                Store (DHKS, Local1)
                                Store (Zero, DHKS)
                            }
                            ElseIf (DHKT)
                            {
                                Store (DHKT, Local1)
                                Store (Zero, DHKT)
                            }
                            Else
                            {
                                Store (DHKH, Local1)
                                Store (Zero, DHKH)
                            }

                            Release (XDHK)
                            Return (Local1)
                        }

                        Method (MHKE, 1, NotSerialized)
                        {
                            Store (Arg0, DHKB)
                            Acquire (XDHK, 0xFFFF)
                            Store (Zero, DHKH)
                            Store (Zero, DHKW)
                            Store (Zero, DHKS)
                            Store (Zero, DHKD)
                            Store (Zero, DHKT)
                            Store (Zero, DHWW)
                            Release (XDHK)
                        }

                        Method (MHKQ, 1, NotSerialized)
                        {
                            If (DHKB)
                            {
                                If (DHKC)
                                {
                                    Acquire (XDHK, 0xFFFF)
                                    If (LLess (Arg0, 0x1000)) {}
                                    ElseIf (LLess (Arg0, 0x2000))
                                    {
                                        Store (Arg0, DHKH)
                                    }
                                    ElseIf (LLess (Arg0, 0x3000))
                                    {
                                        Store (Arg0, DHKW)
                                    }
                                    ElseIf (LLess (Arg0, 0x4000))
                                    {
                                        Store (Arg0, DHKS)
                                    }
                                    ElseIf (LLess (Arg0, 0x5000))
                                    {
                                        Store (Arg0, DHKD)
                                    }
                                    ElseIf (LLess (Arg0, 0x6000))
                                    {
                                        Store (Arg0, DHKH)
                                    }
                                    ElseIf (LLess (Arg0, 0x7000))
                                    {
                                        Store (Arg0, DHKT)
                                    }
                                    ElseIf (LLess (Arg0, 0x8000))
                                    {
                                        Store (Arg0, DHWW)
                                    }
                                    Else
                                    {
                                    }

                                    Release (XDHK)
                                    Notify (HKEY, 0x80)
                                }
                                ElseIf (LEqual (Arg0, 0x1004))
                                {
                                    Notify (SLPB, 0x80)
                                }
                            }
                        }

                        Method (MHKB, 1, NotSerialized)
                        {
                            If (LEqual (Arg0, Zero))
                            {
                                BEEP (0x11)
                                Store (Zero, LIDB)
                            }
                            ElseIf (LEqual (Arg0, One))
                            {
                                BEEP (0x10)
                                Store (One, LIDB)
                            }
                            Else
                            {
                            }
                        }

                        Method (MHKD, 0, NotSerialized)
                        {
                            If (LEqual (PLUX, Zero))
                            {
                                If (VIGD)
                                {
                                    ^^^^IGPU.VLOC (Zero)
                                }
                                Else
                                {
                                    ^^^^PEG.VID.VLOC (Zero)
                                }
                            }
                        }

                        Method (MHQC, 1, NotSerialized)
                        {
                            If (WNTF)
                            {
                                If (LEqual (Arg0, Zero))
                                {
                                    Return (CWAC)
                                }
                                ElseIf (LEqual (Arg0, One))
                                {
                                    Return (CWAP)
                                }
                                ElseIf (LEqual (Arg0, 0x02))
                                {
                                    Return (CWAT)
                                }
                                Else
                                {
                                    Noop
                                }
                            }
                            Else
                            {
                                Noop
                            }

                            Return (Zero)
                        }

                        Method (MHGC, 0, NotSerialized)
                        {
                            If (WNTF)
                            {
                                Acquire (XDHK, 0xFFFF)
                                If (CKC4 (Zero))
                                {
                                    Store (0x03, Local0)
                                }
                                Else
                                {
                                    Store (0x04, Local0)
                                }

                                Release (XDHK)
                                Return (Local0)
                            }
                            Else
                            {
                                Noop
                            }

                            Return (Zero)
                        }

                        Method (MHSC, 1, NotSerialized)
                        {
                            If (LAnd (CWAC, WNTF))
                            {
                                Acquire (XDHK, 0xFFFF)
                                If (OSC4)
                                {
                                    If (LEqual (Arg0, 0x03))
                                    {
                                        If (LNot (CWAS))
                                        {
                                            PNTF (0x81)
                                            Store (One, CWAS)
                                        }
                                    }
                                    ElseIf (LEqual (Arg0, 0x04))
                                    {
                                        If (CWAS)
                                        {
                                            PNTF (0x81)
                                            Store (Zero, CWAS)
                                        }
                                    }
                                    Else
                                    {
                                        Noop
                                    }
                                }

                                Release (XDHK)
                            }
                            Else
                            {
                                Noop
                            }
                        }

                        Method (CKC4, 1, NotSerialized)
                        {
                            Store (Zero, Local0)
                            If (C4WR)
                            {
                                If (LNot (C4AC))
                                {
                                    Or (Local0, One, Local0)
                                }
                            }

                            If (C4NA)
                            {
                                Or (Local0, 0x02, Local0)
                            }

                            If (LAnd (CWAC, CWAS))
                            {
                                Or (Local0, 0x04, Local0)
                            }

                            If (LAnd (CWUE, CWUS))
                            {
                                Or (Local0, 0x08, Local0)
                            }

                            And (Local0, Not (Arg0), Local0)
                            Return (Local0)
                        }

                        Method (MHQE, 0, NotSerialized)
                        {
                            Return (C4WR)
                        }

                        Method (MHGE, 0, NotSerialized)
                        {
                            If (LAnd (C4WR, C4AC))
                            {
                                Return (0x04)
                            }

                            Return (0x03)
                        }

                        Method (MHSE, 1, NotSerialized)
                        {
                            If (C4WR)
                            {
                                Store (C4AC, Local0)
                                If (LEqual (Arg0, 0x03))
                                {
                                    Store (Zero, C4AC)
                                    If (XOr (Local0, C4AC))
                                    {
                                        If (OSC4)
                                        {
                                            PNTF (0x81)
                                        }
                                    }
                                }
                                ElseIf (LEqual (Arg0, 0x04))
                                {
                                    Store (One, C4AC)
                                    If (XOr (Local0, C4AC))
                                    {
                                        If (OSC4)
                                        {
                                            PNTF (0x81)
                                        }
                                    }
                                }
                            }
                        }

                        Method (UAWO, 1, NotSerialized)
                        {
                            Return (UAWS (Arg0))
                        }

                        Method (MLCG, 1, NotSerialized)
                        {
                            Store (KBLS (Zero, Zero), Local0)
                            Return (Local0)
                        }

                        Method (MLCS, 1, NotSerialized)
                        {
                            Store (KBLS (One, Arg0), Local0)
                            If (LNot (And (Local0, 0x80000000)))
                            {
                                If (And (Arg0, 0x00010000))
                                {
                                    MHKQ (0x6001)
                                }
                                ElseIf (MHKK (0x00020000))
                                {
                                    MHKQ (0x1012)
                                }
                            }

                            Return (Local0)
                        }

                        Method (DSSG, 1, NotSerialized)
                        {
                            Or (0x0400, PDCI, Local0)
                            Return (Local0)
                        }

                        Method (DSSS, 1, NotSerialized)
                        {
                            Or (PDCI, Arg0, PDCI)
                        }

                        Method (SBSG, 1, NotSerialized)
                        {
                            Return (SYBC (Zero, Zero))
                        }

                        Method (SBSS, 1, NotSerialized)
                        {
                            Return (SYBC (One, Arg0))
                        }

                        Method (PBLG, 1, NotSerialized)
                        {
                            Store (BRLV, Local0)
                            Or (Local0, 0x0F00, Local1)
                            Return (Local1)
                        }

                        Method (PBLS, 1, NotSerialized)
                        {
                            Store (Arg0, BRLV)
                            If (VIGD)
                            {
                                BRNS ()
                            }
                            Else
                            {
                                VBRC (BRLV)
                            }

                            If (LNot (NBCF))
                            {
                                MHKQ (0x6050)
                            }

                            Return (Zero)
                        }

                        Method (PMSG, 1, NotSerialized)
                        {
                            Store (PRSM (Zero, Zero), Local0)
                            If (LNot (APIN))
                            {
                                If (And (Local0, 0x10))
                                {
                                    Store (One, APMD)
                                }
                                Else
                                {
                                    Store (Zero, APMD)
                                }

                                If (OSPX)
                                {
                                    PNTF (0x80)
                                }

                                Store (One, APIN)
                            }

                            Return (Local0)
                        }

                        Method (PMSS, 1, NotSerialized)
                        {
                            PRSM (One, Arg0)
                            If (LOr (LAnd (LNot (APMD), And (Arg0, 0x10)), LAnd (APMD, LNot (And (Arg0, 0x10)))))
                            {
                                If (And (Arg0, 0x10))
                                {
                                    Store (One, APMD)
                                }
                                Else
                                {
                                    Store (Zero, APMD)
                                }

                                If (OSPX)
                                {
                                    PNTF (0x80)
                                }
                            }

                            Return (Zero)
                        }

                        Method (ISSG, 1, NotSerialized)
                        {
                            Store (ISSP, Local0)
                            Or (Local0, 0x80, Local0)
                            Or (Local0, And (ISCG, 0x30), Local0)
                            Return (Local0)
                        }

                        Method (ISSS, 1, NotSerialized)
                        {
                            Store (Arg0, ISCG)
                            Return (Zero)
                        }

                        Method (FFSG, 1, NotSerialized)
                        {
                            Return (IFRS (Zero, Zero))
                        }

                        Method (FFSS, 1, NotSerialized)
                        {
                            IFRS (One, Arg0)
                            Return (Zero)
                        }
                    }

                    Scope (HKEY)
                    {
                        Name (INDV, Zero)
                        Method (MHQI, 0, NotSerialized)
                        {
                            If (And (IPMS, One))
                            {
                                Or (INDV, One, INDV)
                            }

                            If (And (IPMS, 0x02))
                            {
                                Or (INDV, 0x02, INDV)
                            }

                            If (And (IPMS, 0x04))
                            {
                                Or (INDV, 0x0100, INDV)
                            }

                            If (And (IPMS, 0x08))
                            {
                                Or (INDV, 0x0200, INDV)
                            }

                            If (And (IPMS, 0x10))
                            {
                                Or (INDV, 0x04, INDV)
                            }

                            Return (INDV)
                        }

                        Method (MHGI, 1, NotSerialized)
                        {
                            Name (RETB, Buffer (0x10) {})
                            CreateByteField (RETB, Zero, MHGS)
                            ShiftLeft (One, Arg0, Local0)
                            If (And (INDV, Local0))
                            {
                                If (LEqual (Arg0, Zero))
                                {
                                    CreateField (RETB, 0x08, 0x78, BRBU)
                                    Store (IPMB, BRBU)
                                    Store (0x10, MHGS)
                                }
                                ElseIf (LEqual (Arg0, One))
                                {
                                    CreateField (RETB, 0x08, 0x18, RRBU)
                                    Store (IPMR, RRBU)
                                    Store (0x04, MHGS)
                                }
                                ElseIf (LEqual (Arg0, 0x08))
                                {
                                    CreateField (RETB, 0x10, 0x18, ODBU)
                                    CreateByteField (RETB, One, MHGZ)
                                    Store (IPMO, ODBU)
                                    If (LEqual (BDEV, 0x03))
                                    {
                                        If (H8DR)
                                        {
                                            Store (HPBU, Local1)
                                        }
                                        Else
                                        {
                                            And (RBEC (0x47), One, Local1)
                                        }

                                        If (LNot (Local1))
                                        {
                                            Or (0x04, MHGZ, MHGZ)
                                        }

                                        If (LEqual (BSTS, Zero))
                                        {
                                            Or (One, MHGZ, MHGZ)
                                            Or (0x02, MHGZ, MHGZ)
                                        }
                                    }

                                    Store (0x05, MHGS)
                                }
                                ElseIf (LEqual (Arg0, 0x09))
                                {
                                    CreateField (RETB, 0x10, 0x08, AUBU)
                                    Store (IPMA, AUBU)
                                    Store (One, Index (RETB, One))
                                    Store (0x03, MHGS)
                                }
                                ElseIf (LEqual (Arg0, 0x02))
                                {
                                    Store (VDYN (Zero, Zero), Local1)
                                    And (Local1, 0x0F, Index (RETB, 0x02))
                                    ShiftRight (Local1, 0x04, Local1)
                                    And (Local1, 0x0F, Index (RETB, One))
                                    Store (0x03, MHGS)
                                }
                            }

                            Return (RETB)
                        }

                        Method (MHSI, 2, NotSerialized)
                        {
                            ShiftLeft (One, Arg0, Local0)
                            If (And (INDV, Local0))
                            {
                                If (LEqual (Arg0, 0x08))
                                {
                                    If (Arg1)
                                    {
                                        If (H8DR)
                                        {
                                            Store (HPBU, Local1)
                                        }
                                        Else
                                        {
                                            And (RBEC (0x47), One, Local1)
                                        }

                                        If (LNot (Local1))
                                        {
                                            Store (BGID (Zero), BDEV)
                                            NBIN (Local1)
                                        }
                                    }
                                }
                                ElseIf (LEqual (Arg0, 0x02))
                                {
                                    VDYN (One, Arg1)
                                }
                            }
                        }
                    }

                    Scope (\_SB.PCI0.LPC.EC)
                    {
                        Method (_Q6A, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            If (HDMC)
                            {
                                Noop
                            }
                            ElseIf (^HKEY.MHKK (0x04000000))
                            {
                                ^HKEY.MHKQ (0x101B)
                            }
                        }
                    }

                    Scope (HKEY)
                    {
                        Method (MMTG, 0, NotSerialized)
                        {
                            Store (0x0101, Local0)
                            If (HDMC)
                            {
                                Or (Local0, 0x00010000, Local0)
                            }

                            Return (Local0)
                        }

                        Method (MMTS, 1, NotSerialized)
                        {
                            If (HDMC)
                            {
                                Noop
                            }
                            ElseIf (LEqual (Arg0, 0x02))
                            {
                                LED (0x0E, 0x80)
                            }
                            ElseIf (LEqual (Arg0, 0x03))
                            {
                                LED (0x0E, 0xC0)
                            }
                            Else
                            {
                                LED (0x0E, Zero)
                            }
                        }
                    }

                    Scope (HKEY)
                    {
                        Method (PWMC, 0, NotSerialized)
                        {
                            Return (One)
                        }

                        Method (PWMG, 0, NotSerialized)
                        {
                            Store (PWMH, Local0)
                            ShiftLeft (Local0, 0x08, Local0)
                            Or (Local0, PWML, Local0)
                            Return (Local0)
                        }
                    }

                    Scope (\_SB.PCI0.LPC.EC)
                    {
                        Method (_Q3F, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            ^HKEY.MHKQ (0x6000)
                        }
                    }

                    Scope (HKEY)
                    {
                        Method (NUMG, 0, NotSerialized)
                        {
                            Store (Zero, Local0)
                            Return (Local0)
                        }
                    }

                    Method (RE1B, 1, NotSerialized)
                    {
                        OperationRegion (ECOR, EmbeddedControl, Arg0, One)
                        Field (ECOR, ByteAcc, NoLock, Preserve)
                        {
                            BYTE,   8
                        }

                        Return (BYTE)
                    }

                    Method (RECB, 2, Serialized)
                    {
                        ShiftRight (Arg1, 0x03, Arg1)
                        Name (TEMP, Buffer (Arg1) {})
                        Add (Arg0, Arg1, Arg1)
                        Store (Zero, Local0)
                        While (LLess (Arg0, Arg1))
                        {
                            Store (RE1B (Arg0), Index (TEMP, Local0))
                            Increment (Arg0)
                            Increment (Local0)
                        }

                        Return (TEMP)
                    }
                }
            }

            Device (PEG)
            {
                Name (_ADR, 0x00010000)  // _ADR: Address
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Name (RID, Zero)
                Name (LART, Package (0x02)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        LNKA, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        LNKB, 
                        Zero
                    }
                })
                Name (AART, Package (0x02)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x11
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (GPIC)
                    {
                        Return (AART)
                    }
                    Else
                    {
                        Return (LART)
                    }
                }

                Mutex (MDGS, 0x00)
                Name (VDEE, One)
                Name (VDDA, Buffer (0x04) {})
                CreateBitField (VDDA, Zero, VUPC)
                CreateBitField (VDDA, One, VQDL)
                CreateBitField (VDDA, 0x02, VQDC)
                CreateBitField (VDDA, 0x03, VQD0)
                CreateBitField (VDDA, 0x04, VQD1)
                CreateBitField (VDDA, 0x05, VQD2)
                CreateBitField (VDDA, 0x06, VQD3)
                CreateBitField (VDDA, 0x07, VQD4)
                CreateBitField (VDDA, 0x08, VQD5)
                CreateBitField (VDDA, 0x09, VSDL)
                CreateBitField (VDDA, 0x0A, VSDC)
                CreateBitField (VDDA, 0x0B, VSD0)
                CreateBitField (VDDA, 0x0C, VSD1)
                CreateBitField (VDDA, 0x0D, VSD2)
                CreateBitField (VDDA, 0x0E, VSD3)
                CreateBitField (VDDA, 0x0F, VSD4)
                CreateBitField (VDDA, 0x10, VSD5)
                CreateBitField (VDDA, 0x11, MSWT)
                CreateBitField (VDDA, 0x12, VWST)
                Device (VID)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    OperationRegion (VPCG, PCI_Config, Zero, 0x0100)
                    Field (VPCG, DWordAcc, NoLock, Preserve)
                    {
                        Offset (0x2C), 
                        VSID,   32, 
                        Offset (0x40), 
                        VIDS,   32, 
                        Offset (0x70), 
                        VPWR,   8
                    }

                    OperationRegion (GPPB, PCI_Config, 0xB4, 0x14)
                    Field (GPPB, ByteAcc, NoLock, Preserve)
                    {
                        PBCI,   8, 
                        PBNP,   8, 
                        PBLS,   8, 
                        PBCC,   8, 
                        PBCR,   32, 
                        PBDI,   32, 
                        PBDO,   32, 
                        PBMR,   32
                    }

                    Name (_S3D, 0x03)  // _S3D: S3 Device State
                    Name (DGOS, Zero)
                    Method (_INI, 0, NotSerialized)  // _INI: Initialize
                    {
                        VUPS (0x02)
                        Store (VCDL, VQDL)
                        Store (VCDC, VQDC)
                        Store (VCDT, VQD0)
                        Store (VCDD, VQD1)
                        If (ISOP ())
                        {
                            VHYB (0x04, One)
                            HPDE (One)
                        }
                    }

                    Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                    {
                        If (ISOP ())
                        {
                            If (DGOS)
                            {
                                VHYB (0x02, Zero)
                                Sleep (0x64)
                                VHYB (Zero, One)
                                Sleep (0x0A)
                                VHYB (0x0A, One)
                                Sleep (0x64)
                                VHYB (0x02, One)
                                Sleep (One)
                                VHYB (0x08, One)
                                Store (0x0A, Local0)
                                Store (0x32, Local1)
                                While (Local1)
                                {
                                    Sleep (Local0)
                                    If (LCHK (One))
                                    {
                                        Break
                                    }

                                    Decrement (Local1)
                                }

                                VHYB (0x0A, Zero)
                                VHYB (0x04, Zero)
                                SWTT (One)
                                Store (Zero, DGOS)
                            }
                            ElseIf (LNotEqual (VSID, 0x21F417AA))
                            {
                                VHYB (0x04, Zero)
                            }

                            VHYB (0x09, HDAS)
                            HPDE (Zero)
                        }
                        Else
                        {
                            Store (0x21F317AA, VIDS)
                        }
                    }

                    Method (_PS1, 0, NotSerialized)  // _PS1: Power State 1
                    {
                        Noop
                    }

                    Method (_PS2, 0, NotSerialized)  // _PS2: Power State 2
                    {
                        Noop
                    }

                    Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                    {
                        If (ISOP ())
                        {
                            If (LEqual (OMPR, 0x03))
                            {
                                SWTT (Zero)
                                VHYB (0x08, Zero)
                                Store (0x0A, Local0)
                                Store (0x32, Local1)
                                While (Local1)
                                {
                                    Sleep (Local0)
                                    If (LCHK (Zero))
                                    {
                                        Break
                                    }

                                    Decrement (Local1)
                                }

                                VHYB (0x02, Zero)
                                Sleep (0x64)
                                VHYB (Zero, Zero)
                                Store (One, DGOS)
                                Store (0x02, OMPR)
                                HPDE (One)
                            }
                        }
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        If (CMPB (Arg0, ToUUID ("a486d8f8-0bda-471b-a72b-6042a6b5bee0")))
                        {
                            Return (NVOP (Arg0, Arg1, Arg2, Arg3))
                        }

                        If (CMPB (Arg0, ToUUID ("a3132d01-8cda-49ba-a52e-bc9d46df6b81")))
                        {
                            Return (NVPS (Arg0, Arg1, Arg2, Arg3))
                        }

                        If (WIN8)
                        {
                            If (CMPB (Arg0, ToUUID ("d4a50b75-65c7-46f7-bfb7-41514cea0244")))
                            {
                                Return (NBCI (Arg0, Arg1, Arg2, Arg3))
                            }
                        }

                        Return (Buffer (0x04)
                        {
                             0x01, 0x00, 0x00, 0x80                         
                        })
                    }

                    Method (_IRC, 0, NotSerialized)  // _IRC: Inrush Current
                    {
                        Return (Zero)
                    }

                    OperationRegion (ATRP, SystemMemory, ATRB, 0x00010000)
                    Field (ATRP, AnyAcc, Lock, Preserve)
                    {
                        IDX0,   262144, 
                        IDX1,   262144
                    }

                    Method (_ROM, 2, Serialized)  // _ROM: Read-Only Memory
                    {
                        If (LGreaterEqual (Arg0, 0x8000))
                        {
                            Return (GETB (Subtract (Arg0, 0x8000), Arg1, IDX1))
                        }

                        If (LGreater (Add (Arg0, Arg1), 0x8000))
                        {
                            Subtract (0x8000, Arg0, Local0)
                            Subtract (Arg1, Local0, Local1)
                            Store (GETB (Arg0, Local0, IDX0), Local3)
                            Store (GETB (Zero, Local1, IDX1), Local4)
                            Concatenate (Local3, Local4, Local5)
                            Return (Local5)
                        }

                        Return (GETB (Arg0, Arg1, IDX0))
                    }

                    Method (GETB, 3, Serialized)
                    {
                        Multiply (Arg0, 0x08, Local0)
                        Multiply (Arg1, 0x08, Local1)
                        CreateField (Arg2, Local0, Local1, TBF3)
                        Return (TBF3)
                    }

                    Method (HPDE, 1, NotSerialized)
                    {
                        If (LEqual (Arg0, Zero))
                        {
                            Store (Zero, ^^^LPC.XHPE)
                            Store (Zero, ^^^LPC.GR06)
                            Store (Zero, ^^^LPC.XHPD)
                        }
                        Else
                        {
                            Store (One, ^^^LPC.XHPE)
                            Store (0x02, ^^^LPC.GR06)
                            Store (Zero, ^^^LPC.XHPD)
                        }
                    }

                    Method (VSWT, 0, NotSerialized)
                    {
                        If (WVIS)
                        {
                            Store (VEVT (0x07), Local0)
                        }
                        Else
                        {
                            Store (VEVT (0x05), Local0)
                        }

                        And (0xFF, Local0, Local1)
                        If (Local1)
                        {
                            ASWT (Local1, One)
                        }
                    }

                    Method (VLOC, 1, NotSerialized)
                    {
                        If (LEqual (Arg0, ^^^^LID._LID ()))
                        {
                            VSLD (Arg0)
                            If (LEqual (And (VPWR, 0x03), Zero))
                            {
                                If (Arg0)
                                {
                                    Store (VEVT (One), Local0)
                                }
                                Else
                                {
                                    Store (VEVT (0x02), Local0)
                                }

                                And (0x0F, Local0, Local1)
                                If (Local1)
                                {
                                    ASWT (Local1, Zero)
                                }
                            }
                        }
                    }

                    Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
                    {
                        If (LEqual (Arg0, 0x02))
                        {
                            Store (0x14, Local0)
                            While (Local0)
                            {
                                Decrement (Local0)
                                Acquire (MDGS, 0xFFFF)
                                If (LEqual (Zero, MSWT))
                                {
                                    Store (One, MSWT)
                                    Store (Zero, Local0)
                                    Store (Arg0, VDEE)
                                }

                                Release (MDGS)
                                Sleep (0xC8)
                            }
                        }
                        Else
                        {
                            Acquire (MDGS, 0xFFFF)
                            If (LEqual (VDEE, 0x02))
                            {
                                Store (Zero, MSWT)
                            }

                            If (LGreater (Arg0, 0x02))
                            {
                                Store (One, VDEE)
                            }
                            Else
                            {
                                Store (Arg0, VDEE)
                            }

                            Release (MDGS)
                        }
                    }

                    Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
                    {
                        Return (Package (0x08)
                        {
                            0x0100, 
                            0x0114, 
                            0x0111, 
                            0x0115, 
                            0x0112, 
                            0x0116, 
                            0x0113, 
                            0x0110
                        })
                    }

                    Method (ASWT, 2, NotSerialized)
                    {
                        If (LEqual (One, VDEE))
                        {
                            And (One, Arg1, Local1)
                            VSDS (Arg0, Local1)
                        }
                        Else
                        {
                            Store (0x14, Local0)
                            While (Local0)
                            {
                                Decrement (Local0)
                                Acquire (MDGS, 0xFFFF)
                                If (LEqual (Zero, MSWT))
                                {
                                    Store (Zero, Local0)
                                    If (And (One, Arg1))
                                    {
                                        Store (One, VUPC)
                                    }
                                    Else
                                    {
                                        Store (Zero, VUPC)
                                    }

                                    If (And (One, Arg0))
                                    {
                                        Store (One, VQDL)
                                    }
                                    Else
                                    {
                                        Store (Zero, VQDL)
                                    }

                                    If (And (0x02, Arg0))
                                    {
                                        Store (One, VQDC)
                                    }
                                    Else
                                    {
                                        Store (Zero, VQDC)
                                    }

                                    If (And (0x04, Arg0))
                                    {
                                        Store (One, VQD0)
                                    }
                                    Else
                                    {
                                        Store (Zero, VQD0)
                                    }

                                    If (And (0x08, Arg0))
                                    {
                                        Store (One, VQD1)
                                    }
                                    Else
                                    {
                                        Store (Zero, VQD1)
                                    }

                                    If (And (0x10, Arg0))
                                    {
                                        Store (One, VQD2)
                                    }
                                    Else
                                    {
                                        Store (Zero, VQD2)
                                    }

                                    If (And (0x20, Arg0))
                                    {
                                        Store (One, VQD3)
                                    }
                                    Else
                                    {
                                        Store (Zero, VQD3)
                                    }

                                    If (And (0x40, Arg0))
                                    {
                                        Store (One, VQD4)
                                    }
                                    Else
                                    {
                                        Store (Zero, VQD4)
                                    }

                                    If (And (0x80, Arg0))
                                    {
                                        Store (One, VQD5)
                                    }
                                    Else
                                    {
                                        Store (Zero, VQD5)
                                    }
                                }

                                Release (MDGS)
                                Sleep (0xC8)
                            }

                            If (And (0x02, Arg1))
                            {
                                Notify (VID, 0x81)
                            }
                            Else
                            {
                                Notify (VID, 0x80)
                            }
                        }
                    }

                    Method (VDSW, 1, NotSerialized)
                    {
                        If (LEqual (VPWR, Zero))
                        {
                            If (Arg0)
                            {
                                Store (VEVT (0x03), Local0)
                            }
                            Else
                            {
                                Store (VEVT (0x04), Local0)
                            }

                            And (0x0F, Local0, Local1)
                            If (Local1)
                            {
                                ASWT (Local1, Zero)
                            }
                        }
                    }

                    Device (LCD0)
                    {
                        Method (_ADR, 0, NotSerialized)  // _ADR: Address
                        {
                            Return (0x0110)
                        }

                        Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                        {
                            VUPS (Zero)
                            If (VCDL)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x1D)
                            }
                        }

                        Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                        {
                            Return (VQDL)
                        }

                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                            And (Arg0, One, VSDL)
                            If (And (Arg0, 0x80000000))
                            {
                                If (And (Arg0, 0x40000000))
                                {
                                    DSWT (0x02)
                                }
                                Else
                                {
                                    DSWT (One)
                                }
                            }
                        }

                        Method (_DDC, 1, NotSerialized)  // _DDC: Display Data Current
                        {
                            If (ISOP ())
                            {
                                Return (Zero)
                            }

                            If (LEqual (Arg0, One))
                            {
                                Return (VEDI)
                            }
                            ElseIf (LEqual (Arg0, 0x02))
                            {
                                Return (VEDI)
                            }

                            Return (Zero)
                        }
                    }

                    Device (CRT0)
                    {
                        Method (_ADR, 0, NotSerialized)  // _ADR: Address
                        {
                            Return (0x0100)
                        }

                        Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                        {
                            VUPS (One)
                            If (VCSS)
                            {
                                If (VCDC)
                                {
                                    Return (0x1F)
                                }
                                Else
                                {
                                    Return (0x1D)
                                }
                            }
                            ElseIf (VCDC)
                            {
                                Return (0x0F)
                            }
                            Else
                            {
                                Return (0x0D)
                            }
                        }

                        Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                        {
                            Return (VQDC)
                        }

                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                            And (Arg0, One, VSDC)
                            If (And (Arg0, 0x80000000))
                            {
                                If (And (Arg0, 0x40000000))
                                {
                                    DSWT (0x02)
                                }
                                Else
                                {
                                    DSWT (One)
                                }
                            }
                        }
                    }

                    Device (DVI0)
                    {
                        Method (_ADR, 0, NotSerialized)  // _ADR: Address
                        {
                            Return (0x0111)
                        }

                        Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                        {
                            VUPS (Zero)
                            If (VCDD)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x1D)
                            }
                        }

                        Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                        {
                            Return (VQD1)
                        }

                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                            And (Arg0, One, VSD1)
                            If (And (Arg0, 0x80000000))
                            {
                                If (And (Arg0, 0x40000000))
                                {
                                    DSWT (0x02)
                                }
                                Else
                                {
                                    DSWT (One)
                                }
                            }
                        }
                    }

                    Device (DP0)
                    {
                        Method (_ADR, 0, NotSerialized)  // _ADR: Address
                        {
                            Return (0x0114)
                        }

                        Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                        {
                            VUPS (Zero)
                            If (VCDT)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x1D)
                            }
                        }

                        Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                        {
                            Return (VQD0)
                        }

                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                            And (Arg0, One, VSD0)
                            If (And (Arg0, 0x80000000))
                            {
                                If (And (Arg0, 0x40000000))
                                {
                                    DSWT (0x02)
                                }
                                Else
                                {
                                    DSWT (One)
                                }
                            }
                        }
                    }

                    Device (DVI1)
                    {
                        Method (_ADR, 0, NotSerialized)  // _ADR: Address
                        {
                            Return (0x0112)
                        }

                        Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                        {
                            VUPS (Zero)
                            If (VCDD)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x1D)
                            }
                        }

                        Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                        {
                            Return (VQD3)
                        }

                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                            And (Arg0, One, VSD3)
                            If (And (Arg0, 0x80000000))
                            {
                                If (And (Arg0, 0x40000000))
                                {
                                    DSWT (0x02)
                                }
                                Else
                                {
                                    DSWT (One)
                                }
                            }
                        }
                    }

                    Device (DP1)
                    {
                        Method (_ADR, 0, NotSerialized)  // _ADR: Address
                        {
                            Return (0x0115)
                        }

                        Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                        {
                            VUPS (Zero)
                            If (VCDT)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x1D)
                            }
                        }

                        Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                        {
                            Return (VQD2)
                        }

                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                            And (Arg0, One, VSD2)
                            If (And (Arg0, 0x80000000))
                            {
                                If (And (Arg0, 0x40000000))
                                {
                                    DSWT (0x02)
                                }
                                Else
                                {
                                    DSWT (One)
                                }
                            }
                        }
                    }

                    Device (DVI2)
                    {
                        Method (_ADR, 0, NotSerialized)  // _ADR: Address
                        {
                            Return (0x0113)
                        }

                        Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                        {
                            VUPS (Zero)
                            If (VCDD)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x1D)
                            }
                        }

                        Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                        {
                            Return (VQD5)
                        }

                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                            And (Arg0, One, VSD5)
                            If (And (Arg0, 0x80000000))
                            {
                                If (And (Arg0, 0x40000000))
                                {
                                    DSWT (0x02)
                                }
                                Else
                                {
                                    DSWT (One)
                                }
                            }
                        }
                    }

                    Device (DP2)
                    {
                        Method (_ADR, 0, NotSerialized)  // _ADR: Address
                        {
                            Return (0x0116)
                        }

                        Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                        {
                            VUPS (Zero)
                            If (VCDT)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x1D)
                            }
                        }

                        Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                        {
                            Return (VQD4)
                        }

                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                            And (Arg0, One, VSD4)
                            If (And (Arg0, 0x80000000))
                            {
                                If (And (Arg0, 0x40000000))
                                {
                                    DSWT (0x02)
                                }
                                Else
                                {
                                    DSWT (One)
                                }
                            }
                        }
                    }

                    Method (DSWT, 1, NotSerialized)
                    {
                        If (VSDL)
                        {
                            Store (One, Local0)
                        }
                        Else
                        {
                            Store (Zero, Local0)
                        }

                        If (VSDC)
                        {
                            Or (0x02, Local0, Local0)
                        }

                        If (VSD0)
                        {
                            Or (0x08, Local0, Local0)
                        }

                        If (Local0)
                        {
                            If (VUPC)
                            {
                                VSDS (Local0, Arg0)
                            }
                        }
                        Else
                        {
                            Noop
                        }
                    }
                }

                Scope (VID)
                {
                    Method (NBCI, 4, NotSerialized)
                    {
                        Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                        Store ("------- NBCI DSM --------", Debug)
                        Store (ToInteger (Arg2), _T_0)
                        If (LEqual (_T_0, Zero))
                        {
                            Store (Buffer (0x04)
                                {
                                     0x00, 0x00, 0x00, 0x00                         
                                }, Local0)
                            Divide (Zero, 0x08, Local2, Local1)
                            ShiftLeft (One, Local2, Local2)
                            Or (DerefOf (Index (Local0, Local1)), Local2, Index (Local0, Local1))
                            Divide (0x14, 0x08, Local2, Local1)
                            ShiftLeft (One, Local2, Local2)
                            Or (DerefOf (Index (Local0, Local1)), Local2, Index (Local0, Local1))
                            Return (Local0)
                        }
                        ElseIf (LEqual (_T_0, 0x14))
                        {
                            Store (Package (0x07)
                                {
                                    0x0110, 
                                    0x0200, 
                                    Zero, 
                                    Zero, 
                                    0x05, 
                                    One, 
                                    Package (0x04)
                                    {
                                        0xDC, 
                                        Zero, 
                                        0x03E8, 
                                        Package (0x03)
                                        {
                                            0x65, 
                                            Package (0x65)
                                            {
                                                Zero, 
                                                0x0A, 
                                                0x14, 
                                                0x1E, 
                                                0x28, 
                                                0x32, 
                                                0x3C, 
                                                0x46, 
                                                0x50, 
                                                0x5A, 
                                                0x64, 
                                                0x6E, 
                                                0x78, 
                                                0x82, 
                                                0x8C, 
                                                0x96, 
                                                0xA0, 
                                                0xAA, 
                                                0xB4, 
                                                0xBE, 
                                                0xC8, 
                                                0xD2, 
                                                0xDC, 
                                                0xE6, 
                                                0xF0, 
                                                0xFA, 
                                                0x0104, 
                                                0x010E, 
                                                0x0118, 
                                                0x0122, 
                                                0x012C, 
                                                0x0136, 
                                                0x0140, 
                                                0x014A, 
                                                0x0154, 
                                                0x015E, 
                                                0x0168, 
                                                0x0172, 
                                                0x017C, 
                                                0x0186, 
                                                0x0190, 
                                                0x019A, 
                                                0x01A4, 
                                                0x01AE, 
                                                0x01B8, 
                                                0x01C2, 
                                                0x01CC, 
                                                0x01D6, 
                                                0x01E0, 
                                                0x01EA, 
                                                0x01F4, 
                                                0x01FE, 
                                                0x0208, 
                                                0x0212, 
                                                0x021C, 
                                                0x0226, 
                                                0x0230, 
                                                0x023A, 
                                                0x0244, 
                                                0x024E, 
                                                0x0258, 
                                                0x0262, 
                                                0x026C, 
                                                0x0276, 
                                                0x0280, 
                                                0x028A, 
                                                0x0294, 
                                                0x029E, 
                                                0x02A8, 
                                                0x02B2, 
                                                0x02BC, 
                                                0x02C6, 
                                                0x02D0, 
                                                0x02DA, 
                                                0x02E4, 
                                                0x02EE, 
                                                0x02F8, 
                                                0x0302, 
                                                0x030C, 
                                                0x0316, 
                                                0x0320, 
                                                0x032A, 
                                                0x0334, 
                                                0x033E, 
                                                0x0348, 
                                                0x0352, 
                                                0x035C, 
                                                0x0366, 
                                                0x0370, 
                                                0x037A, 
                                                0x0384, 
                                                0x038E, 
                                                0x0398, 
                                                0x03A2, 
                                                0x03AC, 
                                                0x03B6, 
                                                0x03C0, 
                                                0x03CA, 
                                                0x03D4, 
                                                0x03DE, 
                                                0x03E8
                                            }, 

                                            Package (0x65)
                                            {
                                                Zero, 
                                                0x0A, 
                                                0x14, 
                                                0x1E, 
                                                0x28, 
                                                0x32, 
                                                0x3C, 
                                                0x46, 
                                                0x50, 
                                                0x5A, 
                                                0x64, 
                                                0x6E, 
                                                0x78, 
                                                0x82, 
                                                0x8C, 
                                                0x96, 
                                                0xA0, 
                                                0xAA, 
                                                0xB4, 
                                                0xBE, 
                                                0xC8, 
                                                0xD2, 
                                                0xDC, 
                                                0xE6, 
                                                0xF0, 
                                                0xFA, 
                                                0x0104, 
                                                0x010E, 
                                                0x0118, 
                                                0x0122, 
                                                0x012C, 
                                                0x0136, 
                                                0x0140, 
                                                0x014A, 
                                                0x0154, 
                                                0x015E, 
                                                0x0168, 
                                                0x0172, 
                                                0x017C, 
                                                0x0186, 
                                                0x0190, 
                                                0x019A, 
                                                0x01A4, 
                                                0x01AE, 
                                                0x01B8, 
                                                0x01C2, 
                                                0x01CC, 
                                                0x01D6, 
                                                0x01E0, 
                                                0x01EA, 
                                                0x01F4, 
                                                0x01FE, 
                                                0x0208, 
                                                0x0212, 
                                                0x021C, 
                                                0x0226, 
                                                0x0230, 
                                                0x023A, 
                                                0x0244, 
                                                0x024E, 
                                                0x0258, 
                                                0x0262, 
                                                0x026C, 
                                                0x0276, 
                                                0x0280, 
                                                0x028A, 
                                                0x0294, 
                                                0x029E, 
                                                0x02A8, 
                                                0x02B2, 
                                                0x02BC, 
                                                0x02C6, 
                                                0x02D0, 
                                                0x02DA, 
                                                0x02E4, 
                                                0x02EE, 
                                                0x02F8, 
                                                0x0302, 
                                                0x030C, 
                                                0x0316, 
                                                0x0320, 
                                                0x032A, 
                                                0x0334, 
                                                0x033E, 
                                                0x0348, 
                                                0x0352, 
                                                0x035C, 
                                                0x0366, 
                                                0x0370, 
                                                0x037A, 
                                                0x0384, 
                                                0x038E, 
                                                0x0398, 
                                                0x03A2, 
                                                0x03AC, 
                                                0x03B6, 
                                                0x03C0, 
                                                0x03CA, 
                                                0x03D4, 
                                                0x03DE, 
                                                0x03E8
                                            }
                                        }
                                    }
                                }, Local0)
                            Store (Zero, Local1)
                            While (LLessEqual (Local1, 0x64))
                            {
                                Store (DerefOf (Index (DerefOf (Index (^^^LPC.EC.BRTD, BRTN)), Local1)), Local2)
                                Multiply (Local2, 0x03E8, Local2)
                                Divide (Local2, 0xFF, Local2, Local3)
                                Store (Local3, Index (DerefOf (Index (DerefOf (Index (DerefOf (Index (Local0, 0x06)), 0x03)), One)), Local1))
                                Increment (Local1)
                            }

                            Return (Local0)
                        }

                        Return (0x80000002)
                    }

                    Method (NVSB, 1, NotSerialized)
                    {
                        Name (CNT, Zero)
                        If (LEqual (PBCC, One))
                        {
                            If (LEqual (PBMR, Zero))
                            {
                                Store (0x02, PBMR)
                                If (LEqual (PBMR, 0x02))
                                {
                                    While (LAnd (LAnd (PBCC, 0xFF), LLess (CNT, 0x0A)))
                                    {
                                        Increment (CNT)
                                        Sleep (One)
                                    }

                                    If (LEqual (And (PBCR, 0x02), Zero))
                                    {
                                        Multiply (Arg0, 0x03E8, Local0)
                                        Divide (Local0, 0xFF, Local1, Local2)
                                        ShiftLeft (Local2, 0x08, Local2)
                                        Store (Local2, PBDI)
                                        Store (0x86100000, PBCR)
                                    }

                                    Store (Zero, PBMR)
                                    Return (One)
                                }
                            }
                        }

                        Return (Zero)
                    }
                }

                OperationRegion (PEGC, PCI_Config, Zero, 0x0100)
                Field (PEGC, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xEC), 
                    GMGP,   1, 
                    HPGP,   1, 
                    PMGP,   1
                }
            }

            Device (IGBE)
            {
                Name (_ADR, 0x00190000)  // _ADR: Address
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Name (RID, Zero)
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x6D, 
                    Zero
                })
            }

            Device (EXP1)
            {
                Name (_ADR, 0x001C0000)  // _ADR: Address
                Name (RID, Zero)
                OperationRegion (PECS, PCI_Config, Zero, 0x0100)
                Field (PECS, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x5A), 
                        ,   3, 
                    PDC,    1, 
                        ,   2, 
                    PDS,    1, 
                    Offset (0x5B), 
                    Offset (0x62), 
                    PS,     1, 
                    PP,     1, 
                    Offset (0xDB), 
                        ,   6, 
                    HPCE,   1, 
                    PMCE,   1, 
                    Offset (0xDF), 
                        ,   6, 
                    HPCS,   1, 
                    PMCS,   1
                }

                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    Store (PDS, PDSF)
                }

                Name (LPRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        LNKA, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        LNKB, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        LNKC, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        LNKD, 
                        Zero
                    }
                })
                Name (APRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x11
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x13
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (GPIC)
                    {
                        Return (APRT)
                    }
                    Else
                    {
                        Return (LPRT)
                    }
                }

                Name (PDSF, Zero)
                Device (SLOT)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                }
            }

            Device (EXP2)
            {
                Name (_ADR, 0x001C0001)  // _ADR: Address
                Name (RID, Zero)
                OperationRegion (PECS, PCI_Config, Zero, 0x0100)
                Field (PECS, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x62), 
                    PS,     1, 
                    PP,     1, 
                    Offset (0xDB), 
                        ,   7, 
                    PMCE,   1, 
                    Offset (0xDF), 
                        ,   7, 
                    PMCS,   1
                }

                Name (LPRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        LNKB, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        LNKC, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        LNKD, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        LNKA, 
                        Zero
                    }
                })
                Name (APRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x11
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x13
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x10
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (GPIC)
                    {
                        Return (APRT)
                    }
                    Else
                    {
                        Return (LPRT)
                    }
                }

                Device (ARPT)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_SUN, Zero)  // _SUN: Slot User Number
                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        Store (Package (0x12)
                            {
                                "built-in", 
                                Buffer (One)
                                {
                                     0x00                                           
                                }, 

                                "model", 
                                Buffer (0x10)
                                {
                                    "Apple WiFi card"
                                }, 

                                "subsystem-id", 
                                Buffer (0x04)
                                {
                                     0x8F, 0x00, 0x00, 0x00                         
                                }, 

                                "subsystem-vendor-id", 
                                Buffer (0x04)
                                {
                                     0x6B, 0x10, 0x00, 0x00                         
                                }, 

                                "device_type", 
                                Buffer (0x08)
                                {
                                    "Airport"
                                }, 

                                "device-id", 
                                Buffer (0x04)
                                {
                                     0xA0, 0x43, 0x00, 0x00                         
                                }, 

                                "vendor-id", 
                                Buffer (0x04)
                                {
                                     0xE4, 0x14, 0x00, 0x00                         
                                }, 

                                "name", 
                                Buffer (0x0D)
                                {
                                    "pci14e4,43a0"
                                }, 

                                "compatible", 
                                Buffer (0x0D)
                                {
                                    "pci14e4,43a0"
                                }
                            }, Local0)
                        DTGP (Arg0, Arg1, Arg2, Arg3)
                        Return (Local0)
                    }
                }
            }

            Device (EXP3)
            {
                Name (_ADR, 0x001C0002)  // _ADR: Address
                Name (RID, Zero)
                OperationRegion (PECS, PCI_Config, Zero, 0x0100)
                Field (PECS, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x5A), 
                        ,   3, 
                    PDC,    1, 
                        ,   2, 
                    PDS,    1, 
                    Offset (0x5B), 
                    Offset (0x62), 
                    PS,     1, 
                    PP,     1, 
                    Offset (0xDB), 
                        ,   6, 
                    HPCE,   1, 
                    PMCE,   1, 
                    Offset (0xDF), 
                        ,   6, 
                    HPCS,   1, 
                    PMCS,   1
                }

                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    Store (PDS, PDSF)
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x04
                })
                Name (LPRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        LNKC, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        LNKD, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        LNKA, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        LNKB, 
                        Zero
                    }
                })
                Name (APRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x13
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x11
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (GPIC)
                    {
                        Return (APRT)
                    }
                    Else
                    {
                        Return (LPRT)
                    }
                }

                Name (PDSF, Zero)
                Device (SLOT)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (One)
                    }
                }
            }

            Device (SAT1)
            {
                Name (_ADR, 0x001F0002)  // _ADR: Address
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Name (RID, Zero)
            }

            Device (SAT2)
            {
                Name (_ADR, 0x001F0005)  // _ADR: Address
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Name (RID, Zero)
            }

            Device (SMBU)
            {
                Name (_ADR, 0x001F0003)  // _ADR: Address
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Name (RID, Zero)
            }

            Device (XHCI)
            {
                Name (_ADR, 0x00140000)  // _ADR: Address
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Name (RID, Zero)
                OperationRegion (XHCS, PCI_Config, Zero, 0x0100)
                Field (XHCS, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xD0), 
                    PR2,    32, 
                    PR2M,   32, 
                    PR3,    32, 
                    PR3M,   32
                }

                Name (XRST, Zero)
                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    ^LPC.EC.PUBS
                })
                Name (_PR1, Package (0x01)  // _PR1: Power Resources for D1
                {
                    ^LPC.EC.PUBS
                })
                Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
                {
                    ^LPC.EC.PUBS
                })
                Method (CUID, 1, Serialized)
                {
                    If (LEqual (Arg0, ToUUID ("7c9512a9-1705-4cb4-af7d-506a2423ab71")))
                    {
                        Return (One)
                    }

                    Return (Zero)
                }

                Method (POSC, 3, Serialized)
                {
                    CreateDWordField (Arg2, Zero, CDW1)
                    If (LNotEqual (Arg0, One))
                    {
                        Or (CDW1, 0x08, CDW1)
                    }

                    If (LEqual (XHCM, Zero))
                    {
                        Or (CDW1, 0x02, CDW1)
                        Store (Zero, ^^LPC.XUSB)
                        Store (Zero, XRST)
                    }

                    If (LAnd (LNot (And (CDW1, One)), LOr (LEqual (XHCM, 0x02), LEqual (XHCM, 0x03))))
                    {
                        SXHC ()
                    }

                    Return (Arg2)
                }

                Method (SXHC, 0, NotSerialized)
                {
                    Store (One, ^^LPC.XUSB)
                    Store (One, XRST)
                    Store (Zero, Local0)
                    And (PR3, 0xFFFFFFF0, Local0)
                    Or (Local0, XHPM, Local0)
                    If (LEqual (^^^GDCK.GGID (), 0x05))
                    {
                        And (Local0, 0xFFFFFFFB, Local0)
                    }

                    And (Local0, PR3M, PR3)
                    Store (Zero, Local0)
                    And (PR2, 0xFFFFFFF0, Local0)
                    Or (Local0, XHPM, Local0)
                    If (LEqual (^^^GDCK.GGID (), 0x05))
                    {
                        And (Local0, 0xFFFFFFFB, Local0)
                    }

                    And (Local0, PR2M, PR2)
                    Store (One, ^^LPC.XUSB)
                    Store (One, USBR)
                }

                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    If (WIN8)
                    {
                        SXHC ()
                    }
                }

                Device (URTH)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Device (HSP0)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            })
                            CopyObject (UPC0, UPCP)
                            If (LNot (And (PR2, One)))
                            {
                                Store (Zero, Index (UPCP, Zero))
                            }

                            Return (UPCP)
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Buffer (0x10) {})
                            Store (PLD0, PLDP)
                            CreateBitField (PLDP, 0x40, VIS)
                            If (LNot (And (PR2, One)))
                            {
                                And (VIS, Zero, VIS)
                            }

                            Return (PLDP)
                        }
                    }

                    Device (HSP1)
                    {
                        Name (_ADR, 0x02)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            })
                            CopyObject (UPC1, UPCP)
                            If (LNot (And (PR2, 0x02)))
                            {
                                Store (Zero, Index (UPCP, Zero))
                            }

                            Return (UPCP)
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Buffer (0x10) {})
                            Store (PLD1, PLDP)
                            CreateBitField (PLDP, 0x40, VIS)
                            If (LNot (And (PR2, 0x02)))
                            {
                                And (VIS, Zero, VIS)
                            }

                            Return (PLDP)
                        }
                    }

                    Device (HSP2)
                    {
                        Name (_ADR, 0x03)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            })
                            CopyObject (UPC2, UPCP)
                            If (LNot (And (PR2, 0x04)))
                            {
                                Store (Zero, Index (UPCP, Zero))
                            }

                            Return (UPCP)
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Buffer (0x10) {})
                            Store (PLD2, PLDP)
                            CreateBitField (PLDP, 0x40, VIS)
                            If (LNot (And (PR2, 0x04)))
                            {
                                And (VIS, Zero, VIS)
                            }

                            Return (PLDP)
                        }
                    }

                    Device (HSP3)
                    {
                        Name (_ADR, 0x04)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            })
                            CopyObject (UPC3, UPCP)
                            If (LNot (And (PR2, 0x08)))
                            {
                                Store (Zero, Index (UPCP, Zero))
                            }

                            Return (UPCP)
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Buffer (0x10) {})
                            Store (PLD3, PLDP)
                            CreateBitField (PLDP, 0x40, VIS)
                            If (LNot (And (PR2, 0x08)))
                            {
                                And (VIS, Zero, VIS)
                            }

                            Return (PLDP)
                        }
                    }

                    Device (SSP0)
                    {
                        Name (_ADR, 0x05)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            })
                            CopyObject (UPC0, UPCP)
                            If (LOr (LNot (And (PR2, One)), LNot (And (PR3, One))))
                            {
                                Store (Zero, Index (UPCP, Zero))
                            }

                            Return (UPCP)
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Buffer (0x10) {})
                            Store (PLD0, PLDP)
                            CreateBitField (PLDP, 0x40, VIS)
                            If (LOr (LNot (And (PR2, One)), LNot (And (PR3, One))))
                            {
                                And (VIS, Zero, VIS)
                            }

                            Return (PLDP)
                        }
                    }

                    Device (SSP1)
                    {
                        Name (_ADR, 0x06)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            })
                            CopyObject (UPC1, UPCP)
                            If (LOr (LNot (And (PR2, 0x02)), LNot (And (PR3, 0x02))))
                            {
                                Store (Zero, Index (UPCP, Zero))
                            }

                            Return (UPCP)
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Buffer (0x10) {})
                            Store (PLD1, PLDP)
                            CreateBitField (PLDP, 0x40, VIS)
                            If (LOr (LNot (And (PR2, 0x02)), LNot (And (PR3, 0x02))))
                            {
                                And (VIS, Zero, VIS)
                            }

                            Return (PLDP)
                        }
                    }

                    Device (SSP2)
                    {
                        Name (_ADR, 0x07)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            })
                            CopyObject (UPC2, UPCP)
                            If (LOr (LNot (And (PR2, 0x04)), LNot (And (PR3, 0x04))))
                            {
                                Store (Zero, Index (UPCP, Zero))
                            }

                            Return (UPCP)
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Buffer (0x10) {})
                            Store (PLD2, PLDP)
                            CreateBitField (PLDP, 0x40, VIS)
                            If (LOr (LNot (And (PR2, 0x04)), LNot (And (PR3, 0x04))))
                            {
                                And (VIS, Zero, VIS)
                            }

                            Return (PLDP)
                        }
                    }

                    Device (SSP3)
                    {
                        Name (_ADR, 0x08)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            })
                            CopyObject (UPC3, UPCP)
                            If (LOr (LNot (And (PR2, 0x08)), LNot (And (PR3, 0x08))))
                            {
                                Store (Zero, Index (UPCP, Zero))
                            }

                            Return (UPCP)
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Buffer (0x10) {})
                            Store (PLD3, PLDP)
                            CreateBitField (PLDP, 0x40, VIS)
                            If (LOr (LNot (And (PR2, 0x08)), LNot (And (PR3, 0x08))))
                            {
                                And (VIS, Zero, VIS)
                            }

                            Return (PLDP)
                        }
                    }
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x6D, 
                    Zero
                })
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If (LEqual (Arg2, Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                           
                        })
                    }

                    Return (Package (0x0E)
                    {
                        "subsystem-id", 
                        Buffer (0x04)
                        {
                             0x70, 0x72, 0x00, 0x00                         
                        }, 

                        "subsystem-vendor-id", 
                        Buffer (0x04)
                        {
                             0x86, 0x80, 0x00, 0x00                         
                        }, 

                        "AAPL,current-available", 
                        0x0834, 
                        "AAPL,current-extra", 
                        0x0898, 
                        "AAPL,current-extra-in-sleep", 
                        0x0640, 
                        "AAPL,device-internal", 
                        0x02, 
                        "AAPL,max-port-current-in-sleep", 
                        0x0834
                    })
                }
            }

            Device (EHC1)
            {
                Name (_ADR, 0x001D0000)  // _ADR: Address
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Name (RID, Zero)
                OperationRegion (EHCS, PCI_Config, Zero, 0x0100)
                Field (EHCS, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x62), 
                    PWKI,   1, 
                    PWUC,   8, 
                    Offset (0x64)
                }

                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    ^LPC.EC.PUBS
                })
                Name (_PR1, Package (0x01)  // _PR1: Power Resources for D1
                {
                    ^LPC.EC.PUBS
                })
                Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
                {
                    ^LPC.EC.PUBS
                })
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    Store (One, PWKI)
                    Store (0x23, PWUC)
                }

                Device (URTH)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Device (URMH)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Return (UPCI)
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Return (PLDI)
                        }

                        Device (PRT0)
                        {
                            Name (_ADR, One)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Name (UPCP, Package (0x04)
                                {
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                })
                                CopyObject (UPC0, UPCP)
                                If (LEqual (XHCM, Zero)) {}
                                ElseIf (And (^^^^^XHCI.PR2, One))
                                {
                                    Store (Zero, Index (UPCP, Zero))
                                }

                                Return (UPCP)
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Name (PLDP, Buffer (0x10) {})
                                Store (PLD0, PLDP)
                                CreateBitField (PLDP, 0x40, VIS)
                                If (LEqual (XHCM, Zero)) {}
                                Else
                                {
                                    If (And (^^^^^XHCI.PR2, One))
                                    {
                                        And (VIS, Zero, VIS)
                                    }

                                    Return (PLDP)
                                }
                            }
                        }

                        Device (PRT1)
                        {
                            Name (_ADR, 0x02)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Name (UPCP, Package (0x04)
                                {
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                })
                                CopyObject (UPC1, UPCP)
                                If (LEqual (XHCM, Zero)) {}
                                ElseIf (And (^^^^^XHCI.PR2, 0x02))
                                {
                                    Store (Zero, Index (UPCP, Zero))
                                }

                                Return (UPCP)
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Name (PLDP, Buffer (0x10) {})
                                Store (PLD1, PLDP)
                                CreateBitField (PLDP, 0x40, VIS)
                                If (LEqual (XHCM, Zero)) {}
                                ElseIf (And (^^^^^XHCI.PR2, 0x02))
                                {
                                    And (VIS, Zero, VIS)
                                }

                                Return (PLDP)
                            }
                        }

                        Device (PRT2)
                        {
                            Name (_ADR, 0x03)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Name (UPCP, Package (0x04)
                                {
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                })
                                CopyObject (UPC2, UPCP)
                                If (LEqual (XHCM, Zero)) {}
                                ElseIf (And (^^^^^XHCI.PR2, 0x04))
                                {
                                    Store (Zero, Index (UPCP, Zero))
                                }

                                Return (UPCP)
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Name (PLDP, Buffer (0x10) {})
                                Store (PLD2, PLDP)
                                CreateBitField (PLDP, 0x40, VIS)
                                If (LEqual (XHCM, Zero)) {}
                                ElseIf (And (^^^^^XHCI.PR2, 0x04))
                                {
                                    And (VIS, Zero, VIS)
                                }

                                If (LEqual (\_SB.GDCK.GGID (), 0x05))
                                {
                                    And (VIS, Zero, VIS)
                                }

                                Return (PLDP)
                            }
                        }

                        Device (PRT3)
                        {
                            Name (_ADR, 0x04)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Name (UPCP, Package (0x04)
                                {
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                })
                                CopyObject (UPC3, UPCP)
                                If (LEqual (XHCM, Zero)) {}
                                ElseIf (And (^^^^^XHCI.PR2, 0x08))
                                {
                                    Store (Zero, Index (UPCP, Zero))
                                }

                                Return (UPCP)
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Name (PLDP, Buffer (0x10) {})
                                Store (PLD3, PLDP)
                                CreateBitField (PLDP, 0x40, VIS)
                                If (LEqual (XHCM, Zero)) {}
                                ElseIf (And (^^^^^XHCI.PR2, 0x08))
                                {
                                    And (VIS, Zero, VIS)
                                }

                                Return (PLDP)
                            }
                        }

                        Device (PRT4)
                        {
                            Name (_ADR, 0x05)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPC4)
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLD4)
                            }
                        }

                        Device (PRT5)
                        {
                            Name (_ADR, 0x06)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPC5)
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLD5)
                            }
                        }

                        Device (PRT6)
                        {
                            Name (_ADR, 0x07)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPC6)
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLD6)
                            }
                        }

                        Device (PRT7)
                        {
                            Name (_ADR, 0x08)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPC7)
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLD7)
                            }
                        }
                    }
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x6D, 
                    Zero
                })
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If (LEqual (Arg2, Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                           
                        })
                    }

                    Return (Package (0x0E)
                    {
                        "subsystem-id", 
                        Buffer (0x04)
                        {
                             0x70, 0x72, 0x00, 0x00                         
                        }, 

                        "subsystem-vendor-id", 
                        Buffer (0x04)
                        {
                             0x86, 0x80, 0x00, 0x00                         
                        }, 

                        "AAPL,current-available", 
                        0x0834, 
                        "AAPL,current-extra", 
                        0x0898, 
                        "AAPL,current-extra-in-sleep", 
                        0x0640, 
                        "AAPL,device-internal", 
                        0x02, 
                        "AAPL,max-port-current-in-sleep", 
                        0x0834
                    })
                }
            }

            Device (EHC2)
            {
                Name (_ADR, 0x001A0000)  // _ADR: Address
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Name (RID, Zero)
                OperationRegion (EHCS, PCI_Config, Zero, 0x0100)
                Field (EHCS, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x62), 
                    PWKI,   1, 
                    PWUC,   6, 
                    Offset (0x64)
                }

                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    ^LPC.EC.PUBS
                })
                Name (_PR1, Package (0x01)  // _PR1: Power Resources for D1
                {
                    ^LPC.EC.PUBS
                })
                Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
                {
                    ^LPC.EC.PUBS
                })
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    Store (One, PWKI)
                    Store (0x13, PWUC)
                }

                Device (URTH)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Device (URMH)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Return (UPCI)
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Return (PLDI)
                        }

                        Device (PRT8)
                        {
                            Name (_ADR, One)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPCI)
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLDI)
                            }
                        }

                        Device (PRT9)
                        {
                            Name (_ADR, 0x02)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPC9)
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLD9)
                            }
                        }

                        Device (PRTA)
                        {
                            Name (_ADR, 0x03)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPCI)
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLDI)
                            }
                        }

                        Device (PRTB)
                        {
                            Name (_ADR, 0x04)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPCI)
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLDI)
                            }
                        }

                        Device (PRTC)
                        {
                            Name (_ADR, 0x05)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPCI)
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLDI)
                            }
                        }

                        Device (PRTD)
                        {
                            Name (_ADR, 0x06)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPCI)
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLDI)
                            }

                            Device (WCAM)
                            {
                                Name (_ADR, 0x06)  // _ADR: Address
                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    If (WIN8)
                                    {
                                        Return (0x0F)
                                    }
                                    Else
                                    {
                                        Return (Zero)
                                    }
                                }

                                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                                {
                                    Return (UPCI)
                                }

                                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                                {
                                    Return (PLDC)
                                }
                            }
                        }
                    }
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x6D, 
                    Zero
                })
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If (LEqual (Arg2, Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                           
                        })
                    }

                    Return (Package (0x0E)
                    {
                        "subsystem-id", 
                        Buffer (0x04)
                        {
                             0x70, 0x72, 0x00, 0x00                         
                        }, 

                        "subsystem-vendor-id", 
                        Buffer (0x04)
                        {
                             0x86, 0x80, 0x00, 0x00                         
                        }, 

                        "AAPL,current-available", 
                        0x0834, 
                        "AAPL,current-extra", 
                        0x0898, 
                        "AAPL,current-extra-in-sleep", 
                        0x0640, 
                        "AAPL,device-internal", 
                        0x02, 
                        "AAPL,max-port-current-in-sleep", 
                        0x0834
                    })
                }
            }

            Device (HDEF)
            {
                Name (_ADR, 0x001B0000)  // _ADR: Address
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Name (RID, Zero)
                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    Noop
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x6D, 
                    Zero
                })
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If (LEqual (Arg2, Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                           
                        })
                    }

                    Return (Package (0x06)
                    {
                        "layout-id", 
                        Buffer (0x04)
                        {
                             0x0C, 0x00, 0x00, 0x00                         
                        }, 

                        "hda-gfx", 
                        Buffer (0x0A)
                        {
                            "onboard-1"
                        }, 

                        "PinConfigurations", 
                        Buffer (Zero) {}
                    })
                }
            }
        }

        Scope (PCI0.LPC.EC)
        {
            Name (BDEV, 0xFF)
            Name (BSTS, Zero)
            Name (BHKE, Zero)
            Method (_Q2C, 0, NotSerialized)  // _Qxx: EC Query
            {
                If (LEqual (BSTS, Zero))
                {
                    Store (BGID (Zero), BDEV)
                    NBRE (BDEV)
                }
            }

            Method (_Q2D, 0, NotSerialized)  // _Qxx: EC Query
            {
                Store (BGID (Zero), BDEV)
                NBIN (BDEV)
            }

            Method (_Q38, 0, NotSerialized)  // _Qxx: EC Query
            {
                Store (BGID (Zero), Local0)
                If (LEqual (Local0, 0x0F))
                {
                    BDIS ()
                    BHDP (One, Zero)
                    NBEJ (BDEV)
                    Store (Local0, BDEV)
                    If (LEqual (BIDE, 0x03))
                    {
                        Store (Zero, ^^^SAT1.PRIM.GTME)
                        Store (Zero, ^^^SAT1.SCND.GTME)
                    }
                }
                ElseIf (HPBU) {}
                Else
                {
                    Store (Local0, BDEV)
                    NBIN (Local0)
                }
            }

            Name (ODEJ, Zero)
            Method (_Q44, 0, NotSerialized)  // _Qxx: EC Query
            {
                If (CSON)
                {
                    Store (One, ODEJ)
                    Store (BGID (Zero), BDEV)
                    NBIN (BDEV)
                    Store (Zero, ODEJ)
                    ^HKEY.MHKQ (0x3006)
                }
            }

            Method (NBRE, 1, NotSerialized)
            {
                If (LLess (Arg0, 0x0C))
                {
                    If (LEqual (BIDE, 0x03))
                    {
                        Notify (^^^SAT1.SCND.MSTR, 0x03)
                    }
                    Else
                    {
                        Notify (^^^SAT1.PRT1, 0x03)
                    }
                }
            }

            Method (NBEJ, 1, NotSerialized)
            {
                If (LEqual (BSTS, Zero))
                {
                    If (LLess (Arg0, 0x0C))
                    {
                        If (LEqual (BIDE, 0x03))
                        {
                            Notify (^^^SAT1.SCND.MSTR, One)
                        }
                        Else
                        {
                            Notify (^^^SAT1.PRT1, One)
                        }
                    }
                }

                BEEP (Zero)
                Store (Zero, BSTS)
            }

            Method (NBIN, 1, NotSerialized)
            {
                If (LLess (Arg0, 0x0C))
                {
                    BEN (One)
                    If (LEqual (BIDE, 0x03))
                    {
                        Notify (^^^SAT1.SCND.MSTR, One)
                    }
                    Else
                    {
                        Notify (^^^SAT1.PRT1, One)
                    }
                }

                BEEP (Zero)
                Store (Zero, BSTS)
            }

            Method (BSCN, 0, NotSerialized)
            {
                If (LNot (HPBU))
                {
                    Store (BGID (Zero), Local0)
                    Store (Local0, BDEV)
                    If (LLess (Local0, 0x0C))
                    {
                        If (LEqual (Local0, 0x06))
                        {
                            BEN (0x02)
                        }
                        Else
                        {
                            BEN (One)
                        }

                        LED (0x04, 0x80)
                    }

                    BEEP (Zero)
                    Store (Zero, BSTS)
                }
            }

            Method (BEJ0, 1, NotSerialized)
            {
                If (Arg0)
                {
                    BDIS ()
                    BHDP (One, Zero)
                    Store (One, BSTS)
                    If (BHKE)
                    {
                        Store (Zero, BHKE)
                        ^HKEY.MHKQ (0x3003)
                    }
                }
                Else
                {
                    Store (Zero, BSTS)
                }
            }

            Method (BEJ3, 1, NotSerialized)
            {
                If (Arg0)
                {
                    BDIS ()
                    Store (One, BSTS)
                }
                Else
                {
                    Store (Zero, BSTS)
                }
            }

            Method (BPTS, 1, NotSerialized)
            {
                Store (One, HDBM)
                If (LNotEqual (BSTS, Zero))
                {
                    Store (0x0F, BDEV)
                    Store (Zero, BSTS)
                }

                Store (Zero, BHKE)
                BUWK (Zero)
            }

            Method (BWAK, 1, NotSerialized)
            {
                BUWK (Zero)
                Store (BGID (Zero), Local0)
                If (LEqual (BSTS, Zero))
                {
                    If (LNotEqual (Local0, BDEV))
                    {
                        NBEJ (BDEV)
                        Store (Local0, BDEV)
                        NBIN (Local0)
                    }
                    ElseIf (LOr (LFDC, LNotEqual (BDEV, 0x0D)))
                    {
                        If (LNotEqual (Local0, 0x0F))
                        {
                            If (HPBU)
                            {
                                If (LLessEqual (Arg0, 0x02)) {}
                                Else
                                {
                                    NBRE (Local0)
                                }
                            }
                        }
                    }
                }

                If (LLess (BDEV, 0x0C))
                {
                    UBIS (Zero)
                }
                Else
                {
                    UBIS (One)
                }
            }

            Method (BDIS, 0, NotSerialized)
            {
                If (LNot (CSON))
                {
                    If (LNot (GLIS))
                    {
                        UBIS (One)
                    }

                    Store (One, CSON)
                    Store (0x0F, IDET)
                }
            }

            Method (BPON, 1, NotSerialized)
            {
                If (CSON)
                {
                    Store (Zero, CSON)
                    If (GLIS)
                    {
                        UBIS (Zero)
                    }
                }
            }

            Method (BEN, 1, NotSerialized)
            {
                If (CSON)
                {
                    BPON (Arg0)
                    If (LAnd (Arg0, LEqual (ODEJ, One)))
                    {
                        Store (0x09, HANT)
                    }

                    If (Arg0)
                    {
                        IRDY ()
                    }
                }
            }

            Method (BSTA, 1, NotSerialized)
            {
                Store (^^^^GDCK.GGID (), Local0)
                If (LEqual (Local0, Zero))
                {
                    If (DOCD)
                    {
                        If (LEqual (Zero, DESS ()))
                        {
                            Return (One)
                        }
                    }
                }
                Else
                {
                    If (CSON)
                    {
                        Return (Zero)
                    }

                    BINI ()
                    If (LEqual (Arg0, One))
                    {
                        Return (LLess (BDEV, 0x0C))
                    }
                }

                Return (Zero)
            }

            Method (BUWK, 1, NotSerialized)
            {
                If (H8DR)
                {
                    If (Arg0)
                    {
                        Store (One, HWBU)
                    }
                    Else
                    {
                        Store (Zero, HWBU)
                    }
                }
                ElseIf (Arg0)
                {
                    MBEC (0x32, 0xFF, 0x80)
                }
                Else
                {
                    MBEC (0x32, 0x7F, Zero)
                }
            }

            Method (BINI, 0, NotSerialized)
            {
                If (LEqual (BDEV, 0xFF))
                {
                    Store (BGID (Zero), BDEV)
                }
            }

            Method (BGID, 1, NotSerialized)
            {
                If (Arg0)
                {
                    Store (0xFF, Local0)
                }
                Else
                {
                    If (H8DR)
                    {
                        Store (HPBU, Local1)
                        Store (HBID, Local2)
                    }
                    Else
                    {
                        Store (RBEC (0x47), Local2)
                        And (Local2, One, Local1)
                        And (Local2, 0x04, Local2)
                        ShiftRight (Local2, 0x02, Local2)
                    }

                    If (Local2)
                    {
                        Store (0x0F, Local0)
                    }
                    ElseIf (HDUB)
                    {
                        Store (0x0F, Local0)
                    }
                    ElseIf (LOr (LEqual (IDET, 0x03), LEqual (IDET, 0x06)))
                    {
                        Store (IDET, Local0)
                    }
                    Else
                    {
                        Store (0x07, Local0)
                    }

                    If (LEqual (Local0, 0x0F)) {}
                }

                If (LAnd (HDUB, LLess (Local0, 0x0C)))
                {
                    Store (0x0F, Local0)
                }

                Return (Local0)
            }

            Method (IRDY, 0, NotSerialized)
            {
                Store (0x01F4, Local0)
                Store (0x3C, Local1)
                Store (Zero, Local2)
                While (Local1)
                {
                    Sleep (Local0)
                    Store (BCHK (), Local3)
                    If (LNot (Local3))
                    {
                        Break
                    }

                    If (LEqual (Local3, 0x02))
                    {
                        Store (One, Local2)
                        Break
                    }

                    Decrement (Local1)
                }

                Return (Local2)
            }
        }

        Scope (\_SB)
        {
            Device (GDCK)
            {
                Name (_HID, EisaId ("IBM0079"))  // _HID: Hardware ID
                Name (_CID, EisaId ("PNP0C15"))  // _CID: Compatible ID
                Name (XHOS, Zero)
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Store (GGID (), Local0)
                    Store (Zero, Local1)
                    If (LEqual (Local0, 0x05))
                    {
                        Store (^^PCI0.LPC.EC.SSTA (), Local1)
                    }

                    Return (Local1)
                }

                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    ^^PCI0.LPC.EC.SINI ()
                    ^^PCI0.LPC.EC.DATT (0x02, One)
                    If (LEqual (GGID (), 0x07))
                    {
                        ^^PCI0.LPC.EC.DATT (One, Zero)
                        ^^PCI0.LPC.EC.DATT (Zero, One)
                    }
                    Else
                    {
                        ^^PCI0.LPC.EC.DATT (One, One)
                        ^^PCI0.LPC.EC.DATT (Zero, Zero)
                    }

                    ^^PCI0.LPC.EC.DDWK (Zero)
                    Store (One, ^^PCI0.LPC.DSCI)
                }

                Method (_DCK, 1, NotSerialized)  // _DCK: Dock Present
                {
                    Store (Zero, Local0)
                    If (LEqual (GGID (), 0x05))
                    {
                        Store (^^PCI0.LPC.EC.SDCK (Arg0), Local0)
                    }

                    Return (Local0)
                }

                Name (UDOP, Zero)
                Method (_EJ0, 1, NotSerialized)  // _EJx: Eject Device
                {
                    If (LEqual (GGID (), 0x05))
                    {
                        ^^PCI0.LPC.EC.SEJ0 (Arg0)
                    }
                }

                Method (_EJ3, 1, NotSerialized)  // _EJx: Eject Device
                {
                    If (LEqual (GGID (), 0x05))
                    {
                        ^^PCI0.LPC.EC.SEJ3 (Arg0)
                    }
                }

                Method (_EJ4, 1, NotSerialized)  // _EJx: Eject Device
                {
                    If (LEqual (GGID (), 0x05))
                    {
                        ^^PCI0.LPC.EC.SEJ4 (Arg0)
                    }
                }

                Method (PEJ3, 0, NotSerialized)
                {
                    If (LEqual (GGID (), 0x05))
                    {
                        ^^PCI0.LPC.EC.PSE3 ()
                    }
                }

                Method (_BDN, 0, NotSerialized)  // _BDN: BIOS Dock Name
                {
                    Store (Zero, Local0)
                    If (LEqual (GGID (), 0x05))
                    {
                        Store (^^PCI0.LPC.EC.SLBN (), Local0)
                    }

                    Return (Local0)
                }

                Method (_UID, 0, NotSerialized)  // _UID: Unique ID
                {
                    Store (Zero, Local0)
                    If (LEqual (GGID (), 0x05))
                    {
                        Store (^^PCI0.LPC.EC.SLUD (), Local0)
                    }

                    Return (Local0)
                }

                Method (GPTS, 1, NotSerialized)
                {
                    ^^PCI0.LPC.EC.SPTS (Arg0)
                }

                Method (GWAK, 1, NotSerialized)
                {
                    ^^PCI0.LPC.EC.SWAK (Arg0)
                    ^^PCI0.LPC.EC.DDWK (Zero)
                }

                Method (GGPE, 0, NotSerialized)
                {
                    If (LEqual (GGID (), 0x05))
                    {
                        ^^PCI0.LPC.EC.SGPE ()
                    }
                }

                Name (G_ID, Ones)
                Method (GGID, 0, NotSerialized)
                {
                    Store (^^PCI0.LPC.DOI0, Local0)
                    Store (^^PCI0.LPC.DOI1, Local1)
                    Store (^^PCI0.LPC.DOI2, Local2)
                    Or (Local0, ShiftLeft (Local1, One), Local0)
                    Or (Local0, ShiftLeft (Local2, 0x02), Local0)
                    Store (Local0, G_ID)
                    Return (Local0)
                }
            }
        }

        Scope (PCI0.LPC.EC)
        {
            Method (_Q50, 0, NotSerialized)  // _Qxx: EC Query
            {
                Store (^^^^GDCK.GGID (), Local0)
                If (LNotEqual (Local0, 0x07))
                {
                    LED (0x08, 0x80)
                    LED (0x08, 0xC0)
                    If (LEqual (Local0, 0x05))
                    {
                        SPEJ ()
                        GUSB (Zero)
                        Sleep (0x012C)
                    }

                    Notify (GDCK, 0x03)
                }
            }

            Method (_Q45, 0, NotSerialized)  // _Qxx: EC Query
            {
                Store (Ones, ^^^^GDCK.G_ID)
                Store (Ones, SLID)
                Store (^^^^GDCK.GGID (), Local0)
                If (LEqual (Local0, 0x07))
                {
                    LED (0x08, Zero)
                    GUSB (Zero)
                    Notify (GDCK, 0x03)
                }

                If (LEqual (Local0, 0x05))
                {
                    LED (0x08, 0x80)
                    ASSI (Zero)
                    If (And (^^^XHCI.PR2, 0x04))
                    {
                        And (^^^XHCI.PR2, 0xFB, ^^^XHCI.PR2)
                    }

                    If (And (^^^XHCI.PR3, 0x04))
                    {
                        And (^^^XHCI.PR3, 0xFB, ^^^XHCI.PR3)
                    }

                    Sleep (0x64)
                    If (H8DR)
                    {
                        Store (SLIS, Local1)
                    }
                    Else
                    {
                        And (RBEC (0x02), One, Local1)
                    }

                    If (LEqual (Local1, One))
                    {
                        Notify (GDCK, Zero)
                    }
                }
                ElseIf (DOCD)
                {
                    Sleep (0x64)
                    If (EPWG)
                    {
                        Noop
                    }
                    ElseIf (HPAC)
                    {
                        _Q27 ()
                    }

                    ASSI (0x02)
                    Sleep (0x64)
                    If (LAnd (LNotEqual (^^^^GDCK.XHOS, Zero), LNotEqual (XHCM, Zero)))
                    {
                        If (Not (And (^^^XHCI.PR2, 0x04)))
                        {
                            Or (^^^XHCI.PR2, 0x04, ^^^XHCI.PR2)
                        }

                        If (Not (And (^^^XHCI.PR3, 0x04)))
                        {
                            Or (^^^XHCI.PR3, 0x04, ^^^XHCI.PR3)
                        }
                    }

                    ^HKEY.MHKQ (0x4010)
                }
                Else
                {
                    Sleep (0x64)
                    If (HPAC)
                    {
                        _Q26 ()
                    }

                    ^HKEY.MHKQ (0x4011)
                }
            }

            Method (GUSB, 1, NotSerialized)
            {
                If (H8DR)
                {
                    Store (Arg0, SLIS)
                    If (LEqual (Arg0, Zero))
                    {
                        LED (0x08, Zero)
                        If (LEqual (XHCM, Zero))
                        {
                            Notify (^^^EHC1.URTH.URMH.PRT2, 0x03)
                        }
                        ElseIf (And (^^^XHCI.PR2, 0x04))
                        {
                            Notify (^^^XHCI.URTH.HSP2, 0x03)
                        }
                    }
                }
                Else
                {
                    MBEC (0x02, 0xFE, Arg0)
                }
            }

            Method (DATT, 2, NotSerialized)
            {
                Store (Zero, Local0)
                If (LEqual (Arg0, Zero))
                {
                    If (LEqual (Arg1, One))
                    {
                        If (H8DR)
                        {
                            Or (HAM6, 0x80, HAM6)
                        }
                        Else
                        {
                            MBEC (0x16, 0xFF, 0x80)
                        }

                        Store (One, Local0)
                    }

                    If (LEqual (Arg1, Zero))
                    {
                        If (H8DR)
                        {
                            And (HAM6, 0x7F, HAM6)
                        }
                        Else
                        {
                            MBEC (0x16, 0x7F, Zero)
                        }
                    }

                    If (LEqual (Arg1, 0x02))
                    {
                        If (H8DR)
                        {
                            If (And (HAM6, 0x80))
                            {
                                Store (One, Local0)
                            }
                        }
                        ElseIf (And (RBEC (0x16), 0x80))
                        {
                            Store (One, Local0)
                        }
                    }
                }

                If (LEqual (Arg0, One))
                {
                    If (LEqual (Arg1, One))
                    {
                        If (H8DR)
                        {
                            Or (HAMA, One, HAMA)
                        }
                        Else
                        {
                            MBEC (0x1A, 0xFF, One)
                        }

                        Store (One, Local0)
                    }

                    If (LEqual (Arg1, Zero))
                    {
                        If (H8DR)
                        {
                            And (HAMA, 0xFE, HAMA)
                        }
                        Else
                        {
                            MBEC (0x1A, 0xFE, Zero)
                        }
                    }

                    If (LEqual (Arg1, 0x02))
                    {
                        If (H8DR)
                        {
                            If (And (HAMA, One))
                            {
                                Store (One, Local0)
                            }
                        }
                        ElseIf (And (RBEC (0x1A), One))
                        {
                            Store (One, Local0)
                        }
                    }
                }

                If (LEqual (Arg0, 0x02))
                {
                    If (LEqual (Arg1, One))
                    {
                        If (H8DR)
                        {
                            Or (HAMB, One, HAMB)
                        }
                        Else
                        {
                            MBEC (0x1B, 0xFF, One)
                        }

                        Store (One, Local0)
                    }

                    If (LEqual (Arg1, Zero))
                    {
                        If (H8DR)
                        {
                            And (HAMB, 0xFE, HAMB)
                        }
                        Else
                        {
                            MBEC (0x1B, 0xFE, Zero)
                        }
                    }

                    If (LEqual (Arg1, 0x02))
                    {
                        If (H8DR)
                        {
                            If (And (HAMB, One))
                            {
                                Store (One, Local0)
                            }
                        }
                        ElseIf (And (RBEC (0x1B), One))
                        {
                            Store (One, Local0)
                        }
                    }
                }

                Return (Local0)
            }

            Method (DDWK, 1, NotSerialized)
            {
                Store (Zero, Local0)
                If (LEqual (Arg0, One))
                {
                    If (H8DR)
                    {
                        Store (One, HWDK)
                    }
                    Else
                    {
                        MBEC (0x32, 0xFF, 0x08)
                    }

                    Store (One, Local0)
                }

                If (LEqual (Arg0, Zero))
                {
                    If (H8DR)
                    {
                        Store (Zero, HWDK)
                    }
                    Else
                    {
                        MBEC (0x32, 0xF7, Zero)
                    }
                }

                If (LEqual (Arg0, 0x02))
                {
                    If (H8DR)
                    {
                        If (HWDK)
                        {
                            Store (One, Local0)
                        }
                    }
                    ElseIf (And (RBEC (0x32), 0x08))
                    {
                        Store (One, Local0)
                    }
                }

                Return (Local0)
            }
        }

        Scope (PCI0.LPC.EC.HKEY)
        {
            Method (GDKS, 0, NotSerialized)
            {
                Store (Zero, Local0)
                Sleep (0x01F4)
                If (LEqual (DOCD, One))
                {
                    If (DOCD)
                    {
                        Store (ACSB, Local0)
                        ShiftLeft (Local0, One, Local0)
                    }

                    Or (Local0, One, Local0)
                    Store (^^^^^GDCK.GGID (), Local1)
                    ShiftLeft (Local1, 0x08, Local1)
                    Or (Local0, Local1, Local0)
                }

                Return (Local0)
            }
        }

        Scope (PCI0.LPC.EC)
        {
            Name (SLID, Ones)
            Name (SIDB, Ones)
            Name (SFLG, Zero)
            Name (SUCT, Zero)
            Name (SHKE, Zero)
            Method (SLBN, 0, NotSerialized)
            {
                Store (Zero, Local0)
                If (LEqual (^^^^GDCK.GGID (), 0x05))
                {
                    Return (0x0200AE30)
                }
            }

            Method (SLUD, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (SSTA, 0, NotSerialized)
            {
                SUDK ()
                SUDT ()
                If (LEqual (GSID (), 0x05))
                {
                    Store (0x0F, Local0)
                }
                ElseIf (LNot (W98F))
                {
                    Store (Zero, Local0)
                }
                Else
                {
                    Store (0x0C, Local0)
                }

                If (W98F)
                {
                    Store (HIDS (Local0), Local0)
                }

                Return (Local0)
            }

            Method (SINI, 0, NotSerialized)
            {
                If (LEqual (GSID (), 0x05))
                {
                    Or (SFLG, 0x0400, SFLG)
                }
                Else
                {
                    And (SFLG, 0xFFFFFBFF, SFLG)
                }
            }

            Method (SPTS, 1, NotSerialized)
            {
                If (LAnd (LGreaterEqual (Arg0, One), LLessEqual (Arg0, 0x04)))
                {
                    Store (Zero, SHKE)
                    Store (Zero, SIDB)
                    If (And (SFLG, 0x02))
                    {
                        Store (Zero, SLID)
                        And (SFLG, 0xFFFFFFFD, SFLG)
                    }

                    If (LEqual (GSID (), 0x05))
                    {
                        If (LEqual (Arg0, 0x03))
                        {
                            DDWK (One)
                        }

                        Store (0x05, SIDB)
                    }

                    Or (SFLG, 0x0100, SFLG)
                }
            }

            Method (SWAK, 1, NotSerialized)
            {
                Store (Ones, SLID)
                If (LAnd (LGreaterEqual (Arg0, One), LLessEqual (Arg0, 0x04)))
                {
                    If (LEqual (SIDB, 0x05))
                    {
                        If (LEqual (GSID (), 0x05))
                        {
                            LED (0x03, 0x80)
                            ShiftLeft (Arg0, 0x08, SHKE)
                        }
                        Else
                        {
                            GUSB (Zero)
                            Notify (GDCK, Zero)
                            And (SFLG, 0xFFFFFBFF, SFLG)
                        }
                    }
                    ElseIf (LEqual (GSID (), 0x05))
                    {
                        ASSI (Zero)
                        Sleep (0x64)
                        WSDK ()
                    }
                    Else
                    {
                        Noop
                    }

                    And (SFLG, 0xFFFFFEFF, SFLG)
                    And (SFLG, 0xFFFFFFFD, SFLG)
                    And (SFLG, 0xFFFFFFEF, SFLG)
                    And (SFLG, 0xFFFFFFDF, SFLG)
                }
            }

            Method (SGPE, 0, NotSerialized)
            {
                Or (SFLG, 0x08, SFLG)
            }

            Method (SDCK, 1, NotSerialized)
            {
                If (H8DR)
                {
                    If (Arg0)
                    {
                        BSCN ()
                        DATT (One, One)
                        Or (SFLG, 0x0400, SFLG)
                    }
                    Else
                    {
                        Or (SFLG, 0x02, SFLG)
                        GUSB (Zero)
                        Store (One, HB1I)
                        If (WNTF)
                        {
                            Store (Zero, ^BAT1.B1ST)
                            Store (Zero, ^BAT1.XB1S)
                        }

                        BEJ0 (One)
                        DATT (One, Zero)
                        And (SFLG, 0xFFFFFBFF, SFLG)
                    }
                }

                Return (One)
            }

            Method (SEJ0, 1, NotSerialized)
            {
                Store (Zero, SLID)
                If (Arg0)
                {
                    ASSI (One)
                }

                LED (0x03, Zero)
                SUDI ()
                And (SFLG, 0xFFFFFFFD, SFLG)
            }

            Method (SEJ3, 1, NotSerialized)
            {
                Or (SFLG, 0x10, SFLG)
                If (LEqual (SPS, 0x03))
                {
                    PSE3 ()
                }
            }

            Method (SEJ4, 1, NotSerialized)
            {
                Or (SFLG, 0x20, SFLG)
            }

            Method (PSE3, 0, NotSerialized)
            {
                If (And (SFLG, 0x10))
                {
                    LED (0x03, Zero)
                }
            }

            Name (SHDE, Zero)
            Method (WSDK, 0, NotSerialized)
            {
                If (And (SFLG, 0x30))
                {
                    SDCK (One)
                    If (W98F)
                    {
                        Or (SFLG, 0x0200, SFLG)
                        Store (0x05, SHDE)
                    }
                }
                Else
                {
                    Notify (GDCK, Zero)
                }
            }

            Method (HIDS, 1, NotSerialized)
            {
                Store (Arg0, Local0)
                If (And (SFLG, 0x0200))
                {
                    If (LEqual (Arg0, 0x0F))
                    {
                        If (W98F)
                        {
                            Store (0x0C, Local0)
                        }

                        Decrement (SHDE)
                        If (LNot (SHDE))
                        {
                            And (SFLG, 0xFFFFFDFF, SFLG)
                            Notify (GDCK, Zero)
                        }
                    }
                    Else
                    {
                        And (SFLG, 0xFFFFFDFF, SFLG)
                    }
                }

                Return (Local0)
            }

            Method (SUDK, 0, NotSerialized)
            {
                If (And (SFLG, 0x08))
                {
                    If (LNot (And (SFLG, 0x0100)))
                    {
                        Or (SHKE, 0x2004, SHKE)
                        If (LEqual (UOPT, Zero))
                        {
                            ^HKEY.MHKQ (SHKE)
                        }

                        If (W98F)
                        {
                            Notify (GDCK, One)
                        }
                        Else
                        {
                            Notify (GDCK, 0x03)
                        }

                        And (SFLG, 0xFFFFFFF7, SFLG)
                    }
                }
            }

            Method (SUDI, 0, NotSerialized)
            {
                If (WNTF)
                {
                    Store (One, SUCT)
                }
                Else
                {
                    Store (0x05, SUCT)
                }
            }

            Method (SUDT, 0, NotSerialized)
            {
                If (And (SHKE, 0x2004))
                {
                    If (LEqual (GSID (), Zero))
                    {
                        If (LNot (Decrement (SUCT)))
                        {
                            Store (Zero, SHKE)
                            If (LEqual (UOPT, Zero))
                            {
                                ^HKEY.MHKQ (0x4003)
                            }
                        }
                    }
                }
            }

            Method (GSID, 0, NotSerialized)
            {
                If (LEqual (SLID, Ones))
                {
                    Store (Ones, ^^^^GDCK.G_ID)
                    If (LEqual (^^^^GDCK.GGID (), 0x05))
                    {
                        Store (0x05, SLID)
                    }
                    Else
                    {
                        Store (Zero, SLID)
                    }
                }

                Return (SLID)
            }

            Method (SPEJ, 0, NotSerialized)
            {
                LED (0x03, Zero)
                Sleep (0xC8)
                LED (0x08, 0x80)
                Sleep (0xC8)
                LED (0x08, Zero)
                Sleep (0xC8)
                LED (0x08, 0x80)
                Sleep (0xC8)
                LED (0x08, Zero)
                Sleep (0xC8)
                LED (0x08, 0x80)
            }
        }

        Scope (PCI0.LPC.EC)
        {
            Method (_Q43, 0, NotSerialized)  // _Qxx: EC Query
            {
                UCMS (0x18)
            }

            Method (SAUM, 1, NotSerialized)
            {
                If (LGreater (Arg0, 0x03))
                {
                    Noop
                }
                ElseIf (H8DR)
                {
                    Store (Arg0, HAUM)
                }
                Else
                {
                    MBEC (0x03, 0x9F, ShiftLeft (Arg0, 0x05))
                }
            }
        }

        Scope (PCI0.LPC.EC.HKEY)
        {
            Method (GSMS, 1, NotSerialized)
            {
                Return (AUDC (Zero, Zero))
            }

            Method (SSMS, 1, NotSerialized)
            {
                Return (AUDC (One, And (Arg0, One)))
            }

            Method (SHDA, 1, NotSerialized)
            {
                Return (AUDC (0x02, And (Arg0, One)))
            }
        }

        Scope (PCI0.LPC.EC)
        {
            Name (BRTW, Package (0x12)
            {
                0x64, 
                0x64, 
                0x05, 
                0x0A, 
                0x14, 
                0x19, 
                0x1E, 
                0x23, 
                0x28, 
                0x2D, 
                0x32, 
                0x37, 
                0x3C, 
                0x41, 
                0x46, 
                0x50, 
                0x5A, 
                0x64
            })
            Name (BRTB, Package (0x03)
            {
                Package (0x16)
                {
                    0x14, 
                    0x04, 
                    0x04, 
                    0x08, 
                    0x0C, 
                    0x13, 
                    0x19, 
                    0x20, 
                    0x27, 
                    0x30, 
                    0x39, 
                    0x43, 
                    0x4E, 
                    0x5C, 
                    0x71, 
                    0x8B, 
                    0xB4, 
                    0xFF, 
                    0x0145, 
                    0x0145, 
                    0x04, 
                    0x04
                }, 

                Package (0x16)
                {
                    0x1E, 
                    0x03, 
                    0x03, 
                    0x06, 
                    0x09, 
                    0x0C, 
                    0x0F, 
                    0x13, 
                    0x17, 
                    0x1C, 
                    0x21, 
                    0x28, 
                    0x32, 
                    0x41, 
                    0x58, 
                    0x7D, 
                    0xB9, 
                    0xFF, 
                    0xD2, 
                    0xD2, 
                    0x03, 
                    0x03
                }, 

                Package (0x16)
                {
                    Zero, 
                    0x04, 
                    0x04, 
                    0x07, 
                    0x09, 
                    0x0C, 
                    0x10, 
                    0x15, 
                    0x1C, 
                    0x25, 
                    0x32, 
                    0x40, 
                    0x50, 
                    0x64, 
                    0x82, 
                    0xA5, 
                    0xCD, 
                    0xFF, 
                    0xDC, 
                    0xDC, 
                    0x04, 
                    0x04
                }
            })
            Name (BRTD, Package (0x04)
            {
                Package (0x65)
                {
                    0x03, 
                    0x04, 
                    0x05, 
                    0x06, 
                    0x07, 
                    0x08, 
                    0x09, 
                    0x0A, 
                    0x0B, 
                    0x0C, 
                    0x0D, 
                    0x0E, 
                    0x0F, 
                    0x10, 
                    0x11, 
                    0x12, 
                    0x13, 
                    0x14, 
                    0x15, 
                    0x16, 
                    0x17, 
                    0x18, 
                    0x19, 
                    0x1A, 
                    0x1C, 
                    0x1D, 
                    0x1F, 
                    0x21, 
                    0x22, 
                    0x24, 
                    0x26, 
                    0x28, 
                    0x2A, 
                    0x2C, 
                    0x2E, 
                    0x30, 
                    0x33, 
                    0x35, 
                    0x37, 
                    0x3A, 
                    0x3C, 
                    0x3F, 
                    0x41, 
                    0x44, 
                    0x46, 
                    0x49, 
                    0x4C, 
                    0x4F, 
                    0x51, 
                    0x54, 
                    0x57, 
                    0x5A, 
                    0x5D, 
                    0x61, 
                    0x64, 
                    0x67, 
                    0x6A, 
                    0x6E, 
                    0x71, 
                    0x75, 
                    0x78, 
                    0x7C, 
                    0x80, 
                    0x83, 
                    0x87, 
                    0x8B, 
                    0x8F, 
                    0x93, 
                    0x97, 
                    0x9B, 
                    0x9F, 
                    0xA3, 
                    0xA8, 
                    0xAC, 
                    0xB0, 
                    0xB5, 
                    0xB9, 
                    0xBE, 
                    0xC3, 
                    0xC7, 
                    0xCC, 
                    0xCE, 
                    0xD1, 
                    0xD3, 
                    0xD6, 
                    0xD8, 
                    0xDB, 
                    0xDD, 
                    0xE0, 
                    0xE2, 
                    0xE5, 
                    0xE7, 
                    0xEA, 
                    0xEC, 
                    0xEF, 
                    0xF2, 
                    0xF4, 
                    0xF7, 
                    0xFA, 
                    0xFC, 
                    0xFF
                }, 

                Package (0x65)
                {
                    0x03, 
                    0x04, 
                    0x05, 
                    0x06, 
                    0x07, 
                    0x08, 
                    0x09, 
                    0x0A, 
                    0x0B, 
                    0x0C, 
                    0x0D, 
                    0x0E, 
                    0x0F, 
                    0x10, 
                    0x11, 
                    0x12, 
                    0x13, 
                    0x14, 
                    0x15, 
                    0x16, 
                    0x17, 
                    0x18, 
                    0x19, 
                    0x1A, 
                    0x1B, 
                    0x1C, 
                    0x1D, 
                    0x1E, 
                    0x1F, 
                    0x20, 
                    0x21, 
                    0x22, 
                    0x23, 
                    0x25, 
                    0x26, 
                    0x28, 
                    0x2A, 
                    0x2C, 
                    0x2E, 
                    0x2F, 
                    0x31, 
                    0x33, 
                    0x35, 
                    0x37, 
                    0x3A, 
                    0x3C, 
                    0x3E, 
                    0x40, 
                    0x42, 
                    0x45, 
                    0x47, 
                    0x4A, 
                    0x4C, 
                    0x4E, 
                    0x51, 
                    0x54, 
                    0x56, 
                    0x59, 
                    0x5C, 
                    0x5E, 
                    0x61, 
                    0x64, 
                    0x67, 
                    0x6A, 
                    0x6D, 
                    0x70, 
                    0x73, 
                    0x76, 
                    0x79, 
                    0x7D, 
                    0x80, 
                    0x83, 
                    0x86, 
                    0x8A, 
                    0x8D, 
                    0x91, 
                    0x94, 
                    0x98, 
                    0x9C, 
                    0x9F, 
                    0xA3, 
                    0xA7, 
                    0xAB, 
                    0xAF, 
                    0xB4, 
                    0xB8, 
                    0xBC, 
                    0xC1, 
                    0xC5, 
                    0xCA, 
                    0xCE, 
                    0xD3, 
                    0xD8, 
                    0xDC, 
                    0xE1, 
                    0xE6, 
                    0xEB, 
                    0xF0, 
                    0xF5, 
                    0xFA, 
                    0xFF
                }, 

                Package (0x65)
                {
                    0x03, 
                    0x04, 
                    0x05, 
                    0x06, 
                    0x07, 
                    0x08, 
                    0x09, 
                    0x0A, 
                    0x0B, 
                    0x0C, 
                    0x0D, 
                    0x0E, 
                    0x0F, 
                    0x10, 
                    0x11, 
                    0x12, 
                    0x13, 
                    0x14, 
                    0x15, 
                    0x16, 
                    0x17, 
                    0x18, 
                    0x19, 
                    0x1A, 
                    0x1C, 
                    0x1D, 
                    0x1F, 
                    0x21, 
                    0x22, 
                    0x24, 
                    0x26, 
                    0x28, 
                    0x2A, 
                    0x2C, 
                    0x2E, 
                    0x30, 
                    0x33, 
                    0x35, 
                    0x37, 
                    0x3A, 
                    0x3C, 
                    0x3F, 
                    0x41, 
                    0x44, 
                    0x46, 
                    0x49, 
                    0x4C, 
                    0x4F, 
                    0x51, 
                    0x54, 
                    0x57, 
                    0x5A, 
                    0x5D, 
                    0x61, 
                    0x64, 
                    0x67, 
                    0x6A, 
                    0x6E, 
                    0x71, 
                    0x75, 
                    0x78, 
                    0x7C, 
                    0x80, 
                    0x83, 
                    0x87, 
                    0x8B, 
                    0x8F, 
                    0x93, 
                    0x97, 
                    0x9B, 
                    0x9F, 
                    0xA3, 
                    0xA8, 
                    0xAC, 
                    0xB0, 
                    0xB5, 
                    0xB9, 
                    0xBE, 
                    0xC3, 
                    0xC7, 
                    0xCC, 
                    0xCE, 
                    0xD1, 
                    0xD3, 
                    0xD6, 
                    0xD8, 
                    0xDB, 
                    0xDD, 
                    0xE0, 
                    0xE2, 
                    0xE5, 
                    0xE7, 
                    0xEA, 
                    0xEC, 
                    0xEF, 
                    0xF2, 
                    0xF4, 
                    0xF7, 
                    0xFA, 
                    0xFC, 
                    0xFF
                }, 

                Package (0x65)
                {
                    0x03, 
                    0x04, 
                    0x05, 
                    0x06, 
                    0x07, 
                    0x08, 
                    0x09, 
                    0x0A, 
                    0x0B, 
                    0x0C, 
                    0x0D, 
                    0x0E, 
                    0x0F, 
                    0x10, 
                    0x11, 
                    0x12, 
                    0x13, 
                    0x14, 
                    0x15, 
                    0x16, 
                    0x17, 
                    0x18, 
                    0x19, 
                    0x1A, 
                    0x1C, 
                    0x1D, 
                    0x1F, 
                    0x21, 
                    0x22, 
                    0x24, 
                    0x26, 
                    0x28, 
                    0x2A, 
                    0x2C, 
                    0x2E, 
                    0x30, 
                    0x33, 
                    0x35, 
                    0x37, 
                    0x3A, 
                    0x3C, 
                    0x3F, 
                    0x41, 
                    0x44, 
                    0x46, 
                    0x49, 
                    0x4C, 
                    0x4F, 
                    0x51, 
                    0x54, 
                    0x57, 
                    0x5A, 
                    0x5D, 
                    0x61, 
                    0x64, 
                    0x67, 
                    0x6A, 
                    0x6E, 
                    0x71, 
                    0x75, 
                    0x78, 
                    0x7C, 
                    0x80, 
                    0x83, 
                    0x87, 
                    0x8B, 
                    0x8F, 
                    0x93, 
                    0x97, 
                    0x9B, 
                    0x9F, 
                    0xA3, 
                    0xA8, 
                    0xAC, 
                    0xB0, 
                    0xB5, 
                    0xB9, 
                    0xBE, 
                    0xC3, 
                    0xC7, 
                    0xCC, 
                    0xCE, 
                    0xD1, 
                    0xD3, 
                    0xD6, 
                    0xD8, 
                    0xDB, 
                    0xDD, 
                    0xE0, 
                    0xE2, 
                    0xE5, 
                    0xE7, 
                    0xEA, 
                    0xEC, 
                    0xEF, 
                    0xF2, 
                    0xF4, 
                    0xF7, 
                    0xFA, 
                    0xFC, 
                    0xFF
                }
            })
            Method (_Q14, 0, NotSerialized)  // _Qxx: EC Query
            {
                Notify (KBD, 0x0206)
                Notify (KBD, 0x0286)
            }

            Method (_Q15, 0, NotSerialized)  // _Qxx: EC Query
            {
                Notify (KBD, 0x0205)
                Notify (KBD, 0x0285)
            }

            Method (BRNS, 0, NotSerialized)
            {
                Add (BRLV, 0x02, Local0)
                Store (BRTN, Local3)
                If (^^^IGPU.DRDY)
                {
                    If (LEqual (Zero, Local0))
                    {
                        Store (DerefOf (Index (DerefOf (Index (BRTB, Local3)), 0x14)), Local1)
                        Store (DerefOf (Index (DerefOf (Index (BRTB, Local3)), 0x12)), Local2)
                    }
                    Else
                    {
                        Store (DerefOf (Index (DerefOf (Index (BRTB, Local3)), 0x15)), Local1)
                        Store (DerefOf (Index (DerefOf (Index (BRTB, Local3)), 0x13)), Local2)
                    }

                    Or (Local1, ShiftLeft (Local2, 0x09), Local2)
                    ^^^IGPU.AINT (0x03, Local2)
                    Store (DerefOf (Index (DerefOf (Index (BRTB, Local3)), Local0)), Local2)
                    ^^^IGPU.AINT (One, Local2)
                }
                Else
                {
                    UCMS (0x12)
                }
            }

            Method (BRCF, 1, NotSerialized)
            {
                If (LLess (Arg0, Zero))
                {
                    Return (Zero)
                }

                If (LGreater (Arg0, 0x64))
                {
                    Return (0x0F)
                }

                Add (Arg0, 0x03, Local0)
                Multiply (Local0, 0x0F, Local0)
                Divide (Local0, 0x64, Local0, Local1)
                Return (Local1)
            }

            Method (BRCD, 1, NotSerialized)
            {
                Store (DerefOf (Index (DerefOf (Index (BRTD, BRTN)), Arg0)), Local0)
                Return (Local0)
            }
        }

        Scope (PCI0.LPC.EC)
        {
            Method (_Q19, 0, NotSerialized)  // _Qxx: EC Query
            {
                If (^HKEY.MHKK (0x00800000))
                {
                    ^HKEY.MHKQ (0x1018)
                }

                UCMS (0x03)
            }
        }

        Scope (PCI0.LPC.EC)
        {
            Method (_Q63, 0, NotSerialized)  // _Qxx: EC Query
            {
                If (^HKEY.MHKK (0x00080000))
                {
                    ^HKEY.MHKQ (0x1014)
                }

                UCMS (0x0B)
            }
        }

        Scope (PCI0.LPC.EC)
        {
            Method (_Q70, 0, NotSerialized)  // _Qxx: EC Query
            {
                FNST ()
            }

            Method (_Q72, 0, NotSerialized)  // _Qxx: EC Query
            {
                FNST ()
            }

            Method (_Q73, 0, NotSerialized)  // _Qxx: EC Query
            {
                FNST ()
            }

            Method (FNST, 0, NotSerialized)
            {
                If (H8DR)
                {
                    Store (HFNS, Local0)
                    Store (HFNE, Local1)
                }
                Else
                {
                    And (RBEC (0x0E), 0x03, Local0)
                    And (RBEC (Zero), 0x08, Local1)
                }

                If (Local1)
                {
                    If (LEqual (Local0, Zero))
                    {
                        UCMS (0x11)
                    }

                    If (LEqual (Local0, One))
                    {
                        UCMS (0x0F)
                    }

                    If (LEqual (Local0, 0x02))
                    {
                        UCMS (0x10)
                    }

                    ^HKEY.MHKQ (0x6005)
                }
            }
        }

        Scope (PCI0.LPC.EC.HKEY)
        {
            Method (GHSL, 1, NotSerialized)
            {
                Return (FNSC (Zero, Zero))
            }

            Method (SHSL, 1, NotSerialized)
            {
                Return (FNSC (One, And (Arg0, One)))
            }
        }

        Scope (PCI0.LPC.EC.HKEY)
        {
            Name (WGFL, Zero)
            Method (WSIF, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (WLSW, 0, NotSerialized)
            {
                Return (GSTS)
            }

            Method (GWAN, 0, NotSerialized)
            {
                Store (Zero, Local0)
                If (And (WGFL, One))
                {
                    Or (Local0, One, Local0)
                }

                If (And (WGFL, 0x08))
                {
                    Return (Local0)
                }

                If (WPWS ())
                {
                    Or (Local0, 0x02, Local0)
                }

                Or (Local0, 0x04, Local0)
                Return (Local0)
            }

            Method (SWAN, 1, NotSerialized)
            {
                If (And (Arg0, 0x02))
                {
                    WPWC (One)
                }
                Else
                {
                    WPWC (Zero)
                }
            }

            Method (GBDC, 0, NotSerialized)
            {
                Store (Zero, Local0)
                If (And (WGFL, 0x10))
                {
                    Or (Local0, One, Local0)
                }

                If (And (WGFL, 0x80))
                {
                    Return (Local0)
                }

                If (BPWS ())
                {
                    Or (Local0, 0x02, Local0)
                }

                Or (Local0, 0x04, Local0)
                Return (Local0)
            }

            Method (SBDC, 1, NotSerialized)
            {
                If (And (Arg0, 0x02))
                {
                    BPWC (One)
                }
                Else
                {
                    BPWC (Zero)
                }
            }

            Method (WPWS, 0, NotSerialized)
            {
                If (H8DR)
                {
                    Store (DCWW, Local0)
                }
                Else
                {
                    Store (ShiftRight (And (RBEC (0x3A), 0x40), 0x06), Local0)
                }

                Return (Local0)
            }

            Method (WPWC, 1, NotSerialized)
            {
                If (LAnd (Arg0, LAnd (And (WGFL, One), LNot (And (WGFL, 0x08)))))
                {
                    If (H8DR)
                    {
                        Store (One, DCWW)
                    }
                    Else
                    {
                        MBEC (0x3A, 0xFF, 0x40)
                    }

                    Or (WGFL, 0x02, WGFL)
                }
                Else
                {
                    If (H8DR)
                    {
                        Store (Zero, DCWW)
                    }
                    Else
                    {
                        MBEC (0x3A, 0xBF, Zero)
                    }

                    And (WGFL, 0xFFFFFFFD, WGFL)
                }
            }

            Method (BPWS, 0, NotSerialized)
            {
                If (H8DR)
                {
                    Store (DCBD, Local0)
                }
                Else
                {
                    Store (ShiftRight (And (RBEC (0x3A), 0x10), 0x04), Local0)
                }

                Return (Local0)
            }

            Method (BPWC, 1, NotSerialized)
            {
                If (LAnd (Arg0, LAnd (And (WGFL, 0x10), LNot (And (WGFL, 0x80)))))
                {
                    If (H8DR)
                    {
                        Store (One, DCBD)
                    }
                    Else
                    {
                        MBEC (0x3A, 0xFF, 0x10)
                    }

                    Or (WGFL, 0x20, WGFL)
                }
                Else
                {
                    If (H8DR)
                    {
                        Store (Zero, DCBD)
                    }
                    Else
                    {
                        MBEC (0x3A, 0xEF, Zero)
                    }

                    And (WGFL, 0xFFFFFFDF, WGFL)
                }
            }

            Method (WGIN, 0, NotSerialized)
            {
                Store (Zero, WGFL)
                Store (WGSV (One), WGFL)
                If (WIN8)
                {
                    If (LAnd (WGFL, 0x10))
                    {
                        BPWC (One)
                    }
                }

                If (WPWS ())
                {
                    Or (WGFL, 0x02, WGFL)
                }

                If (BPWS ())
                {
                    Or (WGFL, 0x20, WGFL)
                }
            }

            Method (WGPS, 1, NotSerialized)
            {
                If (LGreaterEqual (Arg0, 0x04))
                {
                    BLTH (0x05)
                }
            }

            Method (WGWK, 1, NotSerialized)
            {
                If (And (WGFL, 0x20))
                {
                    BPWC (One)
                }

                If (And (WGFL, 0x02))
                {
                    WPWC (One)
                }
            }
        }

        Scope (PCI0.LPC.EC)
        {
            Method (_Q41, 0, NotSerialized)  // _Qxx: EC Query
            {
                ^HKEY.MHKQ (0x7000)
                If (WIN8)
                {
                    Notify (WGSH, 0x80)
                }
            }
        }

        Device (WMI1)
        {
            Name (_HID, EisaId ("PNP0C14"))  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_WDG, Buffer (0xB4)
            {
                /* 0000 */  0x0E, 0x23, 0xF5, 0x51, 0x77, 0x96, 0xCD, 0x46,
                /* 0008 */  0xA1, 0xCF, 0xC0, 0xB2, 0x3E, 0xE3, 0x4D, 0xB7,
                /* 0010 */  0x41, 0x30, 0x50, 0x05, 0x64, 0x9A, 0x47, 0x98,
                /* 0018 */  0xF5, 0x33, 0x33, 0x4E, 0xA7, 0x07, 0x8E, 0x25,
                /* 0020 */  0x1E, 0xBB, 0xC3, 0xA1, 0x41, 0x31, 0x01, 0x06,
                /* 0028 */  0xEF, 0x54, 0x4B, 0x6A, 0xED, 0xA5, 0x33, 0x4D,
                /* 0030 */  0x94, 0x55, 0xB0, 0xD9, 0xB4, 0x8D, 0xF4, 0xB3,
                /* 0038 */  0x41, 0x32, 0x01, 0x06, 0xB6, 0xEB, 0xF1, 0x74,
                /* 0040 */  0x7A, 0x92, 0x7D, 0x4C, 0x95, 0xDF, 0x69, 0x8E,
                /* 0048 */  0x21, 0xE8, 0x0E, 0xB5, 0x41, 0x33, 0x01, 0x06,
                /* 0050 */  0xFF, 0x04, 0xEF, 0x7E, 0x28, 0x43, 0x7C, 0x44,
                /* 0058 */  0xB5, 0xBB, 0xD4, 0x49, 0x92, 0x5D, 0x53, 0x8D,
                /* 0060 */  0x41, 0x34, 0x01, 0x06, 0x9E, 0x15, 0xDB, 0x8A,
                /* 0068 */  0x32, 0x1E, 0x5C, 0x45, 0xBC, 0x93, 0x30, 0x8A,
                /* 0070 */  0x7E, 0xD9, 0x82, 0x46, 0x41, 0x35, 0x01, 0x01,
                /* 0078 */  0xFD, 0xD9, 0x51, 0x26, 0x1C, 0x91, 0x69, 0x4B,
                /* 0080 */  0xB9, 0x4E, 0xD0, 0xDE, 0xD5, 0x96, 0x3B, 0xD7,
                /* 0088 */  0x41, 0x36, 0x01, 0x06, 0x1A, 0x65, 0x64, 0x73,
                /* 0090 */  0x2F, 0x13, 0xE7, 0x4F, 0xAD, 0xAA, 0x40, 0xC6,
                /* 0098 */  0xC7, 0xEE, 0x2E, 0x3B, 0x41, 0x37, 0x01, 0x06,
                /* 00A0 */  0x21, 0x12, 0x90, 0x05, 0x66, 0xD5, 0xD1, 0x11,
                /* 00A8 */  0xB2, 0xF0, 0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10,
                /* 00B0 */  0x42, 0x41, 0x01, 0x00                         
            })
            Name (RETN, Package (0x05)
            {
                "Success", 
                "Not Supported", 
                "Invalid Parameter", 
                "Access Denied", 
                "System Busy"
            })
            Name (ITEM, Package (0x51)
            {
                Package (0x02)
                {
                    0x0E, 
                    "WakeOnLAN"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "EthernetLANOptionROM"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "USBBIOSSupport"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "AlwaysOnUSB"
                }, 

                Package (0x02)
                {
                    One, 
                    "TrackPoint"
                }, 

                Package (0x02)
                {
                    One, 
                    "TouchPad"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "FnKeyLock"
                }, 

                Package (0x02)
                {
                    0x04, 
                    "ThinkPadNumLock"
                }, 

                Package (0x02)
                {
                    0x0C, 
                    "PowerOnNumLock"
                }, 

                Package (0x02)
                {
                    0x05, 
                    "BootDisplayDevice"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "SpeedStep"
                }, 

                Package (0x02)
                {
                    0x09, 
                    "AdaptiveThermalManagementAC"
                }, 

                Package (0x02)
                {
                    0x09, 
                    "AdaptiveThermalManagementBattery"
                }, 

                Package (0x02)
                {
                    0x06, 
                    "CDROMSpeed"
                }, 

                Package (0x02)
                {
                    One, 
                    "CPUPowerManagement"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "PowerControlBeep"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "LowBatteryAlarm"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "PasswordBeep"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "KeyboardBeep"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "ExtendedMemoryTest"
                }, 

                Package (0x02)
                {
                    0x07, 
                    "SATAControllerMode"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "CoreMultiProcessing"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "VirtualizationTechnology"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "LockBIOSSetting"
                }, 

                Package (0x02)
                {
                    0x0B, 
                    "MinimumPasswordLength"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "BIOSPasswordAtUnattendedBoot"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "FingerprintPredesktopAuthentication"
                }, 

                Package (0x02)
                {
                    0x08, 
                    "FingerprintReaderPriority"
                }, 

                Package (0x02)
                {
                    0x03, 
                    "FingerprintSecurityMode"
                }, 

                Package (0x02)
                {
                    0x02, 
                    "SecurityChip"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "BIOSUpdateByEndUsers"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "DataExecutionPrevention"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "EthernetLANAccess"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "WirelessLANAccess"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "WirelessWANAccess"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "BluetoothAccess"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "WirelessUSBAccess"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "ModemAccess"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "USBPortAccess"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "IEEE1394Access"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "ExpressCardAccess"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "PCIExpressSlotAccess"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "UltrabayAccess"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "MemoryCardSlotAccess"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "SmartCardSlotAccess"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "IntegratedCameraAccess"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "MicrophoneAccess"
                }, 

                Package (0x02)
                {
                    0x0A, 
                    "BootMode"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "StartupOptionKeys"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "BootDeviceListF12Option"
                }, 

                Package (0x02)
                {
                    0x64, 
                    "BootOrder"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "WiMAXAccess"
                }, 

                Package (0x02)
                {
                    0x0D, 
                    "GraphicsDevice"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "TXTFeature"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "VTdFeature"
                }, 

                Package (0x02)
                {
                    0x0F, 
                    "AMTControl"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "FingerprintPasswordAuthentication"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "FingerprintReaderAccess"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "OsDetectionForSwitchableGraphics"
                }, 

                Package (0x02)
                {
                    0x0F, 
                    "ComputraceModuleActivation"
                }, 

                Package (0x02)
                {
                    One, 
                    "PCIExpressPowerManagement"
                }, 

                Package (0x02)
                {
                    0x0F, 
                    "ATpModuleActivation"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "eSATAPortAccess"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "HardwarePasswordManager"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "HyperThreadingTechnology"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "FnCtrlKeySwap"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "BIOSPasswordAtReboot"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "OnByAcAttach"
                }, 

                Package (0x02)
                {
                    0x64, 
                    "NetworkBoot"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "BootOrderLock"
                }, 

                Package (0x02)
                {
                    0x10, 
                    "USB30Mode"
                }, 

                Package (0x02)
                {
                    0x11, 
                    "ExpressCardSpeed"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "RapidStartTechnology"
                }, 

                Package (0x02)
                {
                    0x12, 
                    "KeyboardIllumination"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "IPv4NetworkStack"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "IPv6NetworkStack"
                }, 

                Package (0x02)
                {
                    0x13, 
                    "UefiPxeBootPriority"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "PhysicalPresenceForTpmProvision"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "PhysicalPresenceForTpmClear"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "SecureRollBackPrevention"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "SecureBoot"
                }
            })
            Name (VSEL, Package (0x14)
            {
                Package (0x02)
                {
                    "Disable", 
                    "Enable"
                }, 

                Package (0x02)
                {
                    "Disable", 
                    "Automatic"
                }, 

                Package (0x03)
                {
                    "Active", 
                    "Inactive", 
                    "Disable"
                }, 

                Package (0x02)
                {
                    "Normal", 
                    "High"
                }, 

                Package (0x02)
                {
                    "Independent", 
                    "Synchronized"
                }, 

                Package (0x05)
                {
                    "LCD", 
                    "VGA", 
                    "Digital", 
                    "Digital1onDock", 
                    "Digital2onDock"
                }, 

                Package (0x03)
                {
                    "High", 
                    "Normal", 
                    "Silent"
                }, 

                Package (0x02)
                {
                    "Compatibility", 
                    "AHCI"
                }, 

                Package (0x02)
                {
                    "External", 
                    "InternalOnly"
                }, 

                Package (0x02)
                {
                    "MaximizePerformance", 
                    "Balanced"
                }, 

                Package (0x02)
                {
                    "Quick", 
                    "Diagnostics"
                }, 

                Package (0x0A)
                {
                    "Disable", 
                    "4", 
                    "5", 
                    "6", 
                    "7", 
                    "8", 
                    "9", 
                    "10", 
                    "11", 
                    "12"
                }, 

                Package (0x03)
                {
                    "Auto", 
                    "On", 
                    "Off"
                }, 

                Package (0x03)
                {
                    "IntegratedGfx", 
                    "DiscreteGfx", 
                    "SwitchableGfx"
                }, 

                Package (0x04)
                {
                    "Disable", 
                    "ACOnly", 
                    "ACandBattery", 
                    "Enable"
                }, 

                Package (0x03)
                {
                    "Disable", 
                    "Enable", 
                    "Disable"
                }, 

                Package (0x03)
                {
                    "Disable", 
                    "Enable", 
                    "Automatic"
                }, 

                Package (0x02)
                {
                    "Generation1", 
                    "Automatic"
                }, 

                Package (0x03)
                {
                    "ThinkLightOnly", 
                    "BacklightOnly", 
                    "Both"
                }, 

                Package (0x02)
                {
                    "IPv6First", 
                    "IPv4First"
                }
            })
            Name (VLST, Package (0x0F)
            {
                "HDD0", 
                "HDD1", 
                "HDD2", 
                "HDD3", 
                "HDD4", 
                "PCILAN", 
                "ATAPICD0", 
                "ATAPICD1", 
                "ATAPICD2", 
                "USBFDD", 
                "USBCD", 
                "USBHDD", 
                "OtherHDD", 
                "OtherCD", 
                "NODEV"
            })
            Name (PENC, Package (0x02)
            {
                "ascii", 
                "scancode"
            })
            Name (PKBD, Package (0x03)
            {
                "us", 
                "fr", 
                "gr"
            })
            Name (PTYP, Package (0x08)
            {
                "pap", 
                "pop", 
                "uhdp1", 
                "mhdp1", 
                "uhdp2", 
                "mhdp2", 
                "uhdp3", 
                "mhdp3"
            })
            Mutex (MWMI, 0x00)
            Name (PCFG, Buffer (0x18) {})
            Name (IBUF, Buffer (0x0100) {})
            Name (ILEN, Zero)
            Name (PSTR, Buffer (0x81) {})
            Method (WQA0, 1, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                If (LNotEqual (WMIS (Zero, Arg0), Zero))
                {
                    Release (MWMI)
                    Return ("")
                }

                Store (DerefOf (Index (ITEM, WITM)), Local0)
                Store (DerefOf (Index (Local0, Zero)), Local1)
                Store (DerefOf (Index (Local0, One)), Local2)
                If (LLess (Local1, 0x64))
                {
                    Concatenate (Local2, ",", Local6)
                    Store (DerefOf (Index (VSEL, Local1)), Local3)
                    Concatenate (Local6, DerefOf (Index (Local3, WSEL)), Local7)
                }
                Else
                {
                    Store (SizeOf (VLST), Local3)
                    If (LLessEqual (WLS0, Local3))
                    {
                        Concatenate (Local2, ",", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, WLS0)), Local2)
                    }

                    If (LLessEqual (WLS1, Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, WLS1)), Local2)
                    }

                    If (LLessEqual (WLS2, Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, WLS2)), Local2)
                    }

                    If (LLessEqual (WLS3, Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, WLS3)), Local2)
                    }

                    If (LLessEqual (WLS4, Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, WLS4)), Local2)
                    }

                    If (LLessEqual (WLS5, Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, WLS5)), Local2)
                    }

                    If (LLessEqual (WLS6, Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, WLS6)), Local2)
                    }

                    If (LLessEqual (WLS7, Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, WLS7)), Local2)
                    }

                    If (LLessEqual (WLS8, Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, WLS8)), Local2)
                    }

                    If (LLessEqual (WLS9, Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, WLS9)), Local2)
                    }

                    If (LLessEqual (WLSA, Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, WLSA)), Local2)
                    }

                    If (LLessEqual (WLSB, Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, WLSB)), Local2)
                    }

                    If (LLessEqual (WLSC, Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, WLSC)), Local2)
                    }

                    If (LLessEqual (WLSD, Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, WLSD)), Local2)
                    }

                    Store (Local2, Local7)
                }

                Release (MWMI)
                Return (Local7)
            }

            Method (WMA1, 3, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                If (LEqual (SizeOf (Arg2), Zero))
                {
                    Store (0x02, Local0)
                }
                Else
                {
                    Store (CARG (Arg2), Local0)
                    If (LEqual (Local0, Zero))
                    {
                        Store (WSET (ITEM, VSEL), Local0)
                        If (LEqual (Local0, Zero))
                        {
                            Store (WMIS (One, Zero), Local0)
                        }
                    }
                }

                Release (MWMI)
                Return (DerefOf (Index (RETN, Local0)))
            }

            Method (WMA2, 3, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                Store (CARG (Arg2), Local0)
                If (LEqual (Local0, Zero))
                {
                    If (LNotEqual (ILEN, Zero))
                    {
                        Store (CPAS (IBUF, Zero), Local0)
                    }

                    If (LEqual (Local0, Zero))
                    {
                        Store (WMIS (0x02, Zero), Local0)
                    }
                }

                Release (MWMI)
                Return (DerefOf (Index (RETN, Local0)))
            }

            Method (WMA3, 3, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                Store (CARG (Arg2), Local0)
                If (LEqual (Local0, Zero))
                {
                    If (LNotEqual (ILEN, Zero))
                    {
                        Store (CPAS (IBUF, Zero), Local0)
                    }

                    If (LEqual (Local0, Zero))
                    {
                        Store (WMIS (0x03, Zero), Local0)
                    }
                }

                Release (MWMI)
                Return (DerefOf (Index (RETN, Local0)))
            }

            Method (WMA4, 3, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                Store (CARG (Arg2), Local0)
                If (LEqual (Local0, Zero))
                {
                    If (LNotEqual (ILEN, Zero))
                    {
                        Store (CPAS (IBUF, Zero), Local0)
                    }

                    If (LEqual (Local0, Zero))
                    {
                        Store (WMIS (0x04, Zero), Local0)
                    }
                }

                Release (MWMI)
                Return (DerefOf (Index (RETN, Local0)))
            }

            Method (WQA5, 1, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                Store (WMIS (0x05, Zero), Local0)
                Store (WSPM, Index (PCFG, Zero))
                Store (WSPS, Index (PCFG, 0x04))
                Store (WSMN, Index (PCFG, 0x08))
                Store (WSMX, Index (PCFG, 0x0C))
                Store (WSEN, Index (PCFG, 0x10))
                Store (WSKB, Index (PCFG, 0x14))
                Release (MWMI)
                Return (PCFG)
            }

            Method (WMA6, 3, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                If (LEqual (SizeOf (Arg2), Zero))
                {
                    Store (0x02, Local0)
                }
                Else
                {
                    Store (CARG (Arg2), Local0)
                    If (LEqual (Local0, Zero))
                    {
                        If (LNotEqual (ILEN, Zero))
                        {
                            Store (SPAS (IBUF), Local0)
                        }

                        If (LEqual (Local0, Zero))
                        {
                            Store (WMIS (0x06, Zero), Local0)
                        }
                    }
                }

                Release (MWMI)
                Return (DerefOf (Index (RETN, Local0)))
            }

            Method (WMA7, 3, NotSerialized)
            {
                If (LEqual (SizeOf (Arg2), Zero))
                {
                    Return ("")
                }

                Store (CARG (Arg2), Local0)
                If (LEqual (Local0, Zero))
                {
                    Store (GITM (IBUF, ITEM), Local1)
                    If (LEqual (Local1, Ones))
                    {
                        Return ("")
                    }

                    Store (DerefOf (Index (ITEM, Local1)), Local0)
                    Store (DerefOf (Index (Local0, Zero)), Local1)
                    If (LLess (Local1, 0x64))
                    {
                        Store (DerefOf (Index (VSEL, Local1)), Local3)
                        Store (DerefOf (Index (Local3, Zero)), Local2)
                        Store (SizeOf (Local3), Local4)
                        Store (One, Local5)
                        While (LLess (Local5, Local4))
                        {
                            Store (DerefOf (Index (Local3, Local5)), Local6)
                            If (LNotEqual (SizeOf (Local6), Zero))
                            {
                                Concatenate (Local2, ",", Local7)
                                Concatenate (Local7, Local6, Local2)
                            }

                            Increment (Local5)
                        }
                    }
                    Else
                    {
                        Store (DerefOf (Index (VLST, Zero)), Local2)
                        Store (SizeOf (VLST), Local4)
                        Store (One, Local5)
                        While (LLess (Local5, Local4))
                        {
                            Store (DerefOf (Index (VLST, Local5)), Local6)
                            Concatenate (Local2, ",", Local7)
                            Concatenate (Local7, Local6, Local2)
                            Increment (Local5)
                        }
                    }
                }

                Return (Local2)
            }

            Method (CARG, 1, NotSerialized)
            {
                Store (SizeOf (Arg0), Local0)
                If (LEqual (Local0, Zero))
                {
                    Store (Zero, IBUF)
                    Store (Zero, ILEN)
                    Return (Zero)
                }

                If (LNotEqual (ObjectType (Arg0), 0x02))
                {
                    Return (0x02)
                }

                If (LGreaterEqual (Local0, 0xFF))
                {
                    Return (0x02)
                }

                Store (Arg0, IBUF)
                Decrement (Local0)
                Store (DerefOf (Index (IBUF, Local0)), Local1)
                If (LOr (LEqual (Local1, 0x3B), LEqual (Local1, 0x2A)))
                {
                    Store (Zero, Index (IBUF, Local0))
                    Store (Local0, ILEN)
                }
                Else
                {
                    Store (SizeOf (Arg0), ILEN)
                }

                Return (Zero)
            }

            Method (SCMP, 3, NotSerialized)
            {
                Store (SizeOf (Arg0), Local0)
                If (LEqual (Local0, Zero))
                {
                    Return (Zero)
                }

                Increment (Local0)
                Name (STR1, Buffer (Local0) {})
                Store (Arg0, STR1)
                Decrement (Local0)
                Store (Zero, Local1)
                Store (Arg2, Local2)
                While (LLess (Local1, Local0))
                {
                    Store (DerefOf (Index (STR1, Local1)), Local3)
                    Store (DerefOf (Index (Arg1, Local2)), Local4)
                    If (LNotEqual (Local3, Local4))
                    {
                        Return (Zero)
                    }

                    Increment (Local1)
                    Increment (Local2)
                }

                Store (DerefOf (Index (Arg1, Local2)), Local4)
                If (LEqual (Local4, Zero))
                {
                    Return (One)
                }

                If (LOr (LEqual (Local4, 0x2C), LEqual (Local4, 0x3A)))
                {
                    Return (One)
                }

                Return (Zero)
            }

            Method (GITM, 2, NotSerialized)
            {
                Store (Zero, Local0)
                Store (SizeOf (Arg1), Local1)
                While (LLess (Local0, Local1))
                {
                    Store (DerefOf (Index (DerefOf (Index (Arg1, Local0)), One)), Local3)
                    If (SCMP (Local3, Arg0, Zero))
                    {
                        Return (Local0)
                    }

                    Increment (Local0)
                }

                Return (Ones)
            }

            Method (GSEL, 3, NotSerialized)
            {
                Store (Zero, Local0)
                Store (SizeOf (Arg0), Local1)
                While (LLess (Local0, Local1))
                {
                    Store (DerefOf (Index (Arg0, Local0)), Local2)
                    If (SCMP (Local2, Arg1, Arg2))
                    {
                        Return (Local0)
                    }

                    Increment (Local0)
                }

                Return (Ones)
            }

            Method (SLEN, 2, NotSerialized)
            {
                Store (DerefOf (Index (Arg0, Arg1)), Local0)
                Return (SizeOf (Local0))
            }

            Method (CLRP, 0, NotSerialized)
            {
                Store (Zero, WPAS)
                Store (Zero, WPNW)
            }

            Method (GPAS, 2, NotSerialized)
            {
                Store (Arg1, Local0)
                Store (Zero, Local1)
                While (LLessEqual (Local1, 0x80))
                {
                    Store (DerefOf (Index (Arg0, Local0)), Local2)
                    If (LOr (LEqual (Local2, 0x2C), LEqual (Local2, Zero)))
                    {
                        Store (Zero, Index (PSTR, Local1))
                        Return (Local1)
                    }

                    Store (Local2, Index (PSTR, Local1))
                    Increment (Local0)
                    Increment (Local1)
                }

                Store (Zero, Index (PSTR, Local1))
                Return (Ones)
            }

            Method (CPAS, 2, NotSerialized)
            {
                CLRP ()
                Store (Arg1, Local0)
                Store (GPAS (Arg0, Local0), Local1)
                If (LEqual (Local1, Ones))
                {
                    Return (0x02)
                }

                If (LEqual (Local1, Zero))
                {
                    Return (0x02)
                }

                Store (PSTR, WPAS)
                Add (Local0, Local1, Local0)
                Increment (Local0)
                Store (GSEL (PENC, Arg0, Local0), Local6)
                If (LEqual (Local6, Ones))
                {
                    Return (0x02)
                }

                Store (Local6, WENC)
                If (LEqual (Local6, Zero))
                {
                    Add (Local0, SLEN (PENC, Zero), Local0)
                    If (LNotEqual (DerefOf (Index (Arg0, Local0)), 0x2C))
                    {
                        Return (0x02)
                    }

                    Increment (Local0)
                    Store (GSEL (PKBD, Arg0, Local0), Local6)
                    If (LEqual (Local6, Ones))
                    {
                        Return (0x02)
                    }

                    Store (Local6, WKBD)
                }

                Return (Zero)
            }

            Method (SPAS, 1, NotSerialized)
            {
                CLRP ()
                Store (GSEL (PTYP, Arg0, Zero), Local6)
                If (LEqual (Local6, Ones))
                {
                    Return (0x02)
                }

                Store (Local6, WPTY)
                Store (SLEN (PTYP, Local6), Local0)
                If (LNotEqual (DerefOf (Index (Arg0, Local0)), 0x2C))
                {
                    Return (0x02)
                }

                Increment (Local0)
                Store (GPAS (Arg0, Local0), Local1)
                If (LOr (LEqual (Local1, Ones), LEqual (Local1, Zero)))
                {
                    Return (0x02)
                }

                Store (PSTR, WPAS)
                Add (Local0, Local1, Local0)
                If (LNotEqual (DerefOf (Index (Arg0, Local0)), 0x2C))
                {
                    Return (0x02)
                }

                Increment (Local0)
                Store (GPAS (Arg0, Local0), Local1)
                If (LEqual (Local1, Ones))
                {
                    Return (0x02)
                }

                If (LEqual (Local1, Zero))
                {
                    Store (Zero, PSTR)
                }

                Store (PSTR, WPNW)
                Add (Local0, Local1, Local0)
                Increment (Local0)
                Store (GSEL (PENC, Arg0, Local0), Local6)
                If (LEqual (Local6, Ones))
                {
                    Return (0x02)
                }

                Store (Local6, WENC)
                If (LEqual (Local6, Zero))
                {
                    Add (Local0, SLEN (PENC, Zero), Local0)
                    If (LNotEqual (DerefOf (Index (Arg0, Local0)), 0x2C))
                    {
                        Return (0x02)
                    }

                    Increment (Local0)
                    Store (GSEL (PKBD, Arg0, Local0), Local6)
                    If (LEqual (Local6, Ones))
                    {
                        Return (0x02)
                    }

                    Store (Local6, WKBD)
                }

                Return (Zero)
            }

            Method (WSET, 2, NotSerialized)
            {
                Store (ILEN, Local0)
                Increment (Local0)
                Store (GITM (IBUF, Arg0), Local1)
                If (LEqual (Local1, Ones))
                {
                    Return (0x02)
                }

                Store (Local1, WITM)
                Store (DerefOf (Index (Arg0, Local1)), Local3)
                Store (DerefOf (Index (Local3, One)), Local4)
                Store (SizeOf (Local4), Local2)
                Increment (Local2)
                Store (DerefOf (Index (Local3, Zero)), Local4)
                If (LLess (Local4, 0x64))
                {
                    Store (DerefOf (Index (Arg1, Local4)), Local5)
                    Store (GSEL (Local5, IBUF, Local2), Local6)
                    If (LEqual (Local6, Ones))
                    {
                        Return (0x02)
                    }

                    Store (Local6, WSEL)
                    Add (Local2, SLEN (Local5, Local6), Local2)
                    Store (DerefOf (Index (IBUF, Local2)), Local4)
                }
                Else
                {
                    Store (0x3F, WLS0)
                    Store (0x3F, WLS1)
                    Store (0x3F, WLS2)
                    Store (0x3F, WLS3)
                    Store (0x3F, WLS4)
                    Store (0x3F, WLS5)
                    Store (0x3F, WLS6)
                    Store (0x3F, WLS7)
                    Store (0x3F, WLS8)
                    Store (0x3F, WLS9)
                    Store (0x3F, WLSA)
                    Store (0x3F, WLSB)
                    Store (0x3F, WLSC)
                    Store (0x3F, WLSD)
                    Store (GSEL (VLST, IBUF, Local2), Local6)
                    If (LEqual (Local6, Ones))
                    {
                        Return (0x02)
                    }

                    Store (Local6, WLS0)
                    Add (Local2, SLEN (VLST, Local6), Local2)
                    Store (DerefOf (Index (IBUF, Local2)), Local4)
                    If (LAnd (LLess (Local2, Local0), LEqual (Local4, 0x3A)))
                    {
                        Increment (Local2)
                        Store (GSEL (VLST, IBUF, Local2), Local6)
                        If (LEqual (Local6, Ones))
                        {
                            Return (0x02)
                        }

                        Store (Local6, WLS1)
                        Add (Local2, SLEN (VLST, Local6), Local2)
                        Store (DerefOf (Index (IBUF, Local2)), Local4)
                    }

                    If (LAnd (LLess (Local2, Local0), LEqual (Local4, 0x3A)))
                    {
                        Increment (Local2)
                        Store (GSEL (VLST, IBUF, Local2), Local6)
                        If (LEqual (Local6, Ones))
                        {
                            Return (0x02)
                        }

                        Store (Local6, WLS2)
                        Add (Local2, SLEN (VLST, Local6), Local2)
                        Store (DerefOf (Index (IBUF, Local2)), Local4)
                    }

                    If (LAnd (LLess (Local2, Local0), LEqual (Local4, 0x3A)))
                    {
                        Increment (Local2)
                        Store (GSEL (VLST, IBUF, Local2), Local6)
                        If (LEqual (Local6, Ones))
                        {
                            Return (0x02)
                        }

                        Store (Local6, WLS3)
                        Add (Local2, SLEN (VLST, Local6), Local2)
                        Store (DerefOf (Index (IBUF, Local2)), Local4)
                    }

                    If (LAnd (LLess (Local2, Local0), LEqual (Local4, 0x3A)))
                    {
                        Increment (Local2)
                        Store (GSEL (VLST, IBUF, Local2), Local6)
                        If (LEqual (Local6, Ones))
                        {
                            Return (0x02)
                        }

                        Store (Local6, WLS4)
                        Add (Local2, SLEN (VLST, Local6), Local2)
                        Store (DerefOf (Index (IBUF, Local2)), Local4)
                    }

                    If (LAnd (LLess (Local2, Local0), LEqual (Local4, 0x3A)))
                    {
                        Increment (Local2)
                        Store (GSEL (VLST, IBUF, Local2), Local6)
                        If (LEqual (Local6, Ones))
                        {
                            Return (0x02)
                        }

                        Store (Local6, WLS5)
                        Add (Local2, SLEN (VLST, Local6), Local2)
                        Store (DerefOf (Index (IBUF, Local2)), Local4)
                    }

                    If (LAnd (LLess (Local2, Local0), LEqual (Local4, 0x3A)))
                    {
                        Increment (Local2)
                        Store (GSEL (VLST, IBUF, Local2), Local6)
                        If (LEqual (Local6, Ones))
                        {
                            Return (0x02)
                        }

                        Store (Local6, WLS6)
                        Add (Local2, SLEN (VLST, Local6), Local2)
                        Store (DerefOf (Index (IBUF, Local2)), Local4)
                    }

                    If (LAnd (LLess (Local2, Local0), LEqual (Local4, 0x3A)))
                    {
                        Increment (Local2)
                        Store (GSEL (VLST, IBUF, Local2), Local6)
                        If (LEqual (Local6, Ones))
                        {
                            Return (0x02)
                        }

                        Store (Local6, WLS7)
                        Add (Local2, SLEN (VLST, Local6), Local2)
                        Store (DerefOf (Index (IBUF, Local2)), Local4)
                    }

                    If (LAnd (LLess (Local2, Local0), LEqual (Local4, 0x3A)))
                    {
                        Increment (Local2)
                        Store (GSEL (VLST, IBUF, Local2), Local6)
                        If (LEqual (Local6, Ones))
                        {
                            Return (0x02)
                        }

                        Store (Local6, WLS8)
                        Add (Local2, SLEN (VLST, Local6), Local2)
                        Store (DerefOf (Index (IBUF, Local2)), Local4)
                    }

                    If (LAnd (LLess (Local2, Local0), LEqual (Local4, 0x3A)))
                    {
                        Increment (Local2)
                        Store (GSEL (VLST, IBUF, Local2), Local6)
                        If (LEqual (Local6, Ones))
                        {
                            Return (0x02)
                        }

                        Store (Local6, WLS9)
                        Add (Local2, SLEN (VLST, Local6), Local2)
                        Store (DerefOf (Index (IBUF, Local2)), Local4)
                    }

                    If (LAnd (LLess (Local2, Local0), LEqual (Local4, 0x3A)))
                    {
                        Increment (Local2)
                        Store (GSEL (VLST, IBUF, Local2), Local6)
                        If (LEqual (Local6, Ones))
                        {
                            Return (0x02)
                        }

                        Store (Local6, WLSA)
                        Add (Local2, SLEN (VLST, Local6), Local2)
                        Store (DerefOf (Index (IBUF, Local2)), Local4)
                    }

                    If (LAnd (LLess (Local2, Local0), LEqual (Local4, 0x3A)))
                    {
                        Increment (Local2)
                        Store (GSEL (VLST, IBUF, Local2), Local6)
                        If (LEqual (Local6, Ones))
                        {
                            Return (0x02)
                        }

                        Store (Local6, WLSB)
                        Add (Local2, SLEN (VLST, Local6), Local2)
                        Store (DerefOf (Index (IBUF, Local2)), Local4)
                    }

                    If (LAnd (LLess (Local2, Local0), LEqual (Local4, 0x3A)))
                    {
                        Increment (Local2)
                        Store (GSEL (VLST, IBUF, Local2), Local6)
                        If (LEqual (Local6, Ones))
                        {
                            Return (0x02)
                        }

                        Store (Local6, WLSC)
                        Add (Local2, SLEN (VLST, Local6), Local2)
                        Store (DerefOf (Index (IBUF, Local2)), Local4)
                    }

                    If (LAnd (LLess (Local2, Local0), LEqual (Local4, 0x3A)))
                    {
                        Increment (Local2)
                        Store (GSEL (VLST, IBUF, Local2), Local6)
                        If (LEqual (Local6, Ones))
                        {
                            Return (0x02)
                        }

                        Store (Local6, WLSD)
                        Add (Local2, SLEN (VLST, Local6), Local2)
                        Store (DerefOf (Index (IBUF, Local2)), Local4)
                    }
                }

                If (LAnd (LEqual (Local4, 0x2C), LLess (Local2, Local0)))
                {
                    Increment (Local2)
                    Store (CPAS (IBUF, Local2), Local0)
                    If (LNotEqual (Local0, Zero))
                    {
                        Return (Local0)
                    }
                }

                Return (Zero)
            }

            Name (WQBA, Buffer (0x089D)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,
                /* 0008 */  0x8D, 0x08, 0x00, 0x00, 0xF2, 0x36, 0x00, 0x00,
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,
                /* 0018 */  0xA8, 0xC9, 0x9A, 0x00, 0x01, 0x06, 0x18, 0x42,
                /* 0020 */  0x10, 0x13, 0x10, 0x0A, 0x0D, 0x21, 0x02, 0x0B,
                /* 0028 */  0x83, 0x50, 0x4C, 0x18, 0x14, 0xA0, 0x45, 0x41,
                /* 0030 */  0xC8, 0x05, 0x14, 0x95, 0x02, 0x21, 0xC3, 0x02,
                /* 0038 */  0x14, 0x0B, 0x70, 0x2E, 0x40, 0xBA, 0x00, 0xE5,
                /* 0040 */  0x28, 0x72, 0x0C, 0x22, 0x02, 0xF7, 0xEF, 0x0F,
                /* 0048 */  0x31, 0x0E, 0x88, 0x14, 0x40, 0x48, 0x26, 0x84,
                /* 0050 */  0x44, 0x00, 0x53, 0x21, 0x70, 0x84, 0xA0, 0x5F,
                /* 0058 */  0x01, 0x08, 0x1D, 0xA2, 0xC9, 0xA0, 0x00, 0xA7,
                /* 0060 */  0x08, 0x82, 0xB4, 0x65, 0x01, 0xBA, 0x05, 0xF8,
                /* 0068 */  0x16, 0xA0, 0x1D, 0x42, 0x68, 0x15, 0x0A, 0x30,
                /* 0070 */  0x29, 0xC0, 0x27, 0x98, 0x2C, 0x0A, 0x90, 0x0D,
                /* 0078 */  0x26, 0xDB, 0x70, 0x64, 0x18, 0x4C, 0xE4, 0x18,
                /* 0080 */  0x50, 0x62, 0xC6, 0x80, 0xD2, 0x39, 0x05, 0xD9,
                /* 0088 */  0x04, 0x16, 0x74, 0xA1, 0x28, 0x9A, 0x46, 0x94,
                /* 0090 */  0x04, 0x07, 0x75, 0x0C, 0x11, 0x82, 0x97, 0x2B,
                /* 0098 */  0x40, 0xF2, 0x04, 0xA4, 0x79, 0x5E, 0xB2, 0x3E,
                /* 00A0 */  0x08, 0x0D, 0x81, 0x8D, 0x80, 0x47, 0x91, 0x00,
                /* 00A8 */  0xC2, 0x62, 0x2C, 0x53, 0xE2, 0x61, 0x50, 0x1E,
                /* 00B0 */  0x40, 0x24, 0x67, 0xA8, 0x28, 0x60, 0x7B, 0x9D,
                /* 00B8 */  0x88, 0x86, 0x75, 0x9C, 0x4C, 0x12, 0x1C, 0x6A,
                /* 00C0 */  0x94, 0x96, 0x28, 0xC0, 0xFC, 0xC8, 0x34, 0x91,
                /* 00C8 */  0x63, 0x6B, 0x7A, 0xC4, 0x82, 0x64, 0xD2, 0x86,
                /* 00D0 */  0x82, 0x1A, 0xBA, 0xA7, 0x75, 0x52, 0x9E, 0x68,
                /* 00D8 */  0xC4, 0x83, 0x32, 0x4C, 0x02, 0x8F, 0x82, 0xA1,
                /* 00E0 */  0x71, 0x82, 0xB2, 0x20, 0xE4, 0x60, 0xA0, 0x28,
                /* 00E8 */  0xC0, 0x93, 0xF0, 0x1C, 0x8B, 0x17, 0x20, 0x7C,
                /* 00F0 */  0xC6, 0xE4, 0x28, 0x10, 0x23, 0x81, 0x8F, 0x04,
                /* 00F8 */  0x1E, 0xCD, 0x31, 0x63, 0x81, 0xC2, 0x05, 0x3C,
                /* 0100 */  0x9F, 0x63, 0x88, 0x1C, 0xF7, 0x50, 0x63, 0x1C,
                /* 0108 */  0x45, 0xE4, 0x04, 0xEF, 0x00, 0x51, 0x8C, 0x56,
                /* 0110 */  0xD0, 0xBC, 0x85, 0x18, 0x2C, 0x9A, 0xC1, 0x7A,
                /* 0118 */  0x06, 0x27, 0x83, 0x4E, 0xF0, 0xFF, 0x3F, 0x02,
                /* 0120 */  0x2E, 0x03, 0x42, 0x1E, 0x05, 0x58, 0x1D, 0x94,
                /* 0128 */  0xA6, 0x61, 0x82, 0xEE, 0x05, 0xBC, 0x1A, 0x1A,
                /* 0130 */  0x13, 0xA0, 0x11, 0x43, 0xCA, 0x04, 0x38, 0xBB,
                /* 0138 */  0x2F, 0x68, 0x46, 0x6D, 0x09, 0x30, 0x27, 0x40,
                /* 0140 */  0x9B, 0x00, 0x6F, 0x08, 0x42, 0x39, 0xCF, 0x28,
                /* 0148 */  0xC7, 0x72, 0x8A, 0x51, 0x1E, 0x06, 0x62, 0xBE,
                /* 0150 */  0x0C, 0x04, 0x8D, 0x12, 0x23, 0xE6, 0xB9, 0xC4,
                /* 0158 */  0x35, 0x6C, 0x84, 0x18, 0x21, 0x4F, 0x21, 0x50,
                /* 0160 */  0xDC, 0xF6, 0x07, 0x41, 0x06, 0x8D, 0x1B, 0xBD,
                /* 0168 */  0x4F, 0x0B, 0x67, 0x75, 0x02, 0x47, 0xFF, 0xA4,
                /* 0170 */  0x60, 0x02, 0x4F, 0xF9, 0xC0, 0x9E, 0x0D, 0x4E,
                /* 0178 */  0xE0, 0x58, 0xA3, 0xC6, 0x38, 0x95, 0x04, 0x8E,
                /* 0180 */  0xFD, 0x80, 0x90, 0x06, 0x10, 0x45, 0x82, 0x47,
                /* 0188 */  0x9D, 0x16, 0x7C, 0x2E, 0xF0, 0xD0, 0x0E, 0xDA,
                /* 0190 */  0x73, 0x3C, 0x81, 0x20, 0x87, 0x70, 0x04, 0x4F,
                /* 0198 */  0x0C, 0x0F, 0x04, 0x1E, 0x03, 0xBB, 0x29, 0xF8,
                /* 01A0 */  0x08, 0xE0, 0x13, 0x02, 0xDE, 0x35, 0xA0, 0xAE,
                /* 01A8 */  0x06, 0x0F, 0x06, 0x6C, 0xD0, 0xE1, 0x30, 0xE3,
                /* 01B0 */  0xF5, 0xF0, 0xC3, 0x9D, 0xC0, 0x49, 0x3E, 0x60,
                /* 01B8 */  0xF0, 0xC3, 0x86, 0x07, 0x87, 0x9B, 0xE7, 0xC9,
                /* 01C0 */  0x1C, 0x59, 0xA9, 0x02, 0xCC, 0x1E, 0x0E, 0x74,
                /* 01C8 */  0x90, 0xF0, 0x69, 0x83, 0x9D, 0x01, 0x30, 0xF2,
                /* 01D0 */  0x07, 0x81, 0x1A, 0x99, 0xA1, 0x3D, 0xEE, 0x97,
                /* 01D8 */  0x0E, 0x43, 0x3E, 0x27, 0x1C, 0x16, 0x13, 0x7B,
                /* 01E0 */  0xEA, 0xA0, 0xE3, 0x01, 0xFF, 0x65, 0xE4, 0x39,
                /* 01E8 */  0xC3, 0xD3, 0xF7, 0x7C, 0x4D, 0x30, 0xEC, 0xC0,
                /* 01F0 */  0xD1, 0x03, 0x31, 0xF4, 0xC3, 0xC6, 0x61, 0x9C,
                /* 01F8 */  0x86, 0xEF, 0x1F, 0x3E, 0x2F, 0xC0, 0x38, 0x05,
                /* 0200 */  0x78, 0xE4, 0xFE, 0xFF, 0x1F, 0x52, 0x7C, 0x9A,
                /* 0208 */  0xE0, 0x47, 0x0B, 0x9F, 0x26, 0xD8, 0xF5, 0xE0,
                /* 0210 */  0x34, 0x9E, 0x03, 0x3C, 0x9C, 0xB3, 0xF2, 0x61,
                /* 0218 */  0x02, 0x6C, 0xF7, 0x13, 0x36, 0xA2, 0x77, 0x0B,
                /* 0220 */  0x8F, 0x06, 0x7B, 0x0A, 0x00, 0xDF, 0xF9, 0x05,
                /* 0228 */  0x9C, 0x77, 0x0D, 0x36, 0x58, 0x18, 0xE7, 0x17,
                /* 0230 */  0xE0, 0x71, 0x42, 0xF0, 0x10, 0xF8, 0x41, 0xC2,
                /* 0238 */  0x43, 0xE0, 0x03, 0x78, 0xFE, 0x38, 0x43, 0x2B,
                /* 0240 */  0x9D, 0x17, 0x72, 0x60, 0xF0, 0xCE, 0x39, 0x30,
                /* 0248 */  0x46, 0xC1, 0xF3, 0x3C, 0x36, 0x4C, 0xA0, 0x20,
                /* 0250 */  0xAF, 0x01, 0x85, 0x7A, 0x16, 0x50, 0x18, 0x9F,
                /* 0258 */  0x6A, 0x80, 0xD7, 0xFF, 0xFF, 0x54, 0x03, 0x5C,
                /* 0260 */  0x0E, 0x07, 0xB8, 0x93, 0x03, 0xDC, 0x7B, 0x01,
                /* 0268 */  0xBB, 0x38, 0x3C, 0xD7, 0xC0, 0x15, 0x7D, 0xAE,
                /* 0270 */  0x81, 0x7A, 0x6F, 0x29, 0x6E, 0x8C, 0xBA, 0xC6,
                /* 0278 */  0x04, 0x79, 0x14, 0x78, 0xA4, 0x89, 0xF2, 0x3C,
                /* 0280 */  0xF3, 0x2E, 0x13, 0xE1, 0xD9, 0xC6, 0xD7, 0x1A,
                /* 0288 */  0x4F, 0x21, 0x8E, 0xAF, 0x35, 0x46, 0x7C, 0x99,
                /* 0290 */  0x78, 0xB7, 0x31, 0xEE, 0xC1, 0x3D, 0xD6, 0x3C,
                /* 0298 */  0xE4, 0x18, 0xE4, 0x68, 0x22, 0xBC, 0x18, 0x04,
                /* 02A0 */  0x7C, 0xBC, 0xF1, 0xB1, 0x06, 0xBC, 0x62, 0x5E,
                /* 02A8 */  0x28, 0xB2, 0x70, 0xAC, 0x01, 0x34, 0xFE, 0xFF,
                /* 02B0 */  0x8F, 0x35, 0xC0, 0x0D, 0xEB, 0x01, 0x05, 0x7C,
                /* 02B8 */  0x47, 0x06, 0x76, 0x43, 0x81, 0x77, 0x42, 0x01,
                /* 02C0 */  0xFC, 0x24, 0x7E, 0x01, 0xE8, 0xC8, 0xE1, 0xB4,
                /* 02C8 */  0x20, 0xB2, 0xF1, 0x06, 0xF0, 0x29, 0x80, 0xAA,
                /* 02D0 */  0x01, 0xD2, 0x34, 0x61, 0x13, 0x4C, 0x4F, 0x2E,
                /* 02D8 */  0x78, 0x1F, 0x09, 0x9C, 0x9B, 0x44, 0xC9, 0x87,
                /* 02E0 */  0x45, 0xE1, 0x9C, 0xF5, 0x20, 0x42, 0x41, 0x0C,
                /* 02E8 */  0xE8, 0x20, 0xC7, 0x09, 0xF4, 0x19, 0xC5, 0x07,
                /* 02F0 */  0x91, 0x13, 0x7D, 0x22, 0xF4, 0xA0, 0x3C, 0x8C,
                /* 02F8 */  0x77, 0x14, 0x76, 0x02, 0xF1, 0x61, 0xC2, 0x63,
                /* 0300 */  0xF7, 0x31, 0x81, 0xFF, 0x63, 0x3C, 0x1B, 0xA3,
                /* 0308 */  0x5B, 0x0D, 0x86, 0xFE, 0xFF, 0xE7, 0x14, 0x0E,
                /* 0310 */  0xE6, 0x83, 0x08, 0x27, 0xA8, 0xEB, 0x26, 0x01,
                /* 0318 */  0x32, 0x7D, 0x47, 0x05, 0x50, 0x00, 0xF9, 0x5E,
                /* 0320 */  0xE0, 0x73, 0xC0, 0xB3, 0x01, 0x1B, 0xC3, 0xA3,
                /* 0328 */  0x80, 0xD1, 0x8C, 0xCE, 0xC3, 0x4F, 0x16, 0x15,
                /* 0330 */  0x77, 0xB2, 0x14, 0xC4, 0x93, 0x75, 0x94, 0xC9,
                /* 0338 */  0xA2, 0x67, 0xE2, 0x7B, 0x85, 0x67, 0xF4, 0xA6,
                /* 0340 */  0xE5, 0x39, 0x7A, 0xC2, 0xBE, 0x87, 0xC0, 0x3A,
                /* 0348 */  0x0C, 0x84, 0x7C, 0x30, 0xF0, 0x34, 0x0C, 0xE7,
                /* 0350 */  0xC9, 0x72, 0x38, 0x4F, 0x96, 0x8F, 0xC5, 0xD7,
                /* 0358 */  0x10, 0xF0, 0x09, 0x9C, 0x2D, 0xC8, 0xE1, 0x31,
                /* 0360 */  0xB1, 0x46, 0x45, 0xAF, 0x42, 0x1E, 0x1E, 0xBF,
                /* 0368 */  0x1C, 0x78, 0x3E, 0xCF, 0x08, 0x47, 0xF9, 0x24,
                /* 0370 */  0x81, 0xC3, 0x78, 0x26, 0xF1, 0x10, 0x7D, 0x2B,
                /* 0378 */  0x82, 0x35, 0x91, 0x93, 0xF6, 0x6D, 0xE1, 0x64,
                /* 0380 */  0x83, 0xBE, 0x9E, 0x61, 0x6E, 0x45, 0xB0, 0xFF,
                /* 0388 */  0xFF, 0xB7, 0x22, 0x38, 0x17, 0x34, 0x98, 0x99,
                /* 0390 */  0xEE, 0x55, 0xA8, 0x58, 0xF7, 0x2A, 0x40, 0xEC,
                /* 0398 */  0xB0, 0x5E, 0x7B, 0x7C, 0xB0, 0x82, 0x7B, 0xAF,
                /* 03A0 */  0x82, 0x7B, 0xA9, 0x7A, 0x56, 0x38, 0xC6, 0xF0,
                /* 03A8 */  0x0F, 0x53, 0x31, 0x4E, 0xE9, 0xB5, 0xD3, 0x40,
                /* 03B0 */  0x61, 0xA2, 0xC4, 0x7B, 0xAF, 0xF2, 0x18, 0xDF,
                /* 03B8 */  0xAB, 0xD8, 0x15, 0x2A, 0x4C, 0xAC, 0x97, 0x2B,
                /* 03C0 */  0xA3, 0xBE, 0x4E, 0x84, 0x0B, 0x14, 0x24, 0xD2,
                /* 03C8 */  0xAB, 0x55, 0x94, 0xC8, 0xF1, 0x0D, 0xF9, 0x5E,
                /* 03D0 */  0x05, 0x5E, 0x39, 0xF7, 0x2A, 0x90, 0xFD, 0xFF,
                /* 03D8 */  0xEF, 0x55, 0x80, 0x79, 0xB4, 0xF7, 0x2A, 0x30,
                /* 03E0 */  0x5E, 0x1B, 0xD8, 0x0D, 0x09, 0x16, 0xD0, 0x8B,
                /* 03E8 */  0x15, 0x60, 0x28, 0xF3, 0xC5, 0x8A, 0xE6, 0xBD,
                /* 03F0 */  0x58, 0x21, 0xFE, 0xFF, 0xE7, 0x12, 0xA6, 0xE7,
                /* 03F8 */  0x62, 0x45, 0xE6, 0x09, 0xFF, 0x66, 0x05, 0x70,
                /* 0400 */  0xFA, 0xFF, 0x7F, 0xB3, 0x02, 0x8C, 0xDD, 0x8B,
                /* 0408 */  0x30, 0x47, 0x2B, 0x78, 0x29, 0x6F, 0x56, 0x34,
                /* 0410 */  0xCE, 0x32, 0x14, 0x70, 0x41, 0x14, 0xC6, 0x37,
                /* 0418 */  0x2B, 0xC0, 0xD1, 0x75, 0x05, 0x37, 0x64, 0xB8,
                /* 0420 */  0x60, 0x51, 0x82, 0xF9, 0x10, 0xE2, 0xE9, 0x1C,
                /* 0428 */  0xF1, 0x43, 0xC2, 0x4B, 0xC0, 0x63, 0x8E, 0x07,
                /* 0430 */  0xFC, 0x40, 0xE0, 0xCB, 0x15, 0x98, 0xFE, 0xFF,
                /* 0438 */  0x04, 0x3E, 0xF9, 0x9E, 0xE5, 0xDB, 0xD4, 0x7B,
                /* 0440 */  0x2F, 0x3F, 0x60, 0xBD, 0x57, 0xF9, 0xF0, 0x1B,
                /* 0448 */  0xEB, 0x9D, 0xE1, 0xE5, 0xCA, 0x23, 0x89, 0x72,
                /* 0450 */  0x12, 0xA1, 0x7C, 0xB7, 0x7A, 0xAF, 0x32, 0x4A,
                /* 0458 */  0xC4, 0x17, 0x62, 0x9F, 0x82, 0x0D, 0x6D, 0x94,
                /* 0460 */  0xA7, 0x8A, 0xE8, 0xC6, 0x7B, 0xB9, 0x02, 0xAF,
                /* 0468 */  0xA4, 0xCB, 0x15, 0x40, 0x93, 0xE1, 0xBF, 0x5C,
                /* 0470 */  0x81, 0xEF, 0xE6, 0x80, 0xBD, 0x26, 0xC1, 0xF9,
                /* 0478 */  0xFF, 0x5F, 0x93, 0xF8, 0xF5, 0x0A, 0xF0, 0x93,
                /* 0480 */  0xFD, 0x7A, 0x45, 0x73, 0x5F, 0xAF, 0x50, 0xA2,
                /* 0488 */  0x20, 0xA4, 0x08, 0x48, 0x33, 0x05, 0xCF, 0xFD,
                /* 0490 */  0x0A, 0xE0, 0xC4, 0xFF, 0xFF, 0x7E, 0x05, 0x58,
                /* 0498 */  0x0E, 0x77, 0xBF, 0x02, 0x7A, 0xB7, 0x23, 0xF0,
                /* 04A0 */  0xA2, 0xBC, 0x1D, 0x61, 0xAF, 0x58, 0xF8, 0x8C,
                /* 04A8 */  0x57, 0x2C, 0x1A, 0x66, 0x25, 0x8A, 0xB7, 0x26,
                /* 04B0 */  0x0A, 0xE3, 0x2B, 0x16, 0x30, 0xF9, 0xFF, 0x5F,
                /* 04B8 */  0xB1, 0x80, 0xD9, 0x41, 0x14, 0x37, 0x6A, 0xB8,
                /* 04C0 */  0x17, 0x27, 0xDF, 0x7A, 0x3C, 0xDF, 0x88, 0xBE,
                /* 04C8 */  0xC3, 0x60, 0x4E, 0x58, 0x30, 0x6E, 0x58, 0xF0,
                /* 04D0 */  0x87, 0xF4, 0x30, 0xEC, 0x93, 0xC4, 0x3B, 0x96,
                /* 04D8 */  0x8F, 0x56, 0x06, 0x79, 0x03, 0x7E, 0xB2, 0x7A,
                /* 04E0 */  0xB0, 0x8A, 0x62, 0x84, 0x80, 0xC7, 0xF3, 0x2E,
                /* 04E8 */  0xEC, 0xA3, 0xD5, 0x9B, 0x96, 0x51, 0x62, 0xC7,
                /* 04F0 */  0xF2, 0x85, 0xEA, 0x59, 0xCB, 0xD7, 0x2C, 0x43,
                /* 04F8 */  0xC4, 0x7D, 0x20, 0xF6, 0x0D, 0x0B, 0xB0, 0xFD,
                /* 0500 */  0xFF, 0xBF, 0x61, 0x01, 0x8E, 0x2E, 0x0E, 0xFC,
                /* 0508 */  0xE0, 0x80, 0xBD, 0x61, 0x01, 0x3E, 0x67, 0x0A,
                /* 0510 */  0x9E, 0x1B, 0x16, 0xB0, 0xF9, 0xFF, 0xDF, 0xB0,
                /* 0518 */  0x00, 0xFE, 0xFF, 0xFF, 0x6F, 0x58, 0xC0, 0xE1,
                /* 0520 */  0x76, 0x85, 0xBD, 0x65, 0x61, 0x6F, 0x2F, 0x64,
                /* 0528 */  0x15, 0x34, 0xD4, 0x4A, 0x14, 0xFC, 0x7B, 0x65,
                /* 0530 */  0x18, 0x7A, 0xC3, 0x02, 0x1C, 0x8D, 0xDB, 0xA3,
                /* 0538 */  0x06, 0xC7, 0xD9, 0xE0, 0x49, 0x02, 0x73, 0xAE,
                /* 0540 */  0xC6, 0xCD, 0xE6, 0xE0, 0x02, 0x47, 0xE8, 0x1D,
                /* 0548 */  0x54, 0x73, 0x67, 0x97, 0x14, 0x18, 0xB7, 0x2C,
                /* 0550 */  0xB8, 0x97, 0xAA, 0x87, 0x86, 0x28, 0x07, 0xF1,
                /* 0558 */  0x2A, 0xFC, 0x60, 0xF5, 0x28, 0x75, 0x64, 0x8F,
                /* 0560 */  0x57, 0x4F, 0xC3, 0x3E, 0x66, 0xF9, 0x96, 0x65,
                /* 0568 */  0xA8, 0x08, 0x6F, 0x59, 0xEC, 0x0C, 0x11, 0x2F,
                /* 0570 */  0x56, 0x94, 0x10, 0xEF, 0x15, 0xA1, 0x7D, 0xE7,
                /* 0578 */  0x32, 0xF8, 0xA3, 0xB1, 0x51, 0x83, 0xBE, 0x1C,
                /* 0580 */  0xBF, 0x65, 0xC1, 0xFB, 0xFF, 0xDF, 0xB2, 0xE0,
                /* 0588 */  0x8B, 0xFC, 0xAB, 0xE8, 0x44, 0xE0, 0x5B, 0x16,
                /* 0590 */  0xC0, 0x8F, 0x60, 0x10, 0x72, 0x32, 0x70, 0xF4,
                /* 0598 */  0x79, 0x01, 0x3F, 0x80, 0x87, 0x11, 0x0F, 0x89,
                /* 05A0 */  0x05, 0x18, 0x38, 0xBD, 0x2F, 0xF9, 0x4C, 0xC1,
                /* 05A8 */  0x0F, 0x18, 0x3E, 0x53, 0xB0, 0xEB, 0x41, 0xF4,
                /* 05B0 */  0xC7, 0x00, 0x9F, 0x4B, 0x30, 0x83, 0x03, 0xFF,
                /* 05B8 */  0xB5, 0xE2, 0xD0, 0x3D, 0x8A, 0xD7, 0x07, 0x13,
                /* 05C0 */  0x78, 0x70, 0xFC, 0xFF, 0x3F, 0x38, 0xB8, 0x77,
                /* 05C8 */  0x86, 0x23, 0xF2, 0x1D, 0xC6, 0x83, 0x03, 0xDB,
                /* 05D0 */  0x41, 0x00, 0x38, 0x0C, 0x0E, 0x1F, 0x6A, 0x70,
                /* 05D8 */  0xE8, 0xF1, 0x18, 0x38, 0xA4, 0xCF, 0x63, 0xEC,
                /* 05E0 */  0xC2, 0xF0, 0x90, 0xE3, 0xA1, 0x81, 0x0D, 0xD0,
                /* 05E8 */  0x43, 0x03, 0x96, 0x93, 0x78, 0x0A, 0x39, 0x34,
                /* 05F0 */  0x30, 0x4B, 0x18, 0x1A, 0x50, 0x8A, 0x37, 0x34,
                /* 05F8 */  0xFA, 0xFF, 0x1F, 0x1A, 0x1F, 0x92, 0x0F, 0x0B,
                /* 0600 */  0x31, 0x9F, 0x72, 0x22, 0xBC, 0x2F, 0xF8, 0x04,
                /* 0608 */  0xC5, 0xD0, 0x5F, 0x53, 0x7C, 0xBB, 0xF0, 0x4D,
                /* 0610 */  0x10, 0x37, 0x3E, 0x70, 0x5D, 0x3A, 0x3D, 0x3E,
                /* 0618 */  0xE0, 0x73, 0xE4, 0xF2, 0xF8, 0x70, 0x47, 0x27,
                /* 0620 */  0x8F, 0x0F, 0x86, 0xCB, 0xAB, 0x0C, 0x39, 0x9A,
                /* 0628 */  0xF8, 0x68, 0xC5, 0x86, 0x07, 0xB6, 0x9B, 0x9E,
                /* 0630 */  0x87, 0x07, 0x7C, 0xAE, 0x9B, 0x60, 0xBC, 0x42,
                /* 0638 */  0xF2, 0x6B, 0x09, 0x8C, 0x13, 0x14, 0xFE, 0xBA,
                /* 0640 */  0x09, 0xDE, 0xFF, 0xFF, 0x75, 0x13, 0x78, 0x8E,
                /* 0648 */  0x82, 0x6B, 0xBD, 0x64, 0xD3, 0x20, 0xAF, 0x1C,
                /* 0650 */  0xC5, 0x7A, 0x11, 0x50, 0x18, 0x9F, 0xD9, 0x00,
                /* 0658 */  0x47, 0x63, 0x7D, 0x66, 0x03, 0xCB, 0xBD, 0x80,
                /* 0660 */  0xDD, 0xD8, 0xE0, 0x9E, 0xD6, 0x60, 0xDF, 0x1D,
                /* 0668 */  0x1E, 0xCE, 0x1E, 0xD3, 0x1E, 0xD5, 0x1E, 0xD0,
                /* 0670 */  0x7C, 0xC4, 0x8E, 0xF1, 0x96, 0x16, 0x24, 0x4E,
                /* 0678 */  0x84, 0xD7, 0x81, 0xA7, 0x35, 0x5F, 0x32, 0xE2,
                /* 0680 */  0x05, 0x7A, 0x5A, 0x33, 0x46, 0x9C, 0x97, 0x36,
                /* 0688 */  0x23, 0xBE, 0x52, 0x84, 0x78, 0x58, 0xF3, 0xC9,
                /* 0690 */  0xCD, 0x78, 0x0F, 0x13, 0xE1, 0xC2, 0xBC, 0xB0,
                /* 0698 */  0x3D, 0xAD, 0x81, 0xE3, 0xFF, 0x7F, 0x5A, 0x83,
                /* 06A0 */  0x23, 0xE7, 0x8A, 0x0D, 0xD0, 0xE4, 0xA2, 0x8F,
                /* 06A8 */  0x3B, 0xA4, 0x80, 0xE5, 0xDA, 0xC0, 0x6E, 0x29,
                /* 06B0 */  0xF0, 0x2E, 0xD8, 0xC0, 0xF9, 0xFF, 0x7F, 0x44,
                /* 06B8 */  0x01, 0x5F, 0x96, 0x0B, 0x36, 0xCD, 0x71, 0xC1,
                /* 06C0 */  0x46, 0x71, 0x58, 0x0D, 0x90, 0xE6, 0x09, 0xFF,
                /* 06C8 */  0x7A, 0x0D, 0xFE, 0x49, 0xF8, 0x7A, 0x0D, 0xD8,
                /* 06D0 */  0xBE, 0xC5, 0xE2, 0xAE, 0xD7, 0xC0, 0xEA, 0xFF,
                /* 06D8 */  0x7F, 0xBD, 0x06, 0x96, 0x82, 0x47, 0x4A, 0xEF,
                /* 06E0 */  0xD4, 0xE0, 0xBA, 0x69, 0xE3, 0x41, 0xDF, 0xB4,
                /* 06E8 */  0x61, 0x0A, 0xBE, 0x45, 0xD1, 0x28, 0xE4, 0x8A,
                /* 06F0 */  0xB6, 0x10, 0x0A, 0xE3, 0x5B, 0x14, 0xE0, 0x08,
                /* 06F8 */  0xFB, 0x2D, 0x0A, 0x2C, 0x17, 0xA7, 0xB7, 0x28,
                /* 0700 */  0xFC, 0x0C, 0x3C, 0x68, 0xDF, 0x75, 0x18, 0xA6,
                /* 0708 */  0xEF, 0xD0, 0xF0, 0x4F, 0x4D, 0xCF, 0x4D, 0x0F,
                /* 0710 */  0x4E, 0x0F, 0xCD, 0x3E, 0x48, 0xF9, 0x70, 0xF0,
                /* 0718 */  0xFC, 0xF4, 0xFF, 0x8F, 0xF1, 0x5E, 0xE7, 0x9B,
                /* 0720 */  0xD4, 0x6B, 0x94, 0x2F, 0x30, 0xC7, 0x10, 0x31,
                /* 0728 */  0xCA, 0xCB, 0xB4, 0x21, 0xE2, 0xF9, 0xD4, 0xE4,
                /* 0730 */  0xB3, 0x42, 0xDC, 0x10, 0x0F, 0xD1, 0x46, 0x88,
                /* 0738 */  0xFA, 0x3C, 0xED, 0x09, 0xBD, 0x46, 0x81, 0x57,
                /* 0740 */  0xD0, 0x35, 0x0A, 0xA0, 0xC9, 0xFD, 0x08, 0x77,
                /* 0748 */  0x8D, 0x02, 0xCB, 0xBD, 0x81, 0x9D, 0x87, 0xF8,
                /* 0750 */  0x95, 0xC8, 0xD7, 0x06, 0x18, 0xF7, 0x28, 0x38,
                /* 0758 */  0xFF, 0xFF, 0x7B, 0x14, 0x60, 0x23, 0xCC, 0x3D,
                /* 0760 */  0x8A, 0x06, 0xB9, 0x47, 0xA1, 0x4E, 0x26, 0xBE,
                /* 0768 */  0xD4, 0x79, 0xA2, 0xE0, 0x08, 0x7F, 0x91, 0x42,
                /* 0770 */  0xC5, 0x26, 0x51, 0xE8, 0xC3, 0x10, 0x2A, 0xE6,
                /* 0778 */  0x61, 0x84, 0x82, 0x18, 0xD0, 0x19, 0x4E, 0x14,
                /* 0780 */  0x68, 0x15, 0x27, 0x0A, 0x72, 0x8B, 0xF1, 0xA4,
                /* 0788 */  0x1E, 0xA3, 0x00, 0x5F, 0xCB, 0xF4, 0x50, 0x79,
                /* 0790 */  0xE4, 0xA1, 0x52, 0x10, 0x0F, 0xD5, 0x71, 0x86,
                /* 0798 */  0x8A, 0x9E, 0xA4, 0xE7, 0x8F, 0xF9, 0xFF, 0x1F,
                /* 07A0 */  0x1C, 0xB0, 0x07, 0x29, 0x80, 0x17, 0x0A, 0x6D,
                /* 07A8 */  0xFA, 0xD4, 0x68, 0xD4, 0xAA, 0x41, 0x99, 0x1A,
                /* 07B0 */  0x65, 0x1A, 0xD4, 0xEA, 0x53, 0xA9, 0x31, 0x63,
                /* 07B8 */  0xE7, 0x50, 0x4B, 0x3B, 0x4B, 0x50, 0x31, 0x8B,
                /* 07C0 */  0xD1, 0x68, 0x1C, 0x05, 0x84, 0xCA, 0xFE, 0x9B,
                /* 07C8 */  0x0B, 0xC4, 0x21, 0x9F, 0x3A, 0x02, 0x74, 0xB0,
                /* 07D0 */  0x17, 0x95, 0x80, 0x2C, 0x6B, 0x6D, 0x02, 0x71,
                /* 07D8 */  0x7C, 0x13, 0x10, 0x8D, 0x80, 0x48, 0xCB, 0x63,
                /* 07E0 */  0x42, 0x40, 0xCE, 0x0D, 0x22, 0x20, 0xAB, 0x58,
                /* 07E8 */  0x93, 0x80, 0xAC, 0xF9, 0x01, 0x23, 0x70, 0xEB,
                /* 07F0 */  0xD4, 0x01, 0xC4, 0x52, 0x82, 0xD0, 0x44, 0x0B,
                /* 07F8 */  0x17, 0xA8, 0xE3, 0x81, 0x68, 0x30, 0x84, 0x46,
                /* 0800 */  0x40, 0x0E, 0x46, 0x21, 0x20, 0xCB, 0xF8, 0x74,
                /* 0808 */  0x0B, 0xDC, 0x02, 0xAC, 0x00, 0x31, 0xF9, 0x20,
                /* 0810 */  0x54, 0xB0, 0x17, 0x50, 0xA6, 0x1E, 0x44, 0x40,
                /* 0818 */  0x56, 0xBA, 0x56, 0x01, 0x59, 0x37, 0x88, 0x80,
                /* 0820 */  0xFE, 0xFF, 0x2F, 0x83, 0x32, 0x03, 0xCE, 0x32,
                /* 0828 */  0xBA, 0x01, 0x62, 0x0A, 0x1F, 0x0A, 0x02, 0xB1,
                /* 0830 */  0x26, 0x3D, 0xA0, 0x4C, 0x20, 0x88, 0xAE, 0x1C,
                /* 0838 */  0xC4, 0x0F, 0x10, 0x93, 0x06, 0x22, 0x20, 0xC7,
                /* 0840 */  0x39, 0x98, 0x08, 0xDC, 0x71, 0x14, 0x01, 0x52,
                /* 0848 */  0x47, 0xC3, 0xA5, 0x20, 0x54, 0xFC, 0xF3, 0x44,
                /* 0850 */  0x20, 0x16, 0x64, 0x09, 0x8C, 0x82, 0xD0, 0x08,
                /* 0858 */  0x9A, 0x40, 0x98, 0x3C, 0x4F, 0x20, 0x2C, 0xD4,
                /* 0860 */  0x9F, 0x5C, 0xA7, 0x15, 0xA2, 0x6A, 0x88, 0xD4,
                /* 0868 */  0x15, 0x08, 0x0B, 0xFC, 0x30, 0xD0, 0x60, 0x9C,
                /* 0870 */  0x1E, 0x44, 0x40, 0x4E, 0xFA, 0xA7, 0x0A, 0x44,
                /* 0878 */  0x72, 0x83, 0x08, 0xC8, 0xF9, 0x9F, 0x22, 0x02,
                /* 0880 */  0x77, 0xEA, 0xD7, 0x84, 0x86, 0x4F, 0xBE, 0x58,
                /* 0888 */  0x41, 0x88, 0xB8, 0x87, 0x55, 0x50, 0xA2, 0x14,
                /* 0890 */  0x44, 0x40, 0x56, 0xF6, 0xB4, 0x12, 0x90, 0x75,
                /* 0898 */  0x82, 0x08, 0xC8, 0xFF, 0x7F                   
            })
        }

        Device (WMI2)
        {
            Name (_HID, EisaId ("PNP0C14"))  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_WDG, Buffer (0x64)
            {
                /* 0000 */  0xF1, 0x24, 0xB4, 0xFC, 0x5A, 0x07, 0x0E, 0x4E,
                /* 0008 */  0xBF, 0xC4, 0x62, 0xF3, 0xE7, 0x17, 0x71, 0xFA,
                /* 0010 */  0x41, 0x37, 0x01, 0x01, 0xE3, 0x5E, 0xBE, 0xE2,
                /* 0018 */  0xDA, 0x42, 0xDB, 0x49, 0x83, 0x78, 0x1F, 0x52,
                /* 0020 */  0x47, 0x38, 0x82, 0x02, 0x41, 0x38, 0x01, 0x02,
                /* 0028 */  0x9A, 0x01, 0x30, 0x74, 0xE9, 0xDC, 0x48, 0x45,
                /* 0030 */  0xBA, 0xB0, 0x9F, 0xDE, 0x09, 0x35, 0xCA, 0xFF,
                /* 0038 */  0x41, 0x39, 0x0A, 0x05, 0x03, 0x70, 0xF4, 0x7F,
                /* 0040 */  0x6C, 0x3B, 0x5E, 0x4E, 0xA2, 0x27, 0xE9, 0x79,
                /* 0048 */  0x82, 0x4A, 0x85, 0xD1, 0x41, 0x41, 0x01, 0x06,
                /* 0050 */  0x21, 0x12, 0x90, 0x05, 0x66, 0xD5, 0xD1, 0x11,
                /* 0058 */  0xB2, 0xF0, 0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10,
                /* 0060 */  0x42, 0x42, 0x01, 0x00                         
            })
            Name (PREL, Buffer (0x08)
            {
                 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
            })
            Method (WQA7, 1, NotSerialized)
            {
                Acquire (^^WMI1.MWMI, 0xFFFF)
                WMIS (0x07, Zero)
                Store (WLS0, Index (PREL, Zero))
                Store (WLS1, Index (PREL, One))
                Store (WLS2, Index (PREL, 0x02))
                Store (WLS3, Index (PREL, 0x03))
                Store (WLS4, Index (PREL, 0x04))
                Store (WLS5, Index (PREL, 0x05))
                Store (WLS6, Index (PREL, 0x06))
                Store (WLS7, Index (PREL, 0x07))
                Release (^^WMI1.MWMI)
                Return (PREL)
            }

            Method (WMA8, 3, NotSerialized)
            {
                CreateByteField (Arg2, Zero, PRE0)
                CreateByteField (Arg2, One, PRE1)
                CreateByteField (Arg2, 0x02, PRE2)
                CreateByteField (Arg2, 0x03, PRE3)
                CreateByteField (Arg2, 0x04, PRE4)
                CreateByteField (Arg2, 0x05, PRE5)
                CreateByteField (Arg2, 0x06, PRE6)
                CreateByteField (Arg2, 0x07, PRE7)
                Acquire (^^WMI1.MWMI, 0xFFFF)
                Store (PRE0, WLS0)
                Store (PRE1, WLS1)
                Store (PRE2, WLS2)
                Store (PRE3, WLS3)
                Store (PRE4, WLS4)
                Store (PRE5, WLS5)
                Store (PRE6, WLS6)
                Store (PRE7, WLS7)
                WMIS (0x08, Zero)
                Release (^^WMI1.MWMI)
            }

            Name (ITEM, Package (0x05)
            {
                Package (0x02)
                {
                    Zero, 
                    "InhibitEnteringThinkPadSetup"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "MTMSerialConcatenation"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "SwapProductName"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "ComputraceMsgDisable"
                }, 

                Package (0x02)
                {
                    Zero, 
                    "AtpMsgDisable"
                }
            })
            Name (VSEL, Package (0x02)
            {
                Package (0x02)
                {
                    "Disable", 
                    "Enable"
                }, 

                Package (0x02)
                {
                    "Off", 
                    "On"
                }
            })
            Method (WQA9, 1, NotSerialized)
            {
                Acquire (^^WMI1.MWMI, 0xFFFF)
                If (LNotEqual (WMIS (0x09, Arg0), Zero))
                {
                    Release (^^WMI1.MWMI)
                    Return ("")
                }

                Store (DerefOf (Index (ITEM, WITM)), Local0)
                Store (DerefOf (Index (Local0, Zero)), Local1)
                Store (DerefOf (Index (Local0, One)), Local2)
                Concatenate (Local2, ",", Local6)
                Store (DerefOf (Index (VSEL, Local1)), Local3)
                Concatenate (Local6, DerefOf (Index (Local3, WSEL)), Local7)
                Release (^^WMI1.MWMI)
                Return (Local7)
            }

            Method (WMAA, 3, NotSerialized)
            {
                Acquire (^^WMI1.MWMI, 0xFFFF)
                If (LEqual (SizeOf (Arg2), Zero))
                {
                    Store (0x02, Local0)
                }
                Else
                {
                    Store (^^WMI1.CARG (Arg2), Local0)
                    If (LEqual (Local0, Zero))
                    {
                        Store (^^WMI1.WSET (ITEM, VSEL), Local0)
                        If (LEqual (Local0, Zero))
                        {
                            Store (WMIS (0x0A, Zero), Local0)
                        }
                    }
                }

                Release (^^WMI1.MWMI)
                Return (DerefOf (Index (^^WMI1.RETN, Local0)))
            }

            Name (WQBB, Buffer (0x0538)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,
                /* 0008 */  0x28, 0x05, 0x00, 0x00, 0xAE, 0x18, 0x00, 0x00,
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,
                /* 0018 */  0x98, 0xDE, 0x8B, 0x00, 0x01, 0x06, 0x18, 0x42,
                /* 0020 */  0x10, 0x0D, 0x10, 0x8A, 0x0D, 0x21, 0x02, 0x0B,
                /* 0028 */  0x83, 0x50, 0x50, 0x18, 0x14, 0xA0, 0x45, 0x41,
                /* 0030 */  0xC8, 0x05, 0x14, 0x95, 0x02, 0x21, 0xC3, 0x02,
                /* 0038 */  0x14, 0x0B, 0x70, 0x2E, 0x40, 0xBA, 0x00, 0xE5,
                /* 0040 */  0x28, 0x72, 0x0C, 0x22, 0x02, 0xF7, 0xEF, 0x0F,
                /* 0048 */  0x31, 0x10, 0x88, 0x14, 0x40, 0x48, 0x28, 0x84,
                /* 0050 */  0x44, 0x00, 0x53, 0x21, 0x70, 0x84, 0xA0, 0x5F,
                /* 0058 */  0x01, 0x08, 0x1D, 0x0A, 0x90, 0x29, 0xC0, 0xA0,
                /* 0060 */  0x00, 0xA7, 0x08, 0x22, 0x88, 0xD2, 0xB2, 0x00,
                /* 0068 */  0xDD, 0x02, 0x7C, 0x0B, 0xD0, 0x0E, 0x21, 0xB4,
                /* 0070 */  0xC8, 0x95, 0x0A, 0xB0, 0x08, 0x25, 0x9F, 0x80,
                /* 0078 */  0x92, 0x88, 0x22, 0xD9, 0x78, 0xB2, 0x8D, 0x48,
                /* 0080 */  0xE6, 0x61, 0x91, 0x83, 0x40, 0x89, 0x19, 0x04,
                /* 0088 */  0x4A, 0x27, 0xAE, 0x6C, 0xE2, 0x6A, 0x10, 0x07,
                /* 0090 */  0x10, 0xE5, 0x3C, 0xA2, 0x24, 0x38, 0xAA, 0x83,
                /* 0098 */  0x88, 0x10, 0xBB, 0x5C, 0x01, 0x92, 0x07, 0x20,
                /* 00A0 */  0xCD, 0x13, 0x93, 0xF5, 0x39, 0x68, 0x64, 0x6C,
                /* 00A8 */  0x04, 0x3C, 0x98, 0x04, 0x10, 0x16, 0x65, 0x9D,
                /* 00B0 */  0x8A, 0x02, 0x83, 0xF2, 0x00, 0x22, 0x39, 0x63,
                /* 00B8 */  0x45, 0x01, 0xDB, 0xEB, 0x44, 0x64, 0x72, 0xA0,
                /* 00C0 */  0x54, 0x12, 0x1C, 0x6A, 0x98, 0x9E, 0x5A, 0xF3,
                /* 00C8 */  0x13, 0xD3, 0x44, 0x4E, 0xAD, 0xE9, 0x21, 0x0B,
                /* 00D0 */  0x92, 0x49, 0x1B, 0x0A, 0x6A, 0xEC, 0x9E, 0xD6,
                /* 00D8 */  0x49, 0x79, 0xA6, 0x11, 0x0F, 0xCA, 0x30, 0x09,
                /* 00E0 */  0x3C, 0x0A, 0x86, 0xC6, 0x09, 0xCA, 0x82, 0x90,
                /* 00E8 */  0x83, 0x81, 0xA2, 0x00, 0x4F, 0xC2, 0x73, 0x2C,
                /* 00F0 */  0x5E, 0x80, 0xF0, 0x11, 0x93, 0xB3, 0x40, 0x8C,
                /* 00F8 */  0x04, 0x3E, 0x13, 0x78, 0xE4, 0xC7, 0x8C, 0x1D,
                /* 0100 */  0x51, 0xB8, 0x80, 0xE7, 0x73, 0x0C, 0x91, 0xE3,
                /* 0108 */  0x1E, 0x6A, 0x8C, 0xA3, 0x88, 0x7C, 0x38, 0x0C,
                /* 0110 */  0xED, 0x74, 0xE3, 0x1C, 0xD8, 0xE9, 0x14, 0x04,
                /* 0118 */  0x2E, 0x90, 0x60, 0x3D, 0xCF, 0x59, 0x20, 0xFF,
                /* 0120 */  0xFF, 0x18, 0x07, 0xC1, 0xF0, 0x8E, 0x01, 0x23,
                /* 0128 */  0x03, 0x42, 0x1E, 0x05, 0x58, 0x1D, 0x96, 0x26,
                /* 0130 */  0x91, 0xC0, 0xEE, 0x05, 0x68, 0xBC, 0x04, 0x48,
                /* 0138 */  0xE1, 0x20, 0xA5, 0x0C, 0x42, 0x30, 0x8D, 0x09,
                /* 0140 */  0xB0, 0x75, 0x68, 0x90, 0x37, 0x01, 0xD6, 0xAE,
                /* 0148 */  0x02, 0x42, 0x89, 0x74, 0x02, 0x71, 0x42, 0x44,
                /* 0150 */  0x89, 0x18, 0xD4, 0x40, 0x51, 0x6A, 0x43, 0x15,
                /* 0158 */  0x4C, 0x67, 0xC3, 0x13, 0x66, 0xDC, 0x10, 0x31,
                /* 0160 */  0x0C, 0x14, 0xB7, 0xFD, 0x41, 0x90, 0x61, 0xE3,
                /* 0168 */  0xC6, 0xEF, 0x41, 0x9D, 0xD6, 0xD9, 0x1D, 0xD3,
                /* 0170 */  0xAB, 0x82, 0x09, 0x3C, 0xE9, 0x37, 0x84, 0xA7,
                /* 0178 */  0x83, 0xA3, 0x38, 0xDA, 0xA8, 0x31, 0x9A, 0x23,
                /* 0180 */  0x65, 0xAB, 0xD6, 0xB9, 0xC2, 0x91, 0xE0, 0x51,
                /* 0188 */  0xE7, 0x05, 0x9F, 0x0C, 0x3C, 0xB4, 0xC3, 0xF6,
                /* 0190 */  0x60, 0xCF, 0xD2, 0x43, 0x38, 0x82, 0x67, 0x86,
                /* 0198 */  0x47, 0x02, 0x8F, 0x81, 0xDD, 0x15, 0x7C, 0x08,
                /* 01A0 */  0xF0, 0x19, 0x01, 0xEF, 0x1A, 0x50, 0x97, 0x83,
                /* 01A8 */  0x47, 0x03, 0x36, 0xE9, 0x70, 0x98, 0xF1, 0x7A,
                /* 01B0 */  0xEE, 0x9E, 0xBA, 0xCF, 0x18, 0xFC, 0xBC, 0xE1,
                /* 01B8 */  0xC1, 0xE1, 0x46, 0x7A, 0x32, 0x47, 0x56, 0xAA,
                /* 01C0 */  0x00, 0xB3, 0xD7, 0x00, 0x1D, 0x25, 0x7C, 0xE0,
                /* 01C8 */  0x60, 0x77, 0x81, 0xA7, 0x00, 0x13, 0x58, 0xFE,
                /* 01D0 */  0x20, 0x50, 0x23, 0x33, 0xB4, 0xC7, 0xFB, 0xDE,
                /* 01D8 */  0x61, 0xC8, 0x27, 0x85, 0xC3, 0x62, 0x62, 0x0F,
                /* 01E0 */  0x1E, 0x74, 0x3C, 0xE0, 0xBF, 0x8F, 0x3C, 0x69,
                /* 01E8 */  0x78, 0xFA, 0x9E, 0xAF, 0x09, 0x06, 0x86, 0x90,
                /* 01F0 */  0x95, 0xF1, 0xA0, 0x06, 0x62, 0xE8, 0x57, 0x85,
                /* 01F8 */  0xC3, 0x38, 0x0D, 0x9F, 0x40, 0x7C, 0x0E, 0x08,
                /* 0200 */  0x12, 0xE3, 0x98, 0x3C, 0x38, 0xFF, 0xFF, 0x09,
                /* 0208 */  0x1C, 0x6B, 0xE4, 0xF4, 0x9C, 0xE2, 0xF3, 0x04,
                /* 0210 */  0x3F, 0x5C, 0xF8, 0x3C, 0xC1, 0x4E, 0x0C, 0xA7,
                /* 0218 */  0xF1, 0x1C, 0xE0, 0xE1, 0x9C, 0x95, 0x8F, 0x13,
                /* 0220 */  0xC0, 0x02, 0xE2, 0x75, 0x82, 0x0F, 0x14, 0x3E,
                /* 0228 */  0xEC, 0xA1, 0x79, 0x14, 0x2F, 0x11, 0x6F, 0x0F,
                /* 0230 */  0x26, 0x88, 0xF6, 0x10, 0x03, 0xC6, 0x19, 0xE1,
                /* 0238 */  0xCE, 0x1B, 0x70, 0x4E, 0x31, 0xC0, 0x03, 0xEA,
                /* 0240 */  0x10, 0x30, 0x87, 0x09, 0x0F, 0x81, 0x0F, 0xE0,
                /* 0248 */  0x19, 0xE4, 0x1C, 0x7D, 0xCC, 0x39, 0x33, 0xDC,
                /* 0250 */  0x71, 0x07, 0x6C, 0xC3, 0xE0, 0x91, 0x2D, 0x80,
                /* 0258 */  0xB0, 0x38, 0x4F, 0x02, 0x05, 0x7C, 0x1B, 0x50,
                /* 0260 */  0x18, 0x1F, 0x6E, 0xC0, 0xFB, 0xFF, 0x3F, 0xDC,
                /* 0268 */  0x00, 0xD7, 0xF3, 0x01, 0xEE, 0xF8, 0x00, 0xF7,
                /* 0270 */  0x62, 0xC1, 0x0E, 0x0F, 0x8F, 0x37, 0xC0, 0x60,
                /* 0278 */  0x48, 0x8F, 0x34, 0x6F, 0x35, 0x31, 0x5E, 0x6D,
                /* 0280 */  0x42, 0x44, 0x78, 0xA8, 0x79, 0xB7, 0x31, 0x52,
                /* 0288 */  0xBC, 0xC7, 0x1B, 0x76, 0x8D, 0x39, 0x8B, 0x07,
                /* 0290 */  0x90, 0x28, 0xC5, 0xA1, 0xE9, 0x62, 0x13, 0x23,
                /* 0298 */  0xCA, 0x9B, 0x8D, 0x61, 0xDF, 0x74, 0x0C, 0x14,
                /* 02A0 */  0x2A, 0x52, 0x84, 0x30, 0x2F, 0x16, 0x21, 0x1E,
                /* 02A8 */  0x6F, 0xC0, 0x2C, 0xE9, 0xA5, 0xA2, 0xCF, 0x81,
                /* 02B0 */  0x8F, 0x37, 0x80, 0x97, 0xFF, 0xFF, 0xF1, 0x06,
                /* 02B8 */  0xF0, 0x30, 0x0C, 0x1F, 0x53, 0xC0, 0x76, 0x73,
                /* 02C0 */  0x60, 0xF7, 0x14, 0xF8, 0xE7, 0x14, 0xC0, 0x91,
                /* 02C8 */  0x90, 0x47, 0x80, 0x0E, 0x1E, 0x16, 0x01, 0x22,
                /* 02D0 */  0x1B, 0xCF, 0x00, 0x9F, 0x89, 0xA8, 0x40, 0x2A,
                /* 02D8 */  0xCD, 0x14, 0x2C, 0xE3, 0x14, 0xAC, 0x4E, 0x88,
                /* 02E0 */  0x5C, 0x06, 0x85, 0x44, 0x40, 0x68, 0x64, 0x86,
                /* 02E8 */  0xF3, 0x21, 0xD1, 0x60, 0x06, 0xF1, 0xF9, 0xC0,
                /* 02F0 */  0x67, 0x0A, 0x9F, 0x9C, 0xF8, 0xFF, 0xFF, 0xE4,
                /* 02F8 */  0x04, 0x9E, 0x83, 0xC9, 0x43, 0x05, 0x2C, 0x44,
                /* 0300 */  0x9F, 0x16, 0x38, 0x9C, 0xCF, 0x2C, 0x1C, 0xCE,
                /* 0308 */  0x47, 0x12, 0x7E, 0x80, 0xE4, 0x47, 0x25, 0x70,
                /* 0310 */  0x09, 0x3C, 0x34, 0x80, 0x02, 0xC8, 0xF7, 0x03,
                /* 0318 */  0x9F, 0x03, 0x9E, 0x11, 0xD8, 0x1C, 0x1E, 0x09,
                /* 0320 */  0x7C, 0x20, 0x60, 0xF0, 0x3C, 0xDA, 0xA8, 0xE8,
                /* 0328 */  0xD1, 0xC6, 0xC3, 0xE3, 0x47, 0x06, 0xCF, 0xE7,
                /* 0330 */  0x81, 0xE0, 0x28, 0x1F, 0x09, 0x70, 0x18, 0xEF,
                /* 0338 */  0x17, 0x1E, 0xA2, 0x4F, 0x39, 0xB0, 0x26, 0x72,
                /* 0340 */  0xD4, 0x16, 0x7D, 0x22, 0x10, 0xE8, 0x33, 0x17,
                /* 0348 */  0xE6, 0x94, 0x03, 0x9C, 0x82, 0x8F, 0x1E, 0x15,
                /* 0350 */  0xF5, 0x40, 0x0A, 0xDA, 0x93, 0x82, 0xCF, 0x0A,
                /* 0358 */  0x3E, 0x7C, 0xC1, 0xFF, 0xFF, 0x1F, 0xBE, 0xE0,
                /* 0360 */  0xCC, 0xEB, 0x65, 0xCD, 0x07, 0x8E, 0x38, 0x67,
                /* 0368 */  0x71, 0xBA, 0xEF, 0x16, 0xF8, 0x13, 0x29, 0x30,
                /* 0370 */  0x0B, 0x72, 0x22, 0x45, 0xC1, 0xF8, 0x44, 0x0A,
                /* 0378 */  0xD8, 0xBC, 0x05, 0x60, 0xAF, 0x0B, 0x4F, 0x22,
                /* 0380 */  0x30, 0xCE, 0x11, 0xCF, 0x58, 0x30, 0x0F, 0x55,
                /* 0388 */  0xA7, 0xF8, 0x52, 0xF5, 0xC6, 0x10, 0xE1, 0xC9,
                /* 0390 */  0xEA, 0x35, 0xEA, 0x01, 0xCB, 0x60, 0x2F, 0x02,
                /* 0398 */  0x86, 0x79, 0xC5, 0xF2, 0xE9, 0x2A, 0xC4, 0x03,
                /* 03A0 */  0x96, 0xCF, 0x5A, 0xD1, 0x42, 0x84, 0x8C, 0x12,
                /* 03A8 */  0xEC, 0x15, 0xEB, 0x55, 0xC6, 0x47, 0x2A, 0x83,
                /* 03B0 */  0x07, 0x0C, 0x1B, 0x2D, 0x52, 0x84, 0x47, 0x2C,
                /* 03B8 */  0xFC, 0xFF, 0xFF, 0x88, 0x05, 0x1E, 0x09, 0x07,
                /* 03C0 */  0x52, 0x80, 0x2A, 0x03, 0xC7, 0x1D, 0x48, 0x81,
                /* 03C8 */  0xFD, 0x69, 0x02, 0x7F, 0xBD, 0xF0, 0x78, 0xB0,
                /* 03D0 */  0xFF, 0xFF, 0x73, 0x00, 0xF8, 0x0E, 0x31, 0xC0,
                /* 03D8 */  0x60, 0xC0, 0x30, 0x0E, 0x31, 0xC0, 0x43, 0xF0,
                /* 03E0 */  0xC9, 0x0C, 0xF4, 0xC7, 0x1D, 0xF8, 0xE3, 0xE0,
                /* 03E8 */  0x19, 0x9F, 0x1C, 0x26, 0x50, 0x98, 0x13, 0x29,
                /* 03F0 */  0x0A, 0xC6, 0x27, 0x52, 0xC0, 0xD9, 0xFF, 0xFF,
                /* 03F8 */  0x70, 0x05, 0x86, 0xE3, 0x0D, 0xF8, 0x6F, 0x33,
                /* 0400 */  0x3E, 0x84, 0xFA, 0x7C, 0xE3, 0x0B, 0xA9, 0x21,
                /* 0408 */  0x5E, 0x6C, 0xDE, 0xD4, 0x5E, 0x09, 0x5E, 0xDF,
                /* 0410 */  0xD9, 0xB5, 0xE6, 0xF5, 0xDD, 0xA7, 0x82, 0x27,
                /* 0418 */  0xD1, 0x08, 0x21, 0xA3, 0xBC, 0xE4, 0x18, 0x24,
                /* 0420 */  0xC4, 0xEB, 0xA8, 0x01, 0x83, 0x05, 0x89, 0x78,
                /* 0428 */  0x0A, 0x4F, 0x3B, 0x8F, 0x37, 0xE0, 0x15, 0x75,
                /* 0430 */  0x20, 0x05, 0xE8, 0xF1, 0xFF, 0x3F, 0x90, 0x02,
                /* 0438 */  0x83, 0x7B, 0x0A, 0xEC, 0x73, 0x0A, 0xE0, 0x29,
                /* 0440 */  0xF9, 0x89, 0x94, 0xA6, 0x3E, 0x91, 0xA2, 0x15,
                /* 0448 */  0x01, 0x69, 0xAA, 0x60, 0x21, 0x98, 0xFE, 0x44,
                /* 0450 */  0x4A, 0x0F, 0x06, 0xCE, 0x4D, 0xA2, 0xE4, 0x43,
                /* 0458 */  0xA3, 0x70, 0xCE, 0x7A, 0x20, 0xA1, 0x20, 0x06,
                /* 0460 */  0x74, 0x90, 0x43, 0x05, 0xFA, 0xAC, 0xE2, 0x03,
                /* 0468 */  0xC9, 0x81, 0x3C, 0x22, 0x7A, 0x58, 0x3E, 0x54,
                /* 0470 */  0xFA, 0xAE, 0xE2, 0x73, 0x88, 0x8F, 0x14, 0x1E,
                /* 0478 */  0xBF, 0x0F, 0x0B, 0xFC, 0x3F, 0xE3, 0xE3, 0x28,
                /* 0480 */  0x03, 0xAF, 0xE6, 0xBC, 0x82, 0x02, 0xF3, 0x69,
                /* 0488 */  0x14, 0xA3, 0xEB, 0x3E, 0x01, 0x92, 0xFF, 0xFF,
                /* 0490 */  0xFC, 0xB8, 0xBE, 0xC3, 0x28, 0xC8, 0xD1, 0x79,
                /* 0498 */  0xF8, 0xC9, 0xA2, 0xE2, 0x4E, 0x96, 0x82, 0x78,
                /* 04A0 */  0xB2, 0x8E, 0x32, 0x59, 0xF4, 0x4C, 0x7C, 0xBB,
                /* 04A8 */  0xF0, 0x8C, 0xDE, 0xBB, 0x7C, 0x83, 0x65, 0x37,
                /* 04B0 */  0x59, 0x78, 0x97, 0x81, 0x90, 0x8F, 0x06, 0xBE,
                /* 04B8 */  0xC9, 0xC2, 0x1D, 0x8B, 0x2F, 0x23, 0xE0, 0xBB,
                /* 04C0 */  0xC9, 0x02, 0x5E, 0x47, 0xE3, 0xB3, 0x05, 0x3B,
                /* 04C8 */  0x85, 0xF8, 0xBA, 0x06, 0x4B, 0xA1, 0x4D, 0x9F,
                /* 04D0 */  0x1A, 0x8D, 0x5A, 0xFD, 0xFF, 0x1B, 0x94, 0xA9,
                /* 04D8 */  0x51, 0xA6, 0x41, 0xAD, 0x3E, 0x95, 0x1A, 0x33,
                /* 04E0 */  0x76, 0xA1, 0xB0, 0xB8, 0x0B, 0x06, 0x95, 0xB4,
                /* 04E8 */  0x2C, 0x8D, 0xCB, 0x81, 0x40, 0x68, 0x80, 0x5B,
                /* 04F0 */  0xA9, 0x40, 0x1C, 0xFA, 0x0B, 0xA4, 0x53, 0x02,
                /* 04F8 */  0xF9, 0x6A, 0x09, 0xC8, 0x62, 0x57, 0x25, 0x10,
                /* 0500 */  0xCB, 0x54, 0x01, 0xD1, 0xC8, 0xDD, 0xC2, 0x20,
                /* 0508 */  0x02, 0x72, 0xBC, 0x4F, 0x8D, 0x40, 0x1D, 0x49,
                /* 0510 */  0x07, 0x10, 0x13, 0xE4, 0x63, 0xAC, 0xF4, 0x25,
                /* 0518 */  0x20, 0x10, 0xCB, 0xA6, 0x15, 0xA0, 0xE5, 0x3A,
                /* 0520 */  0x01, 0x62, 0x61, 0x41, 0x68, 0xC0, 0x5F, 0xB5,
                /* 0528 */  0x86, 0xE0, 0xB4, 0x20, 0x02, 0x72, 0x32, 0x2D,
                /* 0530 */  0x40, 0x2C, 0x27, 0x88, 0x80, 0xFC, 0xFF, 0x07 
            })
        }

        Device (WMI3)
        {
            Name (_HID, EisaId ("PNP0C14"))  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (_WDG, Buffer (0x3C)
            {
                /* 0000 */  0x79, 0x36, 0x4D, 0x8F, 0x9E, 0x74, 0x79, 0x44,
                /* 0008 */  0x9B, 0x16, 0xC6, 0x26, 0x01, 0xFD, 0x25, 0xF0,
                /* 0010 */  0x41, 0x42, 0x01, 0x02, 0x69, 0xE8, 0xD2, 0x85,
                /* 0018 */  0x5A, 0x36, 0xCE, 0x4A, 0xA4, 0xD3, 0xCD, 0x69,
                /* 0020 */  0x2B, 0x16, 0x98, 0xA0, 0x41, 0x43, 0x01, 0x02,
                /* 0028 */  0x21, 0x12, 0x90, 0x05, 0x66, 0xD5, 0xD1, 0x11,
                /* 0030 */  0xB2, 0xF0, 0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10,
                /* 0038 */  0x42, 0x43, 0x01, 0x00                         
            })
            Method (WMAB, 3, NotSerialized)
            {
                CreateByteField (Arg2, Zero, ASS0)
                CreateWordField (Arg2, One, ASS1)
                CreateByteField (Arg2, 0x03, ASS2)
                Acquire (^^WMI1.MWMI, 0xFFFF)
                Store (ASS0, WASB)
                Store (ASS1, WASI)
                Store (ASS2, WASD)
                WMIS (0x0B, Zero)
                Store (WASS, Local0)
                Release (^^WMI1.MWMI)
                Return (Local0)
            }

            Method (WMAC, 3, NotSerialized)
            {
                CreateByteField (Arg2, Zero, ASS0)
                CreateWordField (Arg2, One, ASS1)
                Acquire (^^WMI1.MWMI, 0xFFFF)
                Store (ASS0, WASB)
                Store (ASS1, WASI)
                WMIS (0x0C, Arg1)
                Store (WASS, Local0)
                Release (^^WMI1.MWMI)
                Return (Local0)
            }

            Name (WQBC, Buffer (0x040A)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,
                /* 0008 */  0xFA, 0x03, 0x00, 0x00, 0x32, 0x12, 0x00, 0x00,
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,
                /* 0018 */  0x98, 0xC3, 0x88, 0x00, 0x01, 0x06, 0x18, 0x42,
                /* 0020 */  0x10, 0x07, 0x10, 0x8A, 0x0D, 0x21, 0x02, 0x0B,
                /* 0028 */  0x83, 0x50, 0x50, 0x18, 0x14, 0xA0, 0x45, 0x41,
                /* 0030 */  0xC8, 0x05, 0x14, 0x95, 0x02, 0x21, 0xC3, 0x02,
                /* 0038 */  0x14, 0x0B, 0x70, 0x2E, 0x40, 0xBA, 0x00, 0xE5,
                /* 0040 */  0x28, 0x72, 0x0C, 0x22, 0x02, 0xF7, 0xEF, 0x0F,
                /* 0048 */  0x31, 0x10, 0x88, 0x14, 0x40, 0x48, 0x28, 0x84,
                /* 0050 */  0x44, 0x00, 0x53, 0x21, 0x70, 0x84, 0xA0, 0x5F,
                /* 0058 */  0x01, 0x08, 0x1D, 0x0A, 0x90, 0x29, 0xC0, 0xA0,
                /* 0060 */  0x00, 0xA7, 0x08, 0x22, 0x88, 0xD2, 0xB2, 0x00,
                /* 0068 */  0xDD, 0x02, 0x7C, 0x0B, 0xD0, 0x0E, 0x21, 0xB4,
                /* 0070 */  0x58, 0x07, 0x11, 0x21, 0xD2, 0x31, 0x34, 0x29,
                /* 0078 */  0x40, 0xA2, 0x00, 0x8B, 0x02, 0x64, 0xC3, 0xC8,
                /* 0080 */  0x36, 0x22, 0x99, 0x87, 0x45, 0x0E, 0x02, 0x25,
                /* 0088 */  0x66, 0x10, 0x28, 0x9D, 0xE0, 0xB2, 0x89, 0xAB,
                /* 0090 */  0x41, 0x9C, 0x4C, 0x94, 0xF3, 0x88, 0x92, 0xE0,
                /* 0098 */  0xA8, 0x0E, 0x22, 0x42, 0xEC, 0x72, 0x05, 0x48,
                /* 00A0 */  0x1E, 0x80, 0x34, 0x4F, 0x4C, 0xD6, 0xE7, 0xA0,
                /* 00A8 */  0x91, 0xB1, 0x11, 0xF0, 0x94, 0x1A, 0x40, 0x58,
                /* 00B0 */  0xA0, 0x75, 0x2A, 0xE0, 0x7A, 0x0D, 0x43, 0x3D,
                /* 00B8 */  0x80, 0x48, 0xCE, 0x58, 0x51, 0xC0, 0xF6, 0x3A,
                /* 00C0 */  0x11, 0x8D, 0xEA, 0x40, 0x99, 0x24, 0x38, 0xD4,
                /* 00C8 */  0x30, 0x3D, 0xB5, 0xE6, 0x27, 0xA6, 0x89, 0x9C,
                /* 00D0 */  0x5A, 0xD3, 0x43, 0x16, 0x24, 0x93, 0x36, 0x14,
                /* 00D8 */  0xD4, 0xD8, 0x3D, 0xAD, 0x93, 0xF2, 0x4C, 0x23,
                /* 00E0 */  0x1E, 0x94, 0x61, 0x12, 0x78, 0x14, 0x0C, 0x8D,
                /* 00E8 */  0x13, 0x94, 0x75, 0x22, 0xA0, 0x03, 0xE5, 0x80,
                /* 00F0 */  0x27, 0xE1, 0x39, 0x16, 0x2F, 0x40, 0xF8, 0x88,
                /* 00F8 */  0xC9, 0xB4, 0x4D, 0xE0, 0x33, 0x81, 0x87, 0x79,
                /* 0100 */  0xCC, 0xD8, 0x11, 0x85, 0x0B, 0x78, 0x3E, 0xC7,
                /* 0108 */  0x10, 0x39, 0xEE, 0xA1, 0xC6, 0x38, 0x8A, 0xC8,
                /* 0110 */  0x47, 0x60, 0x24, 0x03, 0xC5, 0x2B, 0x08, 0x89,
                /* 0118 */  0x80, 0xF8, 0x76, 0x70, 0x70, 0x91, 0xFC, 0xFF,
                /* 0120 */  0x47, 0x89, 0x11, 0x2A, 0xC6, 0xDB, 0x00, 0x6E,
                /* 0128 */  0x5E, 0x09, 0x8A, 0x1E, 0x07, 0x4A, 0x06, 0x84,
                /* 0130 */  0x3C, 0x0A, 0xB0, 0x7A, 0x28, 0x20, 0x04, 0x16,
                /* 0138 */  0x27, 0x40, 0xE3, 0x38, 0x05, 0xD3, 0x99, 0x00,
                /* 0140 */  0x6D, 0x02, 0xBC, 0x09, 0x30, 0x27, 0xC0, 0x16,
                /* 0148 */  0x86, 0x80, 0x82, 0x9C, 0x59, 0x94, 0x20, 0x11,
                /* 0150 */  0x42, 0x31, 0x88, 0x0A, 0x05, 0x18, 0x43, 0x14,
                /* 0158 */  0xCA, 0x3B, 0x41, 0x8C, 0xCA, 0x20, 0x74, 0x82,
                /* 0160 */  0x08, 0x14, 0x3D, 0x78, 0x98, 0xD6, 0x40, 0x74,
                /* 0168 */  0x89, 0xF0, 0xC8, 0xB1, 0x47, 0x00, 0x9F, 0x19,
                /* 0170 */  0xCE, 0xE9, 0x04, 0x1F, 0x01, 0xDE, 0x16, 0x4C,
                /* 0178 */  0xE0, 0x79, 0xBF, 0x24, 0x1C, 0x6A, 0xD8, 0x03,
                /* 0180 */  0x8E, 0x1A, 0xE3, 0x28, 0x12, 0x58, 0xD0, 0x33,
                /* 0188 */  0x42, 0x16, 0x40, 0x14, 0x09, 0x1E, 0x75, 0x64,
                /* 0190 */  0xF0, 0xE1, 0xC0, 0x23, 0x3B, 0x72, 0xCF, 0xF0,
                /* 0198 */  0x04, 0x82, 0x1C, 0xC2, 0x11, 0x3C, 0x36, 0x3C,
                /* 01A0 */  0x15, 0x78, 0x0C, 0xEC, 0xBA, 0xE0, 0x73, 0x80,
                /* 01A8 */  0x8F, 0x09, 0x78, 0xD7, 0x80, 0x9A, 0xF3, 0xD3,
                /* 01B0 */  0x01, 0x9B, 0x72, 0x38, 0xCC, 0x70, 0x3D, 0xFD,
                /* 01B8 */  0x70, 0x27, 0x70, 0xD2, 0x06, 0x64, 0xB3, 0xF3,
                /* 01C0 */  0xE0, 0x70, 0xE3, 0x3C, 0x99, 0x23, 0x2B, 0x55,
                /* 01C8 */  0x80, 0xD9, 0x13, 0x82, 0x4E, 0x13, 0x3E, 0x73,
                /* 01D0 */  0xB0, 0xBB, 0xC0, 0xF9, 0xF4, 0x0C, 0x49, 0xE4,
                /* 01D8 */  0x0F, 0x02, 0x35, 0x32, 0x43, 0xFB, 0x2C, 0xF0,
                /* 01E0 */  0xEA, 0x61, 0xC8, 0x87, 0x85, 0xC3, 0x62, 0x62,
                /* 01E8 */  0xCF, 0x1E, 0x74, 0x3C, 0xE0, 0x3F, 0x25, 0x3C,
                /* 01F0 */  0x6C, 0x78, 0xFA, 0x9E, 0xAF, 0x09, 0xA2, 0x3D,
                /* 01F8 */  0x8F, 0x80, 0xE1, 0xFF, 0x7F, 0x1E, 0x81, 0x39,
                /* 0200 */  0x9C, 0x07, 0x84, 0x27, 0x07, 0x76, 0x80, 0xC0,
                /* 0208 */  0x1C, 0x48, 0x80, 0xC9, 0xF9, 0x02, 0x77, 0x28,
                /* 0210 */  0xF0, 0x10, 0xF8, 0x00, 0x1E, 0x25, 0xCE, 0xD1,
                /* 0218 */  0x4A, 0x67, 0x86, 0x3C, 0xB9, 0x80, 0x2D, 0xFB,
                /* 0220 */  0x1B, 0x40, 0x07, 0x0F, 0xE7, 0x06, 0x91, 0x8D,
                /* 0228 */  0x57, 0x80, 0x09, 0x74, 0x38, 0xB1, 0x1E, 0x20,
                /* 0230 */  0x4D, 0x14, 0x0C, 0x04, 0xD3, 0xD3, 0x6B, 0x00,
                /* 0238 */  0x3E, 0x15, 0x38, 0x37, 0x89, 0x92, 0x0F, 0x8C,
                /* 0240 */  0xC2, 0x39, 0xEB, 0x79, 0x84, 0x82, 0x18, 0xD0,
                /* 0248 */  0x41, 0x20, 0xE4, 0xE4, 0xA0, 0x80, 0x3A, 0xAA,
                /* 0250 */  0xF8, 0x3C, 0x72, 0xAA, 0x0F, 0x3D, 0x9E, 0x94,
                /* 0258 */  0x47, 0xE1, 0xAB, 0x8A, 0x0F, 0x21, 0x3E, 0x4F,
                /* 0260 */  0x78, 0xF4, 0x3E, 0x29, 0xF0, 0xEF, 0x8C, 0xAF,
                /* 0268 */  0x0E, 0x46, 0xB7, 0x9A, 0xE3, 0x0A, 0x0A, 0xCC,
                /* 0270 */  0x67, 0x11, 0x4E, 0x50, 0xD7, 0x6D, 0x01, 0xFA,
                /* 0278 */  0x29, 0xE0, 0x08, 0x3C, 0x94, 0x77, 0x92, 0xC7,
                /* 0280 */  0x90, 0x04, 0xF5, 0x9D, 0x16, 0x40, 0x01, 0xE4,
                /* 0288 */  0x9B, 0x81, 0x4F, 0x02, 0x21, 0xFE, 0xFF, 0x4F,
                /* 0290 */  0x07, 0x1E, 0xC3, 0xC3, 0x80, 0xD1, 0x8C, 0xCE,
                /* 0298 */  0xC3, 0x4F, 0x16, 0x15, 0x77, 0xB2, 0x14, 0xC4,
                /* 02A0 */  0x93, 0x75, 0x94, 0xC9, 0xA2, 0x67, 0xE2, 0xAB,
                /* 02A8 */  0x85, 0x27, 0x74, 0x4A, 0x41, 0xCE, 0xD1, 0x13,
                /* 02B0 */  0xF6, 0x55, 0x04, 0xD6, 0xF9, 0x20, 0xE4, 0x8B,
                /* 02B8 */  0x81, 0xA7, 0x61, 0x38, 0x4F, 0x96, 0xC3, 0x79,
                /* 02C0 */  0xB2, 0x7C, 0x2C, 0xBE, 0x6A, 0xC0, 0x1F, 0x2D,
                /* 02C8 */  0x96, 0xA0, 0xC0, 0xD9, 0x82, 0x1C, 0x1E, 0x13,
                /* 02D0 */  0x6F, 0x54, 0xF4, 0x46, 0xE4, 0xE1, 0xF1, 0xCB,
                /* 02D8 */  0x81, 0xE7, 0xF3, 0x8C, 0x70, 0x94, 0x6F, 0x12,
                /* 02E0 */  0x38, 0x8C, 0xC7, 0x12, 0x0F, 0xD1, 0x97, 0x23,
                /* 02E8 */  0x58, 0x13, 0x39, 0x69, 0xDF, 0x16, 0x4E, 0x36,
                /* 02F0 */  0xE8, 0x4B, 0x10, 0xBB, 0x1C, 0x01, 0xBF, 0x88,
                /* 02F8 */  0x26, 0x86, 0xC1, 0x22, 0x2D, 0x45, 0x11, 0x17,
                /* 0300 */  0x45, 0x61, 0x7C, 0xC5, 0x82, 0xFD, 0xFF, 0xBF,
                /* 0308 */  0x62, 0x01, 0x16, 0x04, 0x0F, 0x1B, 0x34, 0x87,
                /* 0310 */  0x83, 0x97, 0x1E, 0x36, 0x6B, 0x38, 0x07, 0x99,
                /* 0318 */  0xD3, 0xF1, 0x48, 0x4E, 0x1B, 0xC6, 0x1D, 0x0B,
                /* 0320 */  0xFE, 0x9D, 0xEA, 0xA9, 0xCA, 0xD3, 0x8A, 0xF2,
                /* 0328 */  0x64, 0xF5, 0x7A, 0xE5, 0x63, 0x96, 0xA1, 0xCE,
                /* 0330 */  0xE0, 0x1D, 0xCB, 0xB7, 0x3C, 0x4F, 0x21, 0x4A,
                /* 0338 */  0x9C, 0x97, 0x2D, 0x76, 0xC7, 0x32, 0x48, 0x50,
                /* 0340 */  0x23, 0x3F, 0x68, 0x31, 0x94, 0xE0, 0xF1, 0xDE,
                /* 0348 */  0xB1, 0x00, 0x6F, 0xFF, 0xFF, 0x3B, 0x16, 0x60,
                /* 0350 */  0xFC, 0x04, 0xC1, 0x09, 0x7C, 0xC7, 0x02, 0x1C,
                /* 0358 */  0xC5, 0x7E, 0x37, 0xE8, 0x4A, 0x45, 0xEE, 0x58,
                /* 0360 */  0x28, 0x0E, 0xAB, 0xB9, 0x63, 0x41, 0x9C, 0x28,
                /* 0368 */  0xE6, 0x8A, 0x05, 0x86, 0xFF, 0xFF, 0x15, 0x0B,
                /* 0370 */  0xE0, 0x75, 0xC0, 0x2B, 0x16, 0x68, 0xFE, 0xFF,
                /* 0378 */  0x57, 0x2C, 0xF0, 0x5E, 0x8E, 0x80, 0xDF, 0x09,
                /* 0380 */  0xD1, 0x77, 0x0D, 0x7E, 0x9A, 0xB6, 0xA2, 0xBB,
                /* 0388 */  0x06, 0x94, 0x19, 0xBE, 0x07, 0xF9, 0xB0, 0x13,
                /* 0390 */  0x2C, 0xD2, 0xA3, 0x8D, 0x6F, 0x49, 0xE1, 0x7C,
                /* 0398 */  0xDB, 0x00, 0xD8, 0xF2, 0xFF, 0xBF, 0x6D, 0x00,
                /* 03A0 */  0x4C, 0x19, 0xBF, 0x6F, 0x1B, 0xC0, 0x4F, 0xA1,
                /* 03A8 */  0x4D, 0x9F, 0x1A, 0x8D, 0x5A, 0x35, 0x28, 0x53,
                /* 03B0 */  0xA3, 0x4C, 0x83, 0x5A, 0x7D, 0x2A, 0x35, 0x66,
                /* 03B8 */  0x4C, 0xC9, 0xC1, 0xCE, 0x77, 0x0C, 0x2A, 0x6C,
                /* 03C0 */  0x65, 0x1A, 0x9A, 0x63, 0x81, 0xD0, 0x10, 0xC7,
                /* 03C8 */  0x26, 0x19, 0x01, 0x51, 0x22, 0x10, 0x01, 0x59,
                /* 03D0 */  0xFD, 0x6F, 0x42, 0x40, 0xCE, 0x02, 0x22, 0x20,
                /* 03D8 */  0x2B, 0x58, 0x9A, 0xC0, 0x9D, 0xFF, 0xD8, 0x28,
                /* 03E0 */  0x40, 0xA2, 0x02, 0x84, 0x29, 0x7D, 0x93, 0x09,
                /* 03E8 */  0xD4, 0xB2, 0x41, 0x04, 0xF4, 0xFF, 0x3F, 0x42,
                /* 03F0 */  0xD9, 0x00, 0x62, 0x82, 0x41, 0x04, 0x64, 0x91,
                /* 03F8 */  0x3E, 0x80, 0x98, 0x62, 0x10, 0x01, 0x59, 0xDD,
                /* 0400 */  0xA3, 0x40, 0x40, 0xD6, 0x0A, 0x22, 0x20, 0xFF,
                /* 0408 */  0xFF, 0x01                                     
            })
        }

        Scope (PCI0.LPC.EC.HKEY)
        {
            Mutex (BFWM, 0x00)
            Method (MHCF, 1, NotSerialized)
            {
                Store (BFWC (Arg0), Local0)
                Return (Local0)
            }

            Method (MHPF, 1, NotSerialized)
            {
                Name (RETB, Buffer (0x25) {})
                Acquire (BFWM, 0xFFFF)
                If (LLessEqual (SizeOf (Arg0), 0x25))
                {
                    Store (Arg0, BFWB)
                    If (BFWP ())
                    {
                        CHKS ()
                        BFWL ()
                    }

                    Store (BFWB, RETB)
                }

                Release (BFWM)
                Return (RETB)
            }

            Method (MHIF, 1, NotSerialized)
            {
                Name (RETB, Buffer (0x0A) {})
                Acquire (BFWM, 0xFFFF)
                BFWG (Arg0)
                Store (BFWB, RETB)
                Release (BFWM)
                Return (RETB)
            }

            Method (MHDM, 1, NotSerialized)
            {
                BDMC (Arg0)
            }
        }

        Scope (PCI0.LPC.EC.HKEY)
        {
            Method (PSSG, 1, NotSerialized)
            {
                Return (PSIF (Zero, Zero))
            }

            Method (PSSS, 1, NotSerialized)
            {
                Return (PSIF (One, Arg0))
            }

            Method (PSBS, 1, NotSerialized)
            {
                Return (PSIF (0x02, Arg0))
            }

            Method (BICG, 1, NotSerialized)
            {
                Return (PSIF (0x03, Arg0))
            }

            Method (BICS, 1, NotSerialized)
            {
                Return (PSIF (0x04, Arg0))
            }

            Method (BCTG, 1, NotSerialized)
            {
                Return (PSIF (0x05, Arg0))
            }

            Method (BCCS, 1, NotSerialized)
            {
                Return (PSIF (0x06, Arg0))
            }

            Method (BCSG, 1, NotSerialized)
            {
                Return (PSIF (0x07, Arg0))
            }

            Method (BCSS, 1, NotSerialized)
            {
                Return (PSIF (0x08, Arg0))
            }

            Method (BDSG, 1, NotSerialized)
            {
                Return (PSIF (0x09, Arg0))
            }

            Method (BDSS, 1, NotSerialized)
            {
                Return (PSIF (0x0A, Arg0))
            }
        }

        Scope (PCI0.LPC.EC.HKEY)
        {
            Method (GILN, 0, NotSerialized)
            {
                Return (Or (0x02, ILNF))
            }

            Method (SILN, 1, NotSerialized)
            {
                If (LEqual (One, Arg0))
                {
                    Store (One, ILNF)
                    Store (Zero, BBLS)
                    Return (Zero)
                }
                ElseIf (LEqual (0x02, Arg0))
                {
                    Store (Zero, ILNF)
                    Store (One, BBLS)
                    Return (Zero)
                }
                Else
                {
                    Return (One)
                }
            }

            Method (GLSI, 0, NotSerialized)
            {
                If (H8DR)
                {
                    Return (Add (0x02, HPLD))
                }
                ElseIf (And (RBEC (0x46), 0x04))
                {
                    Return (0x03)
                }
                Else
                {
                    Return (0x02)
                }
            }
        }

        Scope (PCI0.LPC.EC.HKEY)
        {
            Method (GDLN, 0, NotSerialized)
            {
                Return (Or (0x02, PLUX))
            }

            Method (SDLN, 1, NotSerialized)
            {
                If (LEqual (One, Arg0))
                {
                    Store (One, PLUX)
                    Return (Zero)
                }
                ElseIf (LEqual (0x02, Arg0))
                {
                    Store (Zero, PLUX)
                    Return (Zero)
                }
                Else
                {
                    Return (One)
                }
            }
        }

        Name (\VHCC, Zero)
        Scope (PCI0.PEG.VID)
        {
            Method (ISOP, 0, NotSerialized)
            {
                Return (LAnd (VDSP, LAnd (VIGD, VDSC)))
            }
        }

        Scope (PCI0)
        {
            Name (OTM, "OTMACPI 2009-Nov-12 18:18:51")
        }

        Scope (PCI0.PEG.VID)
        {
            Method (GOBT, 1, NotSerialized)
            {
                Name (OPVK, Buffer (0xE6)
                {
                    /* 0000 */  0xE4, 0xB8, 0x4F, 0x51, 0x50, 0x72, 0x8A, 0xC2,
                    /* 0008 */  0x4B, 0x56, 0xE6, 0x00, 0x00, 0x00, 0x01, 0x00,
                    /* 0010 */  0x31, 0x34, 0x38, 0x35, 0x39, 0x37, 0x34, 0x35,
                    /* 0018 */  0x36, 0x39, 0x38, 0x35, 0x47, 0x65, 0x6E, 0x75,
                    /* 0020 */  0x69, 0x6E, 0x65, 0x20, 0x4E, 0x56, 0x49, 0x44,
                    /* 0028 */  0x49, 0x41, 0x20, 0x43, 0x65, 0x72, 0x74, 0x69,
                    /* 0030 */  0x66, 0x69, 0x65, 0x64, 0x20, 0x4F, 0x70, 0x74,
                    /* 0038 */  0x69, 0x6D, 0x75, 0x73, 0x20, 0x52, 0x65, 0x61,
                    /* 0040 */  0x64, 0x79, 0x20, 0x4D, 0x6F, 0x74, 0x68, 0x65,
                    /* 0048 */  0x72, 0x62, 0x6F, 0x61, 0x72, 0x64, 0x20, 0x66,
                    /* 0050 */  0x6F, 0x72, 0x20, 0x36, 0x38, 0x38, 0x33, 0x32,
                    /* 0058 */  0x35, 0x6E, 0x6F, 0x7A, 0x6F, 0x6D, 0x69, 0x32,
                    /* 0060 */  0x31, 0x44, 0x35, 0x20, 0x20, 0x20, 0x20, 0x20,
                    /* 0068 */  0x2D, 0x20, 0x40, 0x4A, 0x20, 0x24, 0x55, 0x27,
                    /* 0070 */  0x5C, 0x22, 0x54, 0x20, 0x29, 0x5F, 0x47, 0x42,
                    /* 0078 */  0x20, 0x50, 0x2F, 0x41, 0x4F, 0x5C, 0x37, 0x22,
                    /* 0080 */  0x3D, 0x46, 0x37, 0x39, 0x4B, 0x37, 0x2B, 0x5F,
                    /* 0088 */  0x3F, 0x4B, 0x48, 0x5C, 0x5F, 0x46, 0x58, 0x48,
                    /* 0090 */  0x5F, 0x44, 0x57, 0x32, 0x26, 0x4A, 0x46, 0x50,
                    /* 0098 */  0x52, 0x25, 0x24, 0x2F, 0x46, 0x24, 0x20, 0x2D,
                    /* 00A0 */  0x20, 0x43, 0x6F, 0x70, 0x79, 0x72, 0x69, 0x67,
                    /* 00A8 */  0x68, 0x74, 0x20, 0x32, 0x30, 0x31, 0x30, 0x20,
                    /* 00B0 */  0x4E, 0x56, 0x49, 0x44, 0x49, 0x41, 0x20, 0x43,
                    /* 00B8 */  0x6F, 0x72, 0x70, 0x6F, 0x72, 0x61, 0x74, 0x69,
                    /* 00C0 */  0x6F, 0x6E, 0x20, 0x41, 0x6C, 0x6C, 0x20, 0x52,
                    /* 00C8 */  0x69, 0x67, 0x68, 0x74, 0x73, 0x20, 0x52, 0x65,
                    /* 00D0 */  0x73, 0x65, 0x72, 0x76, 0x65, 0x64, 0x2D, 0x31,
                    /* 00D8 */  0x34, 0x38, 0x35, 0x39, 0x37, 0x34, 0x35, 0x36,
                    /* 00E0 */  0x39, 0x38, 0x35, 0x28, 0x52, 0x29             
                })
                CreateWordField (Arg0, 0x02, USRG)
                If (LEqual (USRG, 0x564B))
                {
                    Return (OPVK)
                }

                Return (Zero)
            }
        }

        Scope (PCI0.PEG.VID)
        {
            Name (OMPR, 0x02)
            Name (HDAS, Zero)
            Method (NVOP, 4, NotSerialized)
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                Store ("------- NV OPTIMUS DSM --------", Debug)
                If (LNotEqual (Arg1, 0x0100))
                {
                    Return (0x80000001)
                }

                Store (ToInteger (Arg2), _T_0)
                If (LEqual (_T_0, Zero))
                {
                    Store (Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                         
                        }, Local0)
                    Divide (Zero, 0x08, Local2, Local1)
                    ShiftLeft (One, Local2, Local2)
                    Or (DerefOf (Index (Local0, Local1)), Local2, Index (Local0, Local1))
                    Divide (0x1A, 0x08, Local2, Local1)
                    ShiftLeft (One, Local2, Local2)
                    Or (DerefOf (Index (Local0, Local1)), Local2, Index (Local0, Local1))
                    Divide (0x1B, 0x08, Local2, Local1)
                    ShiftLeft (One, Local2, Local2)
                    Or (DerefOf (Index (Local0, Local1)), Local2, Index (Local0, Local1))
                    Divide (0x10, 0x08, Local2, Local1)
                    ShiftLeft (One, Local2, Local2)
                    Or (DerefOf (Index (Local0, Local1)), Local2, Index (Local0, Local1))
                    Return (Local0)
                }
                ElseIf (LEqual (_T_0, 0x1A))
                {
                    CreateField (Arg3, 0x18, 0x02, OPCE)
                    CreateField (Arg3, Zero, One, FLCH)
                    If (ToInteger (FLCH))
                    {
                        Store (OPCE, OMPR)
                    }

                    Store (Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                         
                        }, Local0)
                    CreateField (Local0, Zero, One, OPEN)
                    CreateField (Local0, 0x03, 0x02, CGCS)
                    CreateField (Local0, 0x06, One, SHPC)
                    CreateField (Local0, 0x18, 0x03, DGPC)
                    CreateField (Local0, 0x1B, 0x02, HDAC)
                    Store (One, OPEN)
                    Store (One, SHPC)
                    Store (One, DGPC)
                    If (_STA ())
                    {
                        Store (0x03, CGCS)
                    }

                    Store (0x02, HDAC)
                    Return (Local0)
                }
                ElseIf (LEqual (_T_0, 0x1B))
                {
                    CreateField (Arg3, Zero, One, HDAU)
                    CreateField (Arg3, One, One, HDAR)
                    Store (Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                         
                        }, Local0)
                    CreateField (Local0, 0x02, 0x02, RQGS)
                    CreateField (Local0, 0x04, One, PWST)
                    Store (One, PWST)
                    If (LAnd (^^^LPC.EC.DOCD, ^^^LPC.EC.AC._PSR ()))
                    {
                        Store (One, RQGS)
                    }
                    Else
                    {
                        Store (Zero, RQGS)
                    }

                    If (ToInteger (HDAR))
                    {
                        Store (ToInteger (HDAU), HDAS)
                    }

                    Return (Local0)
                }
                ElseIf (LEqual (_T_0, 0x10))
                {
                    Return (GOBT (Arg3))
                }

                Return (0x80000002)
            }
        }

        Scope (\)
        {
            Method (CMPB, 2, NotSerialized)
            {
                Store (SizeOf (Arg0), Local1)
                If (LNotEqual (Local1, SizeOf (Arg1)))
                {
                    Return (Zero)
                }

                Store (Zero, Local0)
                While (LLess (Local0, Local1))
                {
                    If (LNotEqual (DerefOf (Index (Arg0, Local0)), DerefOf (Index (Arg1, Local0))))
                    {
                        Return (Zero)
                    }

                    Increment (Local0)
                }

                Return (One)
            }
        }

        Scope (PCI0.PEG.VID)
        {
            Name (CPPC, Zero)
            Method (NVPS, 4, NotSerialized)
            {
                Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                Store ("------- NV GPS DSM --------", Debug)
                Store (ToInteger (Arg2), _T_0)
                If (LEqual (_T_0, Zero))
                {
                    Store (Buffer (0x08)
                        {
                             0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                        }, Local0)
                    Store (Buffer (0x07)
                        {
                             0x00, 0x20, 0x21, 0x22, 0x23, 0x2A, 0xFF       
                        }, Local3)
                    Store (Zero, Local4)
                    Store (DerefOf (Index (Local3, Local4)), Local5)
                    While (LNotEqual (Local5, 0xFF))
                    {
                        Divide (Local5, 0x08, Local2, Local1)
                        ShiftLeft (One, Local2, Local2)
                        Or (DerefOf (Index (Local0, Local1)), Local2, Index (Local0, Local1))
                        Increment (Local4)
                        Store (DerefOf (Index (Local3, Local4)), Local5)
                    }

                    Return (Local0)
                }
                ElseIf (LEqual (_T_0, 0x20))
                {
                    Store (Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                         
                        }, Local0)
                    CreateField (Local0, 0x18, One, CUIT)
                    CreateField (Local0, 0x1E, One, PSER)
                    Store (One, CUIT)
                    Store (One, PSER)
                    Return (Local0)
                }
                ElseIf (LEqual (_T_0, 0x21))
                {
                    Return (\_PR.CPU0._PSS)
                }
                ElseIf (LEqual (_T_0, 0x22))
                {
                    CreateField (Arg3, Zero, 0x08, PPCV)
                    Store (PPCV, CPPC)
                    PNTF (0x80)
                    Return (Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                         
                    })
                }
                ElseIf (LEqual (_T_0, 0x23))
                {
                    Store (Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                         
                        }, Local0)
                    Store (CPPC, Index (Local0, Zero))
                    Return (Local0)
                }
                ElseIf (LEqual (_T_0, 0x2A))
                {
                    Store (Buffer (0x24)
                        {
                            /* 0000 */  0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00,
                            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                            /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                            /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                            /* 0020 */  0x00, 0x00, 0x00, 0x00                         
                        }, Local0)
                    Store (DerefOf (Index (Arg3, Zero)), Index (Local0, Zero))
                    CreateField (Arg3, Zero, 0x04, QTYP)
                    Store (ToInteger (QTYP), _T_1)
                    If (LEqual (_T_1, Zero))
                    {
                        Store (^^^LPC.EC.TMP0, Local1)
                        Store (And (Local1, 0xFF), Index (Local0, 0x0C))
                        Return (Local0)
                    }
                    ElseIf (LEqual (_T_1, One))
                    {
                        Store (0x08, Index (Local0, 0x0D))
                        Store (0x03, Index (Local0, One))
                        Return (Local0)
                    }
                    ElseIf (LEqual (_T_1, 0x02))
                    {
                        Store (Zero, Index (Local0, One))
                        Return (Local0)
                    }
                }

                Return (Buffer (0x04)
                {
                     0x02, 0x00, 0x00, 0x80                         
                })
            }
        }
    }

    Scope (_SB.PCI0.EHC2.URTH.URMH.PRTC)
    {
        Name (_EJD, "\\_SB.GDCK")  // _EJD: Ejection Dependent Device
    }

    Scope (_SB.PCI0.EHC1.URTH.URMH.PRT5)
    {
        Name (_EJD, "\\_SB.PCI0.EXP3.SLOT")  // _EJD: Ejection Dependent Device
    }

    Scope (_SB.PCI0.EXP3.SLOT)
    {
        Name (_EJD, "\\_SB.PCI0.EHC1.URTH.URMH.PRT5")  // _EJD: Ejection Dependent Device
    }

    Name (_S0, Package (0x04)  // _S0_: S0 System State
    {
        Zero, 
        Zero, 
        Zero, 
        Zero
    })
    Name (_S3, Package (0x04)  // _S3_: S3 System State
    {
        0x05, 
        0x05, 
        Zero, 
        Zero
    })
    Name (_S4, Package (0x04)  // _S4_: S4 System State
    {
        0x06, 
        0x06, 
        Zero, 
        Zero
    })
    Name (_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x07, 
        0x07, 
        Zero, 
        Zero
    })
    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        If (LEqual (Arg0, 0x05)) {}
        Else
        {
            Store (One, Local0)
            If (LEqual (Arg0, SPS))
            {
                Store (Zero, Local0)
            }

            If (LOr (LEqual (Arg0, Zero), LGreaterEqual (Arg0, 0x06)))
            {
                Store (Zero, Local0)
            }

            If (Local0)
            {
                Store (Arg0, SPS)
                \_SB.PCI0.LPC.EC.HKEY.MHKE (Zero)
                If (\_SB.PCI0.LPC.EC.KBLT)
                {
                    UCMS (0x0D)
                }

                If (LEqual (Arg0, One))
                {
                    Store (\_SB.PCI0.LPC.EC.HFNI, FNID)
                    Store (Zero, \_SB.PCI0.LPC.EC.HFNI)
                    Store (Zero, \_SB.PCI0.LPC.EC.HFSP)
                }

                If (LEqual (Arg0, 0x03))
                {
                    VVPD (0x03)
                    TRAP ()
                    Store (\_SB.PCI0.LPC.EC.AC._PSR (), ACST)
                    Store (Zero, APIN)
                }

                If (LEqual (Arg0, 0x04))
                {
                    If (VDSP)
                    {
                        Store (Zero, SHA1)
                    }

                    \_SB.SLPB._PSW (Zero)
                    TRAP ()
                    \_SB.PCI0.LPC.TPM.CMOR ()
                    AWON (0x04)
                    Store (Zero, APIN)
                }

                If (LEqual (Arg0, 0x05))
                {
                    TRAP ()
                    \_SB.PCI0.LPC.TPM.CMOR ()
                    AWON (0x05)
                }

                \_SB.PCI0.LPC.EC.BPTS (Arg0)
                If (LGreaterEqual (Arg0, 0x04))
                {
                    Store (Zero, \_SB.PCI0.LPC.EC.HWLB)
                }
                Else
                {
                    Store (One, \_SB.PCI0.LPC.EC.HWLB)
                }

                If (LNotEqual (Arg0, 0x05))
                {
                    Store (One, \_SB.PCI0.LPC.EC.HCMU)
                    \_SB.GDCK.GPTS (Arg0)
                    Store (\_SB.PCI0.EXP1.PDS, \_SB.PCI0.EXP1.PDSF)
                    Store (\_SB.PCI0.EXP3.PDS, \_SB.PCI0.EXP3.PDSF)
                }

                \_SB.PCI0.LPC.EC.HKEY.WGPS (Arg0)
            }
        }
    }

    Name (WAKI, Package (0x02)
    {
        Zero, 
        Zero
    })
    Method (_WAK, 1, NotSerialized)  // _WAK: Wake
    {
        If (LOr (LEqual (Arg0, Zero), LGreaterEqual (Arg0, 0x05)))
        {
            Return (WAKI)
        }

        Store (Zero, SPS)
        Store (Zero, \_SB.PCI0.LPC.EC.HCMU)
        \_SB.PCI0.LPC.EC.EVNT (One)
        \_SB.PCI0.LPC.EC.HKEY.MHKE (One)
        \_SB.PCI0.LPC.EC.FNST ()
        UCMS (0x0D)
        Store (Zero, LIDB)
        If (LEqual (Arg0, One))
        {
            Store (\_SB.PCI0.LPC.EC.HFNI, FNID)
        }

        If (LEqual (Arg0, 0x03))
        {
            NVSS (Zero)
            \_SB.PCI0.LPC.EC.LED (Zero, 0x80)
            \_SB.PCI0.LPC.EC.LED (0x0A, 0x80)
            \_SB.PCI0.LPC.EC.LED (0x07, Zero)
            Store (\_SB.PCI0.LPC.EC.AC._PSR (), PWRS)
            \_SB.PCI0.LPC.EC.LED (0x08, 0x80)
            If (OSC4)
            {
                PNTF (0x81)
            }

            If (LNotEqual (ACST, \_SB.PCI0.LPC.EC.AC._PSR ()))
            {
                \_SB.PCI0.LPC.EC.ATMC ()
            }

            If (SCRM)
            {
                Store (0x07, \_SB.PCI0.LPC.EC.HFSP)
                If (MTAU)
                {
                    Store (0x03E8, Local2)
                    While (LAnd (\_SB.PCI0.LPC.EC.PIBS, Local2))
                    {
                        Sleep (One)
                        Decrement (Local2)
                    }

                    If (Local2)
                    {
                        Store (One, \_SB.PCI0.LPC.EC.PLSL)
                        Store (MTAU, \_SB.PCI0.LPC.EC.PLTU)
                        Store (PL1L, \_SB.PCI0.LPC.EC.PLLS)
                        Store (PL1M, \_SB.PCI0.LPC.EC.PLMS)
                    }
                }
            }

            If (LEqual (ISWK, One))
            {
                If (\_SB.PCI0.LPC.EC.HKEY.DHKC)
                {
                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6070)
                }
            }

            If (VIGD)
            {
                \_SB.PCI0.IGPU.GLIS (\_SB.LID._LID ())
                Store (\_SB.GDCK.GGID (), Local0)
                If (LOr (LEqual (Local0, Zero), LEqual (Local0, One)))
                {
                    \_SB.PCI0.IGPU.GDCS (One)
                }
                Else
                {
                    \_SB.PCI0.IGPU.GDCS (Zero)
                }

                If (WVIS)
                {
                    VBTD ()
                }
            }
            ElseIf (WVIS)
            {
                \_SB.PCI0.IGPU.GLIS (\_SB.LID._LID ())
                Store (\_SB.GDCK.GGID (), Local0)
                If (LOr (LEqual (Local0, Zero), LEqual (Local0, One)))
                {
                    \_SB.PCI0.IGPU.GDCS (One)
                }
                Else
                {
                    \_SB.PCI0.IGPU.GDCS (Zero)
                }

                VBTD ()
            }

            VCMS (One, \_SB.LID._LID ())
            AWON (Zero)
            If (CMPR)
            {
                Notify (\_SB.SLPB, 0x02)
                Store (Zero, CMPR)
            }

            If (LOr (USBR, \_SB.PCI0.XHCI.XRST))
            {
                If (LOr (LEqual (XHCM, 0x02), LEqual (XHCM, 0x03)))
                {
                    Store (Zero, Local0)
                    And (\_SB.PCI0.XHCI.PR3, 0xFFFFFFF0, Local0)
                    Or (Local0, XHPM, Local0)
                    If (LEqual (\_SB.GDCK.GGID (), 0x05))
                    {
                        And (Local0, 0xFFFFFFFB, Local0)
                    }

                    And (Local0, \_SB.PCI0.XHCI.PR3M, \_SB.PCI0.XHCI.PR3)
                    Store (Zero, Local0)
                    And (\_SB.PCI0.XHCI.PR2, 0xFFFFFFF0, Local0)
                    Or (Local0, XHPM, Local0)
                    If (LEqual (\_SB.GDCK.GGID (), 0x05))
                    {
                        And (Local0, 0xFFFFFFFB, Local0)
                    }

                    And (Local0, \_SB.PCI0.XHCI.PR2M, \_SB.PCI0.XHCI.PR2)
                }
            }
        }

        If (LEqual (Arg0, 0x04))
        {
            NVSS (Zero)
            \_SB.PCI0.LPC.EC.LED (Zero, 0x80)
            \_SB.PCI0.LPC.EC.LED (0x0A, 0x80)
            \_SB.PCI0.LPC.EC.LED (0x07, Zero)
            Store (Zero, \_SB.PCI0.LPC.EC.HSPA)
            Store (\_SB.PCI0.LPC.EC.AC._PSR (), PWRS)
            If (OSC4)
            {
                PNTF (0x81)
            }

            \_SB.PCI0.LPC.EC.ATMC ()
            If (SCRM)
            {
                Store (0x07, \_SB.PCI0.LPC.EC.HFSP)
                If (MTAU)
                {
                    Store (0x03E8, Local2)
                    While (LAnd (\_SB.PCI0.LPC.EC.PIBS, Local2))
                    {
                        Sleep (One)
                        Decrement (Local2)
                    }

                    If (Local2)
                    {
                        Store (One, \_SB.PCI0.LPC.EC.PLSL)
                        Store (MTAU, \_SB.PCI0.LPC.EC.PLTU)
                        Store (PL1L, \_SB.PCI0.LPC.EC.PLLS)
                        Store (PL1M, \_SB.PCI0.LPC.EC.PLMS)
                    }
                }
            }

            If (LNot (NBCF))
            {
                If (VIGD)
                {
                    \_SB.PCI0.LPC.EC.BRNS ()
                }
                Else
                {
                    VBRC (BRLV)
                }
            }

            If (LEqual (ISWK, 0x02))
            {
                If (\_SB.PCI0.LPC.EC.HKEY.DHKC)
                {
                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6080)
                }
            }

            If (\_SB.PCI0.XHCI.XRST)
            {
                If (LOr (LEqual (XHCM, 0x02), LEqual (XHCM, 0x03)))
                {
                    Store (Zero, Local0)
                    And (\_SB.PCI0.XHCI.PR3, 0xFFFFFFF0, Local0)
                    Or (Local0, XHPM, Local0)
                    If (LEqual (\_SB.GDCK.GGID (), 0x05))
                    {
                        And (Local0, 0xFFFFFFFB, Local0)
                    }

                    And (Local0, \_SB.PCI0.XHCI.PR3M, \_SB.PCI0.XHCI.PR3)
                    Store (Zero, Local0)
                    And (\_SB.PCI0.XHCI.PR2, 0xFFFFFFF0, Local0)
                    Or (Local0, XHPM, Local0)
                    If (LEqual (\_SB.GDCK.GGID (), 0x05))
                    {
                        And (Local0, 0xFFFFFFFB, Local0)
                    }

                    And (Local0, \_SB.PCI0.XHCI.PR2M, \_SB.PCI0.XHCI.PR2)
                }
            }
        }

        If (XOr (\_SB.PCI0.EXP1.PDS, \_SB.PCI0.EXP1.PDSF))
        {
            Store (\_SB.PCI0.EXP1.PDS, \_SB.PCI0.EXP1.PDSF)
            Notify (\_SB.PCI0.EXP1, Zero)
        }

        If (XOr (\_SB.PCI0.EXP3.PDS, \_SB.PCI0.EXP3.PDSF))
        {
            Store (\_SB.PCI0.EXP3.PDS, \_SB.PCI0.EXP3.PDSF)
            Notify (\_SB.PCI0.EXP3, Zero)
        }

        \_SB.PCI0.LPC.EC.BATW (Arg0)
        \_SB.GDCK.GWAK (Arg0)
        \_SB.PCI0.LPC.EC.BWAK (Arg0)
        \_SB.PCI0.LPC.EC.HKEY.WGWK (Arg0)
        Notify (\_TZ.THM0, 0x80)
        VSLD (\_SB.LID._LID ())
        If (VIGD)
        {
            \_SB.PCI0.IGPU.GLIS (\_SB.LID._LID ())
        }
        ElseIf (WVIS)
        {
            \_SB.PCI0.IGPU.GLIS (\_SB.LID._LID ())
        }

        If (LLess (Arg0, 0x04))
        {
            If (And (RRBF, 0x02))
            {
                ShiftLeft (Arg0, 0x08, Local0)
                Store (Or (0x2013, Local0), Local0)
                \_SB.PCI0.LPC.EC.HKEY.MHKQ (Local0)
            }
        }

        If (LEqual (Arg0, 0x04))
        {
            Store (Zero, Local0)
            Store (CSUM (Zero), Local1)
            If (LNotEqual (Local1, CHKC))
            {
                Store (One, Local0)
                Store (Local1, CHKC)
            }

            Store (CSUM (One), Local1)
            If (LNotEqual (Local1, CHKE))
            {
                Store (One, Local0)
                Store (Local1, CHKE)
            }

            If (Local0)
            {
                Notify (_SB, Zero)
            }
        }

        Store (Zero, RRBF)
        Return (WAKI)
    }

    Scope (_SI)
    {
        Method (_SST, 1, NotSerialized)  // _SST: System Status
        {
            If (LEqual (Arg0, Zero))
            {
                \_SB.PCI0.LPC.EC.LED (Zero, Zero)
                \_SB.PCI0.LPC.EC.LED (0x07, Zero)
            }

            If (LEqual (Arg0, One))
            {
                If (LOr (SPS, WNTF))
                {
                    \_SB.PCI0.LPC.EC.BEEP (0x05)
                }

                \_SB.PCI0.LPC.EC.LED (Zero, 0x80)
                \_SB.PCI0.LPC.EC.LED (0x07, Zero)
            }

            If (LEqual (Arg0, 0x02))
            {
                \_SB.PCI0.LPC.EC.LED (Zero, 0xC0)
                \_SB.PCI0.LPC.EC.LED (0x07, 0xC0)
            }

            If (LEqual (Arg0, 0x03))
            {
                If (LGreater (SPS, 0x03))
                {
                    \_SB.PCI0.LPC.EC.BEEP (0x07)
                }
                ElseIf (LEqual (SPS, 0x03))
                {
                    \_SB.PCI0.LPC.EC.BEEP (0x03)
                    \_SB.GDCK.PEJ3 ()
                }
                Else
                {
                    \_SB.PCI0.LPC.EC.BEEP (0x04)
                }

                If (LEqual (SPS, 0x03)) {}
                Else
                {
                    \_SB.PCI0.LPC.EC.LED (Zero, 0x80)
                }

                \_SB.PCI0.LPC.EC.LED (0x07, 0xC0)
                \_SB.PCI0.LPC.EC.LED (Zero, 0xC0)
            }

            If (LEqual (Arg0, 0x04))
            {
                \_SB.PCI0.LPC.EC.BEEP (0x03)
                \_SB.PCI0.LPC.EC.LED (0x07, 0xC0)
                \_SB.PCI0.LPC.EC.LED (Zero, 0xC0)
            }
        }
    }

    Scope (_GPE)
    {
        Method (_L1D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Store (B1B2 (\_SB.PCI0.LPC.EC.AK00, \_SB.PCI0.LPC.EC.AK01), Local0)
            Store (Local0, RRBF)
            Sleep (0x0A)
            If (And (Local0, 0x02)) {}
            If (And (Local0, 0x04))
            {
                Notify (\_SB.LID, 0x02)
            }

            If (And (Local0, 0x08))
            {
                \_SB.GDCK.GGPE ()
                Notify (\_SB.SLPB, 0x02)
            }

            If (And (Local0, 0x10))
            {
                Notify (\_SB.SLPB, 0x02)
            }

            If (And (Local0, 0x40)) {}
            If (And (Local0, 0x80))
            {
                Notify (\_SB.SLPB, 0x02)
            }
        }

        Method (_L09, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If (\_SB.PCI0.EXP1.PS)
            {
                Store (One, \_SB.PCI0.EXP1.PS)
                Store (One, \_SB.PCI0.EXP1.PMCS)
                Notify (\_SB.PCI0.EXP1, 0x02)
            }

            If (\_SB.PCI0.EXP2.PS)
            {
                Store (One, \_SB.PCI0.EXP2.PS)
                Store (One, \_SB.PCI0.EXP2.PMCS)
                Notify (\_SB.PCI0.EXP2, 0x02)
            }

            If (\_SB.PCI0.EXP3.PS)
            {
                Store (One, \_SB.PCI0.EXP3.PS)
                Store (One, \_SB.PCI0.EXP3.PMCS)
                Notify (\_SB.PCI0.EXP3, 0x02)
            }
        }

        Method (_L01, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If (\_SB.PCI0.EXP1.HPCS)
            {
                Sleep (0x64)
                Store (One, \_SB.PCI0.EXP1.HPCS)
                If (\_SB.PCI0.EXP1.PDC)
                {
                    Store (One, \_SB.PCI0.EXP1.PDC)
                    Store (\_SB.PCI0.EXP1.PDS, \_SB.PCI0.EXP1.PDSF)
                    Notify (\_SB.PCI0.EXP1, Zero)
                }
            }

            If (\_SB.PCI0.EXP3.HPCS)
            {
                Sleep (0x64)
                Store (One, \_SB.PCI0.EXP3.HPCS)
                If (\_SB.PCI0.EXP3.PDC)
                {
                    Store (One, \_SB.PCI0.EXP3.PDC)
                    Store (\_SB.PCI0.EXP3.PDS, \_SB.PCI0.EXP3.PDSF)
                    Notify (\_SB.PCI0.EXP3, Zero)
                }
            }
        }

        Method (_L02, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Store (Zero, \_SB.PCI0.LPC.SWGE)
            If (LAnd (CWUE, And (SWGP, 0x02)))
            {
                And (SWGP, 0xFFFFFFFD, SWGP)
                If (OSC4)
                {
                    PNTF (0x81)
                }
            }
        }

        Method (_L06, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If (\_SB.PCI0.IGPU.GSSE)
            {
                \_SB.PCI0.IGPU.GSCI ()
            }
            Else
            {
                Store (One, \_SB.PCI0.LPC.SCIS)
            }
        }

        Method (_L16, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If (\_SB.PCI0.PEG.VID.ISOP ())
            {
                If (LNot (\_SB.PCI0.LPC.XHPD))
                {
                    Notify (\_SB.PCI0.PEG.VID, 0x81)
                }
            }

            XOr (\_SB.PCI0.LPC.XHPD, One, \_SB.PCI0.LPC.XHPD)
        }
    }

    Scope (_SB.PCI0.LPC.EC.HKEY)
    {
        Method (MHQT, 1, NotSerialized)
        {
            If (LAnd (WNTF, TATC))
            {
                If (LEqual (Arg0, Zero))
                {
                    Store (TATC, Local0)
                    Return (Local0)
                }
                ElseIf (LEqual (Arg0, One))
                {
                    Store (TDFA, Local0)
                    Add (Local0, ShiftLeft (TDTA, 0x04), Local0)
                    Add (Local0, ShiftLeft (TDFD, 0x08), Local0)
                    Add (Local0, ShiftLeft (TDTD, 0x0C), Local0)
                    Add (Local0, ShiftLeft (TNFT, 0x10), Local0)
                    Add (Local0, ShiftLeft (TNTT, 0x14), Local0)
                    Return (Local0)
                }
                ElseIf (LEqual (Arg0, 0x02))
                {
                    Store (TCFA, Local0)
                    Add (Local0, ShiftLeft (TCTA, 0x04), Local0)
                    Add (Local0, ShiftLeft (TCFD, 0x08), Local0)
                    Add (Local0, ShiftLeft (TCTD, 0x0C), Local0)
                    Return (Local0)
                }
                ElseIf (LEqual (Arg0, 0x03)) {}
                ElseIf (LEqual (Arg0, 0x04))
                {
                    Store (TATW, Local0)
                    Return (Local0)
                }
                Else
                {
                    Noop
                }
            }

            Return (Zero)
        }

        Method (MHAT, 1, NotSerialized)
        {
            If (LAnd (WNTF, TATC))
            {
                Store (And (Arg0, 0xFF), Local0)
                If (LNot (ATMV (Local0)))
                {
                    Return (Zero)
                }

                Store (And (ShiftRight (Arg0, 0x08), 0xFF), Local0)
                If (LNot (ATMV (Local0)))
                {
                    Return (Zero)
                }

                Store (And (Arg0, 0x0F), TCFA)
                Store (And (ShiftRight (Arg0, 0x04), 0x0F), TCTA)
                Store (And (ShiftRight (Arg0, 0x08), 0x0F), TCFD)
                Store (And (ShiftRight (Arg0, 0x0C), 0x0F), TCTD)
                ATMC ()
                If (And (PPMF, 0x80))
                {
                    Store (FTPS, Local1)
                    If (And (Arg0, 0x00010000))
                    {
                        If (\_PR.CLVL)
                        {
                            Store (CTDP, FTPS)
                            Increment (FTPS)
                        }
                        Else
                        {
                            Store (One, FTPS)
                        }
                    }
                    ElseIf (\_PR.CLVL)
                    {
                        Store (CTDP, FTPS)
                    }
                    Else
                    {
                        Store (Zero, FTPS)
                    }

                    If (XOr (FTPS, Local1))
                    {
                        If (OSPX)
                        {
                            PNTF (0x80)
                        }
                    }
                }

                Store (SCRM, Local2)
                If (And (Arg0, 0x00040000))
                {
                    Store (One, SCRM)
                    Store (0x07, HFSP)
                }
                Else
                {
                    Store (Zero, SCRM)
                    Store (0x80, HFSP)
                }

                Store (ETAU, Local3)
                If (And (Arg0, 0x00020000))
                {
                    Store (One, ETAU)
                }
                Else
                {
                    Store (Zero, ETAU)
                }

                If (MTAU)
                {
                    If (LOr (XOr (SCRM, Local2), XOr (ETAU, Local3)))
                    {
                        Store (0x03E8, Local4)
                        While (PIBS)
                        {
                            Sleep (One)
                            Decrement (Local4)
                            If (LNot (Local4))
                            {
                                Return (Zero)
                            }
                        }

                        Store (One, PLSL)
                        If (And (Arg0, 0x00060000))
                        {
                            Store (MTAU, PLTU)
                        }
                        Else
                        {
                            Store (0x1C, PLTU)
                        }

                        Store (PL1L, PLLS)
                        Store (PL1M, PLMS)
                    }
                }

                Return (One)
            }

            Return (Zero)
        }

        Method (MHGT, 1, NotSerialized)
        {
            If (LAnd (WNTF, TATC))
            {
                Store (0x01000000, Local0)
                If (And (PPMF, 0x80))
                {
                    Or (Local0, 0x08000000, Local0)
                }

                If (SCRM)
                {
                    Or (Local0, 0x10000000, Local0)
                }

                If (ETAU)
                {
                    Or (Local0, 0x04000000, Local0)
                }

                If (LLess (CTDP, FTPS))
                {
                    Or (Local0, 0x02000000, Local0)
                }

                Add (Local0, ShiftLeft (TSFT, 0x10), Local0)
                Add (Local0, ShiftLeft (TSTT, 0x14), Local0)
                Store (And (Arg0, 0xFF), Local1)
                If (LNot (ATMV (Local1)))
                {
                    Or (Local0, 0xFFFF, Local0)
                    Return (Local0)
                }

                Store (And (Arg0, 0x0F), Local1)
                If (LEqual (Local1, Zero))
                {
                    Add (Local0, TIF0, Local0)
                }
                ElseIf (LEqual (Local1, One))
                {
                    Add (Local0, TIF1, Local0)
                }
                ElseIf (LEqual (Local1, 0x02))
                {
                    Add (Local0, TIF2, Local0)
                }
                Else
                {
                    Add (Local0, 0xFF, Local0)
                }

                Store (And (ShiftRight (Arg0, 0x04), 0x0F), Local1)
                If (LEqual (Local1, Zero))
                {
                    Add (Local0, ShiftLeft (TIT0, 0x08), Local0)
                }
                ElseIf (LEqual (Local1, One))
                {
                    Add (Local0, ShiftLeft (TIT1, 0x08), Local0)
                }
                ElseIf (LEqual (Local1, 0x02))
                {
                    Add (Local0, ShiftLeft (TIT2, 0x08), Local0)
                }
                Else
                {
                    Add (Local0, 0xFF00, Local0)
                }

                Return (Local0)
            }

            Return (Zero)
        }

        Method (ATMV, 1, NotSerialized)
        {
            Store (And (Arg0, 0x0F), Local1)
            Store (TNFT, Local0)
            If (LGreaterEqual (Local1, Local0))
            {
                Return (Zero)
            }

            Store (And (ShiftRight (Arg0, 0x04), 0x0F), Local2)
            Store (TNTT, Local0)
            If (LGreaterEqual (Local2, Local0))
            {
                Return (Zero)
            }

            If (TATL)
            {
                If (XOr (Local1, Local2))
                {
                    Return (Zero)
                }
            }

            Return (One)
        }

        Method (MHCT, 1, NotSerialized)
        {
            Store (Zero, Local0)
            If (SPEN)
            {
                Store (LWST, Local0)
                Increment (Local0)
                ShiftLeft (Local0, 0x08, Local0)
            }

            Store (0x08, Local1)
            ShiftLeft (Local1, 0x08, Local1)
            If (LEqual (Arg0, Ones))
            {
                Or (Local1, TPCR, Local1)
                If (SPEN)
                {
                    Or (Local0, PPCR, Local0)
                    If (LNot (LAnd (PPMF, 0x02000000)))
                    {
                        Or (Local1, 0x80, Local1)
                    }

                    If (LNot (LAnd (PPMF, 0x08000000)))
                    {
                        Or (Local1, 0x40, Local1)
                    }
                }
                Else
                {
                    Or (Local1, 0xC0, Local1)
                }
            }
            Else
            {
                If (LAnd (OSPX, SPEN))
                {
                    And (Arg0, 0x00FF0000, Local2)
                    ShiftRight (Local2, 0x10, Local2)
                    Or (Local0, Local2, Local0)
                    If (XOr (Local2, PPCR))
                    {
                        Store (Local2, PPCA)
                        PNTF (0x80)
                    }
                }

                If (WVIS)
                {
                    And (Arg0, 0x1F, Local2)
                    Or (Local1, Local2, Local1)
                    If (XOr (Local2, TPCR))
                    {
                        Store (Local2, TPCA)
                        PNTF (0x82)
                    }
                }
            }

            ShiftLeft (Local0, 0x10, Local0)
            Or (Local0, Local1, Local0)
            Return (Local0)
        }
    }

    Scope (_SB.PCI0.LPC.EC)
    {
        Method (ATMC, 0, NotSerialized)
        {
            If (LAnd (WNTF, TATC))
            {
                If (HPAC)
                {
                    Store (TCFA, Local0)
                    Store (TCTA, Local1)
                    Store (Or (ShiftLeft (Local1, 0x04), Local0), Local2)
                    XOr (Local2, ATMX, Local3)
                    Store (Local2, ATMX)
                    If (LEqual (TCTA, Zero))
                    {
                        Store (TCR0, TCRT)
                        Store (TPS0, TPSV)
                    }
                    ElseIf (LEqual (TCTA, One))
                    {
                        Store (TCR1, TCRT)
                        Store (TPS1, TPSV)
                    }
                    Else
                    {
                    }
                }
                Else
                {
                    Store (TCFD, Local0)
                    Store (TCTD, Local1)
                    Store (Or (ShiftLeft (Local1, 0x04), Local0), Local2)
                    XOr (Local2, ATMX, Local3)
                    Store (Local2, ATMX)
                    If (LEqual (TCTD, Zero))
                    {
                        Store (TCR0, TCRT)
                        Store (TPS0, TPSV)
                    }
                    ElseIf (LEqual (TCTD, One))
                    {
                        Store (TCR1, TCRT)
                        Store (TPS1, TPSV)
                    }
                    Else
                    {
                    }
                }

                If (Local3)
                {
                    If (^HKEY.DHKC)
                    {
                        ^HKEY.MHKQ (0x6030)
                    }
                }

                Notify (\_TZ.THM0, 0x81)
            }
        }
    }

    Scope (_TZ)
    {
        ThermalZone (THM0)
        {
            Method (_CRT, 0, NotSerialized)  // _CRT: Critical Temperature
            {
                Return (TCRT)
            }

            Method (_TMP, 0, NotSerialized)  // _TMP: Temperature
            {
                If (H8DR)
                {
                    Store (\_SB.PCI0.LPC.EC.TMP0, Local0)
                    Store (\_SB.PCI0.LPC.EC.TSL2, Local1)
                    Store (\_SB.PCI0.LPC.EC.TSL3, Local2)
                }
                Else
                {
                    Store (RBEC (0x78), Local0)
                    Store (And (RBEC (0x8A), 0x7F), Local1)
                    Store (And (RBEC (0x8B), 0x7F), Local2)
                }

                If (LEqual (Local0, 0x80))
                {
                    Store (0x30, Local0)
                }

                Or (ShiftLeft (\_SB.PCI0.LPC.PIDH, 0x02), \_SB.PCI0.LPC.PIDL, Local3)
                If (LLess (Local3, 0x04))
                {
                    And (Local2, Zero, Local2)
                }

                If (Local2)
                {
                    TSDL ()
                    Return (C2K (0x80))
                }

                If (LNot (\_SB.PCI0.LPC.EC.HKEY.DHKC))
                {
                    If (Local1)
                    {
                        TSDL ()
                        Return (C2K (0x80))
                    }
                }

                Return (C2K (Local0))
            }
        }

        Method (C2K, 1, NotSerialized)
        {
            Add (Multiply (Arg0, 0x0A), 0x0AAC, Local0)
            If (LLessEqual (Local0, 0x0AAC))
            {
                Store (0x0BB8, Local0)
            }

            If (LGreater (Local0, 0x0FAC))
            {
                Store (0x0BB8, Local0)
            }

            Return (Local0)
        }
    }

    Scope (_SB.PCI0.LPC.EC)
    {
        Method (_Q40, 0, NotSerialized)  // _Qxx: EC Query
        {
            Notify (\_TZ.THM0, 0x80)
            If (H8DR)
            {
                Store (TSL2, Local1)
            }
            Else
            {
                Store (And (RBEC (0x8A), 0x7F), Local1)
            }

            If (^HKEY.DHKC)
            {
                If (Local1)
                {
                    ^HKEY.MHKQ (0x6022)
                }
            }

            If (VIGD)
            {
                Noop
            }
            Else
            {
                VTHR ()
            }

            If (And (PPMF, One))
            {
                If (OSPX)
                {
                    PNTF (0x80)
                }
                Else
                {
                    Store (And (TSL0, 0x77), Local2)
                    If (Local2)
                    {
                        STEP (0x09)
                    }
                    Else
                    {
                        STEP (0x0A)
                    }
                }
            }
        }
    }

    Name (GPIC, Zero)
    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        Store (Arg0, GPIC)
    }

    OperationRegion (SMI0, SystemIO, 0xB2, One)
    Field (SMI0, ByteAcc, NoLock, Preserve)
    {
        APMC,   8
    }

    Field (MNVS, AnyAcc, NoLock, Preserve)
    {
        Offset (0xFC0), 
        CMD,    8, 
        ERR,    32, 
        PAR0,   32, 
        PAR1,   32, 
        PAR2,   32, 
        PAR3,   32
    }

    Mutex (MSMI, 0x00)
    Method (SMI, 5, NotSerialized)
    {
        Acquire (MSMI, 0xFFFF)
        Store (Arg0, CMD)
        Store (One, ERR)
        Store (Arg1, PAR0)
        Store (Arg2, PAR1)
        Store (Arg3, PAR2)
        Store (Arg4, PAR3)
        Store (0xF5, APMC)
        While (LEqual (ERR, One))
        {
            Sleep (One)
            Store (0xF5, APMC)
        }

        Store (PAR0, Local0)
        Release (MSMI)
        Return (Local0)
    }

    Method (RPCI, 1, NotSerialized)
    {
        Return (SMI (Zero, Zero, Arg0, Zero, Zero))
    }

    Method (WPCI, 2, NotSerialized)
    {
        SMI (Zero, One, Arg0, Arg1, Zero)
    }

    Method (MPCI, 3, NotSerialized)
    {
        SMI (Zero, 0x02, Arg0, Arg1, Arg2)
    }

    Method (RBEC, 1, NotSerialized)
    {
        Return (SMI (Zero, 0x03, Arg0, Zero, Zero))
    }

    Method (WBEC, 2, NotSerialized)
    {
        SMI (Zero, 0x04, Arg0, Arg1, Zero)
    }

    Method (MBEC, 3, NotSerialized)
    {
        SMI (Zero, 0x05, Arg0, Arg1, Arg2)
    }

    Method (RISA, 1, NotSerialized)
    {
        Return (SMI (Zero, 0x06, Arg0, Zero, Zero))
    }

    Method (WISA, 2, NotSerialized)
    {
        SMI (Zero, 0x07, Arg0, Arg1, Zero)
    }

    Method (MISA, 3, NotSerialized)
    {
        SMI (Zero, 0x08, Arg0, Arg1, Arg2)
    }

    Method (VEXP, 0, NotSerialized)
    {
        SMI (One, Zero, Zero, Zero, Zero)
    }

    Method (VUPS, 1, NotSerialized)
    {
        SMI (One, One, Arg0, Zero, Zero)
    }

    Method (VSDS, 2, NotSerialized)
    {
        SMI (One, 0x02, Arg0, Arg1, Zero)
    }

    Method (VDDC, 0, NotSerialized)
    {
        SMI (One, 0x03, Zero, Zero, Zero)
    }

    Method (VVPD, 1, NotSerialized)
    {
        SMI (One, 0x04, Arg0, Zero, Zero)
    }

    Method (VNRS, 1, NotSerialized)
    {
        SMI (One, 0x05, Arg0, Zero, Zero)
    }

    Method (GLPW, 0, NotSerialized)
    {
        Return (SMI (One, 0x06, Zero, Zero, Zero))
    }

    Method (VSLD, 1, NotSerialized)
    {
        SMI (One, 0x07, Arg0, Zero, Zero)
    }

    Method (VEVT, 1, NotSerialized)
    {
        Return (SMI (One, 0x08, Arg0, Zero, Zero))
    }

    Method (VTHR, 0, NotSerialized)
    {
        Return (SMI (One, 0x09, Zero, Zero, Zero))
    }

    Method (VBRC, 1, NotSerialized)
    {
        SMI (One, 0x0A, Arg0, Zero, Zero)
    }

    Method (VBRG, 0, NotSerialized)
    {
        Return (SMI (One, 0x0E, Zero, Zero, Zero))
    }

    Method (VCMS, 2, NotSerialized)
    {
        Return (SMI (One, 0x0B, Arg0, Arg1, Zero))
    }

    Method (VBTD, 0, NotSerialized)
    {
        Return (SMI (One, 0x0F, Zero, Zero, Zero))
    }

    Method (VHYB, 2, NotSerialized)
    {
        Return (SMI (One, 0x10, Arg0, Arg1, Zero))
    }

    Method (VDYN, 2, NotSerialized)
    {
        Return (SMI (One, 0x11, Arg0, Arg1, Zero))
    }

    Method (UCMS, 1, NotSerialized)
    {
        Return (SMI (0x02, Arg0, Zero, Zero, Zero))
    }

    Method (BHDP, 2, NotSerialized)
    {
        Return (SMI (0x03, Zero, Arg0, Arg1, Zero))
    }

    Method (STEP, 1, NotSerialized)
    {
        SMI (0x04, Arg0, Zero, Zero, Zero)
    }

    Method (TRAP, 0, NotSerialized)
    {
        SMI (0x05, Zero, Zero, Zero, Zero)
    }

    Method (CBRI, 0, NotSerialized)
    {
        SMI (0x05, One, Zero, Zero, Zero)
    }

    Method (BCHK, 0, NotSerialized)
    {
        Return (SMI (0x05, 0x04, Zero, Zero, Zero))
    }

    Method (BYRS, 0, NotSerialized)
    {
        SMI (0x05, 0x05, Zero, Zero, Zero)
    }

    Method (LCHK, 1, NotSerialized)
    {
        Return (SMI (0x05, 0x06, Arg0, Zero, Zero))
    }

    Method (ASSI, 1, NotSerialized)
    {
        SMI (0x05, 0x07, Arg0, Zero, Zero)
    }

    Method (DESS, 0, NotSerialized)
    {
        Return (SMI (0x05, 0x08, Zero, Zero, Zero))
    }

    Method (BLTH, 1, NotSerialized)
    {
        Return (SMI (0x06, Arg0, Zero, Zero, Zero))
    }

    Method (PRSM, 2, NotSerialized)
    {
        Return (SMI (0x07, Zero, Arg0, Arg1, Zero))
    }

    Method (IFRS, 2, NotSerialized)
    {
        Return (SMI (0x07, One, Arg0, Arg1, Zero))
    }

    Method (TDPC, 1, NotSerialized)
    {
        Return (SMI (0x07, 0x02, Arg0, Zero, Zero))
    }

    Method (WGSV, 1, NotSerialized)
    {
        Return (SMI (0x09, Arg0, Zero, Zero, Zero))
    }

    Method (SWTT, 1, NotSerialized)
    {
        If (SMI (0x0A, 0x02, Arg0, Zero, Zero))
        {
            If (\_SB.PCI0.LPC.EC.HKEY.DHKC)
            {
                \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6030)
            }
        }
    }

    Method (TSDL, 0, NotSerialized)
    {
        Return (SMI (0x0A, 0x03, Zero, Zero, Zero))
    }

    Method (TPHY, 1, NotSerialized)
    {
        SMI (0x0C, Arg0, Zero, Zero, Zero)
    }

    Method (CSUM, 1, NotSerialized)
    {
        Return (SMI (0x0E, Arg0, Zero, Zero, Zero))
    }

    Method (NVSS, 1, NotSerialized)
    {
        Return (SMI (0x0F, Arg0, Zero, Zero, Zero))
    }

    Method (WMIS, 2, NotSerialized)
    {
        Return (SMI (0x10, Arg0, Arg1, Zero, Zero))
    }

    Method (AWON, 1, NotSerialized)
    {
        Return (SMI (0x12, Arg0, Zero, Zero, Zero))
    }

    Method (PMON, 2, NotSerialized)
    {
        Store (SizeOf (Arg0), Local0)
        Name (TSTR, Buffer (Local0) {})
        Store (Arg0, TSTR)
        Store (TSTR, DBGS)
        SMI (0x11, Arg1, Zero, Zero, Zero)
    }

    Method (UAWS, 1, NotSerialized)
    {
        Return (SMI (0x13, Arg0, Zero, Zero, Zero))
    }

    Method (BFWC, 1, NotSerialized)
    {
        Return (SMI (0x14, Zero, Arg0, Zero, Zero))
    }

    Method (BFWP, 0, NotSerialized)
    {
        Return (SMI (0x14, One, Zero, Zero, Zero))
    }

    Method (BFWL, 0, NotSerialized)
    {
        SMI (0x14, 0x02, Zero, Zero, Zero)
    }

    Method (BFWG, 1, NotSerialized)
    {
        SMI (0x14, 0x03, Arg0, Zero, Zero)
    }

    Method (BDMC, 1, NotSerialized)
    {
        SMI (0x14, 0x04, Arg0, Zero, Zero)
    }

    Method (PSIF, 2, NotSerialized)
    {
        Return (SMI (0x14, 0x05, Arg0, Arg1, Zero))
    }

    Method (FNSC, 2, NotSerialized)
    {
        Return (SMI (0x14, 0x06, Arg0, Arg1, Zero))
    }

    Method (AUDC, 2, NotSerialized)
    {
        Return (SMI (0x14, 0x07, Arg0, Arg1, Zero))
    }

    Method (SYBC, 2, NotSerialized)
    {
        Return (SMI (0x14, 0x08, Arg0, Arg1, Zero))
    }

    Method (KBLS, 2, NotSerialized)
    {
        Return (SMI (0x14, 0x09, Arg0, Arg1, Zero))
    }

    Method (UBIS, 1, NotSerialized)
    {
        Return (SMI (0x15, Zero, Arg0, Zero, Zero))
    }

    Method (DPIO, 2, NotSerialized)
    {
        If (LNot (Arg0))
        {
            Return (Zero)
        }

        If (LGreater (Arg0, 0xF0))
        {
            Return (Zero)
        }

        If (LGreater (Arg0, 0xB4))
        {
            If (Arg1)
            {
                Return (0x02)
            }
            Else
            {
                Return (One)
            }
        }

        If (LGreater (Arg0, 0x78))
        {
            Return (0x03)
        }

        Return (0x04)
    }

    Method (DUDM, 2, NotSerialized)
    {
        If (LNot (Arg1))
        {
            Return (0xFF)
        }

        If (LGreater (Arg0, 0x5A))
        {
            Return (Zero)
        }

        If (LGreater (Arg0, 0x3C))
        {
            Return (One)
        }

        If (LGreater (Arg0, 0x2D))
        {
            Return (0x02)
        }

        If (LGreater (Arg0, 0x1E))
        {
            Return (0x03)
        }

        If (LGreater (Arg0, 0x14))
        {
            Return (0x04)
        }

        Return (0x05)
    }

    Method (DMDM, 2, NotSerialized)
    {
        If (Arg1)
        {
            Return (Zero)
        }

        If (LNot (Arg0))
        {
            Return (Zero)
        }

        If (LGreater (Arg0, 0x96))
        {
            Return (One)
        }

        If (LGreater (Arg0, 0x78))
        {
            Return (0x02)
        }

        Return (0x03)
    }

    Method (UUDM, 2, NotSerialized)
    {
        If (LNot (And (Arg0, 0x04)))
        {
            Return (Zero)
        }

        If (And (Arg1, 0x20))
        {
            Return (0x14)
        }

        If (And (Arg1, 0x10))
        {
            Return (0x1E)
        }

        If (And (Arg1, 0x08))
        {
            Return (0x2D)
        }

        If (And (Arg1, 0x04))
        {
            Return (0x3C)
        }

        If (And (Arg1, 0x02))
        {
            Return (0x5A)
        }

        If (And (Arg1, One))
        {
            Return (0x78)
        }

        Return (Zero)
    }

    Method (UMDM, 4, NotSerialized)
    {
        If (LNot (And (Arg0, 0x02)))
        {
            Return (Zero)
        }

        If (And (Arg1, 0x04))
        {
            Return (Arg3)
        }

        If (And (Arg1, 0x02))
        {
            If (LLessEqual (Arg3, 0x78))
            {
                Return (0xB4)
            }
            Else
            {
                Return (Arg3)
            }
        }

        If (And (Arg2, 0x04))
        {
            If (LLessEqual (Arg3, 0xB4))
            {
                Return (0xF0)
            }
            Else
            {
                Return (Arg3)
            }
        }

        Return (Zero)
    }

    Method (UPIO, 4, NotSerialized)
    {
        If (LNot (And (Arg0, 0x02)))
        {
            If (LEqual (Arg2, 0x02))
            {
                Return (0xF0)
            }
            Else
            {
                Return (0x0384)
            }
        }

        If (And (Arg1, 0x02))
        {
            Return (Arg3)
        }

        If (And (Arg1, One))
        {
            If (LLessEqual (Arg3, 0x78))
            {
                Return (0xB4)
            }
            Else
            {
                Return (Arg3)
            }
        }

        If (LEqual (Arg2, 0x02))
        {
            Return (0xF0)
        }
        Else
        {
            Return (0x0384)
        }
    }

    Method (FDMA, 2, NotSerialized)
    {
        If (LNotEqual (Arg1, 0xFF))
        {
            Return (Or (Arg1, 0x40))
        }

        If (LGreaterEqual (Arg0, 0x03))
        {
            Return (Or (Subtract (Arg0, 0x02), 0x20))
        }

        If (Arg0)
        {
            Return (0x12)
        }

        Return (Zero)
    }

    Method (FPIO, 1, NotSerialized)
    {
        If (LGreaterEqual (Arg0, 0x03))
        {
            Return (Or (Arg0, 0x08))
        }

        If (LEqual (Arg0, One))
        {
            Return (One)
        }

        Return (Zero)
    }

    Method (SCMP, 2, NotSerialized)
    {
        Store (SizeOf (Arg0), Local0)
        If (LNotEqual (Local0, SizeOf (Arg1)))
        {
            Return (One)
        }

        Increment (Local0)
        Name (STR1, Buffer (Local0) {})
        Name (STR2, Buffer (Local0) {})
        Store (Arg0, STR1)
        Store (Arg1, STR2)
        Store (Zero, Local1)
        While (LLess (Local1, Local0))
        {
            Store (DerefOf (Index (STR1, Local1)), Local2)
            Store (DerefOf (Index (STR2, Local1)), Local3)
            If (LNotEqual (Local2, Local3))
            {
                Return (One)
            }

            Increment (Local1)
        }

        Return (Zero)
    }

    Name (SPS, Zero)
    Name (OSIF, Zero)
    Name (W98F, Zero)
    Name (WNTF, Zero)
    Name (WXPF, Zero)
    Name (WVIS, Zero)
    Name (WIN7, Zero)
    Name (WIN8, Zero)
    Name (WSPV, Zero)
    Name (LNUX, Zero)
    Name (H8DR, Zero)
    Name (MEMX, Zero)
    Name (ACST, Zero)
    Name (FMBL, One)
    Name (FDTP, 0x02)
    Name (FUPS, 0x03)
    Name (FNID, Zero)
    Name (RRBF, Zero)
    Name (NBCF, Zero)
    Name (APIN, Zero)
    Method (B1B2, 2, NotSerialized)
    {
        Return (Or (Arg0, ShiftLeft (Arg1, 0x08)))
    }

    Method (B1B4, 4, NotSerialized)
    {
        Store (Arg3, Local0)
        Or (Arg2, ShiftLeft (Local0, 0x08), Local0)
        Or (Arg1, ShiftLeft (Local0, 0x08), Local0)
        Or (Arg0, ShiftLeft (Local0, 0x08), Local0)
        Return (Local0)
    }
}

