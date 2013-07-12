.class public Lcom/android/internal/telephony/cdma/SmsMessage;
.super Lcom/android/internal/telephony/SmsMessageBase;
.source "SmsMessage.java"

# interfaces
.implements Lcom/android/internal/telephony/cdma/HtcIfSmsMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    }
.end annotation


# static fields
.field private static final BEARER_DATA:B = 0x8t

.field private static final BEARER_REPLY_OPTION:B = 0x6t

.field private static final CAUSE_CODES:B = 0x7t

.field private static final DESTINATION_ADDRESS:B = 0x4t

.field private static final DESTINATION_SUB_ADDRESS:B = 0x5t

.field private static final LOGGABLE_TAG:Ljava/lang/String; = "CDMA:SMS"

.field static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field private static final ORIGINATING_ADDRESS:B = 0x2t

.field private static final ORIGINATING_SUB_ADDRESS:B = 0x3t

.field private static final RETURN_ACK:I = 0x1

.field private static final RETURN_NO_ACK:I = 0x0

.field private static final SERVICE_CATEGORY:B = 0x1t

.field private static final TELESERVICE_IDENTIFIER:B


# instance fields
.field private mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

.field private mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->isCdmaFormat:Z

    .line 128
    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 2
    .parameter "messageBody"
    .parameter "use7bitOnly"

    .prologue
    .line 733
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->calcTextEncodingDetails(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 1
    .parameter "messageBody"
    .parameter "use7bitOnly"
    .parameter "nli"

    .prologue
    .line 739
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->calcTextEncodingDetails(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public static calculateLengthForCSIM(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 1
    .parameter "msgBody"
    .parameter "address"
    .parameter "callback"

    .prologue
    .line 747
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->calcTextEncodingDetailsForCSIM(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method private convertDtmfToAscii(B)B
    .locals 3
    .parameter "dtmfDigit"

    .prologue
    .line 1862
    packed-switch p1, :pswitch_data_0

    .line 1887
    const/16 v0, 0x20

    .line 1891
    .local v0, asciiDigit:B
    :goto_0
    return v0

    .line 1864
    .end local v0           #asciiDigit:B
    :pswitch_0
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1866
    :cond_0
    const/16 v0, 0x30

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1868
    .end local v0           #asciiDigit:B
    :cond_1
    const/16 v0, 0x44

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1871
    .end local v0           #asciiDigit:B
    :pswitch_1
    const/16 v0, 0x31

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1872
    .end local v0           #asciiDigit:B
    :pswitch_2
    const/16 v0, 0x32

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1873
    .end local v0           #asciiDigit:B
    :pswitch_3
    const/16 v0, 0x33

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1874
    .end local v0           #asciiDigit:B
    :pswitch_4
    const/16 v0, 0x34

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1875
    .end local v0           #asciiDigit:B
    :pswitch_5
    const/16 v0, 0x35

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1876
    .end local v0           #asciiDigit:B
    :pswitch_6
    const/16 v0, 0x36

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1877
    .end local v0           #asciiDigit:B
    :pswitch_7
    const/16 v0, 0x37

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1878
    .end local v0           #asciiDigit:B
    :pswitch_8
    const/16 v0, 0x38

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1879
    .end local v0           #asciiDigit:B
    :pswitch_9
    const/16 v0, 0x39

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1880
    .end local v0           #asciiDigit:B
    :pswitch_a
    const/16 v0, 0x30

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1881
    .end local v0           #asciiDigit:B
    :pswitch_b
    const/16 v0, 0x2a

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1882
    .end local v0           #asciiDigit:B
    :pswitch_c
    const/16 v0, 0x23

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1883
    .end local v0           #asciiDigit:B
    :pswitch_d
    const/16 v0, 0x41

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1884
    .end local v0           #asciiDigit:B
    :pswitch_e
    const/16 v0, 0x42

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1885
    .end local v0           #asciiDigit:B
    :pswitch_f
    const/16 v0, 0x43

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1862
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public static createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 8
    .parameter "index"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 343
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .line 345
    .local v1, msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    iput p0, v1, Lcom/android/internal/telephony/cdma/SmsMessage;->indexOnIcc:I

    .line 348
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_0

    .line 349
    const-string v5, "createFromEfRecord"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CDMA index : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const-string v5, "createFromEfRecord"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CDMA data : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_0
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_1

    .line 358
    const-string v5, "CDMA"

    const-string v6, "SMS parsing failed: Trying to parse a free record"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 382
    .end local v1           #msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    :goto_0
    return-object v1

    .line 361
    .restart local v1       #msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    :cond_1
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x7

    iput v5, v1, Lcom/android/internal/telephony/cdma/SmsMessage;->statusOnIcc:I

    .line 366
    const/4 v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v3, v5, 0xff

    .line 370
    .local v3, size:I
    new-array v2, v3, [B

    .line 371
    .local v2, pdu:[B
    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 376
    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->decodeRawDataAndGetSmsMessage(Lcom/android/internal/telephony/cdma/SmsMessage;[B)Lcom/android/internal/telephony/cdma/SmsMessage;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 379
    goto :goto_0

    .line 380
    .end local v1           #msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    .end local v2           #pdu:[B
    .end local v3           #size:I
    :catch_0
    move-exception v0

    .line 381
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v5, "CDMA"

    const-string v6, "SMS PDU parsing failed: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v4

    .line 382
    goto :goto_0
.end method

.method public static createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 5
    .parameter "pdu"

    .prologue
    const/4 v2, 0x0

    .line 136
    new-instance v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .line 139
    .local v1, msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    :try_start_0
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 146
    .end local v1           #msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    :goto_0
    return-object v1

    .line 141
    .restart local v1       #msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    :catch_0
    move-exception v0

    .line 142
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v3, "CDMA"

    const-string v4, "SMS PDU parsing failed: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 143
    goto :goto_0

    .line 144
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 145
    .local v0, ex:Ljava/lang/OutOfMemoryError;
    const-string v3, "CDMA"

    const-string v4, "SMS PDU parsing failed, OOM: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 146
    goto :goto_0
.end method

.method private createPdu()V
    .locals 8

    .prologue
    .line 1770
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 1771
    .local v3, env:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    iget-object v0, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1772
    .local v0, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x64

    invoke-direct {v1, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1773
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1776
    .local v2, dos:Ljava/io/DataOutputStream;
    :try_start_0
    iget v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1777
    iget v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1778
    iget v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1780
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1781
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1782
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1783
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1784
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1785
    iget-object v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v7, v7

    invoke-virtual {v2, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1787
    iget v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1789
    iget-byte v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1790
    iget-byte v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1791
    iget-byte v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1793
    iget-object v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v5, v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1794
    iget-object v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    const/4 v6, 0x0

    iget-object v7, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v7, v7

    invoke-virtual {v2, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1795
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 1805
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mPdu:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1809
    :goto_0
    return-void

    .line 1806
    :catch_0
    move-exception v4

    .line 1807
    .local v4, ex:Ljava/io/IOException;
    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createPdu: conversion from object to byte array failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createRilPdu()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 1813
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 1814
    .local v3, env:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    iget-object v0, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1815
    .local v0, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v6, 0x64

    invoke-direct {v1, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1816
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1819
    .local v2, dos:Ljava/io/DataOutputStream;
    :try_start_0
    iget v6, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1820
    iget-boolean v6, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->isServicePresented:Z

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    :cond_0
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1821
    iget v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1822
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 1823
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 1824
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 1825
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 1826
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 1827
    iget-object v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->rawAddressBytes:[B

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->rawAddressBytes:[B

    array-length v7, v7

    invoke-virtual {v2, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1828
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->rawSubAddressType:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 1829
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->rawSubAddressOdd:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 1830
    iget-object v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->rawSubAddressBytes:[B

    if-eqz v5, :cond_1

    .line 1831
    iget-object v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->rawSubAddressBytes:[B

    array-length v5, v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 1832
    iget-object v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->rawSubAddressBytes:[B

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->rawSubAddressBytes:[B

    array-length v7, v7

    invoke-virtual {v2, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1837
    :goto_0
    iget-object v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v5, v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 1838
    iget-object v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    const/4 v6, 0x0

    iget-object v7, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v7, v7

    invoke-virtual {v2, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1839
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 1849
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mTpdu:[B

    .line 1853
    :goto_1
    return-void

    .line 1835
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1850
    :catch_0
    move-exception v4

    .line 1851
    .local v4, ex:Ljava/io/IOException;
    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createPdu: conversion from object to byte array failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static decodeRawDataAndGetSmsMessage(Lcom/android/internal/telephony/cdma/SmsMessage;[B)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 11
    .parameter "msg"
    .parameter "pdu"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 396
    const/4 v1, 0x0

    .line 397
    .local v1, decodeResult:Z
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;

    invoke-direct {v2, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;-><init>([B)V

    .line 401
    .local v2, decoder:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;
    :try_start_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodePdu()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 413
    :goto_0
    if-nez v2, :cond_3

    .line 414
    const/4 p0, 0x0

    .line 481
    .end local p0
    :goto_1
    return-object p0

    .line 402
    .restart local p0
    :catch_0
    move-exception v5

    .line 403
    .local v5, r:Ljava/lang/RuntimeException;
    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v6, :cond_0

    const-string v6, "CDMA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error decoding incoming SMS runtime : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_0
    const/4 v2, 0x0

    .line 405
    const/4 v1, 0x0

    .line 411
    goto :goto_0

    .line 406
    .end local v5           #r:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v3

    .line 407
    .local v3, e:Ljava/lang/Exception;
    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v6, :cond_1

    const-string v6, "CDMA"

    const-string v9, "Error decoding incoming SMS"

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_1
    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v6, :cond_2

    const-string v6, "CDMA"

    invoke-static {p1}, Lcom/android/internal/util/HexDump;->dumpHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_2
    const/4 v2, 0x0

    .line 410
    const/4 v1, 0x0

    goto :goto_0

    .line 417
    .end local v3           #e:Ljava/lang/Exception;
    :cond_3
    iget-object v6, v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    aget-boolean v6, v6, v8

    if-ne v6, v8, :cond_4

    iget-object v6, v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataHeader:[B

    if-eqz v6, :cond_4

    .line 419
    iget-object v6, v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataHeader:[B

    invoke-static {v6}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 425
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 427
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 428
    .local v4, env:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->messageType()I

    move-result v6

    iput v6, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 429
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->teleserviceCategory()I

    move-result v6

    iput v6, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 430
    iput v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 431
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 432
    .local v0, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->getOriginatingAddress()Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 433
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->getOriginatingAddress()Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v0

    .line 434
    :cond_5
    iput-object v0, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 435
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->replyOptionSeq()I

    move-result v6

    iput v6, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 436
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->replyOptionSeq()I

    move-result v6

    int-to-byte v6, v6

    iput-byte v6, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    .line 437
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->errorClass()I

    move-result v6

    int-to-byte v6, v6

    iput-byte v6, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    .line 438
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->causeCode()I

    move-result v6

    int-to-byte v6, v6

    iput-byte v6, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    .line 439
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->getBearerData()[B

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 440
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 446
    .end local v0           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v4           #env:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    :cond_6
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->getOriginatingAddress()Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 447
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->getMessageBody()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->messageBody:Ljava/lang/String;

    .line 448
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->getPseudoSubject()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->pseudoSubject:Ljava/lang/String;

    .line 452
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->getTimestampMillis()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->scTimeMillis:J

    .line 455
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mPdu:[B

    .line 457
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->retrieveBody()[B

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->userData:[B

    .line 458
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->getNumberOfVoiceMail()I

    move-result v6

    const/4 v9, -0x1

    if-ne v6, v9, :cond_7

    move v6, v7

    :goto_2
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->isMwi:Z

    .line 462
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->getDestinationAddress()Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->destinationAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 463
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->destinationAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v6, :cond_8

    :goto_3
    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->isOutGoingSms:Z

    .line 465
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->retrieveBodyEncoding()I

    move-result v6

    iput v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->encodingType:I

    .line 469
    invoke-static {}, Lcom/android/internal/telephony/HtcMsgConfig;->isSupportWemtUnicodeByteCount()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 470
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    if-eqz v6, :cond_9

    .line 471
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->getBearerData()[B

    move-result-object v6

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v8, v8, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-static {v6, v7, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([BII)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    goto/16 :goto_1

    :cond_7
    move v6, v8

    .line 458
    goto :goto_2

    :cond_8
    move v8, v7

    .line 463
    goto :goto_3

    .line 473
    :cond_9
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->getBearerData()[B

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([B)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    goto/16 :goto_1

    .line 477
    :cond_a
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->getBearerData()[B

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([B)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    goto/16 :goto_1
.end method

.method public static getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 1
    .parameter "scAddress"
    .parameter "peerAddress"
    .parameter "message"
    .parameter "timeStamp"

    .prologue
    .line 2216
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDeliveryPdu(Ljava/lang/String;JLcom/android/internal/telephony/cdma/sms/UserData;ZLandroid/os/Bundle;)Landroid/telephony/SmsMessage$DeliveryPdu;
    .locals 8
    .parameter "sOriginatorAddress"
    .parameter "lTimeMilli"
    .parameter "userData"
    .parameter "bIs7Bit"
    .parameter "bundle"

    .prologue
    const/4 v3, 0x0

    .line 2011
    if-eqz p3, :cond_0

    if-nez p0, :cond_1

    .line 2012
    :cond_0
    const/4 v0, 0x0

    .line 2027
    :goto_0
    return-object v0

    .line 2016
    :cond_1
    const/4 v6, 0x0

    .line 2017
    .local v6, callback:Ljava/lang/String;
    const/4 v5, 0x0

    .line 2018
    .local v5, priority:I
    const/4 v7, 0x0

    .line 2020
    .local v7, messageId:I
    if-eqz p5, :cond_2

    .line 2021
    const-string v0, "CALLBACK"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2022
    const-string v0, "PRIORITY"

    invoke-virtual {p5, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 2023
    const-string v0, "MESSAGE_ID"

    invoke-virtual {p5, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    :cond_2
    move-object v0, p0

    move-wide v1, p1

    move-object v4, p3

    .line 2027
    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetDeliveryPdu(Ljava/lang/String;JZLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;I)Landroid/telephony/SmsMessage$DeliveryPdu;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDeliveryPdu(Ljava/lang/String;JLjava/lang/String;ZLandroid/os/Bundle;)Landroid/telephony/SmsMessage$DeliveryPdu;
    .locals 8
    .parameter "sOriginatorAddress"
    .parameter "lTimeMilli"
    .parameter "sMessage"
    .parameter "bIs7Bit"
    .parameter "bundle"

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 1976
    if-eqz p3, :cond_0

    if-nez p0, :cond_1

    .line 1998
    :cond_0
    :goto_0
    return-object v0

    .line 1980
    :cond_1
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 1981
    .local v4, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p3, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1982
    iput-object v0, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1984
    const/4 v6, 0x0

    .line 1985
    .local v6, callback:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1986
    .local v5, priority:I
    const/4 v7, 0x0

    .line 1988
    .local v7, messageId:I
    if-eqz p5, :cond_2

    .line 1989
    const-string v0, "CALLBACK"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1990
    const-string v0, "PRIORITY"

    invoke-virtual {p5, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1991
    const-string v0, "MESSAGE_ID"

    invoke-virtual {p5, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    :cond_2
    move-object v0, p0

    move-wide v1, p1

    .line 1998
    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetDeliveryPdu(Ljava/lang/String;JZLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;I)Landroid/telephony/SmsMessage$DeliveryPdu;

    move-result-object v0

    goto :goto_0
.end method

.method private static getEncodeAddressBytes(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)I
    .locals 1
    .parameter "addr"

    .prologue
    .line 2230
    const/4 v0, 0x0

    return v0
.end method

.method private static declared-synchronized getNextMessageId()I
    .locals 6

    .prologue
    .line 1502
    const-class v3, Lcom/android/internal/telephony/cdma/SmsMessage;

    monitor-enter v3

    :try_start_0
    const-string v2, "persist.radio.cdma.msgid"

    const/4 v4, 0x1

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1503
    .local v0, msgId:I
    const v2, 0xffff

    rem-int v2, v0, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 1504
    .local v1, nextMsgId:Ljava/lang/String;
    const-string v2, "persist.radio.cdma.msgid"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    const-string v2, "CDMA:SMS"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1506
    const-string v2, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "next persist.radio.cdma.msgid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    const-string v2, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readback gets "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "persist.radio.cdma.msgid"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1510
    :cond_0
    monitor-exit v3

    return v0

    .line 1502
    .end local v1           #nextMsgId:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZILjava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 1
    .parameter "destAddr"
    .parameter "userData"
    .parameter "statusReportRequested"
    .parameter "priority"
    .parameter "callback"

    .prologue
    .line 625
    invoke-static {p0, p2, p1, p3, p4}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZILjava/lang/String;J)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 7
    .parameter "destAddr"
    .parameter "userData"
    .parameter "statusReportRequested"
    .parameter "priority"
    .parameter "callback"
    .parameter "lTimeMilli"

    .prologue
    .line 631
    move-object v0, p0

    move v1, p2

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;J)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZILjava/lang/String;JI)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 8
    .parameter "destAddr"
    .parameter "userData"
    .parameter "statusReportRequested"
    .parameter "priority"
    .parameter "callback"
    .parameter "lTimeMilli"
    .parameter "messageId"

    .prologue
    .line 643
    move-object v0, p0

    move v1, p2

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move-wide v5, p5

    move v7, p7

    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;JI)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/SmsHeader;Ljava/lang/String;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 5
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "destinationPort"
    .parameter "smsHeader"
    .parameter "message"
    .parameter "statusReportRequested"

    .prologue
    const/4 v4, 0x0

    .line 595
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 597
    .local v0, data:[B
    new-instance v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 598
    .local v1, portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p2, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 599
    iput v4, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 600
    iput-boolean v4, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 602
    iput-object v1, p3, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 604
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 605
    .local v2, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 606
    iput v4, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 607
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 608
    iput-object v0, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 610
    const-string v3, ""

    invoke-static {p1, p5, v2, v4, v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v3

    return-object v3
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 5
    .parameter "scAddr"
    .parameter "destAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "statusReportRequested"

    .prologue
    const/4 v4, 0x0

    .line 572
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 573
    .local v0, portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p2, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 574
    iput v4, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 575
    iput-boolean v4, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 577
    new-instance v1, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 578
    .local v1, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 580
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 581
    .local v2, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object v1, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 582
    iput v4, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 583
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 584
    iput-object p3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 586
    const-string v3, ""

    invoke-static {p1, p4, v2, v4, v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v3

    return-object v3
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 6
    .parameter "scAddr"
    .parameter "destAddr"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "smsHeader"

    .prologue
    .line 519
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Landroid/os/Bundle;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Landroid/os/Bundle;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 5
    .parameter "scAddr"
    .parameter "destAddr"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "smsHeader"
    .parameter "bundle"

    .prologue
    .line 531
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 532
    :cond_0
    const/4 v3, 0x0

    .line 547
    :goto_0
    return-object v3

    .line 535
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 536
    .local v2, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p2, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 537
    iput-object p4, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 539
    const/4 v0, 0x0

    .line 540
    .local v0, callback:Ljava/lang/String;
    const/4 v1, 0x0

    .line 542
    .local v1, priority:I
    if-eqz p5, :cond_2

    .line 543
    const-string v3, "CALLBACK"

    invoke-virtual {p5, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 544
    const-string v3, "PRIORITY"

    const/4 v4, 0x0

    invoke-virtual {p5, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 547
    :cond_2
    invoke-static {p1, p3, v2, v1, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v3

    goto :goto_0
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 2
    .parameter "pdu"

    .prologue
    .line 489
    const-string v0, "CDMA"

    const-string v1, "getTPLayerLengthForPDU: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const/4 v0, 0x0

    return v0
.end method

.method private kddiSetTimeStamp()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 781
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x51

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_0

    .line 783
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v1, :cond_0

    .line 784
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-boolean v1, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiDiscard:Z

    if-nez v1, :cond_0

    .line 786
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;-><init>()V

    .line 787
    .local v0, ts:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;
    invoke-static {}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->switchTimezone(Ljava/lang/String;)V

    .line 788
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->setToNow()V

    .line 789
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 790
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->toMillis(Z)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->scTimeMillis:J

    .line 791
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set timeStamp> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    .end local v0           #ts:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;
    :cond_0
    return-void
.end method

.method protected static manageMalformedVMNSMS(I[B)I
    .locals 5
    .parameter "id"
    .parameter "smsData"

    .prologue
    .line 1096
    const/4 v0, 0x0

    .line 1097
    .local v0, foundMsgCount:Z
    array-length v1, p1

    .line 1098
    .local v1, len:I
    const/4 v2, 0x0

    .line 1099
    .local v2, tidx:I
    const/4 v3, 0x0

    .line 1102
    .local v3, tvalue:I
    :goto_0
    add-int/lit8 v4, v1, -0x2

    if-ge v2, v4, :cond_1

    .line 1103
    aget-byte v3, p1, v2

    .line 1104
    const/16 v4, 0xb

    if-ne v3, v4, :cond_0

    .line 1105
    const/16 v4, 0x1003

    .line 1112
    :goto_1
    return v4

    .line 1107
    :cond_0
    add-int/lit8 v2, v2, 0x1

    aget-byte v3, p1, v2

    .line 1108
    add-int/lit8 v4, v3, 0x1

    add-int/2addr v2, v4

    goto :goto_0

    .line 1112
    :cond_1
    const/16 v4, 0x1002

    goto :goto_1
.end method

.method public static newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 1
    .parameter "line"

    .prologue
    .line 2257
    const/4 v0, 0x0

    return-object v0
.end method

.method public static newFromCMT([Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 2
    .parameter "lines"

    .prologue
    .line 2240
    const-string v0, "CDMA"

    const-string v1, "newFromCMT: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    const/4 v0, 0x0

    return-object v0
.end method

.method public static newFromCMTI(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 2
    .parameter "line"

    .prologue
    .line 2248
    const-string v0, "CDMA"

    const-string v1, "newFromCMTI: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2249
    const/4 v0, 0x0

    return-object v0
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 12
    .parameter "p"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 156
    new-instance v7, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .line 157
    .local v7, msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v5}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 158
    .local v5, env:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 159
    .local v0, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    invoke-direct {v8}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;-><init>()V

    .line 166
    .local v8, subaddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 172
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v9

    if-eqz v9, :cond_1

    move v9, v10

    :goto_0
    iput-boolean v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->isServicePresented:Z

    .line 173
    iget-boolean v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->isServicePresented:Z

    if-eqz v9, :cond_2

    .line 175
    iput v10, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 185
    :goto_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 187
    const-string v9, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "teleService> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-static {v11}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string v9, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "messageType> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    invoke-static {v11}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-string v9, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "serviceCategory> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-static {v11}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 192
    .local v1, addressDigitMode:I
    and-int/lit16 v9, v1, 0xff

    int-to-byte v9, v9

    iput v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 193
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    iput v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 194
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 195
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    iput v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 196
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 197
    .local v2, count:B
    iput v2, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 198
    new-array v4, v2, [B

    .line 200
    .local v4, data:[B
    new-array v9, v2, [B

    iput-object v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->rawAddressBytes:[B

    .line 203
    const/4 v6, 0x0

    .local v6, index:I
    :goto_2
    if-ge v6, v2, :cond_4

    .line 204
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v9

    aput-byte v9, v4, v6

    .line 207
    iget-object v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->rawAddressBytes:[B

    aget-byte v10, v4, v6

    aput-byte v10, v9, v6

    .line 211
    if-nez v1, :cond_0

    .line 212
    aget-byte v9, v4, v6

    invoke-direct {v7, v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v9

    aput-byte v9, v4, v6

    .line 203
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .end local v1           #addressDigitMode:I
    .end local v2           #count:B
    .end local v4           #data:[B
    .end local v6           #index:I
    :cond_1
    move v9, v11

    .line 172
    goto/16 :goto_0

    .line 178
    :cond_2
    iget v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    if-nez v9, :cond_3

    .line 180
    const/4 v9, 0x2

    iput v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    goto/16 :goto_1

    .line 182
    :cond_3
    iput v11, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    goto/16 :goto_1

    .line 216
    .restart local v1       #addressDigitMode:I
    .restart local v2       #count:B
    .restart local v4       #data:[B
    .restart local v6       #index:I
    :cond_4
    iput-object v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 219
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v9

    if-nez v9, :cond_8

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v9

    if-nez v9, :cond_8

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_LTE_CONFIG()Z

    move-result v9

    if-nez v9, :cond_8

    .line 225
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->type:I

    .line 226
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v9

    iput-byte v9, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->odd:B

    .line 227
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 229
    if-gez v2, :cond_5

    .line 230
    const/4 v2, 0x0

    .line 235
    :cond_5
    new-array v4, v2, [B

    .line 237
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v2, :cond_6

    .line 238
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v9

    aput-byte v9, v4, v6

    .line 237
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 241
    :cond_6
    iput-object v4, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    .line 273
    :goto_4
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 274
    .local v3, countInt:I
    if-gez v3, :cond_7

    .line 275
    const/4 v3, 0x0

    .line 278
    :cond_7
    new-array v4, v3, [B

    .line 279
    const/4 v6, 0x0

    :goto_5
    if-ge v6, v3, :cond_a

    .line 280
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v9

    aput-byte v9, v4, v6

    .line 279
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 245
    .end local v3           #countInt:I
    :cond_8
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    iput v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->rawSubAddressType:I

    .line 246
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    iput v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->rawSubAddressOdd:I

    .line 247
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 248
    if-lez v2, :cond_9

    .line 249
    new-array v9, v2, [B

    iput-object v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->rawSubAddressBytes:[B

    .line 251
    const/4 v6, 0x0

    :goto_6
    if-ge v6, v2, :cond_9

    .line 252
    iget-object v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->rawSubAddressBytes:[B

    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v10

    aput-byte v10, v9, v6

    .line 251
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 258
    :cond_9
    iget v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->rawSubAddressType:I

    iput v9, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->type:I

    .line 259
    iget v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->rawSubAddressOdd:I

    int-to-byte v9, v9

    iput-byte v9, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->odd:B

    .line 260
    iget-object v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->rawSubAddressBytes:[B

    iput-object v9, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    goto :goto_4

    .line 283
    .restart local v3       #countInt:I
    :cond_a
    iput-object v4, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 287
    iput-object v0, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 288
    iput-object v8, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    .line 289
    iput-object v0, v7, Lcom/android/internal/telephony/cdma/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 292
    iget v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    const/16 v10, 0x1003

    if-ne v9, v10, :cond_b

    .line 293
    iget v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    iget-object v10, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->manageMalformedVMNSMS(I[B)I

    move-result v9

    iput v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 295
    :cond_b
    iput-object v5, v7, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 298
    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->createPdu()V

    .line 301
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v9

    if-nez v9, :cond_c

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v9

    if-nez v9, :cond_c

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_LTE_CONFIG()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 307
    :cond_c
    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->createRilPdu()V

    .line 309
    iget-object v9, v7, Lcom/android/internal/telephony/cdma/SmsMessage;->mTpdu:[B

    if-eqz v9, :cond_d

    .line 310
    const-string v9, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RIL PDU> 0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Lcom/android/internal/telephony/cdma/SmsMessage;->mTpdu:[B

    invoke-static {v11}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_d
    iget-object v9, v7, Lcom/android/internal/telephony/cdma/SmsMessage;->mPdu:[B

    if-eqz v9, :cond_e

    .line 315
    const-string v9, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PDU> 0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Lcom/android/internal/telephony/cdma/SmsMessage;->mPdu:[B

    invoke-static {v11}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_e
    sget-boolean v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v9, :cond_10

    .line 320
    iget-object v9, v7, Lcom/android/internal/telephony/cdma/SmsMessage;->mPdu:[B

    if-eqz v9, :cond_f

    .line 321
    const-string v9, "newFromParcel mPdu : "

    iget-object v10, v7, Lcom/android/internal/telephony/cdma/SmsMessage;->mPdu:[B

    invoke-static {v10}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_f
    iget-object v9, v7, Lcom/android/internal/telephony/cdma/SmsMessage;->mTpdu:[B

    if-eqz v9, :cond_10

    .line 323
    const-string v9, "newFromParcel mTpdu : "

    iget-object v10, v7, Lcom/android/internal/telephony/cdma/SmsMessage;->mTpdu:[B

    invoke-static {v10}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_10
    return-object v7
.end method

.method private parsePdu([B)V
    .locals 10
    .parameter "pdu"

    .prologue
    .line 1036
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1037
    .local v1, bais:Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1040
    .local v3, dis:Ljava/io/DataInputStream;
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 1041
    .local v4, env:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 1044
    .local v0, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 1045
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 1046
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 1048
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 1049
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 1050
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 1051
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 1053
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    .line 1054
    .local v6, length:B
    iput v6, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 1055
    new-array v7, v6, [B

    iput-object v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 1056
    iget-object v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8, v6}, Ljava/io/DataInputStream;->read([BII)I

    .line 1058
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 1060
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput-byte v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    .line 1061
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput-byte v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    .line 1062
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput-byte v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    .line 1065
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 1066
    .local v2, bearerDataLength:I
    new-array v7, v2, [B

    iput-object v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 1067
    iget-object v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8, v2}, Ljava/io/DataInputStream;->read([BII)I

    .line 1068
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1074
    .end local v2           #bearerDataLength:I
    .end local v6           #length:B
    :goto_0
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1075
    iput-object v0, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1076
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 1077
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mPdu:[B

    .line 1079
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 1082
    iget v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    if-nez v7, :cond_0

    .line 1083
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->setCallbackNumber(Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)V

    .line 1084
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->kddiSetTimeStamp()V

    .line 1087
    :cond_0
    return-void

    .line 1069
    :catch_0
    move-exception v5

    .line 1070
    .local v5, ex:Ljava/lang/Exception;
    const-string v7, "CDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createFromPdu: conversion from byte array to object failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parsePduFromEfRecord([B)V
    .locals 24
    .parameter "pdu"

    .prologue
    .line 1120
    new-instance v5, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1121
    .local v5, bais:Ljava/io/ByteArrayInputStream;
    new-instance v8, Ljava/io/DataInputStream;

    invoke-direct {v8, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1122
    .local v8, dis:Ljava/io/DataInputStream;
    new-instance v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v9}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 1123
    .local v9, env:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 1124
    .local v2, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v17, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    invoke-direct/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;-><init>()V

    .line 1127
    .local v17, subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :try_start_0
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readByte()B

    move-result v21

    move/from16 v0, v21

    iput v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 1129
    :cond_0
    :goto_0
    invoke-virtual {v8}, Ljava/io/DataInputStream;->available()I

    move-result v21

    if-lez v21, :cond_9

    .line 1130
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readByte()B

    move-result v14

    .line 1131
    .local v14, parameterId:I
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readByte()B

    move-result v15

    .line 1132
    .local v15, parameterLen:I
    new-array v13, v15, [B

    .line 1134
    .local v13, parameterData:[B
    packed-switch v14, :pswitch_data_0

    .line 1234
    new-instance v21, Ljava/lang/Exception;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "unsupported parameterId ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1239
    .end local v13           #parameterData:[B
    .end local v14           #parameterId:I
    .end local v15           #parameterLen:I
    :catch_0
    move-exception v10

    .line 1240
    .local v10, ex:Ljava/lang/Exception;
    const-string v21, "CDMA"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "parsePduFromEfRecord: conversion from pdu to SmsMessage failed"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    .end local v10           #ex:Ljava/lang/Exception;
    :goto_1
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1245
    iput-object v2, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1246
    move-object/from16 v0, v17

    iput-object v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    .line 1247
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 1248
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/SmsMessage;->mPdu:[B

    .line 1250
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 1251
    return-void

    .line 1141
    .restart local v13       #parameterData:[B
    .restart local v14       #parameterId:I
    .restart local v15       #parameterLen:I
    :pswitch_0
    :try_start_1
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v21

    move/from16 v0, v21

    iput v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 1142
    const-string v21, "CDMA"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "teleservice = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1149
    :pswitch_1
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v21

    move/from16 v0, v21

    iput v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    goto/16 :goto_0

    .line 1153
    :pswitch_2
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v8, v13, v0, v15}, Ljava/io/DataInputStream;->read([BII)I

    .line 1154
    new-instance v3, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v3, v13}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1155
    .local v3, addrBis:Lcom/android/internal/util/BitwiseInputStream;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    move/from16 v0, v21

    iput v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 1156
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    move/from16 v0, v21

    iput v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 1157
    const/4 v12, 0x0

    .line 1158
    .local v12, numberType:I
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 1159
    const/16 v21, 0x3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v12

    .line 1160
    iput v12, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 1162
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    move/from16 v21, v0

    if-nez v21, :cond_1

    .line 1163
    const/16 v21, 0x4

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    move/from16 v0, v21

    iput v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 1166
    :cond_1
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    move/from16 v0, v21

    iput v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 1168
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v7, v0, [B

    .line 1169
    .local v7, data:[B
    const/4 v4, 0x0

    .line 1171
    .local v4, b:B
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v21, v0

    if-nez v21, :cond_2

    .line 1173
    const/4 v11, 0x0

    .local v11, index:I
    :goto_2
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v11, v0, :cond_4

    .line 1174
    const/16 v21, 0x4

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    and-int/lit8 v21, v21, 0xf

    move/from16 v0, v21

    int-to-byte v4, v0

    .line 1177
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v21

    aput-byte v21, v7, v11

    .line 1173
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1179
    .end local v11           #index:I
    :cond_2
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 1180
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    move/from16 v21, v0

    if-nez v21, :cond_3

    .line 1181
    const/4 v11, 0x0

    .restart local v11       #index:I
    :goto_3
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v11, v0, :cond_4

    .line 1182
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-byte v4, v0

    .line 1183
    aput-byte v4, v7, v11

    .line 1181
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1186
    .end local v11           #index:I
    :cond_3
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 1187
    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v12, v0, :cond_5

    .line 1188
    const-string v21, "CDMA"

    const-string v22, "TODO: Originating Addr is email id"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    :cond_4
    :goto_4
    iput-object v7, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 1199
    const-string v21, "CDMA"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Originating Addr="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1190
    :cond_5
    const-string v21, "CDMA"

    const-string v22, "TODO: Originating Addr is data network address"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1193
    :cond_6
    const-string v21, "CDMA"

    const-string v22, "Originating Addr is of incorrect type"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1196
    :cond_7
    const-string v21, "CDMA"

    const-string v22, "Incorrect Digit mode"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1203
    .end local v3           #addrBis:Lcom/android/internal/util/BitwiseInputStream;
    .end local v4           #b:B
    .end local v7           #data:[B
    .end local v12           #numberType:I
    :pswitch_3
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v8, v13, v0, v15}, Ljava/io/DataInputStream;->read([BII)I

    .line 1204
    new-instance v18, Lcom/android/internal/util/BitwiseInputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1205
    .local v18, subAddrBis:Lcom/android/internal/util/BitwiseInputStream;
    const/16 v21, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->type:I

    .line 1206
    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v21

    const/16 v22, 0x0

    aget-byte v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput-byte v0, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->odd:B

    .line 1207
    const/16 v21, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v19

    .line 1208
    .local v19, subAddrLen:I
    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 1209
    .local v20, subdata:[B
    const/4 v11, 0x0

    .restart local v11       #index:I
    :goto_5
    move/from16 v0, v19

    if-ge v11, v0, :cond_8

    .line 1210
    const/16 v21, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-byte v4, v0

    .line 1212
    .restart local v4       #b:B
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v21

    aput-byte v21, v20, v11

    .line 1209
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 1214
    .end local v4           #b:B
    :cond_8
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    goto/16 :goto_0

    .line 1217
    .end local v11           #index:I
    .end local v18           #subAddrBis:Lcom/android/internal/util/BitwiseInputStream;
    .end local v19           #subAddrLen:I
    .end local v20           #subdata:[B
    :pswitch_4
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v8, v13, v0, v15}, Ljava/io/DataInputStream;->read([BII)I

    .line 1218
    new-instance v16, Lcom/android/internal/util/BitwiseInputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v13}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1219
    .local v16, replyOptBis:Lcom/android/internal/util/BitwiseInputStream;
    const/16 v21, 0x6

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    move/from16 v0, v21

    iput v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    goto/16 :goto_0

    .line 1222
    .end local v16           #replyOptBis:Lcom/android/internal/util/BitwiseInputStream;
    :pswitch_5
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v8, v13, v0, v15}, Ljava/io/DataInputStream;->read([BII)I

    .line 1223
    new-instance v6, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v6, v13}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1224
    .local v6, ccBis:Lcom/android/internal/util/BitwiseInputStream;
    const/16 v21, 0x6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v21

    const/16 v22, 0x0

    aget-byte v21, v21, v22

    move/from16 v0, v21

    iput-byte v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    .line 1225
    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v21

    const/16 v22, 0x0

    aget-byte v21, v21, v22

    move/from16 v0, v21

    iput-byte v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    .line 1226
    iget-byte v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 1227
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v21

    const/16 v22, 0x0

    aget-byte v21, v21, v22

    move/from16 v0, v21

    iput-byte v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    goto/16 :goto_0

    .line 1230
    .end local v6           #ccBis:Lcom/android/internal/util/BitwiseInputStream;
    :pswitch_6
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v8, v13, v0, v15}, Ljava/io/DataInputStream;->read([BII)I

    .line 1231
    iput-object v13, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    goto/16 :goto_0

    .line 1237
    .end local v13           #parameterData:[B
    .end local v14           #parameterId:I
    .end local v15           #parameterLen:I
    :cond_9
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V

    .line 1238
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1134
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static privateGetDeliveryPdu(Ljava/lang/String;JZLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;I)Landroid/telephony/SmsMessage$DeliveryPdu;
    .locals 13
    .parameter "sOriginatorAddress"
    .parameter "lTimeMilli"
    .parameter "statusReportRequested"
    .parameter "userData"
    .parameter "priority"
    .parameter "callback"
    .parameter "messageId"

    .prologue
    .line 2054
    const/4 v10, 0x0

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;Z)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v7

    .line 2055
    .local v7, origAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    if-nez v7, :cond_0

    const/4 v8, 0x0

    .line 2156
    :goto_0
    return-object v8

    .line 2057
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 2062
    .local v2, bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v10, 0x1

    iput v10, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 2068
    move/from16 v0, p7

    iput v0, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 2072
    move/from16 v0, p3

    iput-boolean v0, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 2073
    const/4 v10, 0x0

    iput-boolean v10, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .line 2074
    const/4 v10, 0x0

    iput-boolean v10, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    .line 2075
    const/4 v10, 0x0

    iput-boolean v10, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    .line 2077
    move-object/from16 v0, p4

    iput-object v0, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 2080
    if-eqz p6, :cond_1

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1

    .line 2081
    const/4 v10, 0x0

    move-object/from16 v0, p6

    invoke-static {v0, v10}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;Z)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v10

    iput-object v10, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 2085
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isCDMAHidePriorityIndicator()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2086
    const/4 v10, 0x0

    iput-boolean v10, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 2097
    :goto_1
    const-wide/16 v10, 0x0

    cmp-long v10, p1, v10

    if-eqz v10, :cond_2

    .line 2098
    new-instance v10, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-direct {v10}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;-><init>()V

    iput-object v10, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 2099
    iget-object v10, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-virtual {v10, p1, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->set(J)V

    .line 2100
    iget-object v10, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-static {}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->switchTimezone(Ljava/lang/String;)V

    .line 2104
    :cond_2
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v4

    .line 2105
    .local v4, encodedBearerData:[B
    const-string v10, "CDMA:SMS"

    const/4 v11, 0x2

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2106
    const-string v10, "CDMA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MO (encoded) BearerData = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    const-string v10, "CDMA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MO raw BearerData = \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    :cond_3
    if-nez v4, :cond_5

    const/4 v8, 0x0

    goto/16 :goto_0

    .line 2089
    .end local v4           #encodedBearerData:[B
    :cond_4
    const/4 v10, 0x1

    iput-boolean v10, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 2090
    move/from16 v0, p5

    iput v0, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    goto :goto_1

    .line 2111
    .restart local v4       #encodedBearerData:[B
    :cond_5
    iget-boolean v10, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    if-eqz v10, :cond_6

    const/16 v9, 0x1005

    .line 2114
    .local v9, teleservice:I
    :goto_2
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v5}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 2115
    .local v5, envelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    const/4 v10, 0x0

    iput v10, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 2116
    iput v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 2117
    iput-object v7, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 2118
    const/4 v10, 0x1

    iput v10, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 2119
    iput-object v4, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 2131
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v10, 0x64

    invoke-direct {v1, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2132
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2133
    .local v3, dos:Ljava/io/DataOutputStream;
    iget v10, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2134
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2135
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2136
    iget v10, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 2137
    iget v10, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 2138
    iget v10, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 2139
    iget v10, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 2140
    iget v10, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 2141
    iget-object v10, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    const/4 v11, 0x0

    iget-object v12, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v12, v12

    invoke-virtual {v3, v10, v11, v12}, Ljava/io/DataOutputStream;->write([BII)V

    .line 2143
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 2144
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 2145
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 2146
    array-length v10, v4

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 2147
    const/4 v10, 0x0

    array-length v11, v4

    invoke-virtual {v3, v4, v10, v11}, Ljava/io/DataOutputStream;->write([BII)V

    .line 2148
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 2150
    new-instance v8, Landroid/telephony/SmsMessage$DeliveryPdu;

    invoke-direct {v8}, Landroid/telephony/SmsMessage$DeliveryPdu;-><init>()V

    .line 2151
    .local v8, pdu:Landroid/telephony/SmsMessage$DeliveryPdu;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    iput-object v10, v8, Landroid/telephony/SmsMessage$DeliveryPdu;->encodedMessage:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2153
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v3           #dos:Ljava/io/DataOutputStream;
    .end local v8           #pdu:Landroid/telephony/SmsMessage$DeliveryPdu;
    :catch_0
    move-exception v6

    .line 2154
    .local v6, ex:Ljava/io/IOException;
    const-string v10, "CDMA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "creating Delivery failed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 2111
    .end local v5           #envelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .end local v6           #ex:Ljava/io/IOException;
    .end local v9           #teleservice:I
    :cond_6
    const/16 v9, 0x1002

    goto/16 :goto_2
.end method

.method private static privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 8
    .parameter "destAddrStr"
    .parameter "statusReportRequested"
    .parameter "userData"
    .parameter "priority"
    .parameter "callback"

    .prologue
    const-wide/16 v5, 0x0

    .line 1521
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1522
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;JI)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 1526
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;J)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    goto :goto_0
.end method

.method private static privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;J)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 8
    .parameter "destAddr"
    .parameter "statusReportRequested"
    .parameter "userData"
    .parameter "priority"
    .parameter "callback"
    .parameter "lTimeMilli"

    .prologue
    .line 637
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;JI)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method private static privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;JI)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 21
    .parameter "destAddrStr"
    .parameter "statusReportRequested"
    .parameter "userData"
    .parameter "priority"
    .parameter "callback"
    .parameter "lTimeMilli"
    .parameter "messageId"

    .prologue
    .line 1554
    const/4 v3, 0x0

    .line 1555
    .local v3, bNBPCD:Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    sget-short v18, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v19, 0xa8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 1557
    const-string v18, "ril.cdmaphoneapp.nbpcd.support"

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1558
    const-string v18, "CDMA"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Query NBPCD state: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    :cond_0
    :goto_0
    sget-boolean v18, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 1577
    const-string v18, "CDMA"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "will call NBPCD: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " NBPCD state: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    :cond_1
    const/4 v4, 0x0

    .line 1580
    .local v4, bRemovePlus:Z
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_5

    .line 1581
    sget-boolean v18, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 1582
    const-string v18, "CDMA"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "before To NBPCD: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->toNBPCDAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1584
    .local v14, outAddrStr:Ljava/lang/String;
    move-object/from16 v0, p0

    if-eq v14, v0, :cond_4

    .line 1585
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    sget-short v18, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v19, 0xa8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 1587
    const/4 v4, 0x1

    .line 1589
    :cond_3
    move-object/from16 p0, v14

    .line 1591
    :cond_4
    sget-boolean v18, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 1592
    const-string v18, "CDMA"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "after To NBPCD: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    .end local v14           #outAddrStr:Ljava/lang/String;
    :cond_5
    sget-short v18, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    sget-short v18, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    const/4 v13, 0x1

    .line 1599
    .local v13, isAsiaChs:Z
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/HtcMsgConfig;->isAPTG()Z

    move-result v18

    if-nez v18, :cond_6

    sget-short v18, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v19, 0xd8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    if-eqz v13, :cond_7

    :cond_6
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_7

    const/16 v18, 0x2b

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    if-nez v18, :cond_7

    .line 1603
    const/4 v4, 0x1

    .line 1607
    :cond_7
    sget-short v18, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v19, 0x51

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 1608
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_8

    const-string v18, "+"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 1609
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "010"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1619
    :cond_8
    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;Z)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v7

    .line 1621
    .local v7, destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    if-nez v7, :cond_c

    const/4 v15, 0x0

    .line 1761
    :goto_2
    return-object v15

    .line 1561
    .end local v4           #bRemovePlus:Z
    .end local v7           #destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v13           #isAsiaChs:Z
    :cond_9
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->forcePlusCodeTo011()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1563
    sget-short v18, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v19, 0x66

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    const-string v18, "+1"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_a

    .line 1566
    const/16 v18, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 1567
    .local v16, substr:Ljava/lang/String;
    move-object/from16 p0, v16

    .line 1568
    const-string v18, "CDMA"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "For MPCS final address: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1572
    .end local v16           #substr:Ljava/lang/String;
    :cond_a
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1596
    .restart local v4       #bRemovePlus:Z
    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 1623
    .restart local v7       #destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v13       #isAsiaChs:Z
    :cond_c
    new-instance v6, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v6}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 1624
    .local v6, bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/16 v18, 0x2

    move/from16 v0, v18

    iput v0, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 1629
    if-nez p7, :cond_15

    .line 1632
    :try_start_0
    const-string v18, "isms"

    invoke-static/range {v18 .. v18}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v12

    .line 1633
    .local v12, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v12, :cond_14

    .line 1634
    invoke-interface {v12}, Lcom/android/internal/telephony/ISms;->getNextMessageIdInPreference()I

    move-result v18

    move/from16 v0, v18

    iput v0, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1647
    .end local v12           #iccISms:Lcom/android/internal/telephony/ISms;
    :goto_3
    move/from16 v0, p1

    iput-boolean v0, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 1648
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .line 1649
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    .line 1650
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    .line 1652
    move-object/from16 v0, p2

    iput-object v0, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 1655
    if-eqz p4, :cond_10

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_10

    .line 1656
    const/4 v4, 0x0

    .line 1657
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_f

    .line 1660
    const-string v18, "CDMA"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "before callback To NBPCD: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->toNBPCDAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1662
    .restart local v14       #outAddrStr:Ljava/lang/String;
    move-object/from16 v0, p4

    if-eq v14, v0, :cond_e

    .line 1663
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    sget-short v18, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v19, 0xa8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 1665
    const/4 v4, 0x1

    .line 1667
    :cond_d
    move-object/from16 p4, v14

    .line 1669
    :cond_e
    const-string v18, "CDMA"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "after callback To NBPCD: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    .end local v14           #outAddrStr:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p4

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;Z)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1675
    :cond_10
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isCDMAHidePriorityIndicator()Z

    move-result v18

    if-eqz v18, :cond_16

    .line 1676
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 1686
    :goto_4
    const-wide/16 v18, 0x0

    cmp-long v18, p5, v18

    if-eqz v18, :cond_11

    .line 1687
    new-instance v18, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;-><init>()V

    move-object/from16 v0, v18

    iput-object v0, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 1688
    iget-object v0, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->set(J)V

    .line 1689
    iget-object v0, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->switchTimezone(Ljava/lang/String;)V

    .line 1695
    :cond_11
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isCDMAHideLanguageIndicator()Z

    move-result v18

    if-eqz v18, :cond_17

    .line 1696
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    .line 1704
    :cond_12
    :goto_5
    invoke-static {v6}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v9

    .line 1705
    .local v9, encodedBearerData:[B
    const-string v18, "CDMA:SMS"

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_13

    .line 1706
    const-string v18, "CDMA"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "MO (encoded) BearerData = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    const-string v18, "CDMA"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "MO raw BearerData = \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v9}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    :cond_13
    if-nez v9, :cond_19

    const/4 v15, 0x0

    goto/16 :goto_2

    .line 1636
    .end local v9           #encodedBearerData:[B
    .restart local v12       #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_14
    const/16 v18, 0x1

    :try_start_1
    move/from16 v0, v18

    iput v0, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 1638
    .end local v12           #iccISms:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v11

    .line 1639
    .local v11, ex:Landroid/os/RemoteException;
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    goto/16 :goto_3

    .line 1643
    .end local v11           #ex:Landroid/os/RemoteException;
    :cond_15
    move/from16 v0, p7

    iput v0, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    goto/16 :goto_3

    .line 1679
    :cond_16
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 1680
    move/from16 v0, p3

    iput v0, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    goto/16 :goto_4

    .line 1698
    :cond_17
    sget-short v18, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v19, 0xd8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_18

    if-eqz v13, :cond_12

    .line 1699
    :cond_18
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    .line 1700
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    goto/16 :goto_5

    .line 1712
    .restart local v9       #encodedBearerData:[B
    :cond_19
    sget-short v18, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v19, 0xd8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1a

    if-eqz v13, :cond_1b

    .line 1713
    :cond_1a
    const/16 v17, 0x1002

    .line 1718
    .local v17, teleservice:I
    :goto_6
    new-instance v10, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v10}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 1719
    .local v10, envelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v10, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 1720
    move/from16 v0, v17

    iput v0, v10, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 1721
    iput-object v7, v10, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1722
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v10, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 1723
    iput-object v9, v10, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 1735
    :try_start_2
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v18, 0x64

    move/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1736
    .local v5, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-direct {v8, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1737
    .local v8, dos:Ljava/io/DataOutputStream;
    iget v0, v10, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1738
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1739
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1740
    iget v0, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 1741
    iget v0, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 1742
    iget v0, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 1743
    iget v0, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 1744
    iget v0, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 1745
    iget-object v0, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    iget-object v0, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v8, v0, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1747
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 1748
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 1749
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 1750
    array-length v0, v9

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 1751
    const/16 v18, 0x0

    array-length v0, v9

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v9, v0, v1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1752
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V

    .line 1754
    new-instance v15, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    invoke-direct {v15}, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;-><init>()V

    .line 1755
    .local v15, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v15, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 1756
    const/16 v18, 0x0

    move-object/from16 v0, v18

    iput-object v0, v15, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedScAddress:[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 1758
    .end local v5           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v8           #dos:Ljava/io/DataOutputStream;
    .end local v15           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :catch_1
    move-exception v11

    .line 1759
    .local v11, ex:Ljava/io/IOException;
    const-string v18, "CDMA"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "creating SubmitPdu failed: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 1715
    .end local v10           #envelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .end local v11           #ex:Ljava/io/IOException;
    .end local v17           #teleservice:I
    :cond_1b
    iget-boolean v0, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1c

    const/16 v17, 0x1005

    .restart local v17       #teleservice:I
    :goto_7
    goto/16 :goto_6

    .end local v17           #teleservice:I
    :cond_1c
    const/16 v17, 0x1002

    goto :goto_7
.end method

.method private setCallbackNumber(Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)V
    .locals 9
    .parameter "env"

    .prologue
    const/4 v8, 0x1

    .line 800
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0x51

    if-ne v5, v6, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v5

    if-nez v5, :cond_4

    .line 802
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    if-eqz v5, :cond_0

    .line 803
    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "callbackNumber> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    :cond_0
    const/4 v2, 0x0

    .line 807
    .local v2, bOtherService:Z
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v5, :cond_2

    .line 808
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v4, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 809
    .local v4, userdata:Lcom/android/internal/telephony/cdma/sms/UserData;
    iget-boolean v5, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    if-ne v5, v8, :cond_2

    .line 810
    iget v5, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeId:I

    invoke-static {v5}, Lcom/android/internal/telephony/HtcMessageHelper;->isKddiOptionService(I)Z

    move-result v5

    if-nez v5, :cond_1

    iget v5, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeId:I

    invoke-static {v5}, Lcom/android/internal/telephony/HtcMessageHelper;->isKddiOtherService(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 814
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 815
    const/4 v2, 0x1

    .line 820
    .end local v4           #userdata:Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    if-eqz v5, :cond_5

    .line 821
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 822
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iput-object v5, p1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 850
    :cond_3
    :goto_0
    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "change ori addr> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v7, v7, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    .end local v2           #bOtherService:Z
    :cond_4
    return-void

    .line 825
    .restart local v2       #bOtherService:Z
    :cond_5
    iget-object v5, p1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    if-eqz v5, :cond_6

    if-ne v2, v8, :cond_3

    .line 828
    :cond_6
    const/16 v5, 0xc

    new-array v1, v5, [B

    fill-array-data v1, :array_0

    .line 836
    .local v1, addrResult:[B
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 838
    .local v0, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :try_start_0
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    array-length v7, v1

    const-string v8, "SJIS"

    invoke-direct {v5, v1, v6, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 843
    :goto_1
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 844
    iput-object v0, p1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    goto :goto_0

    .line 839
    :catch_0
    move-exception v3

    .line 840
    .local v3, ex:Ljava/io/UnsupportedEncodingException;
    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SJIS decode fake address fail."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    const-string v5, ""

    iput-object v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    goto :goto_1

    .line 828
    nop

    :array_0
    .array-data 0x1
        0x95t
        0x73t
        0x96t
        0xbet
        0x82t
        0xc8t
        0x91t
        0x97t
        0x90t
        0x4dt
        0x8et
        0xd2t
    .end array-data
.end method

.method private static writePdu(Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)[B
    .locals 1
    .parameter "env"

    .prologue
    .line 2222
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method KddiGetMessageEncoding()I
    .locals 1

    .prologue
    .line 2177
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    return v0
.end method

.method public getCallBackNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1948
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    if-eqz v0, :cond_0

    .line 1949
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->getAddressString()Ljava/lang/String;

    move-result-object v0

    .line 1952
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getEncodedBearerData()[B
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    return-object v0
.end method

.method getIncomingSmsFingerprint()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1909
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1911
    .local v0, output:Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1912
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1913
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1915
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    if-eqz v1, :cond_0

    .line 1916
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1919
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
    .locals 1

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    if-nez v0, :cond_0

    .line 1457
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    .line 1459
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_0
.end method

.method public getMessageType()I
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    return v0
.end method

.method getNumOfVoicemails()I
    .locals 1

    .prologue
    .line 1898
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 1936
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    .line 1937
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 1939
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrivacyInd()I
    .locals 1

    .prologue
    .line 1958
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacyIndicatorSet:Z

    if-eqz v0, :cond_0

    .line 1959
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacy:I

    .line 1961
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProtocolIdentifier()I
    .locals 2

    .prologue
    .line 651
    const-string v0, "CDMA"

    const-string v1, "getProtocolIdentifier: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    const/4 v0, 0x0

    return v0
.end method

.method public getServiceCategory()I
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    return v0
.end method

.method getSmsCbProgramData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/cdma/CdmaSmsCbProgramData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1927
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryProgramData:Ljava/util/List;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 708
    iget v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    shl-int/lit8 v0, v0, 0x10

    return v0
.end method

.method getTeleService()I
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    return v0
.end method

.method public getdataCodingScheme()I
    .locals 1

    .prologue
    .line 658
    const/4 v0, 0x0

    return v0
.end method

.method public isCMAS()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 872
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 873
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    const/16 v2, 0x1000

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    const/16 v2, 0x10ff

    if-gt v1, v2, :cond_0

    .line 878
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCommercialKddiEarthquakeAlert()Z
    .locals 2

    .prologue
    const v1, 0x8000

    .line 931
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->isKddiEarthquakeAlert()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 932
    const/4 v0, 0x0

    .line 933
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isCphsMwiMessage()Z
    .locals 2

    .prologue
    .line 675
    const-string v0, "CDMA"

    const-string v1, "isCphsMwiMessage: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    const/4 v0, 0x0

    return v0
.end method

.method public isKddiBCSMS()Z
    .locals 1

    .prologue
    .line 1000
    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_CONFIG:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->isKddiEmergencyMessage()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->isKddiProprietaryServiceCategory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1003
    :cond_1
    const/4 v0, 0x1

    .line 1005
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKddiBroadcastSmsReceived()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 962
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 965
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    const/16 v2, 0x23

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    const/16 v2, 0x26

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    const/16 v2, 0x28

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    const/16 v2, 0x3f

    if-gt v1, v2, :cond_1

    .line 985
    :cond_0
    :goto_0
    return v0

    .line 971
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    const v2, 0x8001

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    const v2, 0x8023

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    const v2, 0x8026

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    const v2, 0x8028

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    const v2, 0x803f

    if-le v1, v2, :cond_0

    .line 977
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    const v2, 0xc001

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    const v2, 0xc023

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    const v2, 0xc026

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    const v2, 0xc028

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    const v2, 0xc03f

    if-le v1, v2, :cond_0

    .line 985
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKddiEarthquakeAlert()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 896
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 897
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    sparse-switch v1, :sswitch_data_0

    .line 916
    :cond_0
    const/4 v0, 0x0

    :sswitch_0
    return v0

    .line 897
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x26 -> :sswitch_0
        0x8001 -> :sswitch_0
        0x8021 -> :sswitch_0
        0x8022 -> :sswitch_0
        0x8026 -> :sswitch_0
        0xc001 -> :sswitch_0
        0xc021 -> :sswitch_0
        0xc022 -> :sswitch_0
        0xc026 -> :sswitch_0
    .end sparse-switch
.end method

.method public isKddiEmergencyMessage()Z
    .locals 1

    .prologue
    .line 944
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    sparse-switch v0, :sswitch_data_0

    .line 950
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 948
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 944
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x8001 -> :sswitch_0
        0xc001 -> :sswitch_0
    .end sparse-switch
.end method

.method public isKddiProprietaryServiceCategory()Z
    .locals 2

    .prologue
    .line 1018
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 1019
    .local v0, category:I
    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    const/16 v1, 0x3f

    if-le v0, v1, :cond_2

    :cond_0
    const v1, 0x8001

    if-lt v0, v1, :cond_1

    const v1, 0x803f

    if-le v0, v1, :cond_2

    :cond_1
    const v1, 0xc001

    if-lt v0, v1, :cond_3

    const v1, 0xc03f

    if-gt v0, v1, :cond_3

    .line 1023
    :cond_2
    const/4 v1, 0x1

    .line 1025
    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMWIClearMessage()Z
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMWISetMessage()Z
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMwiDontStore()Z
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplace()Z
    .locals 2

    .prologue
    .line 666
    const-string v0, "CDMA"

    const-string v1, "isReplace: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const/4 v0, 0x0

    return v0
.end method

.method public isReplyPathPresent()Z
    .locals 2

    .prologue
    .line 720
    const-string v0, "CDMA"

    const-string v1, "isReplyPathPresent: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const/4 v0, 0x0

    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 2

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public kddiGetMessageId()I
    .locals 1

    .prologue
    .line 2168
    iget v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->messageRef:I

    return v0
.end method

.method public kddiGetSmsTypeId()I
    .locals 1

    .prologue
    .line 2196
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeId:I

    return v0
.end method

.method public kddiHasSmsTypeId()Z
    .locals 1

    .prologue
    .line 2201
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v0, :cond_0

    .line 2202
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    .line 2204
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method kddiIsDiscard()Z
    .locals 1

    .prologue
    .line 2186
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiDiscard:Z

    return v0
.end method

.method parseBroadcastSms()Landroid/telephony/SmsCbMessage;
    .locals 13

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x2

    .line 1427
    const/4 v11, 0x0

    .line 1428
    .local v11, bData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    invoke-static {}, Lcom/android/internal/telephony/HtcMsgConfig;->isSupportWemtUnicodeByteCount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1429
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v3, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-static {v0, v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([BII)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v11

    .line 1434
    :goto_0
    if-nez v11, :cond_1

    .line 1435
    const-string v0, "CDMA"

    const-string v1, "BearerData.decode() returned null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    :goto_1
    return-object v9

    .line 1432
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([BI)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v11

    goto :goto_0

    .line 1439
    :cond_1
    const-string v0, "CDMA:SMS"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1440
    const-string v0, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MT raw BearerData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    :cond_2
    const-string v0, "gsm.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1444
    .local v12, plmn:Ljava/lang/String;
    new-instance v4, Landroid/telephony/SmsCbLocation;

    invoke-direct {v4, v12}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;)V

    .line 1446
    .local v4, location:Landroid/telephony/SmsCbLocation;
    new-instance v0, Landroid/telephony/SmsCbMessage;

    const/4 v2, 0x1

    iget v3, v11, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v5, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-virtual {v11}, Lcom/android/internal/telephony/cdma/sms/BearerData;->getLanguage()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v11, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iget v8, v11, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    iget-object v10, v11, Lcom/android/internal/telephony/cdma/sms/BearerData;->cmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    invoke-direct/range {v0 .. v10}, Landroid/telephony/SmsCbMessage;-><init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;Ljava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;)V

    move-object v9, v0

    goto :goto_1
.end method

.method protected parseSms()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1259
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    const/high16 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 1260
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    .line 1261
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    if-eqz v4, :cond_0

    .line 1262
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    aget-byte v5, v5, v9

    and-int/lit16 v5, v5, 0xff

    iput v5, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    .line 1419
    :cond_0
    :goto_0
    return-void

    .line 1271
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    if-ne v4, v8, :cond_9

    .line 1272
    const-string v4, "CDMA"

    const-string v5, "broadcast message. "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCBM(Lcom/android/internal/telephony/cdma/SmsMessage;)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    .line 1287
    :goto_1
    const-string v4, "CDMA:SMS"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1288
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MT raw BearerData = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-static {v6}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MT (decoded) BearerData = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    iput v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->messageRef:I

    .line 1294
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x51

    if-ne v4, v5, :cond_3

    .line 1295
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v4, :cond_3

    .line 1296
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-boolean v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    if-nez v4, :cond_3

    .line 1298
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->KddiformatSlamdownMessage(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    .line 1304
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v4, :cond_6

    .line 1305
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->userData:[B

    .line 1306
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1307
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->messageBody:Ljava/lang/String;

    .line 1310
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->isCMAS()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    if-eqz v4, :cond_5

    .line 1311
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->getAlertTextStr()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->messageBody:Ljava/lang/String;

    .line 1312
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mCmas:Landroid/telephony/HtcCmasMessage;

    .line 1313
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->getExpires()Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage$TimeStamp;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1314
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mCmas:Landroid/telephony/HtcCmasMessage;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->getExpires()Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage$TimeStamp;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage$TimeStamp;->toMillis(Z)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/telephony/HtcCmasMessage;->setExpiredMillis(J)V

    .line 1316
    :cond_4
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set CMAS content> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->messageBody:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expired time> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mCmas:Landroid/telephony/HtcCmasMessage;

    invoke-virtual {v6}, Landroid/telephony/HtcCmasMessage;->getExpiredMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    :try_start_0
    const-string v4, "CDMA"

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mCmas:Landroid/telephony/HtcCmasMessage;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1328
    :cond_5
    :goto_2
    invoke-static {}, Lcom/android/internal/telephony/HtcMsgConfig;->isSupportSprintReassembleSms()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    const/16 v5, 0x1002

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v4, :cond_6

    .line 1330
    const/4 v3, 0x0

    .line 1332
    .local v3, info:Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->messageBody:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/HtcMessageHelper;->getSprintReassembleSmsInformation(Ljava/lang/String;)Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 1337
    :goto_3
    if-eqz v3, :cond_6

    .line 1338
    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->isSprintReassembleSms:Z

    .line 1340
    new-instance v2, Lcom/android/internal/util/BitwiseOutputStream;

    const/4 v4, 0x5

    invoke-direct {v2, v4}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .line 1342
    .local v2, headerStream:Lcom/android/internal/util/BitwiseOutputStream;
    const/16 v4, 0x8

    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v2, v4, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1343
    const/16 v4, 0x8

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1344
    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1346
    const/16 v4, 0x8

    iget v5, v3, Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;->totalSegment:I

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1347
    const/16 v4, 0x8

    iget v5, v3, Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;->currentSegment:I

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V
    :try_end_2
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1353
    :goto_4
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->isSprintReassembleSms:Z

    if-ne v4, v8, :cond_6

    .line 1354
    invoke-virtual {v2}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1356
    iget-object v4, v3, Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;->normalizedText:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 1357
    iget v4, v3, Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;->currentSegment:I

    if-ne v4, v8, :cond_b

    .line 1358
    iget-object v4, v3, Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;->normalizedText:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->messageBody:Ljava/lang/String;

    .line 1369
    .end local v2           #headerStream:Lcom/android/internal/util/BitwiseOutputStream;
    .end local v3           #info:Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;
    :cond_6
    :goto_5
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v4, :cond_7

    .line 1370
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v6, v6, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v4, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 1373
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v4, v4, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-eqz v4, :cond_7

    .line 1374
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->judgeAndPrependPlus()V

    .line 1381
    :cond_7
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v4, :cond_c

    .line 1382
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->toMillis(Z)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->scTimeMillis:J

    .line 1388
    :goto_6
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMS SC timestamp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->scTimeMillis:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_f

    .line 1399
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-boolean v4, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    if-nez v4, :cond_e

    .line 1400
    const-string v5, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DELIVERY_ACK message without msgStatus ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->userData:[B

    if-nez v4, :cond_d

    const-string v4, "also missing"

    :goto_7
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " userData)."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    iput v9, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    .line 1413
    :cond_8
    :goto_8
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->messageBody:Ljava/lang/String;

    if-eqz v4, :cond_10

    .line 1415
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseMessageBody()V

    goto/16 :goto_0

    .line 1279
    :cond_9
    invoke-static {}, Lcom/android/internal/telephony/HtcMsgConfig;->isSupportWemtUnicodeByteCount()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1280
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v5, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-static {v4, v9, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([BII)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    goto/16 :goto_1

    .line 1283
    :cond_a
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([B)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    goto/16 :goto_1

    .line 1333
    .restart local v3       #info:Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;
    :catch_0
    move-exception v1

    .line 1334
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 1348
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #headerStream:Lcom/android/internal/util/BitwiseOutputStream;
    :catch_1
    move-exception v0

    .line 1349
    .local v0, ae:Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    invoke-virtual {v0}, Lcom/android/internal/util/BitwiseOutputStream$AccessException;->printStackTrace()V

    .line 1350
    iput-boolean v9, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->isSprintReassembleSms:Z

    goto/16 :goto_4

    .line 1360
    .end local v0           #ae:Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;->normalizedText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->messageBody:Ljava/lang/String;

    goto/16 :goto_5

    .line 1385
    .end local v2           #headerStream:Lcom/android/internal/util/BitwiseOutputStream;
    .end local v3           #info:Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->scTimeMillis:J

    goto/16 :goto_6

    .line 1400
    :cond_d
    const-string v4, "does have"

    goto :goto_7

    .line 1405
    :cond_e
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    shl-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    .line 1406
    iget v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v5, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    goto :goto_8

    .line 1408
    :cond_f
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    if-eq v4, v8, :cond_8

    .line 1409
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported message type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v6, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1416
    :cond_10
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->userData:[B

    if-eqz v4, :cond_0

    goto/16 :goto_0

    .line 1320
    :catch_2
    move-exception v4

    goto/16 :goto_2
.end method
