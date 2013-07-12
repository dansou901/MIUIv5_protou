.class public Lcom/android/internal/telephony/EmailRecord;
.super Ljava/lang/Object;
.source "EmailRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/EmailRecord;",
            ">;"
        }
    .end annotation
.end field

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final RECORD_ID_BYTES:I = 0x1

.field static final SDBG:Z = false

.field static final SFI_BYTES:I = 0x1


# instance fields
.field mAdnRecordNumber:I

.field mAdnSFI:I

.field mEmailAddress:Ljava/lang/String;

.field mRecordNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 398
    new-instance v0, Lcom/android/internal/telephony/EmailRecord$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/EmailRecord$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/EmailRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    .line 428
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .parameter "adnSFI"
    .parameter "recordNumber"
    .parameter "emailAddress"

    .prologue
    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    .line 454
    iput p1, p0, Lcom/android/internal/telephony/EmailRecord;->mAdnSFI:I

    .line 455
    iput p2, p0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    .line 456
    iput-object p3, p0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    .line 457
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1
    .parameter "recordNumber"
    .parameter "record"

    .prologue
    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    .line 440
    iput p1, p0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    .line 441
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/EmailRecord;->parseRecord([B)V

    .line 442
    return-void
.end method

.method public constructor <init>(I[BZ)V
    .locals 1
    .parameter "recordNumber"
    .parameter "record"
    .parameter "isInIAP"

    .prologue
    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    .line 447
    iput p1, p0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    .line 448
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/EmailRecord;->parseRecord(I[BZ)V

    .line 449
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "record"

    .prologue
    .line 434
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/EmailRecord;-><init>(I[B)V

    .line 435
    return-void
.end method

.method private parseRecord(I[BZ)V
    .locals 5
    .parameter "recordNumber"
    .parameter "record"
    .parameter "EmailPresentInIAP"

    .prologue
    const/16 v4, 0xa1

    const/4 v3, 0x0

    .line 556
    if-eqz p3, :cond_1

    .line 558
    array-length v2, p2

    add-int/lit8 v0, v2, -0x1

    .line 559
    .local v0, offset:I
    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    .line 562
    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v2, -0x1

    .line 563
    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/EmailRecord;->mAdnSFI:I

    .line 566
    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v2, v2, -0x1

    invoke-static {p2, v3, v2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    .line 574
    .end local v0           #offset:I
    .local v1, tempAddress:Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x50

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd2

    if-ne v2, v3, :cond_2

    .line 581
    :cond_0
    const/16 v2, 0x40

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    .line 592
    :goto_1
    return-void

    .line 569
    .end local v1           #tempAddress:Ljava/lang/String;
    :cond_1
    iput p1, p0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    .line 570
    array-length v2, p2

    invoke-static {p2, v3, v2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #tempAddress:Ljava/lang/String;
    goto :goto_0

    .line 583
    :cond_2
    iput-object v1, p0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    goto :goto_1
.end method

.method private parseRecord([B)V
    .locals 3
    .parameter "record"

    .prologue
    .line 603
    array-length v1, p1

    add-int/lit8 v0, v1, -0x1

    .line 604
    .local v0, offset:I
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    .line 607
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v1, -0x1

    .line 608
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/EmailRecord;->mAdnSFI:I

    .line 611
    const/4 v1, 0x0

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v1, v2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    .line 619
    return-void
.end method


# virtual methods
.method public buildEmailString(IZ)[B
    .locals 6
    .parameter "recordSize"
    .parameter "EmailPresentInIAP"

    .prologue
    const/4 v5, 0x0

    .line 505
    new-array v2, p1, [B

    .line 507
    .local v2, recordString:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 508
    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 507
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 511
    :cond_0
    iget v3, p0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    if-lez v3, :cond_1

    iget v3, p0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    const/16 v4, 0xff

    if-ge v3, v4, :cond_1

    .line 514
    iget-object v3, p0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    .line 515
    .local v0, emailAddress:[B
    array-length v3, v0

    invoke-static {v0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 517
    if-eqz p2, :cond_1

    .line 520
    add-int/lit8 v3, p1, -0x1

    iget v4, p0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 523
    add-int/lit8 v3, p1, -0x1

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/android/internal/telephony/EmailRecord;->mAdnSFI:I

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 528
    .end local v0           #emailAddress:[B
    :cond_1
    return-object v2
.end method

.method public clear()V
    .locals 1

    .prologue
    const/16 v0, 0xff

    .line 486
    iput v0, p0, Lcom/android/internal/telephony/EmailRecord;->mAdnSFI:I

    .line 487
    iput v0, p0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    .line 488
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    .line 489
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 465
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 537
    iget v0, p0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    if-nez v0, :cond_1

    .line 539
    :cond_0
    const/4 v0, 0x1

    .line 541
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 474
    iget v0, p0, Lcom/android/internal/telephony/EmailRecord;->mAdnSFI:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    iget v0, p0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 476
    iget v0, p0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    iget-object v0, p0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 478
    return-void
.end method
