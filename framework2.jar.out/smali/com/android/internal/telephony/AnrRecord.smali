.class public Lcom/android/internal/telephony/AnrRecord;
.super Ljava/lang/Object;
.source "AnrRecord.java"


# static fields
.field static final EXT_RECORD_LENGTH_BYTES:I = 0xd

.field static final EXT_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field static final EXT_RECORD_TYPE_MASK:I = 0x3

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final MAX_ANR_NUMBER_LENGTH:I = 0xa

.field static final MAX_EXT_CALLED_PARTY_LENGTH:I = 0xa

.field static final SDBG:Z


# instance fields
.field mAdnRecordNumber:I

.field mAdnSFI:I

.field mAnrId:I

.field mClearExt1Record:Z

.field mExtRecord:I

.field mNumber:Ljava/lang/String;

.field mRecordNumber:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 390
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 379
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    .line 383
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 384
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    .line 392
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .parameter "adnSFI"
    .parameter "recordNumber"
    .parameter "number"

    .prologue
    .line 418
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 379
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    .line 383
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 384
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    .line 419
    iput p1, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    .line 420
    iput p2, p0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    .line 421
    iput-object p3, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 422
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1
    .parameter "recordNumber"
    .parameter "record"

    .prologue
    .line 403
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 379
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    .line 383
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 384
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    .line 404
    iput p1, p0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    .line 405
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/AnrRecord;->parseRecord([B)V

    .line 406
    return-void
.end method

.method public constructor <init>(I[BZ)V
    .locals 1
    .parameter "recordNumber"
    .parameter "record"
    .parameter "isIAP"

    .prologue
    .line 410
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 379
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    .line 383
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 384
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    .line 411
    iput p1, p0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    .line 412
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/AnrRecord;->parseRecord(I[BZ)V

    .line 413
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "record"

    .prologue
    .line 398
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/AnrRecord;-><init>(I[B)V

    .line 399
    return-void
.end method

.method private parseRecord(I[BZ)V
    .locals 5
    .parameter "recordNumber"
    .parameter "record"
    .parameter "AnrPresentInIAP"

    .prologue
    .line 778
    const-string v2, "GSM"

    const-string v3, "parseRecord()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    const/4 v1, 0x0

    .line 782
    .local v1, offset:I
    aget-byte v2, p2, v1

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/AnrRecord;->mAnrId:I

    .line 785
    const/4 v2, 0x1

    aget-byte v2, p2, v2

    and-int/lit16 v0, v2, 0xff

    .line 788
    .local v0, numberLength:I
    const/4 v2, 0x2

    invoke-static {p2, v2, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 791
    const/16 v2, 0xe

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    .line 793
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mExtRecord = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    if-eqz p3, :cond_1

    .line 797
    array-length v2, p2

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 799
    const/16 v2, 0xf

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    .line 801
    const/16 v2, 0x10

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    .line 815
    :cond_0
    :goto_0
    return-void

    .line 804
    :cond_1
    iput p1, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    goto :goto_0
.end method

.method private parseRecord([B)V
    .locals 3
    .parameter "record"

    .prologue
    .line 823
    const/4 v1, 0x0

    .line 824
    .local v1, offset:I
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/AnrRecord;->mAnrId:I

    .line 827
    const/4 v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v0, v2, 0xff

    .line 830
    .local v0, numberLength:I
    const/4 v2, 0x2

    invoke-static {p1, v2, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 833
    const/16 v2, 0xe

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    .line 836
    const/16 v2, 0xf

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    .line 839
    const/16 v2, 0x10

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    .line 849
    return-void
.end method


# virtual methods
.method public appendExtNumber(Ljava/lang/String;)V
    .locals 2
    .parameter "number"

    .prologue
    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 471
    return-void
.end method

.method public appendExtRecord([B)V
    .locals 4
    .parameter "extRecord"

    .prologue
    const/4 v3, 0x2

    .line 440
    :try_start_0
    array-length v1, p1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v3, :cond_0

    .line 450
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {p1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "GSM"

    const-string v2, "Error parsing AdnRecord ext record"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public buildAnrString(Ljava/util/ArrayList;I)[B
    .locals 13
    .parameter
    .parameter "recordSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/HtcExt1Record;",
            ">;I)[B"
        }
    .end annotation

    .prologue
    .local p1, ext1List:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/HtcExt1Record;>;"
    const/4 v8, 0x0

    const/4 v12, 0x0

    const/16 v11, 0xff

    const/4 v10, 0x1

    .line 492
    new-array v6, p2, [B

    .line 495
    .local v6, recordString:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, p2, :cond_0

    .line 496
    const/4 v7, -0x1

    aput-byte v7, v6, v3

    .line 495
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 500
    :cond_0
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    if-lez v7, :cond_d

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    if-ge v7, v11, :cond_d

    iget-object v7, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_d

    .line 503
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mAnrId:I

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v6, v12

    .line 505
    iget-object v7, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    const-string v9, "+"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v5, 0x15

    .line 509
    .local v5, maxAnrNumberLength:I
    :goto_1
    iget-object v7, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v7, v5, :cond_6

    .line 511
    iget-object v7, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v0

    .line 513
    .local v0, bcdNumber:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/AnrRecord;->hasExtendedRecord()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 515
    if-eqz p1, :cond_1

    .line 516
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    if-lez v7, :cond_1

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gt v7, v8, :cond_1

    .line 517
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/HtcExt1Record;

    invoke-virtual {v7}, Lcom/android/internal/telephony/HtcExt1Record;->clear()V

    .line 518
    iput-boolean v10, p0, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    .line 572
    :cond_1
    :goto_2
    array-length v7, v0

    int-to-byte v7, v7

    aput-byte v7, v6, v10

    .line 575
    const/4 v7, 0x2

    array-length v8, v0

    invoke-static {v0, v12, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 577
    iget-boolean v7, p0, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    if-eq v7, v10, :cond_2

    .line 579
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    if-lez v7, :cond_2

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    if-ge v7, v11, :cond_2

    .line 581
    const/16 v7, 0xe

    iget v8, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 587
    :cond_2
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    if-lez v7, :cond_3

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    if-ge v7, v11, :cond_3

    .line 589
    const/16 v7, 0xf

    iget v8, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 593
    :cond_3
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    if-lez v7, :cond_4

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    if-ge v7, v11, :cond_4

    .line 595
    const/16 v7, 0x10

    iget v8, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 613
    .end local v0           #bcdNumber:[B
    .end local v5           #maxAnrNumberLength:I
    .end local v6           #recordString:[B
    :cond_4
    :goto_3
    return-object v6

    .line 505
    .restart local v6       #recordString:[B
    :cond_5
    const/16 v5, 0x14

    goto :goto_1

    .line 525
    .restart local v5       #maxAnrNumberLength:I
    :cond_6
    iget-object v7, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v7, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v0

    .line 528
    .restart local v0       #bcdNumber:[B
    if-eqz p1, :cond_c

    .line 529
    iget-object v7, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 530
    .local v2, ext1SubString:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/AnrRecord;->hasExtendedRecord()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 531
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    if-lez v7, :cond_1

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gt v7, v8, :cond_1

    .line 533
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/HtcExt1Record;

    .line 534
    .local v1, ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HtcExt1Record;->buildExt1Record(Ljava/lang/String;)V

    goto :goto_2

    .line 539
    .end local v1           #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    :cond_7
    const/4 v1, 0x0

    .line 541
    .restart local v1       #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportSIMPhonebookbyIccIO()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 542
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_8

    .line 543
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/HtcExt1Record;

    invoke-virtual {v7}, Lcom/android/internal/telephony/HtcExt1Record;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 544
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    check-cast v1, Lcom/android/internal/telephony/HtcExt1Record;

    .line 545
    .restart local v1       #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HtcExt1Record;->buildExt1Record(Ljava/lang/String;)V

    .line 546
    iget v7, v1, Lcom/android/internal/telephony/HtcExt1Record;->mRecId:I

    iput v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    .line 562
    :cond_8
    :goto_5
    if-nez v1, :cond_1

    move-object v6, v8

    .line 563
    goto :goto_3

    .line 542
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 551
    :cond_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .line 552
    .local v4, j:I
    move v3, v4

    :goto_6
    if-ltz v3, :cond_8

    .line 553
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/HtcExt1Record;

    invoke-virtual {v7}, Lcom/android/internal/telephony/HtcExt1Record;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 554
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    check-cast v1, Lcom/android/internal/telephony/HtcExt1Record;

    .line 555
    .restart local v1       #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HtcExt1Record;->buildExt1Record(Ljava/lang/String;)V

    .line 556
    iget v7, v1, Lcom/android/internal/telephony/HtcExt1Record;->mRecId:I

    iput v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    goto :goto_5

    .line 552
    :cond_b
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .end local v1           #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    .end local v2           #ext1SubString:Ljava/lang/String;
    .end local v4           #j:I
    :cond_c
    move-object v6, v8

    .line 567
    goto/16 :goto_3

    .line 602
    .end local v0           #bcdNumber:[B
    .end local v5           #maxAnrNumberLength:I
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/telephony/AnrRecord;->hasExtendedRecord()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 604
    if-eqz p1, :cond_4

    .line 605
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    if-lez v7, :cond_4

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gt v7, v8, :cond_4

    .line 606
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/HtcExt1Record;

    invoke-virtual {v7}, Lcom/android/internal/telephony/HtcExt1Record;->clear()V

    .line 607
    iput-boolean v10, p0, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    goto/16 :goto_3
.end method

.method public buildAnrString(Ljava/util/ArrayList;IZ)[B
    .locals 10
    .parameter
    .parameter "recordSize"
    .parameter "AnrPresentInIAP"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/HtcExt1Record;",
            ">;IZ)[B"
        }
    .end annotation

    .prologue
    .line 624
    .local p1, ext1List:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/HtcExt1Record;>;"
    const-string v7, "GSM"

    const-string v8, "buildAnrString()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    new-array v6, p2, [B

    .line 628
    .local v6, recordString:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, p2, :cond_0

    .line 629
    const/4 v7, -0x1

    aput-byte v7, v6, v3

    .line 628
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 632
    :cond_0
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    if-lez v7, :cond_d

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    const/16 v8, 0xff

    if-ge v7, v8, :cond_d

    iget-object v7, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_d

    .line 635
    const/4 v7, 0x0

    iget v8, p0, Lcom/android/internal/telephony/AnrRecord;->mAnrId:I

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 637
    iget-object v7, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    const-string v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v5, 0x15

    .line 641
    .local v5, maxAnrNumberLength:I
    :goto_1
    iget-object v7, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v7, v5, :cond_6

    .line 643
    iget-object v7, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v0

    .line 645
    .local v0, bcdNumber:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/AnrRecord;->hasExtendedRecord()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 647
    if-eqz p1, :cond_1

    .line 648
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mExtRecord_1 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    if-lez v7, :cond_1

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gt v7, v8, :cond_1

    .line 650
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/HtcExt1Record;

    invoke-virtual {v7}, Lcom/android/internal/telephony/HtcExt1Record;->clear()V

    .line 651
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    .line 708
    :cond_1
    :goto_2
    const/4 v7, 0x1

    array-length v8, v0

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 711
    const/4 v7, 0x0

    const/4 v8, 0x2

    array-length v9, v0

    invoke-static {v0, v7, v6, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 712
    iget-boolean v7, p0, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    .line 714
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    if-lez v7, :cond_2

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    const/16 v8, 0xff

    if-ge v7, v8, :cond_2

    .line 716
    const/16 v7, 0xe

    iget v8, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 717
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "recordString[14] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0xe

    aget-byte v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_2
    const/4 v7, 0x1

    if-ne p3, v7, :cond_4

    const/16 v7, 0x11

    if-lt p2, v7, :cond_4

    .line 724
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    if-lez v7, :cond_3

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    const/16 v8, 0xff

    if-ge v7, v8, :cond_3

    .line 726
    const/16 v7, 0xf

    iget v8, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 730
    :cond_3
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    if-lez v7, :cond_4

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    const/16 v8, 0xff

    if-ge v7, v8, :cond_4

    .line 732
    const/16 v7, 0x10

    iget v8, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 753
    .end local v0           #bcdNumber:[B
    .end local v5           #maxAnrNumberLength:I
    .end local v6           #recordString:[B
    :cond_4
    :goto_3
    return-object v6

    .line 637
    .restart local v6       #recordString:[B
    :cond_5
    const/16 v5, 0x14

    goto/16 :goto_1

    .line 658
    .restart local v5       #maxAnrNumberLength:I
    :cond_6
    iget-object v7, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v0

    .line 661
    .restart local v0       #bcdNumber:[B
    if-eqz p1, :cond_c

    .line 662
    iget-object v7, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 663
    .local v2, ext1SubString:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/AnrRecord;->hasExtendedRecord()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 664
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mExtRecord_2 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    if-lez v7, :cond_1

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gt v7, v8, :cond_1

    .line 667
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/HtcExt1Record;

    .line 668
    .local v1, ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HtcExt1Record;->buildExt1Record(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 673
    .end local v1           #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    :cond_7
    const/4 v1, 0x0

    .line 675
    .restart local v1       #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportSIMPhonebookbyIccIO()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 676
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_8

    .line 677
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/HtcExt1Record;

    invoke-virtual {v7}, Lcom/android/internal/telephony/HtcExt1Record;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 678
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    check-cast v1, Lcom/android/internal/telephony/HtcExt1Record;

    .line 679
    .restart local v1       #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HtcExt1Record;->buildExt1Record(Ljava/lang/String;)V

    .line 680
    iget v7, v1, Lcom/android/internal/telephony/HtcExt1Record;->mRecId:I

    iput v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    .line 697
    :cond_8
    :goto_5
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mExtRecord_3 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    if-nez v1, :cond_1

    .line 699
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 676
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 685
    :cond_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .line 686
    .local v4, j:I
    move v3, v4

    :goto_6
    if-ltz v3, :cond_8

    .line 687
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/HtcExt1Record;

    invoke-virtual {v7}, Lcom/android/internal/telephony/HtcExt1Record;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 688
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    check-cast v1, Lcom/android/internal/telephony/HtcExt1Record;

    .line 689
    .restart local v1       #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HtcExt1Record;->buildExt1Record(Ljava/lang/String;)V

    .line 690
    iget v7, v1, Lcom/android/internal/telephony/HtcExt1Record;->mRecId:I

    iput v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    goto :goto_5

    .line 686
    :cond_b
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .line 703
    .end local v1           #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    .end local v2           #ext1SubString:Ljava/lang/String;
    .end local v4           #j:I
    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 740
    .end local v0           #bcdNumber:[B
    .end local v5           #maxAnrNumberLength:I
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/telephony/AnrRecord;->hasExtendedRecord()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 742
    if-eqz p1, :cond_4

    .line 743
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    if-lez v7, :cond_4

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gt v7, v8, :cond_4

    .line 744
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mExtRecord_4 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/HtcExt1Record;

    invoke-virtual {v7}, Lcom/android/internal/telephony/HtcExt1Record;->clear()V

    .line 747
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    goto/16 :goto_3
.end method

.method public clear()V
    .locals 1

    .prologue
    const/16 v0, 0xff

    .line 480
    iput v0, p0, Lcom/android/internal/telephony/AnrRecord;->mAnrId:I

    .line 481
    iput v0, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    .line 482
    iput v0, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    .line 483
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 484
    return-void
.end method

.method public hasExtendedRecord()Z
    .locals 2

    .prologue
    .line 430
    iget v0, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 761
    iget v0, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    if-nez v0, :cond_1

    .line 763
    :cond_0
    const/4 v0, 0x1

    .line 765
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
