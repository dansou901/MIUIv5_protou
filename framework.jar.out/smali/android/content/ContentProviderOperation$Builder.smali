.class public Landroid/content/ContentProviderOperation$Builder;
.super Ljava/lang/Object;
.source "ContentProviderOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentProviderOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mExpectedCount:Ljava/lang/Integer;

.field private mSelection:Ljava/lang/String;

.field private mSelectionArgs:[Ljava/lang/String;

.field private mSelectionArgsBackReferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mType:I

.field private final mUri:Landroid/net/Uri;

.field private mValues:Landroid/content/ContentValues;

.field private mValuesBackReferences:Landroid/content/ContentValues;

.field private mYieldAllowed:Z


# direct methods
.method private constructor <init>(ILandroid/net/Uri;)V
    .locals 2
    .parameter "type"
    .parameter "uri"

    .prologue
    .line 435
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 436
    if-nez p2, :cond_0

    .line 437
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "uri must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_0
    iput p1, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    .line 440
    iput-object p2, p0, Landroid/content/ContentProviderOperation$Builder;->mUri:Landroid/net/Uri;

    .line 441
    return-void
.end method

.method synthetic constructor <init>(ILandroid/net/Uri;Landroid/content/ContentProviderOperation$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 423
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProviderOperation$Builder;-><init>(ILandroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$000(Landroid/content/ContentProviderOperation$Builder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 423
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    return v0
.end method

.method static synthetic access$100(Landroid/content/ContentProviderOperation$Builder;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 423
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentValues;
    .locals 1
    .parameter "x0"

    .prologue
    .line 423
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/ContentProviderOperation$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 423
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelection:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/ContentProviderOperation$Builder;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 423
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgs:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/ContentProviderOperation$Builder;)Ljava/lang/Integer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 423
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mExpectedCount:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$600(Landroid/content/ContentProviderOperation$Builder;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 423
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgsBackReferences:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentValues;
    .locals 1
    .parameter "x0"

    .prologue
    .line 423
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValuesBackReferences:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$800(Landroid/content/ContentProviderOperation$Builder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 423
    iget-boolean v0, p0, Landroid/content/ContentProviderOperation$Builder;->mYieldAllowed:Z

    return v0
.end method


# virtual methods
.method public build()Landroid/content/ContentProviderOperation;
    .locals 2

    .prologue
    .line 445
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 446
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValuesBackReferences:Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValuesBackReferences:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 448
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :cond_2
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 452
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValuesBackReferences:Landroid/content/ContentValues;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValuesBackReferences:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mExpectedCount:Ljava/lang/Integer;

    if-nez v0, :cond_5

    .line 455
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_5
    new-instance v0, Landroid/content/ContentProviderOperation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/content/ContentProviderOperation;-><init>(Landroid/content/ContentProviderOperation$Builder;Landroid/content/ContentProviderOperation$1;)V

    return-object v0
.end method

.method public withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;
    .locals 2
    .parameter "count"

    .prologue
    .line 607
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 608
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "only updates, deletes, and asserts can have expected counts"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 611
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mExpectedCount:Ljava/lang/Integer;

    .line 612
    return-object p0
.end method

.method public withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    .locals 3
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v2, 0x0

    .line 586
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 587
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "only updates, deletes, and asserts can have selections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 590
    :cond_0
    iput-object p1, p0, Landroid/content/ContentProviderOperation$Builder;->mSelection:Ljava/lang/String;

    .line 591
    if-nez p2, :cond_1

    .line 592
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgs:[Ljava/lang/String;

    .line 597
    :goto_0
    return-object p0

    .line 594
    :cond_1
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgs:[Ljava/lang/String;

    .line 595
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgs:[Ljava/lang/String;

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;
    .locals 3
    .parameter "selectionArgIndex"
    .parameter "previousResult"

    .prologue
    .line 505
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 506
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "only updates, deletes, and asserts can have selection back-references"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 509
    :cond_0
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgsBackReferences:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 510
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgsBackReferences:Ljava/util/Map;

    .line 512
    :cond_1
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgsBackReferences:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    return-object p0
.end method

.method public withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 545
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 546
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "only inserts and updates can have values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 548
    :cond_0
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    if-nez v0, :cond_1

    .line 549
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    .line 551
    :cond_1
    if-nez p2, :cond_2

    .line 552
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 574
    .end local p2
    :goto_0
    return-object p0

    .line 553
    .restart local p2
    :cond_2
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 554
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 555
    .restart local p2
    :cond_3
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_4

    .line 556
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    check-cast p2, Ljava/lang/Byte;

    .end local p2
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    goto :goto_0

    .line 557
    .restart local p2
    :cond_4
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_5

    .line 558
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    check-cast p2, Ljava/lang/Short;

    .end local p2
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    goto :goto_0

    .line 559
    .restart local p2
    :cond_5
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 560
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 561
    .restart local p2
    :cond_6
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_7

    .line 562
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 563
    .restart local p2
    :cond_7
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_8

    .line 564
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    check-cast p2, Ljava/lang/Float;

    .end local p2
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_0

    .line 565
    .restart local p2
    :cond_8
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_9

    .line 566
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    check-cast p2, Ljava/lang/Double;

    .end local p2
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_0

    .line 567
    .restart local p2
    :cond_9
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    .line 568
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 569
    .restart local p2
    :cond_a
    instance-of v0, p2, [B

    if-eqz v0, :cond_b

    .line 570
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    check-cast p2, [B

    .end local p2
    check-cast p2, [B

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0

    .line 572
    .restart local p2
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad value type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;
    .locals 2
    .parameter "key"
    .parameter "previousResult"

    .prologue
    .line 487
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 488
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "only inserts, updates, and asserts can have value back-references"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :cond_0
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValuesBackReferences:Landroid/content/ContentValues;

    if-nez v0, :cond_1

    .line 492
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValuesBackReferences:Landroid/content/ContentValues;

    .line 494
    :cond_1
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValuesBackReferences:Landroid/content/ContentValues;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 495
    return-object p0
.end method

.method public withValueBackReferences(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    .locals 2
    .parameter "backReferences"

    .prologue
    .line 471
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 472
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "only inserts, updates, and asserts can have value back-references"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :cond_0
    iput-object p1, p0, Landroid/content/ContentProviderOperation$Builder;->mValuesBackReferences:Landroid/content/ContentValues;

    .line 476
    return-object p0
.end method

.method public withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    .locals 2
    .parameter "values"

    .prologue
    .line 524
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 525
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "only inserts, updates, and asserts can have values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 528
    :cond_0
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    if-nez v0, :cond_1

    .line 529
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    .line 531
    :cond_1
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 532
    return-object p0
.end method

.method public withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;
    .locals 0
    .parameter "yieldAllowed"

    .prologue
    .line 616
    iput-boolean p1, p0, Landroid/content/ContentProviderOperation$Builder;->mYieldAllowed:Z

    .line 617
    return-object p0
.end method
