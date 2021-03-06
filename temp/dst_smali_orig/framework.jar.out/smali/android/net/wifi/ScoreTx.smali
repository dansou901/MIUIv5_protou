.class public Landroid/net/wifi/ScoreTx;
.super Landroid/net/wifi/ScoreBase;
.source "ScoreTx.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final DEFAULT_TX_RATE:I = 0x36

.field private static final TAG:Ljava/lang/String; = "ScoreTx"

.field private static final THRESHOLD_DELTA_RSSI:I = 0x5


# instance fields
.field private PerScoreTable:[F

.field private ScoreTable:[I

.field private TxRateTable:[I

.field private score_refTxPER:F


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 4
    .parameter "weight"
    .parameter "config"

    .prologue
    const/16 v1, 0x64

    const/4 v3, 0x6

    const/16 v2, 0xb

    invoke-direct {p0}, Landroid/net/wifi/ScoreBase;-><init>()V

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/net/wifi/ScoreTx;->TxRateTable:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/net/wifi/ScoreTx;->ScoreTable:[I

    new-array v0, v3, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Landroid/net/wifi/ScoreTx;->PerScoreTable:[F

    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/net/wifi/ScoreTx;->score_refTxPER:F

    if-le p1, v1, :cond_0

    iput v1, p0, Landroid/net/wifi/ScoreBase;->WEIGHT:I

    :goto_0
    invoke-direct {p0, p2}, Landroid/net/wifi/ScoreTx;->loadConfig(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/ScoreTx;->TxRateTable:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/net/wifi/ScoreTx;->ScoreTable:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/net/wifi/ScoreTx;->PerScoreTable:[F

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/net/wifi/ScoreTx;->TxRateTable:[I

    array-length v0, v0

    iget-object v1, p0, Landroid/net/wifi/ScoreTx;->ScoreTable:[I

    array-length v1, v1

    if-ne v0, v1, :cond_2

    :goto_1
    return-void

    :cond_0
    if-gez p1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/ScoreBase;->WEIGHT:I

    goto :goto_0

    :cond_1
    iput p1, p0, Landroid/net/wifi/ScoreBase;->WEIGHT:I

    goto :goto_0

    :cond_2
    new-array v0, v2, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Landroid/net/wifi/ScoreTx;->TxRateTable:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_4

    iput-object v0, p0, Landroid/net/wifi/ScoreTx;->ScoreTable:[I

    new-array v0, v3, [F

    fill-array-data v0, :array_5

    iput-object v0, p0, Landroid/net/wifi/ScoreTx;->PerScoreTable:[F

    goto :goto_1

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x41t 0x0t 0x0t 0x0t
        0x48t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x41t 0x0t 0x0t 0x0t
        0x4bt 0x0t 0x0t 0x0t
        0x55t 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x5ft 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0xat 0xd7t 0x23t 0x3ct
        0xcdt 0xcct 0x4ct 0x3et
        0xcdt 0xcct 0xcct 0x3et
        0x9at 0x99t 0x19t 0x3ft
        0xcdt 0xcct 0x4ct 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_3
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x41t 0x0t 0x0t 0x0t
        0x48t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x41t 0x0t 0x0t 0x0t
        0x4bt 0x0t 0x0t 0x0t
        0x55t 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x5ft 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0xat 0xd7t 0x23t 0x3ct
        0xcdt 0xcct 0x4ct 0x3et
        0xcdt 0xcct 0xcct 0x3et
        0x9at 0x99t 0x19t 0x3ft
        0xcdt 0xcct 0x4ct 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private getAttenuation(I)F
    .locals 8
    .parameter "rssi"

    .prologue
    const/high16 v7, 0x40c0

    const/high16 v6, 0x3f80

    const-string v3, "ScoreTx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " + Attenuation RSSI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .local v0, ret:F
    const/16 v3, -0x3c

    if-le p1, v3, :cond_0

    add-int/lit8 v3, p1, 0x3c

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x3dcccccd

    mul-float/2addr v3, v4

    add-float v0, v6, v3

    const-string v3, "ScoreTx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " + Attenuation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .end local v0           #ret:F
    .local v1, ret:F
    :goto_0
    return v1

    .end local v1           #ret:F
    .restart local v0       #ret:F
    :cond_0
    const/4 v2, 0x0

    .local v2, step:F
    const/16 v3, -0x41

    if-lt p1, v3, :cond_1

    const/4 v2, 0x0

    :goto_1
    const-string v3, "ScoreTx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " + Attenuation Steps: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    div-float v3, v2, v7

    div-float v4, v2, v7

    mul-float/2addr v3, v4

    sub-float v0, v6, v3

    const-string v3, "ScoreTx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " + Attenuation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .end local v0           #ret:F
    .restart local v1       #ret:F
    goto :goto_0

    .end local v1           #ret:F
    .restart local v0       #ret:F
    :cond_1
    const/16 v3, -0x46

    if-lt p1, v3, :cond_2

    const/high16 v2, 0x3f80

    goto :goto_1

    :cond_2
    const/16 v3, -0x4b

    if-lt p1, v3, :cond_3

    const/high16 v2, 0x4000

    goto :goto_1

    :cond_3
    const/16 v3, -0x50

    if-lt p1, v3, :cond_4

    const/high16 v2, 0x4040

    goto :goto_1

    :cond_4
    const/16 v3, -0x55

    if-lt p1, v3, :cond_5

    const/high16 v2, 0x4080

    goto :goto_1

    :cond_5
    const/high16 v2, 0x40a0

    goto :goto_1
.end method

.method private getPerScore(I)F
    .locals 3
    .parameter "per"

    .prologue
    const-string v0, "ScoreTx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " + getPerScore: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-int/lit8 v2, p1, 0x5

    rsub-int/lit8 v2, v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x19

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScoreTx;->PerScoreTable:[F

    iget-object v1, p0, Landroid/net/wifi/ScoreTx;->PerScoreTable:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/net/wifi/ScoreTx;->PerScoreTable:[F

    div-int/lit8 v1, p1, 0x5

    rsub-int/lit8 v1, v1, 0x5

    aget v0, v0, v1

    goto :goto_0
.end method

.method private getPropulatedTxRate(I)I
    .locals 14
    .parameter "rssi"

    .prologue
    const/16 v13, -0x4b

    const/16 v8, 0x36

    const/16 v12, -0xff

    const-string v9, "ScoreTx"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " + Populating TxRate - RSSI: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, -0xff

    .local v5, refRssi:I
    const/4 v6, 0x0

    .local v6, refTxPER:I
    const/16 v7, -0xff

    .local v7, refTxRate:I
    const/16 v4, 0xff

    .local v4, refDelta:I
    iget-object v9, p0, Landroid/net/wifi/ScoreBase;->m_APRecords:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    const/4 v3, 0x0

    .local v3, refAPRecord:Landroid/net/wifi/APRecords;
    iget-object v9, p0, Landroid/net/wifi/ScoreBase;->m_APRecords:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/APRecords;

    .local v2, record:Landroid/net/wifi/APRecords;
    invoke-virtual {v2}, Landroid/net/wifi/APRecords;->getRSSI()I

    move-result v9

    const/4 v10, -0x1

    if-gt v9, v10, :cond_2

    if-lt p1, v13, :cond_3

    invoke-virtual {v2}, Landroid/net/wifi/APRecords;->getBSSID()Ljava/lang/String;

    move-result-object v9

    const-string v10, "-1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    :cond_3
    if-ge p1, v13, :cond_4

    invoke-virtual {v2}, Landroid/net/wifi/APRecords;->getBSSID()Ljava/lang/String;

    move-result-object v9

    const-string v10, "-0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    :cond_4
    invoke-virtual {v2}, Landroid/net/wifi/APRecords;->getRSSI()I

    move-result v9

    sub-int/2addr v9, p1

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .local v0, delta:I
    if-ge v0, v4, :cond_2

    invoke-virtual {v2}, Landroid/net/wifi/APRecords;->getRSSI()I

    move-result v5

    invoke-virtual {v2}, Landroid/net/wifi/APRecords;->getTXRATE()I

    move-result v7

    move v4, v0

    move-object v3, v2

    goto :goto_1

    .end local v0           #delta:I
    .end local v2           #record:Landroid/net/wifi/APRecords;
    :cond_5
    if-eqz v3, :cond_0

    const-string v9, "ScoreTx"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " + Populating TxRate Record: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Landroid/net/wifi/APRecords;->getSSID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Landroid/net/wifi/APRecords;->getBSSID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", RSSI: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", TX: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", TxPER: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_0

    if-eqz v5, :cond_0

    if-eq v5, v12, :cond_0

    if-eq v6, v12, :cond_0

    if-eq v4, v12, :cond_0

    if-eq v7, v12, :cond_0

    const/4 v9, 0x5

    if-ge v4, v9, :cond_6

    move v8, v7

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0, p1, v5, v7, v6}, Landroid/net/wifi/ScoreTx;->propagateTxRate(IIII)I

    move-result v8

    .local v8, ret:I
    goto/16 :goto_0
.end method

.method private loadConfig(Ljava/lang/String;)V
    .locals 13
    .parameter "config"

    .prologue
    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "\\;"

    invoke-virtual {p1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, configs:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v8, v0

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v1, v0, v7

    .local v1, conf:Ljava/lang/String;
    const-string v11, "\\:"

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, data:[Ljava/lang/String;
    array-length v11, v3

    const/4 v12, 0x2

    if-eq v11, v12, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v11, 0x1

    aget-object v11, v3, v11

    const-string v12, "\\,"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .local v10, values:[Ljava/lang/String;
    array-length v11, v10

    const/4 v12, 0x1

    if-lt v11, v12, :cond_2

    const/4 v5, 0x0

    .local v5, err:Z
    const/4 v11, 0x0

    aget-object v11, v3, v11

    const-string v12, "TxPERTable"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    array-length v11, v10

    new-array v9, v11, [F

    .local v9, ret:[F
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    array-length v11, v10

    if-ge v6, v11, :cond_4

    :try_start_0
    aget-object v11, v10, v6

    invoke-static {v11}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    aput v11, v9, v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :catch_0
    move-exception v4

    .local v4, e:Ljava/lang/NumberFormatException;
    const/4 v5, 0x1

    .end local v4           #e:Ljava/lang/NumberFormatException;
    :cond_4
    if-nez v5, :cond_2

    iput-object v9, p0, Landroid/net/wifi/ScoreTx;->PerScoreTable:[F

    goto :goto_1

    .end local v6           #i:I
    .end local v9           #ret:[F
    :cond_5
    array-length v11, v10

    new-array v9, v11, [I

    .local v9, ret:[I
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_3
    array-length v11, v10

    if-ge v6, v11, :cond_6

    :try_start_1
    aget-object v11, v10, v6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput v11, v9, v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :catch_1
    move-exception v4

    .restart local v4       #e:Ljava/lang/NumberFormatException;
    const/4 v5, 0x1

    .end local v4           #e:Ljava/lang/NumberFormatException;
    :cond_6
    if-nez v5, :cond_2

    const/4 v11, 0x0

    aget-object v11, v3, v11

    const-string v12, "TxRateTable"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    iput-object v9, p0, Landroid/net/wifi/ScoreTx;->TxRateTable:[I

    goto :goto_1

    :cond_7
    const/4 v11, 0x0

    aget-object v11, v3, v11

    const-string v12, "TxScoreTable"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    iput-object v9, p0, Landroid/net/wifi/ScoreTx;->ScoreTable:[I

    goto :goto_1
.end method

.method private propagateTxRate(IIII)I
    .locals 6
    .parameter "rssi"
    .parameter "rssiRef"
    .parameter "txRateRef"
    .parameter "txPERRef"

    .prologue
    const-string v2, "ScoreTx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " + Populating TxRate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v2, p3

    const/high16 v3, 0x3f80

    int-to-float v4, p4

    const/high16 v5, 0x42c8

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .local v1, txRef:I
    const-string v2, "ScoreTx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " + Populated TxRate Reference: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Landroid/net/wifi/ScoreTx;->getAttenuation(I)F

    move-result v2

    int-to-float v3, v1

    invoke-direct {p0, p2}, Landroid/net/wifi/ScoreTx;->getAttenuation(I)F

    move-result v4

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .local v0, ret:I
    return v0
.end method


# virtual methods
.method public Score(I)I
    .locals 5
    .parameter "rssi"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/ScoreTx;->getPropulatedTxRate(I)I

    move-result v1

    .local v1, txRateRef:I
    const-string v2, "ScoreTx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " + Populated TxRate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Landroid/net/wifi/ScoreTx;->getTxScore(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/net/wifi/ScoreTx;->score_refTxPER:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .local v0, ret:I
    const-string v2, "ScoreTx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " + TxRate Score: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getTxScore(I)I
    .locals 4
    .parameter "txRate"

    .prologue
    const/4 v1, 0x0

    .local v1, ret:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Landroid/net/wifi/ScoreTx;->TxRateTable:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Landroid/net/wifi/ScoreTx;->TxRateTable:[I

    aget v2, v2, v0

    if-gt p1, v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/ScoreTx;->ScoreTable:[I

    aget v2, v2, v0

    int-to-float v2, v2

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    iget v3, p0, Landroid/net/wifi/ScoreBase;->WEIGHT:I

    int-to-float v3, v3

    mul-float v1, v2, v3

    :cond_0
    iget-object v2, p0, Landroid/net/wifi/ScoreTx;->TxRateTable:[I

    iget-object v3, p0, Landroid/net/wifi/ScoreTx;->TxRateTable:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    if-lt p1, v2, :cond_1

    iget v2, p0, Landroid/net/wifi/ScoreBase;->WEIGHT:I

    int-to-float v1, v2

    :cond_1
    float-to-int v2, v1

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
