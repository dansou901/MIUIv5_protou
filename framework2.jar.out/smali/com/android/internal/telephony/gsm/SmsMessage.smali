.class public Lcom/android/internal/telephony/gsm/SmsMessage;
.super Lcom/android/internal/telephony/SmsMessageBase;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;,
        Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    }
.end annotation


# static fields
.field private static final KT_SINGLE_SMS_MAX_SEPTETS:I = 0x5a

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static final PROTOCOL_ID_CBS:I = 0x52

.field private static final PROTOCOL_ID_EXTRA:I = 0x53

.field private static final PROTOCOL_ID_LBS:I = 0x51

.field private static final PROTOCOL_ID_LMS:I = 0x4f

.field private static final PROTOCOL_ID_MAX_23_040:I = 0x7f

.field private static final PROTOCOL_ID_OTA_DM:I = 0x7d

.field private static final PROTOCOL_ID_PLATFORM_CALLBACK:I = 0x4d

.field private static final PROTOCOL_ID_RESERVE_SEG1_END:I = 0x2f

.field private static final PROTOCOL_ID_RESERVE_SEG1_START:I = 0x2e

.field private static final PROTOCOL_ID_RESERVE_SEG2_END:I = 0x37

.field private static final PROTOCOL_ID_RESERVE_SEG2_START:I = 0x33

.field private static final PROTOCOL_ID_RESERVE_SEG3_END:I = 0x5d

.field private static final PROTOCOL_ID_RESERVE_SEG3_START:I = 0x48

.field private static final PROTOCOL_ID_RESERVE_SEG4_END:I = 0x6b

.field private static final PROTOCOL_ID_RESERVE_SEG4_START:I = 0x60

.field private static final PROTOCOL_ID_URL_CALLBACK:I = 0x4e

.field private static final PROTOCOL_ID_VOICE_VIDEO:I = 0x48

.field public static final TP_VPF_ABSOLUTE:I = 0x18

.field public static final TP_VPF_ENHANCED:I = 0x8

.field public static final TP_VPF_MASK:I = 0x18

.field public static final TP_VPF_NOT_PRESENT:I = 0x0

.field public static final TP_VPF_RELATIVE:I = 0x10


# instance fields
.field private automaticDeletion:Z

.field private dataCodingScheme:I

.field private forSubmit:Z

.field private isDontSupportAndDontStoreMwiSms:Z

.field private isStatusReportMessage:Z

.field private kddiDiscard:Z

.field private kddiSmsTypeId:I

.field private kddiSmsTypeIdSet:Z

.field private mEncodingType:I

.field private mRawSmsc:[B

.field private messageClass:Landroid/telephony/SmsMessage$MessageClass;

.field private mti:I

.field private mwiCounter:I

.field private protocolIdentifier:I

.field private recipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

.field private replyPathPresent:Z

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 185
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    .line 97
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    .line 120
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isStatusReportMessage:Z

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiCounter:I

    .line 171
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->kddiSmsTypeIdSet:Z

    .line 172
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->kddiDiscard:Z

    .line 173
    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mEncodingType:I

    .line 178
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isDontSupportAndDontStoreMwiSms:Z

    .line 186
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isCdmaFormat:Z

    .line 187
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isDontSupportAndDontStoreMwiSms:Z

    .line 189
    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 1
    .parameter "msgBody"
    .parameter "use7bitOnly"

    .prologue
    .line 1429
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 12
    .parameter "msgBody"
    .parameter "use7bitOnly"
    .parameter "nli"

    .prologue
    const/4 v10, 0x0

    const/16 v3, 0xa0

    const/16 v2, 0x99

    const/4 v9, 0x1

    const/4 v11, -0x1

    .line 1445
    new-instance v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    invoke-direct {v7}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 1448
    .local v7, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    invoke-static {}, Lcom/android/internal/telephony/HtcMsgConfig;->encodeMoSmsWithShiftJis()Z

    move-result v8

    if-ne v8, v9, :cond_0

    .line 1449
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/HtcMessageHelper;->getShiftJisEncodingDetails(Ljava/lang/String;)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v7

    .line 1572
    .end local v7           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :goto_0
    return-object v7

    .line 1455
    .restart local v7       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/HtcMsgConfig;->isSupportTwoCharacterLF()Z

    move-result v8

    if-ne v8, v9, :cond_1

    if-eqz p0, :cond_1

    .line 1456
    if-nez p1, :cond_3

    move v8, v9

    :goto_1
    invoke-static {p0, v8, p2}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;ZI)I

    move-result v1

    .line 1457
    .local v1, gsmSeptets:I
    if-eq v1, v11, :cond_1

    .line 1458
    invoke-static {p0}, Lcom/android/internal/telephony/HtcMessageHelper;->insertDummyDataForTwoCharacterLf(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1463
    .end local v1           #gsmSeptets:I
    :cond_1
    if-nez p1, :cond_4

    move v8, v9

    :goto_2
    invoke-static {p0, v8, p2}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;ZI)I

    move-result v6

    .line 1464
    .local v6, septets:I
    iput v6, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 1467
    const/4 v8, 0x2

    if-ne p2, v8, :cond_6

    .line 1468
    if-ne p2, v11, :cond_5

    .line 1485
    .local v3, maxSeptets:I
    :goto_3
    const/4 v8, 0x2

    if-ne p2, v8, :cond_f

    .line 1486
    if-ne p2, v11, :cond_e

    .line 1502
    .local v2, maxConcatenatedSeptets:I
    :goto_4
    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v11, 0xd2

    if-ne v8, v11, :cond_17

    .line 1503
    const/16 v3, 0x50

    .line 1504
    const/16 v2, 0x50

    .line 1512
    :cond_2
    :goto_5
    if-le v6, v3, :cond_19

    .line 1513
    rem-int v8, v6, v2

    if-nez v8, :cond_18

    .line 1514
    div-int v8, v6, v2

    iput v8, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1515
    const/4 v8, 0x0

    iput v8, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1525
    :goto_6
    const/4 v8, 0x1

    iput v8, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1526
    .end local v2           #maxConcatenatedSeptets:I
    .end local v3           #maxSeptets:I
    .end local v6           #septets:I
    :catch_0
    move-exception v0

    .line 1527
    .local v0, ex:Lcom/android/internal/telephony/EncodeException;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    mul-int/lit8 v5, v8, 0x2

    .line 1528
    .local v5, octets:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 1530
    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v11, 0xd2

    if-ne v8, v11, :cond_1b

    .line 1532
    const/16 v8, 0x50

    if-le v5, v8, :cond_1a

    .line 1533
    div-int/lit8 v8, v5, 0x50

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1534
    rem-int/lit8 v8, v5, 0x50

    rsub-int/lit8 v8, v8, 0x50

    div-int/lit8 v8, v8, 0x2

    iput v8, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1570
    :goto_7
    const/4 v8, 0x3

    iput v8, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    goto :goto_0

    .end local v0           #ex:Lcom/android/internal/telephony/EncodeException;
    .end local v5           #octets:I
    :cond_3
    move v8, v10

    .line 1456
    goto :goto_1

    :cond_4
    move v8, v10

    .line 1463
    goto :goto_2

    .line 1468
    .restart local v6       #septets:I
    :cond_5
    const/16 v3, 0x9b

    goto :goto_3

    .line 1470
    :cond_6
    if-ne p2, v9, :cond_8

    .line 1471
    if-ne p2, v11, :cond_7

    .restart local v3       #maxSeptets:I
    :goto_8
    goto :goto_3

    .end local v3           #maxSeptets:I
    :cond_7
    const/16 v3, 0x9b

    goto :goto_8

    .line 1473
    :cond_8
    const/16 v8, 0xe

    if-ne p2, v8, :cond_a

    .line 1474
    if-ne p2, v11, :cond_9

    .restart local v3       #maxSeptets:I
    :cond_9
    goto :goto_3

    .line 1476
    .end local v3           #maxSeptets:I
    :cond_a
    const/4 v8, 0x3

    if-ne p2, v8, :cond_c

    .line 1477
    if-ne p2, v11, :cond_b

    .restart local v3       #maxSeptets:I
    :goto_9
    goto :goto_3

    .end local v3           #maxSeptets:I
    :cond_b
    const/16 v3, 0x98

    goto :goto_9

    .line 1480
    :cond_c
    if-ne p2, v11, :cond_d

    .restart local v3       #maxSeptets:I
    :goto_a
    goto :goto_3

    .end local v3           #maxSeptets:I
    :cond_d
    const/16 v3, 0x98

    goto :goto_a

    .line 1486
    .restart local v3       #maxSeptets:I
    :cond_e
    const/16 v2, 0x95

    goto :goto_4

    .line 1488
    :cond_f
    if-ne p2, v9, :cond_11

    .line 1489
    if-ne p2, v11, :cond_10

    .restart local v2       #maxConcatenatedSeptets:I
    :goto_b
    goto :goto_4

    .end local v2           #maxConcatenatedSeptets:I
    :cond_10
    const/16 v2, 0x95

    goto :goto_b

    .line 1491
    :cond_11
    const/16 v8, 0xe

    if-ne p2, v8, :cond_13

    .line 1492
    if-ne p2, v11, :cond_12

    .restart local v2       #maxConcatenatedSeptets:I
    :cond_12
    goto :goto_4

    .line 1494
    .end local v2           #maxConcatenatedSeptets:I
    :cond_13
    const/4 v8, 0x3

    if-ne p2, v8, :cond_15

    .line 1495
    if-ne p2, v11, :cond_14

    .restart local v2       #maxConcatenatedSeptets:I
    :goto_c
    goto :goto_4

    .end local v2           #maxConcatenatedSeptets:I
    :cond_14
    const/16 v2, 0x92

    goto :goto_c

    .line 1498
    :cond_15
    if-ne p2, v11, :cond_16

    .restart local v2       #maxConcatenatedSeptets:I
    :goto_d
    goto/16 :goto_4

    .end local v2           #maxConcatenatedSeptets:I
    :cond_16
    const/16 v2, 0x92

    goto :goto_d

    .line 1505
    .restart local v2       #maxConcatenatedSeptets:I
    :cond_17
    :try_start_1
    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v11, 0x50

    if-ne v8, v11, :cond_2

    .line 1506
    const/16 v3, 0x5a

    .line 1507
    const/16 v2, 0x5a

    goto/16 :goto_5

    .line 1517
    :cond_18
    div-int v8, v6, v2

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1518
    rem-int v8, v6, v2

    sub-int v8, v2, v8

    iput v8, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto/16 :goto_6

    .line 1522
    :cond_19
    const/4 v8, 0x1

    iput v8, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1523
    sub-int v8, v3, v6

    iput v8, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I
    :try_end_1
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6

    .line 1536
    .end local v2           #maxConcatenatedSeptets:I
    .end local v3           #maxSeptets:I
    .end local v6           #septets:I
    .restart local v0       #ex:Lcom/android/internal/telephony/EncodeException;
    .restart local v5       #octets:I
    :cond_1a
    iput v9, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1537
    rsub-int/lit8 v8, v5, 0x50

    div-int/lit8 v8, v8, 0x2

    iput v8, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_7

    .line 1539
    :cond_1b
    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v11, 0x50

    if-ne v8, v11, :cond_1d

    .line 1541
    const/16 v4, 0x5a

    .line 1543
    .local v4, maxlen:I
    if-le v5, v4, :cond_1c

    .line 1544
    div-int v8, v5, v4

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1545
    rem-int v8, v5, v4

    sub-int v8, v4, v8

    div-int/lit8 v8, v8, 0x2

    iput v8, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto/16 :goto_7

    .line 1547
    :cond_1c
    iput v9, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1548
    sub-int v8, v4, v5

    div-int/lit8 v8, v8, 0x2

    iput v8, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto/16 :goto_7

    .line 1554
    .end local v4           #maxlen:I
    :cond_1d
    const/16 v8, 0x8c

    if-le v5, v8, :cond_1f

    .line 1555
    rem-int/lit16 v8, v5, 0x86

    if-nez v8, :cond_1e

    .line 1556
    div-int/lit16 v8, v5, 0x86

    iput v8, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1557
    iput v10, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto/16 :goto_7

    .line 1559
    :cond_1e
    div-int/lit16 v8, v5, 0x86

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1560
    rem-int/lit16 v8, v5, 0x86

    rsub-int v8, v8, 0x86

    div-int/lit8 v8, v8, 0x2

    iput v8, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto/16 :goto_7

    .line 1564
    :cond_1f
    iput v9, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1565
    rsub-int v8, v5, 0x8c

    div-int/lit8 v8, v8, 0x2

    iput v8, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto/16 :goto_7
.end method

.method private checkMWIStatus(Lcom/android/internal/telephony/SmsHeader$MiscElt;)V
    .locals 5
    .parameter "element"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2174
    iget-object v0, p1, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    .line 2176
    .local v0, data:[B
    aget-byte v1, v0, v3

    and-int/lit8 v1, v1, 0x3

    if-nez v1, :cond_2

    .line 2177
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwi:Z

    .line 2178
    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiCounter:I

    .line 2179
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiCounter:I

    if-lez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiSense:Z

    .line 2180
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiDontStore:Z

    .line 2187
    :goto_2
    return-void

    :cond_0
    move v1, v3

    .line 2179
    goto :goto_0

    :cond_1
    move v2, v3

    .line 2180
    goto :goto_1

    .line 2183
    :cond_2
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwi:Z

    .line 2184
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MWI for fax, email, or other "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 8
    .parameter "index"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 260
    :try_start_0
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_0

    .line 261
    const-string v5, "createFromEfRecord"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GSM index : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const-string v5, "createFromEfRecord"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GSM data : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 267
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    iput p0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->indexOnIcc:I

    .line 272
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_1

    .line 273
    const-string v5, "GSM"

    const-string v6, "SMS parsing failed: Trying to parse a free record"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 290
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v1

    .line 277
    .restart local v1       #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :cond_1
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x7

    iput v5, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->statusOnIcc:I

    .line 280
    array-length v5, p1

    add-int/lit8 v3, v5, -0x1

    .line 284
    .local v3, size:I
    new-array v2, v3, [B

    .line 285
    .local v2, pdu:[B
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 288
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v2           #pdu:[B
    .end local v3           #size:I
    :catch_0
    move-exception v0

    .line 289
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v5, "GSM"

    const-string v6, "SMS PDU parsing failed: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v4

    .line 290
    goto :goto_0
.end method

.method public static createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 5
    .parameter "pdu"

    .prologue
    const/4 v2, 0x0

    .line 196
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 197
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 204
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v1

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v3, "GSM"

    const-string v4, "SMS PDU parsing failed: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 201
    goto :goto_0

    .line 202
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 203
    .local v0, ex:Ljava/lang/OutOfMemoryError;
    const-string v3, "GSM"

    const-string v4, "SMS PDU parsing failed, OOM: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 204
    goto :goto_0
.end method

.method private static encodeUCS2(Ljava/lang/String;[B)[B
    .locals 7
    .parameter "message"
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 595
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x51

    if-ne v3, v4, :cond_0

    .line 596
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->kddiEncodeUCS2(Ljava/lang/String;)[B

    move-result-object v1

    .line 602
    .local v1, textPart:[B
    :goto_0
    if-eqz p1, :cond_1

    .line 604
    array-length v3, p1

    array-length v4, v1

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [B

    .line 606
    .local v2, userData:[B
    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 607
    array-length v3, p1

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 608
    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    array-length v4, v1

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 613
    :goto_1
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 614
    .local v0, ret:[B
    array-length v3, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    .line 615
    array-length v3, v2

    invoke-static {v2, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 616
    return-object v0

    .line 598
    .end local v0           #ret:[B
    .end local v1           #textPart:[B
    .end local v2           #userData:[B
    :cond_0
    const-string/jumbo v3, "utf-16be"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .restart local v1       #textPart:[B
    goto :goto_0

    .line 611
    :cond_1
    move-object v2, v1

    .restart local v2       #userData:[B
    goto :goto_1
.end method

.method public static getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 11
    .parameter "scAddress"
    .parameter "peerAddress"
    .parameter "message"
    .parameter "timeStamp"

    .prologue
    .line 2408
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2409
    :cond_0
    const/4 v5, 0x0

    .line 2477
    :goto_0
    return-object v5

    .line 2411
    :cond_1
    new-instance v5, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v5}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 2413
    .local v5, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-nez p0, :cond_2

    .line 2414
    const/4 v8, 0x0

    iput-object v8, v5, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    .line 2419
    :goto_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v8, 0xb4

    invoke-direct {v0, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2420
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2423
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 2427
    .local v1, daBytes:[B
    array-length v8, v1

    add-int/lit8 v8, v8, -0x1

    mul-int/lit8 v9, v8, 0x2

    array-length v8, v1

    add-int/lit8 v8, v8, -0x1

    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xf0

    const/16 v10, 0xf0

    if-ne v8, v10, :cond_3

    const/4 v8, 0x1

    :goto_2
    sub-int v8, v9, v8

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2430
    const/4 v8, 0x0

    array-length v9, v1

    invoke-virtual {v0, v1, v8, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2431
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2434
    const/4 v3, 0x1

    .line 2436
    .local v3, encoding:I
    const/4 v8, 0x1

    if-ne v3, v8, :cond_4

    .line 2437
    const/4 v8, 0x0

    :try_start_0
    invoke-static {p2, v8}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 2458
    .local v2, data:[B
    :goto_3
    const/4 v8, 0x1

    if-ne v3, v8, :cond_6

    .line 2459
    const/4 v8, 0x0

    aget-byte v8, v2, v8

    and-int/lit16 v8, v8, 0xff

    const/16 v9, 0xa0

    if-le v8, v9, :cond_5

    .line 2460
    const/4 v5, 0x0

    goto :goto_0

    .line 2416
    .end local v0           #bo:Ljava/io/ByteArrayOutputStream;
    .end local v1           #daBytes:[B
    .end local v2           #data:[B
    .end local v3           #encoding:I
    :cond_2
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v8

    iput-object v8, v5, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    goto :goto_1

    .line 2427
    .restart local v0       #bo:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #daBytes:[B
    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    .line 2440
    .restart local v3       #encoding:I
    :cond_4
    const/4 v8, 0x0

    :try_start_1
    invoke-static {p2, v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .restart local v2       #data:[B
    goto :goto_3

    .line 2441
    .end local v2           #data:[B
    :catch_0
    move-exception v7

    .line 2442
    .local v7, uex:Ljava/io/UnsupportedEncodingException;
    :try_start_2
    const-string v8, "GSM"

    const-string v9, "Implausible UnsupportedEncodingException "

    invoke-static {v8, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2443
    const/4 v5, 0x0

    goto :goto_0

    .line 2446
    .end local v7           #uex:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v4

    .line 2450
    .local v4, ex:Lcom/android/internal/telephony/EncodeException;
    const/4 v8, 0x0

    :try_start_3
    invoke-static {p2, v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v2

    .line 2451
    .restart local v2       #data:[B
    const/4 v3, 0x3

    goto :goto_3

    .line 2452
    .end local v2           #data:[B
    :catch_2
    move-exception v7

    .line 2453
    .restart local v7       #uex:Ljava/io/UnsupportedEncodingException;
    const-string v8, "GSM"

    const-string v9, "Implausible UnsupportedEncodingException "

    invoke-static {v8, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2454
    const/4 v5, 0x0

    goto :goto_0

    .line 2462
    .end local v4           #ex:Lcom/android/internal/telephony/EncodeException;
    .end local v7           #uex:Ljava/io/UnsupportedEncodingException;
    .restart local v2       #data:[B
    :cond_5
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2471
    :goto_4
    invoke-static {p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->packTimeStamp(Landroid/text/format/Time;)[B

    move-result-object v6

    .line 2472
    .local v6, timeArray:[B
    const/4 v8, 0x0

    array-length v9, v6

    invoke-virtual {v0, v6, v8, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2474
    const/4 v8, 0x0

    array-length v9, v2

    invoke-virtual {v0, v2, v8, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2475
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    iput-object v8, v5, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    goto/16 :goto_0

    .line 2464
    .end local v6           #timeArray:[B
    :cond_6
    const/4 v8, 0x0

    aget-byte v8, v2, v8

    and-int/lit16 v8, v8, 0xff

    const/16 v9, 0x8c

    if-le v8, v9, :cond_7

    .line 2466
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2468
    :cond_7
    const/16 v8, 0xb

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4
.end method

.method public static getDeliveryPdu(Ljava/lang/String;JLjava/lang/String;ZLandroid/os/Bundle;)Landroid/telephony/SmsMessage$DeliveryPdu;
    .locals 17
    .parameter "sOriginatorAddress"
    .parameter "lTimeMilli"
    .parameter "sMessage"
    .parameter "bIs7Bit"
    .parameter "bundle"

    .prologue
    .line 2192
    const/4 v6, 0x1

    .line 2193
    .local v6, is7Bit:Z
    new-instance v10, Landroid/telephony/SmsMessage$DeliveryPdu;

    invoke-direct {v10}, Landroid/telephony/SmsMessage$DeliveryPdu;-><init>()V

    .line 2196
    .local v10, ret:Landroid/telephony/SmsMessage$DeliveryPdu;
    const/4 v9, -0x1

    .line 2197
    .local v9, nli:I
    if-eqz p5, :cond_0

    .line 2198
    const-string v15, "NLI"

    const/16 v16, -0x1

    move-object/from16 v0, p5

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 2201
    :cond_0
    const/4 v15, -0x1

    if-eq v9, v15, :cond_4

    const/16 v15, 0x40

    :goto_0
    or-int/lit8 v15, v15, 0x0

    int-to-byte v8, v15

    .line 2202
    .local v8, mtiByte:B
    move-object/from16 v0, p0

    invoke-static {v0, v8, v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliveryPduHead(Ljava/lang/String;BLandroid/telephony/SmsMessage$DeliveryPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v2

    .line 2207
    .local v2, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v15, 0x1

    move/from16 v0, p4

    if-ne v0, v15, :cond_5

    .line 2208
    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2218
    :goto_1
    new-instance v12, Landroid/text/format/Time;

    const-string v15, "UTC"

    invoke-direct {v12, v15}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2220
    .local v12, time:Landroid/text/format/Time;
    move-wide/from16 v0, p1

    invoke-virtual {v12, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 2222
    iget v15, v12, Landroid/text/format/Time;->year:I

    invoke-static {v15}, Lcom/android/internal/telephony/IccUtils;->intToBcdByte(I)B

    move-result v15

    invoke-virtual {v2, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2223
    iget v15, v12, Landroid/text/format/Time;->month:I

    add-int/lit8 v15, v15, 0x1

    invoke-static {v15}, Lcom/android/internal/telephony/IccUtils;->intToBcdByte(I)B

    move-result v15

    invoke-virtual {v2, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2224
    iget v15, v12, Landroid/text/format/Time;->monthDay:I

    invoke-static {v15}, Lcom/android/internal/telephony/IccUtils;->intToBcdByte(I)B

    move-result v15

    invoke-virtual {v2, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2225
    iget v15, v12, Landroid/text/format/Time;->hour:I

    invoke-static {v15}, Lcom/android/internal/telephony/IccUtils;->intToBcdByte(I)B

    move-result v15

    invoke-virtual {v2, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2226
    iget v15, v12, Landroid/text/format/Time;->minute:I

    invoke-static {v15}, Lcom/android/internal/telephony/IccUtils;->intToBcdByte(I)B

    move-result v15

    invoke-virtual {v2, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2227
    iget v15, v12, Landroid/text/format/Time;->second:I

    invoke-static {v15}, Lcom/android/internal/telephony/IccUtils;->intToBcdByte(I)B

    move-result v15

    invoke-virtual {v2, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2228
    const/4 v15, 0x0

    invoke-static {v15}, Lcom/android/internal/telephony/IccUtils;->intToBcdByte(I)B

    move-result v15

    invoke-virtual {v2, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2230
    const/4 v14, 0x0

    .line 2231
    .local v14, userData:[B
    const/4 v5, 0x0

    .line 2233
    .local v5, header:[B
    const/4 v15, 0x1

    move/from16 v0, p4

    if-ne v0, v15, :cond_6

    .line 2234
    const/4 v15, -0x1

    if-eq v9, v15, :cond_3

    .line 2235
    const/4 v15, 0x1

    new-array v3, v15, [B

    .line 2236
    .local v3, data:[B
    const/4 v15, 0x0

    int-to-byte v0, v9

    move/from16 v16, v0

    aput-byte v16, v3, v15

    .line 2237
    new-instance v11, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v11}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 2238
    .local v11, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    new-instance v7, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    invoke-direct {v7}, Lcom/android/internal/telephony/SmsHeader$MiscElt;-><init>()V

    .line 2240
    .local v7, miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    const/16 v15, 0xe

    if-eq v9, v15, :cond_1

    .line 2241
    const/16 v15, 0x24

    iput v15, v7, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    .line 2242
    iput-object v3, v7, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    .line 2243
    iget-object v15, v11, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2246
    :cond_1
    const/4 v15, 0x3

    if-ne v9, v15, :cond_2

    .line 2247
    new-instance v7, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    .end local v7           #miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    invoke-direct {v7}, Lcom/android/internal/telephony/SmsHeader$MiscElt;-><init>()V

    .line 2248
    .restart local v7       #miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    const/16 v15, 0x25

    iput v15, v7, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    .line 2249
    iput-object v3, v7, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    .line 2250
    iget-object v15, v11, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2253
    :cond_2
    invoke-static {v11}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v5

    .line 2257
    .end local v3           #data:[B
    .end local v7           #miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    .end local v11           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_3
    :try_start_0
    move-object/from16 v0, p3

    invoke-static {v0, v5, v9}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BI)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 2290
    :goto_2
    const/4 v15, 0x0

    array-length v0, v14

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v2, v14, v15, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2292
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    iput-object v15, v10, Landroid/telephony/SmsMessage$DeliveryPdu;->encodedMessage:[B

    .line 2293
    .end local v10           #ret:Landroid/telephony/SmsMessage$DeliveryPdu;
    :goto_3
    return-object v10

    .line 2201
    .end local v2           #bo:Ljava/io/ByteArrayOutputStream;
    .end local v5           #header:[B
    .end local v8           #mtiByte:B
    .end local v12           #time:Landroid/text/format/Time;
    .end local v14           #userData:[B
    .restart local v10       #ret:Landroid/telephony/SmsMessage$DeliveryPdu;
    :cond_4
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 2210
    .restart local v2       #bo:Ljava/io/ByteArrayOutputStream;
    .restart local v8       #mtiByte:B
    :cond_5
    const/16 v15, 0x8

    invoke-virtual {v2, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_1

    .line 2258
    .restart local v5       #header:[B
    .restart local v12       #time:Landroid/text/format/Time;
    .restart local v14       #userData:[B
    :catch_0
    move-exception v4

    .line 2259
    .local v4, ex:Lcom/android/internal/telephony/EncodeException;
    const-string v15, "SmsMessage"

    const-string v16, "Implausible EncodeException "

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2264
    .end local v4           #ex:Lcom/android/internal/telephony/EncodeException;
    :cond_6
    :try_start_1
    sget-short v15, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v16, 0x51

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 2265
    invoke-static/range {p3 .. p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->kddiEncodeUCS2(Ljava/lang/String;)[B

    move-result-object v14

    .line 2272
    :goto_4
    array-length v15, v14

    invoke-virtual {v2, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 2273
    :catch_1
    move-exception v13

    .line 2274
    .local v13, uex:Ljava/io/UnsupportedEncodingException;
    const-string v15, "SmsMessage"

    const-string v16, "Implausible UnsupportedEncodingException "

    move-object/from16 v0, v16

    invoke-static {v15, v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2275
    const/4 v10, 0x0

    goto :goto_3

    .line 2267
    .end local v13           #uex:Ljava/io/UnsupportedEncodingException;
    :cond_7
    :try_start_2
    const-string/jumbo v15, "utf-16be"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v14

    goto :goto_4
.end method

.method private static getDeliveryPduHead(Ljava/lang/String;BLandroid/telephony/SmsMessage$DeliveryPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 8
    .parameter "sOriginatorAddress"
    .parameter "mtiByte"
    .parameter "ret"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2299
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0xb4

    invoke-direct {v0, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2303
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x1

    .line 2304
    .local v2, isWellFormed:Z
    if-nez p0, :cond_0

    .line 2305
    const/4 v5, 0x0

    iput-object v5, p2, Landroid/telephony/SmsMessage$DeliveryPdu;->encodedOriginatorAddress:[B

    .line 2322
    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2328
    if-eqz v2, :cond_2

    .line 2329
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 2336
    .local v1, daBytes:[B
    :goto_1
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v5, v5, 0x2

    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xf0

    const/16 v7, 0xf0

    if-ne v6, v7, :cond_3

    :goto_2
    sub-int v3, v5, v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2340
    array-length v3, v1

    invoke-virtual {v0, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2343
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2344
    return-object v0

    .line 2308
    .end local v1           #daBytes:[B
    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isWellFormedSmsAddress(Ljava/lang/String;)Z

    move-result v2

    .line 2309
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isWellFormedSmsAddress: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2310
    if-eqz v2, :cond_1

    .line 2311
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v5

    iput-object v5, p2, Landroid/telephony/SmsMessage$DeliveryPdu;->encodedOriginatorAddress:[B

    goto :goto_0

    .line 2315
    :cond_1
    invoke-static {p0, v3}, Landroid/telephony/PhoneNumberUtils;->alphabetAddressEncode(Ljava/lang/String;Z)[B

    move-result-object v5

    iput-object v5, p2, Landroid/telephony/SmsMessage$DeliveryPdu;->encodedOriginatorAddress:[B

    goto :goto_0

    .line 2331
    :cond_2
    invoke-static {p0, v4}, Landroid/telephony/PhoneNumberUtils;->alphabetAddressEncode(Ljava/lang/String;Z)[B

    move-result-object v1

    .restart local v1       #daBytes:[B
    goto :goto_1

    :cond_3
    move v3, v4

    .line 2336
    goto :goto_2
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 8
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "originPort"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "statusReportRequested"

    .prologue
    const/4 v7, 0x0

    .line 687
    new-instance v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 688
    .local v1, portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p3, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 689
    iput p2, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 690
    iput-boolean v7, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 692
    new-instance v3, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v3}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 693
    .local v3, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v1, v3, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 695
    invoke-static {v3}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v4

    .line 697
    .local v4, smsHeaderData:[B
    array-length v5, p4

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x8c

    if-le v5, v6, :cond_0

    .line 698
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SMS data message may only contain "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    rsub-int v7, v7, 0x8c

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const/4 v2, 0x0

    .line 726
    :goto_0
    return-object v2

    .line 703
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 704
    .local v2, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/16 v5, 0x41

    invoke-static {p0, p1, v5, p5, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 711
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 716
    array-length v5, p4

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 719
    array-length v5, v4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 720
    array-length v5, v4

    invoke-virtual {v0, v4, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 723
    array-length v5, p4

    invoke-virtual {v0, p4, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 725
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/SmsHeader;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 8
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "destinationPort"
    .parameter "smsHeader"
    .parameter "message"
    .parameter "statusReportRequested"

    .prologue
    const/4 v7, 0x0

    .line 734
    new-instance v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v2}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 735
    .local v2, portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p2, v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 736
    iput v7, v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 737
    iput-boolean v7, v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 739
    iput-object v2, p3, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 741
    invoke-static {p3}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v4

    .line 743
    .local v4, smsHeaderData:[B
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 747
    .local v1, data:[B
    array-length v5, v1

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x8c

    if-le v5, v6, :cond_0

    .line 751
    const/4 v3, 0x0

    .line 778
    :goto_0
    return-object v3

    .line 754
    :cond_0
    new-instance v3, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v3}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 755
    .local v3, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/16 v5, 0x41

    invoke-static {p0, p1, v5, p5, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 763
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 768
    array-length v5, v1

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 771
    array-length v5, v4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 772
    array-length v5, v4

    invoke-virtual {v0, v4, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 775
    array-length v5, v1

    invoke-virtual {v0, v1, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 777
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 6
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "statusReportRequested"

    .prologue
    .line 667
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 1
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"

    .prologue
    .line 648
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 7
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"

    .prologue
    .line 320
    const/4 v5, -0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 8
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"
    .parameter "encoding"
    .parameter "languageTable"
    .parameter "languageShiftTable"

    .prologue
    .line 345
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 346
    :cond_0
    const/4 v3, 0x0

    .line 416
    :goto_0
    return-object v3

    .line 349
    :cond_1
    new-instance v3, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v3}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 351
    .local v3, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz p4, :cond_3

    const/16 v6, 0x40

    :goto_1
    or-int/lit8 v6, v6, 0x1

    int-to-byte v2, v6

    .line 352
    .local v2, mtiByte:B
    invoke-static {p0, p1, v2, p3, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 357
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p5, :cond_2

    .line 359
    const/4 p5, 0x1

    .line 362
    :cond_2
    const/4 v6, 0x1

    if-ne p5, v6, :cond_4

    .line 363
    :try_start_0
    invoke-static {p2, p4, p6, p7}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 389
    .local v5, userData:[B
    :goto_2
    const/4 v6, 0x1

    if-ne p5, v6, :cond_6

    .line 390
    const/4 v6, 0x0

    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0xa0

    if-le v6, v7, :cond_5

    .line 392
    const/4 v3, 0x0

    goto :goto_0

    .line 351
    .end local v0           #bo:Ljava/io/ByteArrayOutputStream;
    .end local v2           #mtiByte:B
    .end local v5           #userData:[B
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 367
    .restart local v0       #bo:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #mtiByte:B
    :cond_4
    :try_start_1
    invoke-static {p2, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .restart local v5       #userData:[B
    goto :goto_2

    .line 368
    .end local v5           #userData:[B
    :catch_0
    move-exception v4

    .line 369
    .local v4, uex:Ljava/io/UnsupportedEncodingException;
    :try_start_2
    const-string v6, "GSM"

    const-string v7, "Implausible UnsupportedEncodingException "

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 372
    const/4 v3, 0x0

    goto :goto_0

    .line 375
    .end local v4           #uex:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 379
    .local v1, ex:Lcom/android/internal/telephony/EncodeException;
    :try_start_3
    invoke-static {p2, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v5

    .line 380
    .restart local v5       #userData:[B
    const/4 p5, 0x3

    goto :goto_2

    .line 381
    .end local v5           #userData:[B
    :catch_2
    move-exception v4

    .line 382
    .restart local v4       #uex:Ljava/io/UnsupportedEncodingException;
    const-string v6, "GSM"

    const-string v7, "Implausible UnsupportedEncodingException "

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    const/4 v3, 0x0

    goto :goto_0

    .line 402
    .end local v1           #ex:Lcom/android/internal/telephony/EncodeException;
    .end local v4           #uex:Ljava/io/UnsupportedEncodingException;
    .restart local v5       #userData:[B
    :cond_5
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 414
    :goto_3
    const/4 v6, 0x0

    array-length v7, v5

    invoke-virtual {v0, v5, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 415
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iput-object v6, v3, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    goto :goto_0

    .line 404
    :cond_6
    const/4 v6, 0x0

    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x8c

    if-le v6, v7, :cond_7

    .line 406
    const/4 v3, 0x0

    goto :goto_0

    .line 410
    :cond_7
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_3
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 16
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"
    .parameter "nli"
    .parameter "is7bitOnly"

    .prologue
    .line 435
    if-nez p1, :cond_1

    .line 436
    const-string v12, "GSM"

    const-string v13, "dest addr is null"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const/4 v7, 0x0

    .line 580
    :cond_0
    :goto_0
    return-object v7

    .line 441
    :cond_1
    new-instance v7, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v7}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 443
    .local v7, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/4 v3, 0x0

    .line 444
    .local v3, bRelativeValidityPeriod:Z
    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0xa

    if-eq v12, v13, :cond_2

    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0xa

    if-eq v12, v13, :cond_2

    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0x25

    if-ne v12, v13, :cond_3

    .line 447
    :cond_2
    const/4 v3, 0x1

    .line 449
    :cond_3
    if-eqz p4, :cond_5

    const/16 v12, 0x40

    :goto_1
    or-int/lit8 v13, v12, 0x1

    const/4 v12, 0x1

    if-ne v3, v12, :cond_6

    const/16 v12, 0x10

    :goto_2
    or-int/2addr v12, v13

    int-to-byte v6, v12

    .line 450
    .local v6, mtiByte:B
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-static {v0, v1, v6, v2, v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v4

    .line 455
    .local v4, bo:Ljava/io/ByteArrayOutputStream;
    invoke-static {}, Lcom/android/internal/telephony/HtcMsgConfig;->encodeMoSmsWithShiftJis()Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_8

    .line 458
    const/4 v12, 0x4

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 460
    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/HtcMessageHelper;->encodeShiftJis(Ljava/lang/String;)[B

    move-result-object v8

    .line 462
    .local v8, shiftJisData:[B
    if-nez v8, :cond_7

    const/4 v12, 0x0

    :goto_3
    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 464
    if-eqz v8, :cond_4

    .line 465
    const/4 v12, 0x0

    array-length v13, v8

    invoke-virtual {v4, v8, v12, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 468
    :cond_4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    iput-object v12, v7, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    goto :goto_0

    .line 449
    .end local v4           #bo:Ljava/io/ByteArrayOutputStream;
    .end local v6           #mtiByte:B
    .end local v8           #shiftJisData:[B
    :cond_5
    const/4 v12, 0x0

    goto :goto_1

    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    .line 462
    .restart local v4       #bo:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #mtiByte:B
    .restart local v8       #shiftJisData:[B
    :cond_7
    array-length v12, v8

    goto :goto_3

    .line 474
    .end local v8           #shiftJisData:[B
    :cond_8
    if-eqz p6, :cond_c

    .line 478
    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BI)[B

    move-result-object v11

    .line 480
    .local v11, userData:[B
    const/4 v12, 0x0

    aget-byte v12, v11, v12

    and-int/lit16 v12, v12, 0xff

    const/16 v13, 0xa0

    if-le v12, v13, :cond_9

    .line 482
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Msg too long: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-byte v14, v11, v14

    and-int/lit16 v14, v14, 0xff

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0xa0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    const/4 v7, 0x0

    .line 508
    .end local v7           #ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-nez p6, :cond_0

    .line 515
    :try_start_1
    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0x51

    if-ne v12, v13, :cond_19

    .line 516
    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->kddiEncodeUCS2(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v9

    .line 528
    .local v9, textPart:[B
    :goto_4
    if-eqz p4, :cond_1a

    .line 530
    move-object/from16 v0, p4

    array-length v12, v0

    array-length v13, v9

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, 0x1

    new-array v11, v12, [B

    .line 532
    const/4 v12, 0x0

    move-object/from16 v0, p4

    array-length v13, v0

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 533
    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, p4

    array-length v14, v0

    move-object/from16 v0, p4

    invoke-static {v0, v12, v11, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 534
    const/4 v12, 0x0

    move-object/from16 v0, p4

    array-length v13, v0

    add-int/lit8 v13, v13, 0x1

    array-length v14, v9

    invoke-static {v9, v12, v11, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 540
    :goto_5
    array-length v12, v11

    const/16 v13, 0x8c

    if-le v12, v13, :cond_1b

    .line 542
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Msg too long: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    array-length v14, v11

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x8c

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :goto_6
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 494
    .end local v9           #textPart:[B
    .restart local v7       #ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_9
    const/4 v12, 0x0

    :try_start_2
    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 497
    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0xa

    if-eq v12, v13, :cond_a

    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0xa

    if-eq v12, v13, :cond_a

    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0x25

    if-ne v12, v13, :cond_b

    .line 500
    :cond_a
    const/16 v12, 0xa9

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 503
    :cond_b
    const/4 v12, 0x0

    array-length v13, v11

    invoke-virtual {v4, v11, v12, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 508
    .end local v11           #userData:[B
    :cond_c
    if-nez p6, :cond_14

    .line 515
    :try_start_3
    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0x51

    if-ne v12, v13, :cond_1e

    .line 516
    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->kddiEncodeUCS2(Ljava/lang/String;)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v9

    .line 528
    .restart local v9       #textPart:[B
    :goto_7
    if-eqz p4, :cond_1f

    .line 530
    move-object/from16 v0, p4

    array-length v12, v0

    array-length v13, v9

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, 0x1

    new-array v11, v12, [B

    .line 532
    .restart local v11       #userData:[B
    const/4 v12, 0x0

    move-object/from16 v0, p4

    array-length v13, v0

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 533
    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, p4

    array-length v14, v0

    move-object/from16 v0, p4

    invoke-static {v0, v12, v11, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 534
    const/4 v12, 0x0

    move-object/from16 v0, p4

    array-length v13, v0

    add-int/lit8 v13, v13, 0x1

    array-length v14, v9

    invoke-static {v9, v12, v11, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 540
    :goto_8
    array-length v12, v11

    const/16 v13, 0x8c

    if-le v12, v13, :cond_20

    .line 542
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Msg too long: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    array-length v14, v11

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x8c

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 505
    .end local v9           #textPart:[B
    .end local v11           #userData:[B
    :catch_0
    move-exception v5

    .line 506
    .local v5, ex:Lcom/android/internal/telephony/EncodeException;
    const/16 p6, 0x0

    .line 508
    if-nez p6, :cond_14

    .line 515
    :try_start_4
    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0x51

    if-ne v12, v13, :cond_15

    .line 516
    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->kddiEncodeUCS2(Ljava/lang/String;)[B
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v9

    .line 528
    .restart local v9       #textPart:[B
    :goto_9
    if-eqz p4, :cond_16

    .line 530
    move-object/from16 v0, p4

    array-length v12, v0

    array-length v13, v9

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, 0x1

    new-array v11, v12, [B

    .line 532
    .restart local v11       #userData:[B
    const/4 v12, 0x0

    move-object/from16 v0, p4

    array-length v13, v0

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 533
    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, p4

    array-length v14, v0

    move-object/from16 v0, p4

    invoke-static {v0, v12, v11, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 534
    const/4 v12, 0x0

    move-object/from16 v0, p4

    array-length v13, v0

    add-int/lit8 v13, v13, 0x1

    array-length v14, v9

    invoke-static {v9, v12, v11, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 540
    :goto_a
    array-length v12, v11

    const/16 v13, 0x8c

    if-le v12, v13, :cond_11

    .line 542
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Msg too long: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    array-length v14, v11

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x8c

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 562
    .end local v5           #ex:Lcom/android/internal/telephony/EncodeException;
    :cond_d
    const/16 v13, 0x8

    invoke-virtual {v4, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 566
    sget-short v13, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v14, 0xa

    if-eq v13, v14, :cond_e

    sget-short v13, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v14, 0xa

    if-eq v13, v14, :cond_e

    sget-short v13, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v14, 0x25

    if-ne v13, v14, :cond_f

    .line 569
    :cond_e
    const/16 v13, 0xa9

    invoke-virtual {v4, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 573
    :cond_f
    array-length v13, v11

    invoke-virtual {v4, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 575
    const/4 v13, 0x0

    array-length v14, v11

    invoke-virtual {v4, v11, v13, v14}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 508
    .end local v9           #textPart:[B
    .end local v11           #userData:[B
    :cond_10
    throw v12

    .line 562
    .restart local v5       #ex:Lcom/android/internal/telephony/EncodeException;
    .restart local v9       #textPart:[B
    .restart local v11       #userData:[B
    :cond_11
    const/16 v12, 0x8

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 566
    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0xa

    if-eq v12, v13, :cond_12

    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0xa

    if-eq v12, v13, :cond_12

    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0x25

    if-ne v12, v13, :cond_13

    .line 569
    :cond_12
    const/16 v12, 0xa9

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 573
    :cond_13
    array-length v12, v11

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 575
    const/4 v12, 0x0

    array-length v13, v11

    .end local v5           #ex:Lcom/android/internal/telephony/EncodeException;
    :goto_b
    invoke-virtual {v4, v11, v12, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 579
    .end local v9           #textPart:[B
    .end local v11           #userData:[B
    :cond_14
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    iput-object v12, v7, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    goto/16 :goto_0

    .line 521
    .restart local v5       #ex:Lcom/android/internal/telephony/EncodeException;
    :catch_1
    move-exception v10

    .line 522
    .local v10, uex:Ljava/io/UnsupportedEncodingException;
    const-string v12, "GSM"

    const-string v13, "Implausible UnsupportedEncodingException "

    invoke-static {v12, v13, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 525
    .end local v5           #ex:Lcom/android/internal/telephony/EncodeException;
    .end local v7           #ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :goto_c
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 518
    .end local v10           #uex:Ljava/io/UnsupportedEncodingException;
    .restart local v5       #ex:Lcom/android/internal/telephony/EncodeException;
    .restart local v7       #ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_15
    :try_start_5
    const-string/jumbo v12, "utf-16be"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v9

    .restart local v9       #textPart:[B
    goto/16 :goto_9

    .line 537
    :cond_16
    move-object v11, v9

    .restart local v11       #userData:[B
    goto/16 :goto_a

    .line 508
    .end local v5           #ex:Lcom/android/internal/telephony/EncodeException;
    .end local v9           #textPart:[B
    .end local v11           #userData:[B
    :catchall_0
    move-exception v12

    if-nez p6, :cond_10

    .line 515
    :try_start_6
    sget-short v13, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v14, 0x51

    if-ne v13, v14, :cond_17

    .line 516
    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->kddiEncodeUCS2(Ljava/lang/String;)[B
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v9

    .line 528
    .restart local v9       #textPart:[B
    :goto_d
    if-eqz p4, :cond_18

    .line 530
    move-object/from16 v0, p4

    array-length v13, v0

    array-length v14, v9

    add-int/2addr v13, v14

    add-int/lit8 v13, v13, 0x1

    new-array v11, v13, [B

    .line 532
    .restart local v11       #userData:[B
    const/4 v13, 0x0

    move-object/from16 v0, p4

    array-length v14, v0

    int-to-byte v14, v14

    aput-byte v14, v11, v13

    .line 533
    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p4

    array-length v15, v0

    move-object/from16 v0, p4

    invoke-static {v0, v13, v11, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 534
    const/4 v13, 0x0

    move-object/from16 v0, p4

    array-length v14, v0

    add-int/lit8 v14, v14, 0x1

    array-length v15, v9

    invoke-static {v9, v13, v11, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 540
    :goto_e
    array-length v13, v11

    const/16 v14, 0x8c

    if-le v13, v14, :cond_d

    .line 542
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Msg too long: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    array-length v14, v11

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x8c

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 521
    .end local v9           #textPart:[B
    .end local v11           #userData:[B
    :catch_2
    move-exception v10

    .line 522
    .restart local v10       #uex:Ljava/io/UnsupportedEncodingException;
    const-string v12, "GSM"

    const-string v13, "Implausible UnsupportedEncodingException "

    invoke-static {v12, v13, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 518
    .end local v10           #uex:Ljava/io/UnsupportedEncodingException;
    :cond_17
    :try_start_7
    const-string/jumbo v13, "utf-16be"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_2

    move-result-object v9

    .restart local v9       #textPart:[B
    goto :goto_d

    .line 537
    :cond_18
    move-object v11, v9

    .restart local v11       #userData:[B
    goto :goto_e

    .line 521
    .end local v7           #ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v9           #textPart:[B
    :catch_3
    move-exception v10

    .line 522
    .restart local v10       #uex:Ljava/io/UnsupportedEncodingException;
    const-string v12, "GSM"

    const-string v13, "Implausible UnsupportedEncodingException "

    invoke-static {v12, v13, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 518
    .end local v10           #uex:Ljava/io/UnsupportedEncodingException;
    :cond_19
    :try_start_8
    const-string/jumbo v12, "utf-16be"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_3

    move-result-object v9

    .restart local v9       #textPart:[B
    goto/16 :goto_4

    .line 537
    :cond_1a
    move-object v11, v9

    goto/16 :goto_5

    .line 562
    :cond_1b
    const/16 v12, 0x8

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 566
    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0xa

    if-eq v12, v13, :cond_1c

    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0xa

    if-eq v12, v13, :cond_1c

    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0x25

    if-ne v12, v13, :cond_1d

    .line 569
    :cond_1c
    const/16 v12, 0xa9

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 573
    :cond_1d
    array-length v12, v11

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 575
    const/4 v12, 0x0

    array-length v13, v11

    invoke-virtual {v4, v11, v12, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto/16 :goto_0

    .line 521
    .end local v9           #textPart:[B
    .end local v11           #userData:[B
    .restart local v7       #ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :catch_4
    move-exception v10

    .line 522
    .restart local v10       #uex:Ljava/io/UnsupportedEncodingException;
    const-string v12, "GSM"

    const-string v13, "Implausible UnsupportedEncodingException "

    invoke-static {v12, v13, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 518
    .end local v10           #uex:Ljava/io/UnsupportedEncodingException;
    :cond_1e
    :try_start_9
    const-string/jumbo v12, "utf-16be"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_4

    move-result-object v9

    .restart local v9       #textPart:[B
    goto/16 :goto_7

    .line 537
    :cond_1f
    move-object v11, v9

    .restart local v11       #userData:[B
    goto/16 :goto_8

    .line 562
    :cond_20
    const/16 v12, 0x8

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 566
    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0xa

    if-eq v12, v13, :cond_21

    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0xa

    if-eq v12, v13, :cond_21

    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0x25

    if-ne v12, v13, :cond_22

    .line 569
    :cond_21
    const/16 v12, 0xa9

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 573
    :cond_22
    array-length v12, v11

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 575
    const/4 v12, 0x0

    array-length v13, v11

    goto/16 :goto_b
.end method

.method private static getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 7
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "mtiByte"
    .parameter "statusReportRequested"
    .parameter "ret"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 796
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb4

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 800
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_1

    .line 801
    const/4 v2, 0x0

    iput-object v2, p4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    .line 808
    :goto_0
    if-eqz p3, :cond_0

    .line 810
    or-int/lit8 v2, p2, 0x20

    int-to-byte p2, v2

    .line 811
    const-string v2, "GSM"

    const-string v5, "SMS status report requested"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :cond_0
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 816
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 820
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 824
    .local v1, daBytes:[B
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v5, v2, 0x2

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xf0

    const/16 v6, 0xf0

    if-ne v2, v6, :cond_2

    move v2, v3

    :goto_1
    sub-int v2, v5, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 828
    array-length v2, v1

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 831
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x50

    if-ne v2, v5, :cond_3

    const-string v2, "0000001005"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v3, :cond_3

    .line 833
    const/16 v2, 0x7f

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 837
    :goto_2
    return-object v0

    .line 803
    .end local v1           #daBytes:[B
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    goto :goto_0

    .restart local v1       #daBytes:[B
    :cond_2
    move v2, v4

    .line 824
    goto :goto_1

    .line 835
    :cond_3
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 4
    .parameter "pdu"

    .prologue
    .line 299
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 300
    .local v0, len:I
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 302
    .local v1, smscLen:I
    sub-int v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    return v2
.end method

.method private static intToBCDbyte(I)B
    .locals 3
    .parameter "paramInt"

    .prologue
    .line 2374
    rem-int/lit8 v2, p0, 0xa

    shl-int/lit8 v0, v2, 0x4

    .line 2375
    .local v0, i:I
    div-int/lit8 v1, p0, 0xa

    .line 2376
    .local v1, j:I
    or-int v2, v0, v1

    int-to-byte v2, v2

    return v2
.end method

.method private static kddiEncodeUCS2(Ljava/lang/String;)[B
    .locals 4
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 628
    invoke-static {p0}, Lcom/android/internal/telephony/HtcMessageHelper;->kddidReplaceSurrogatePairWithUnicodeEmoji(Ljava/lang/String;)Lcom/android/internal/telephony/HtcMessageHelper$KddiReplaceUnicodeEmojiResult;

    move-result-object v0

    .line 630
    .local v0, replaceResult:Lcom/android/internal/telephony/HtcMessageHelper$KddiReplaceUnicodeEmojiResult;
    iget-object v2, v0, Lcom/android/internal/telephony/HtcMessageHelper$KddiReplaceUnicodeEmojiResult;->userDataString:Ljava/lang/String;

    const-string/jumbo v3, "utf-16be"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 632
    .local v1, result:[B
    return-object v1
.end method

.method public static newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4
    .parameter "line"

    .prologue
    .line 239
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 240
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-static {p0}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v1

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "GSM"

    const-string v3, "CDS SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static newFromCMT([Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4
    .parameter "lines"

    .prologue
    .line 227
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 228
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v1

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "GSM"

    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static newFromCMTI(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 2
    .parameter "line"

    .prologue
    .line 2488
    const-string v0, "GSM"

    const-string v1, "newFromCMTI: not yet supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2489
    const/4 v0, 0x0

    return-object v0
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/SmsMessageBase;
    .locals 2
    .parameter "p"

    .prologue
    .line 2496
    const-string v0, "GSM"

    const-string v1, "newFromParcel: is not supported in GSM mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2497
    const/4 v0, 0x0

    return-object v0
.end method

.method static packTimeStamp(Landroid/text/format/Time;)[B
    .locals 8
    .parameter "paramTime"

    .prologue
    const-wide/16 v6, 0x384

    const/4 v5, 0x6

    const/4 v3, 0x0

    .line 2380
    const/4 v1, 0x7

    new-array v0, v1, [B

    .line 2381
    .local v0, arrayOfByte:[B
    if-nez p0, :cond_0

    .line 2383
    new-instance p0, Landroid/text/format/Time;

    .end local p0
    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    .line 2384
    .restart local p0
    invoke-virtual {p0}, Landroid/text/format/Time;->setToNow()V

    .line 2387
    :cond_0
    iget v1, p0, Landroid/text/format/Time;->year:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_1

    .line 2388
    iget v1, p0, Landroid/text/format/Time;->year:I

    add-int/lit16 v1, v1, -0x7d0

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->intToBCDbyte(I)B

    move-result v1

    aput-byte v1, v0, v3

    .line 2393
    :goto_0
    const/4 v1, 0x1

    iget v2, p0, Landroid/text/format/Time;->month:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->intToBCDbyte(I)B

    move-result v2

    aput-byte v2, v0, v1

    .line 2394
    const/4 v1, 0x2

    iget v2, p0, Landroid/text/format/Time;->monthDay:I

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->intToBCDbyte(I)B

    move-result v2

    aput-byte v2, v0, v1

    .line 2395
    const/4 v1, 0x3

    iget v2, p0, Landroid/text/format/Time;->hour:I

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->intToBCDbyte(I)B

    move-result v2

    aput-byte v2, v0, v1

    .line 2396
    const/4 v1, 0x4

    iget v2, p0, Landroid/text/format/Time;->minute:I

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->intToBCDbyte(I)B

    move-result v2

    aput-byte v2, v0, v1

    .line 2397
    const/4 v1, 0x5

    iget v2, p0, Landroid/text/format/Time;->second:I

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->intToBCDbyte(I)B

    move-result v2

    aput-byte v2, v0, v1

    .line 2398
    iget-wide v1, p0, Landroid/text/format/Time;->gmtoff:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    .line 2399
    iget-wide v1, p0, Landroid/text/format/Time;->gmtoff:J

    div-long/2addr v1, v6

    long-to-int v1, v1

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->intToBCDbyte(I)B

    move-result v1

    aput-byte v1, v0, v5

    .line 2403
    :goto_1
    return-object v0

    .line 2390
    :cond_1
    iget v1, p0, Landroid/text/format/Time;->year:I

    add-int/lit16 v1, v1, -0x76c

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->intToBCDbyte(I)B

    move-result v1

    aput-byte v1, v0, v3

    goto :goto_0

    .line 2401
    :cond_2
    iget-wide v1, p0, Landroid/text/format/Time;->gmtoff:J

    div-long/2addr v1, v6

    long-to-int v1, v1

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->intToBCDbyte(I)B

    move-result v1

    or-int/lit8 v1, v1, -0x80

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    goto :goto_1
.end method

.method private parsePdu([B)V
    .locals 6
    .parameter "pdu"

    .prologue
    const/4 v5, 0x0

    .line 1695
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mPdu:[B

    .line 1699
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;-><init>([B)V

    .line 1701
    .local v1, p:Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->scAddress:Ljava/lang/String;

    .line 1703
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->scAddress:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1704
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMS SC address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->scAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    :cond_0
    iget v2, v1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    if-lez v2, :cond_1

    .line 1709
    iget v2, v1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mTpdu:[B

    .line 1710
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mTpdu:[B

    iget v3, v1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    invoke-static {p1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1713
    :cond_1
    iget v2, v1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 1714
    array-length v2, p1

    iget v3, v1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    sub-int/2addr v2, v3

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRawSmsc:[B

    .line 1715
    iget v2, v1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRawSmsc:[B

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRawSmsc:[B

    array-length v4, v4

    invoke-static {p1, v2, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1723
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .line 1725
    .local v0, firstByte:I
    and-int/lit8 v2, v0, 0x3

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mti:I

    .line 1726
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mti:I

    packed-switch v2, :pswitch_data_0

    .line 1744
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unsupported message type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1732
    :pswitch_0
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    .line 1746
    :goto_0
    return-void

    .line 1736
    :pswitch_1
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    goto :goto_0

    .line 1740
    :pswitch_2
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    goto :goto_0

    .line 1726
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 8
    .parameter "p"
    .parameter "firstByte"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1798
    and-int/lit16 v2, p2, 0x80

    const/16 v5, 0x80

    if-ne v2, v5, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    .line 1800
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1802
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v2, :cond_0

    .line 1809
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    .line 1812
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x50

    if-ne v2, v5, :cond_9

    .line 1813
    const/4 v0, 0x0

    .line 1814
    .local v0, bdrop:Z
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v5, 0x7f

    if-le v2, v5, :cond_3

    .line 1815
    const/4 v0, 0x1

    .line 1826
    :cond_1
    :goto_1
    if-eqz v0, :cond_9

    .line 1827
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Give up the SMS, KT don\'t accept PID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0           #bdrop:Z
    :cond_2
    move v2, v4

    .line 1798
    goto :goto_0

    .line 1817
    .restart local v0       #bdrop:Z
    :cond_3
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v5, 0x2e

    if-lt v2, v5, :cond_4

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v5, 0x2f

    if-le v2, v5, :cond_7

    :cond_4
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v5, 0x33

    if-lt v2, v5, :cond_5

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v5, 0x37

    if-le v2, v5, :cond_7

    :cond_5
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v5, 0x48

    if-lt v2, v5, :cond_6

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v5, 0x5d

    if-le v2, v5, :cond_7

    :cond_6
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v5, 0x60

    if-lt v2, v5, :cond_8

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v5, 0x6b

    if-gt v2, v5, :cond_8

    .line 1821
    :cond_7
    const/4 v0, 0x1

    goto :goto_1

    .line 1822
    :cond_8
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v5, 0x7d

    if-ne v2, v5, :cond_1

    .line 1823
    const/4 v0, 0x1

    goto :goto_1

    .line 1833
    .end local v0           #bdrop:Z
    :cond_9
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    .line 1840
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->scTimeMillis:J

    .line 1842
    const-string v2, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMS SC timestamp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->scTimeMillis:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    and-int/lit8 v2, p2, 0x40

    const/16 v5, 0x40

    if-ne v2, v5, :cond_a

    move v1, v3

    .line 1847
    .local v1, hasUserDataHeader:Z
    :goto_2
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->setDataCodingScheme(I)V

    .line 1850
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1851
    return-void

    .end local v1           #hasUserDataHeader:Z
    :cond_a
    move v1, v4

    .line 1844
    goto :goto_2
.end method

.method private parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 8
    .parameter "p"
    .parameter "firstByte"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1755
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isStatusReportMessage:Z

    .line 1758
    and-int/lit8 v3, p2, 0x20

    if-nez v3, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->forSubmit:Z

    .line 1760
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageRef:I

    .line 1762
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    .line 1764
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->scTimeMillis:J

    .line 1766
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dischargeTimeMillis:J

    .line 1768
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->status:I

    .line 1771
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->moreDataPresent()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1773
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .line 1774
    .local v0, extraParams:I
    move v2, v0

    .line 1775
    .local v2, moreExtraParams:I
    :goto_1
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_1

    .line 1779
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    goto :goto_1

    .end local v0           #extraParams:I
    .end local v2           #moreExtraParams:I
    :cond_0
    move v3, v5

    .line 1758
    goto :goto_0

    .line 1782
    .restart local v0       #extraParams:I
    .restart local v2       #moreExtraParams:I
    :cond_1
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->moreDataPresent()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1783
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    .line 1786
    :cond_2
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->moreDataPresent()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1787
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    .line 1790
    :cond_3
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->moreDataPresent()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1791
    and-int/lit8 v3, p2, 0x40

    const/16 v6, 0x40

    if-ne v3, v6, :cond_5

    move v1, v4

    .line 1792
    .local v1, hasUserDataHeader:Z
    :goto_2
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1795
    .end local v0           #extraParams:I
    .end local v1           #hasUserDataHeader:Z
    .end local v2           #moreExtraParams:I
    :cond_4
    return-void

    .restart local v0       #extraParams:I
    .restart local v2       #moreExtraParams:I
    :cond_5
    move v1, v5

    .line 1791
    goto :goto_2
.end method

.method private parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 7
    .parameter "p"
    .parameter "firstByte"

    .prologue
    const/4 v4, 0x1

    .line 1855
    and-int/lit8 v3, p2, 0x18

    .line 1856
    .local v3, validityPeriodFormat:I
    and-int/lit8 v5, p2, 0x40

    const/16 v6, 0x40

    if-ne v5, v6, :cond_0

    move v0, v4

    .line 1858
    .local v0, hasUserDataHeader:Z
    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isOutGoingSms:Z

    .line 1861
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    .line 1863
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->destinationAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1867
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    .line 1871
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    .line 1878
    const/4 v2, 0x0

    .line 1879
    .local v2, lengthTpVp:I
    sparse-switch v3, :sswitch_data_0

    .line 1887
    :goto_1
    const/16 v4, 0x18

    if-eq v3, v4, :cond_1

    .line 1888
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v2, :cond_2

    .line 1889
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    .line 1888
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1856
    .end local v0           #hasUserDataHeader:Z
    .end local v1           #i:I
    .end local v2           #lengthTpVp:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1880
    .restart local v0       #hasUserDataHeader:Z
    .restart local v2       #lengthTpVp:I
    :sswitch_0
    const/4 v2, 0x0

    goto :goto_1

    .line 1882
    :sswitch_1
    const/4 v2, 0x7

    goto :goto_1

    .line 1883
    :sswitch_2
    const/4 v2, 0x1

    goto :goto_1

    .line 1892
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->absoluteValidityPeriod:J

    .line 1895
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1896
    return-void

    .line 1879
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_1
    .end sparse-switch
.end method

.method private parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V
    .locals 12
    .parameter "p"
    .parameter "hasUserDataHeader"

    .prologue
    .line 1907
    const/4 v4, 0x0

    .line 1908
    .local v4, hasMessageClass:Z
    const/4 v8, 0x0

    .line 1911
    .local v8, userDataCompressed:Z
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->encodingType:I

    .line 1916
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isDontSupportAndDontStoreMwiSms:Z

    .line 1920
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xcc

    const/16 v10, 0x84

    if-ne v9, v10, :cond_5

    .line 1921
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->automaticDeletion:Z

    .line 1922
    const/4 v4, 0x0

    .line 1923
    const/4 v8, 0x0

    .line 1924
    const/4 v9, 0x4

    iput v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->encodingType:I

    .line 2036
    :goto_0
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->encodingType:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1b

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {p1, p2, v9}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->constructUserData(ZZ)I

    move-result v3

    .line 2038
    .local v3, count:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserData()[B

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->userData:[B

    .line 2039
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 2042
    const/4 v6, -0x1

    .line 2043
    .local v6, languageTable:I
    const/4 v5, -0x1

    .line 2044
    .local v5, languageShiftTable:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v9, :cond_1

    .line 2045
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    invoke-virtual {v9}, Lcom/android/internal/telephony/SmsHeader;->getSsmiElement()Lcom/android/internal/telephony/SmsHeader$MiscElt;

    move-result-object v7

    .line 2046
    .local v7, ssmiElement:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    if-eqz v7, :cond_0

    .line 2047
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->checkMWIStatus(Lcom/android/internal/telephony/SmsHeader$MiscElt;)V

    .line 2050
    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v6, v9, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 2051
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v5, v9, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 2056
    .end local v7           #ssmiElement:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    :cond_1
    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v10, 0x50

    if-ne v9, v10, :cond_2

    .line 2057
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v9, v9, Lcom/android/internal/telephony/SmsHeader;->mAlternateReplyAddressLength:I

    if-nez v9, :cond_2

    .line 2058
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    const-string v10, ""

    iput-object v10, v9, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 2063
    :cond_2
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->encodingType:I

    iput v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mEncodingType:I

    .line 2066
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->encodingType:I

    packed-switch v9, :pswitch_data_0

    .line 2132
    :cond_3
    :goto_2
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageBody:Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 2133
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseMessageBody()V

    .line 2136
    :cond_4
    if-nez v4, :cond_1d

    .line 2137
    sget-object v9, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    .line 2154
    :goto_3
    return-void

    .line 1925
    .end local v3           #count:I
    .end local v5           #languageShiftTable:I
    .end local v6           #languageTable:I
    :cond_5
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0x80

    if-nez v9, :cond_d

    .line 1927
    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v10, 0x50

    if-eq v9, v10, :cond_6

    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v10, 0xd2

    if-ne v9, v10, :cond_8

    :cond_6
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xcc

    const/4 v10, 0x4

    if-eq v9, v10, :cond_7

    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xff

    const/16 v10, 0xc

    if-ne v9, v10, :cond_8

    .line 1930
    :cond_7
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->automaticDeletion:Z

    .line 1931
    const/4 v4, 0x0

    .line 1932
    const/4 v8, 0x0

    .line 1933
    const/4 v9, 0x4

    iput v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->encodingType:I

    goto/16 :goto_0

    .line 1935
    :cond_8
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v9, v9, 0x40

    if-eqz v9, :cond_9

    const/4 v9, 0x1

    :goto_4
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->automaticDeletion:Z

    .line 1936
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v9, v9, 0x20

    if-eqz v9, :cond_a

    const/4 v8, 0x1

    .line 1937
    :goto_5
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v9, v9, 0x10

    if-eqz v9, :cond_b

    const/4 v4, 0x1

    .line 1939
    :goto_6
    if-eqz v8, :cond_c

    .line 1940
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "4 - Unsupported SMS data coding scheme (compression) "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1935
    :cond_9
    const/4 v9, 0x0

    goto :goto_4

    .line 1936
    :cond_a
    const/4 v8, 0x0

    goto :goto_5

    .line 1937
    :cond_b
    const/4 v4, 0x0

    goto :goto_6

    .line 1943
    :cond_c
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    shr-int/lit8 v9, v9, 0x2

    and-int/lit8 v9, v9, 0x3

    packed-switch v9, :pswitch_data_1

    goto/16 :goto_0

    .line 1945
    :pswitch_0
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->encodingType:I

    goto/16 :goto_0

    .line 1949
    :pswitch_1
    const/4 v9, 0x3

    iput v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->encodingType:I

    goto/16 :goto_0

    .line 1954
    :pswitch_2
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "1 - Unsupported SMS data coding scheme "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    const/4 v9, 0x2

    iput v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->encodingType:I

    goto/16 :goto_0

    .line 1961
    :cond_d
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xf0

    const/16 v10, 0xf0

    if-ne v9, v10, :cond_f

    .line 1962
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->automaticDeletion:Z

    .line 1963
    const/4 v4, 0x1

    .line 1964
    const/4 v8, 0x0

    .line 1966
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v9, v9, 0x4

    if-nez v9, :cond_e

    .line 1968
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->encodingType:I

    goto/16 :goto_0

    .line 1971
    :cond_e
    const/4 v9, 0x2

    iput v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->encodingType:I

    goto/16 :goto_0

    .line 1973
    :cond_f
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xf0

    const/16 v10, 0xc0

    if-eq v9, v10, :cond_10

    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xf0

    const/16 v10, 0xd0

    if-eq v9, v10, :cond_10

    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xf0

    const/16 v10, 0xe0

    if-ne v9, v10, :cond_16

    .line 1982
    :cond_10
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xf0

    const/16 v10, 0xe0

    if-ne v9, v10, :cond_11

    .line 1983
    const/4 v9, 0x3

    iput v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->encodingType:I

    .line 1988
    :goto_7
    const/4 v8, 0x0

    .line 1989
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v9, v9, 0x8

    const/16 v10, 0x8

    if-ne v9, v10, :cond_12

    const/4 v0, 0x1

    .line 1993
    .local v0, active:Z
    :goto_8
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v9, v9, 0x3

    if-nez v9, :cond_14

    .line 1994
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwi:Z

    .line 1995
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiSense:Z

    .line 1996
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xf0

    const/16 v10, 0xc0

    if-ne v9, v10, :cond_13

    const/4 v9, 0x1

    :goto_9
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiDontStore:Z

    goto/16 :goto_0

    .line 1985
    .end local v0           #active:Z
    :cond_11
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->encodingType:I

    goto :goto_7

    .line 1989
    :cond_12
    const/4 v0, 0x0

    goto :goto_8

    .line 1996
    .restart local v0       #active:Z
    :cond_13
    const/4 v9, 0x0

    goto :goto_9

    .line 1998
    :cond_14
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwi:Z

    .line 2002
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xf0

    const/16 v10, 0xc0

    if-ne v9, v10, :cond_15

    const/4 v9, 0x1

    :goto_a
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isDontSupportAndDontStoreMwiSms:Z

    .line 2005
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MWI for fax, email, or other "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2002
    :cond_15
    const/4 v9, 0x0

    goto :goto_a

    .line 2008
    .end local v0           #active:Z
    :cond_16
    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v10, 0x50

    if-ne v9, v10, :cond_18

    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xff

    const/16 v10, 0xaf

    if-eq v9, v10, :cond_17

    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xff

    const/16 v10, 0x8f

    if-ne v9, v10, :cond_18

    .line 2011
    :cond_17
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "KT force : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->automaticDeletion:Z

    .line 2015
    const/4 v4, 0x0

    .line 2016
    const/4 v8, 0x0

    .line 2019
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->encodingType:I

    goto/16 :goto_0

    .line 2020
    :cond_18
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xc0

    const/16 v10, 0x80

    if-ne v9, v10, :cond_1a

    .line 2023
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    const/16 v10, 0x84

    if-ne v9, v10, :cond_19

    .line 2025
    const/4 v9, 0x4

    iput v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->encodingType:I

    goto/16 :goto_0

    .line 2027
    :cond_19
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "5 - Unsupported SMS data coding scheme "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2031
    :cond_1a
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "3 - Unsupported SMS data coding scheme "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2036
    :cond_1b
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 2069
    .restart local v3       #count:I
    .restart local v5       #languageShiftTable:I
    .restart local v6       #languageTable:I
    :pswitch_3
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageBody:Ljava/lang/String;

    goto/16 :goto_2

    .line 2074
    :pswitch_4
    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v10, 0x51

    if-ne v9, v10, :cond_1c

    .line 2075
    #calls: Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getKddiUserDataShiftJis(I)Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->access$000(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageBody:Ljava/lang/String;

    .line 2078
    iget v9, p1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeId:I

    iput v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->kddiSmsTypeId:I

    .line 2079
    iget-boolean v9, p1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeIdSet:Z

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->kddiSmsTypeIdSet:Z

    .line 2080
    iget-boolean v9, p1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiDiscard:Z

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->kddiDiscard:Z

    .line 2081
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "GSM CMAIL parsing - kddiSmsTypeId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->kddiSmsTypeId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "GSM CMAIL parsing - kddiSmsTypeIdSet : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->kddiSmsTypeIdSet:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "GSM CMAIL parsing - kddiDiscard : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->kddiDiscard:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->kddiSmsTypeIdSet:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->kddiSmsTypeId:I

    if-nez v9, :cond_3

    .line 2089
    const/16 v9, 0x8

    new-array v1, v9, [B

    .line 2090
    .local v1, addressBytes:[B
    const/4 v9, 0x0

    const/16 v10, 0xc

    aput-byte v10, v1, v9

    .line 2091
    const/4 v9, 0x1

    const/16 v10, -0x6f

    aput-byte v10, v1, v9

    .line 2092
    const/4 v9, 0x6

    new-array v2, v9, [B

    fill-array-data v2, :array_0

    .line 2094
    .local v2, addressValue:[B
    const/4 v9, 0x0

    const/4 v10, 0x2

    array-length v11, v2

    invoke-static {v2, v9, v1, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2096
    new-instance v9, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    const/4 v10, 0x0

    array-length v11, v1

    invoke-direct {v9, v1, v10, v11}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;-><init>([BII)V

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    goto/16 :goto_2

    .line 2101
    .end local v1           #addressBytes:[B
    .end local v2           #addressValue:[B
    :cond_1c
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageBody:Ljava/lang/String;

    goto/16 :goto_2

    .line 2117
    :pswitch_5
    invoke-virtual {p1, v3, v6, v5}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM7Bit(III)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageBody:Ljava/lang/String;

    goto/16 :goto_2

    .line 2122
    :pswitch_6
    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataUCS2(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageBody:Ljava/lang/String;

    goto/16 :goto_2

    .line 2126
    :pswitch_7
    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataKSC5601(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageBody:Ljava/lang/String;

    goto/16 :goto_2

    .line 2139
    :cond_1d
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v9, v9, 0x3

    packed-switch v9, :pswitch_data_2

    goto/16 :goto_3

    .line 2141
    :pswitch_8
    sget-object v9, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_3

    .line 2144
    :pswitch_9
    sget-object v9, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_3

    .line 2147
    :pswitch_a
    sget-object v9, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_3

    .line 2150
    :pswitch_b
    sget-object v9, Landroid/telephony/SmsMessage$MessageClass;->CLASS_3:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_3

    .line 2066
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 1943
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2092
    :array_0
    .array-data 0x1
        0x18t
        0x9t
        0x44t
        0x44t
        0x10t
        0x14t
    .end array-data

    .line 2139
    nop

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method KddiGetMessageEncoding()I
    .locals 1

    .prologue
    .line 2516
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mEncodingType:I

    return v0
.end method

.method getDataCodingScheme()I
    .locals 1

    .prologue
    .line 1594
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    return v0
.end method

.method public getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
    .locals 1

    .prologue
    .line 2161
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    return-object v0
.end method

.method public getMwiCounter()I
    .locals 1

    .prologue
    .line 2169
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiCounter:I

    return v0
.end method

.method public getProtocolIdentifier()I
    .locals 1

    .prologue
    .line 1580
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    return v0
.end method

.method public getRawSmsc()[B
    .locals 1

    .prologue
    .line 2350
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRawSmsc:[B

    return-object v0
.end method

.method public getRecipientAddress()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->getAddressString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "GSM"

    const-string v1, "SMS recipient address is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 1671
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->status:I

    return v0
.end method

.method public getdataCodingScheme()I
    .locals 1

    .prologue
    .line 1585
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    return v0
.end method

.method public isCphsMwiMessage()Z
    .locals 1

    .prologue
    .line 1608
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDontSupportAndDontStoreMwiSms()Z
    .locals 1

    .prologue
    .line 2537
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isDontSupportAndDontStoreMwiSms:Z

    return v0
.end method

.method public isMWIClearMessage()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1615
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwi:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiSense:Z

    if-nez v0, :cond_0

    .line 1619
    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isMWISetMessage()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1626
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwi:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiSense:Z

    if-eqz v0, :cond_0

    .line 1630
    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isMwiDontStore()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1639
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isDontSupportAndDontStoreMwiSms:Z

    if-ne v1, v0, :cond_1

    .line 1665
    :cond_0
    :goto_0
    return v0

    .line 1644
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwi:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiDontStore:Z

    if-nez v1, :cond_0

    .line 1648
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1652
    const-string v1, " "

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1659
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1665
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplace()Z
    .locals 2

    .prologue
    .line 1600
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplyPathPresent()Z
    .locals 1

    .prologue
    .line 1683
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 1

    .prologue
    .line 1677
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isStatusReportMessage:Z

    return v0
.end method

.method public isTypeZero()Z
    .locals 2

    .prologue
    .line 213
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isUsimDataDownload()Z
    .locals 2

    .prologue
    .line 2548
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    sget-object v1, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v1, 0x7c

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public kddiGetMessageId()I
    .locals 2

    .prologue
    .line 2364
    const-string v0, "GSM"

    const-string v1, "GetMessageID: is not supported in GSM mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2365
    const/4 v0, 0x0

    return v0
.end method

.method public kddiGetSmsTypeId()I
    .locals 1

    .prologue
    .line 2526
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->kddiSmsTypeId:I

    return v0
.end method

.method public kddiHasSmsTypeId()Z
    .locals 1

    .prologue
    .line 2530
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->kddiSmsTypeIdSet:Z

    return v0
.end method

.method kddiIsDiscard()Z
    .locals 1

    .prologue
    .line 2507
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->kddiDiscard:Z

    return v0
.end method
