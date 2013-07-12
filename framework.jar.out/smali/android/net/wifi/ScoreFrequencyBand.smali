.class public Landroid/net/wifi/ScoreFrequencyBand;
.super Landroid/net/wifi/ScoreBase;
.source "ScoreFrequencyBand.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final SCORE_2400:F = 1.0f

.field private static final SCORE_5000:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "ScoreFrequencyBand"


# instance fields
.field private ChannelScoreDecayTable:[[F

.field private ScoreTable:[F


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 7
    .parameter "weight"
    .parameter "config"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 20
    invoke-direct {p0}, Landroid/net/wifi/ScoreBase;-><init>()V

    .line 13
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/net/wifi/ScoreFrequencyBand;->ScoreTable:[F

    .line 14
    new-array v0, v6, [[F

    new-array v1, v4, [F

    fill-array-data v1, :array_1

    aput-object v1, v0, v3

    new-array v1, v4, [F

    fill-array-data v1, :array_2

    aput-object v1, v0, v5

    new-array v1, v4, [F

    fill-array-data v1, :array_3

    aput-object v1, v0, v2

    iput-object v0, p0, Landroid/net/wifi/ScoreFrequencyBand;->ChannelScoreDecayTable:[[F

    .line 21
    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    const/16 v0, 0x64

    iput v0, p0, Landroid/net/wifi/ScoreBase;->WEIGHT:I

    .line 25
    :goto_0
    invoke-direct {p0, p2}, Landroid/net/wifi/ScoreFrequencyBand;->loadConfig(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Landroid/net/wifi/ScoreFrequencyBand;->ChannelScoreDecayTable:[[F

    aget-object v0, v0, v3

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/net/wifi/ScoreFrequencyBand;->ChannelScoreDecayTable:[[F

    aget-object v0, v0, v5

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/net/wifi/ScoreFrequencyBand;->ChannelScoreDecayTable:[[F

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/net/wifi/ScoreFrequencyBand;->ScoreTable:[F

    if-eqz v0, :cond_2

    .line 28
    iget-object v0, p0, Landroid/net/wifi/ScoreFrequencyBand;->ChannelScoreDecayTable:[[F

    aget-object v0, v0, v3

    array-length v0, v0

    iget-object v1, p0, Landroid/net/wifi/ScoreFrequencyBand;->ChannelScoreDecayTable:[[F

    aget-object v1, v1, v5

    array-length v1, v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroid/net/wifi/ScoreFrequencyBand;->ChannelScoreDecayTable:[[F

    aget-object v0, v0, v5

    array-length v0, v0

    iget-object v1, p0, Landroid/net/wifi/ScoreFrequencyBand;->ChannelScoreDecayTable:[[F

    aget-object v1, v1, v2

    array-length v1, v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroid/net/wifi/ScoreFrequencyBand;->ChannelScoreDecayTable:[[F

    aget-object v0, v0, v3

    array-length v0, v0

    iget-object v1, p0, Landroid/net/wifi/ScoreFrequencyBand;->ChannelScoreDecayTable:[[F

    aget-object v1, v1, v2

    array-length v1, v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroid/net/wifi/ScoreFrequencyBand;->ScoreTable:[F

    array-length v0, v0

    if-ne v0, v2, :cond_2

    .line 39
    :goto_1
    return-void

    .line 22
    :cond_0
    if-gez p1, :cond_1

    iput v3, p0, Landroid/net/wifi/ScoreBase;->WEIGHT:I

    goto :goto_0

    .line 23
    :cond_1
    iput p1, p0, Landroid/net/wifi/ScoreBase;->WEIGHT:I

    goto :goto_0

    .line 34
    :cond_2
    new-array v0, v2, [F

    fill-array-data v0, :array_4

    iput-object v0, p0, Landroid/net/wifi/ScoreFrequencyBand;->ScoreTable:[F

    .line 35
    new-array v0, v6, [[F

    new-array v1, v4, [F

    fill-array-data v1, :array_5

    aput-object v1, v0, v3

    new-array v1, v4, [F

    fill-array-data v1, :array_6

    aput-object v1, v0, v5

    new-array v1, v4, [F

    fill-array-data v1, :array_7

    aput-object v1, v0, v2

    iput-object v0, p0, Landroid/net/wifi/ScoreFrequencyBand;->ChannelScoreDecayTable:[[F

    goto :goto_1

    .line 13
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 14
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0xcdt 0xcct 0x4ct 0x3ft
        0x9at 0x99t 0x19t 0x3ft
        0xcdt 0xcct 0xcct 0x3et
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
        0xcdt 0xcct 0x4ct 0x3ft
        0x33t 0x33t 0x33t 0x3ft
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x33t 0x33t 0x73t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
        0x9at 0x99t 0x59t 0x3ft
    .end array-data

    .line 34
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 35
    :array_5
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0xcdt 0xcct 0x4ct 0x3ft
        0x9at 0x99t 0x19t 0x3ft
        0xcdt 0xcct 0xcct 0x3et
    .end array-data

    :array_6
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
        0xcdt 0xcct 0x4ct 0x3ft
        0x33t 0x33t 0x33t 0x3ft
    .end array-data

    :array_7
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x33t 0x33t 0x73t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
        0x9at 0x99t 0x59t 0x3ft
    .end array-data
.end method

.method private getPopulationDecay(II)F
    .locals 1
    .parameter "population"
    .parameter "degree"

    .prologue
    .line 93
    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    const/4 p1, 0x3

    .line 94
    :cond_0
    const/4 v0, 0x2

    if-le p2, v0, :cond_1

    const/4 p2, 0x2

    .line 98
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/ScoreFrequencyBand;->ChannelScoreDecayTable:[[F

    aget-object v0, v0, p2

    aget v0, v0, p1

    return v0
.end method

.method private varargs getPopulationDecay([I)F
    .locals 3
    .parameter "ChannelPopulation"

    .prologue
    .line 80
    const/high16 v1, 0x3f80

    .line 82
    .local v1, ret:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 83
    aget v2, p1, v0

    invoke-direct {p0, v2, v0}, Landroid/net/wifi/ScoreFrequencyBand;->getPopulationDecay(II)F

    move-result v2

    mul-float/2addr v1, v2

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_0
    return v1
.end method

.method private loadConfig(Ljava/lang/String;)V
    .locals 13
    .parameter "config"

    .prologue
    .line 42
    if-nez p1, :cond_1

    .line 76
    :cond_0
    return-void

    .line 43
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_0

    .line 45
    const-string v11, "\\;"

    invoke-virtual {p1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 46
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

    .line 47
    .local v1, conf:Ljava/lang/String;
    const-string v11, "\\:"

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, data:[Ljava/lang/String;
    array-length v11, v3

    const/4 v12, 0x2

    if-eq v11, v12, :cond_3

    .line 46
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 50
    :cond_3
    const/4 v11, 0x1

    aget-object v11, v3, v11

    const-string v12, "\\,"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 51
    .local v10, values:[Ljava/lang/String;
    array-length v11, v10

    const/4 v12, 0x1

    if-lt v11, v12, :cond_2

    .line 53
    const/4 v5, 0x0

    .line 55
    .local v5, err:Z
    const/4 v11, 0x0

    aget-object v11, v3, v11

    const-string v12, "FrequencyBandScoreTable"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 56
    array-length v11, v10

    new-array v9, v11, [F

    .line 57
    .local v9, ret:[F
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    array-length v11, v10

    if-ge v6, v11, :cond_4

    .line 59
    :try_start_0
    aget-object v11, v10, v6

    invoke-static {v11}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    aput v11, v9, v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 60
    :catch_0
    move-exception v4

    .local v4, e:Ljava/lang/NumberFormatException;
    const/4 v5, 0x1

    .line 62
    .end local v4           #e:Ljava/lang/NumberFormatException;
    :cond_4
    if-nez v5, :cond_2

    iput-object v9, p0, Landroid/net/wifi/ScoreFrequencyBand;->ScoreTable:[F

    goto :goto_1

    .line 64
    .end local v6           #i:I
    .end local v9           #ret:[F
    :cond_5
    array-length v11, v10

    new-array v9, v11, [F

    .line 65
    .restart local v9       #ret:[F
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_3
    array-length v11, v10

    if-ge v6, v11, :cond_6

    .line 67
    :try_start_1
    aget-object v11, v10, v6

    invoke-static {v11}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    aput v11, v9, v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 65
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 68
    :catch_1
    move-exception v4

    .restart local v4       #e:Ljava/lang/NumberFormatException;
    const/4 v5, 0x1

    .line 70
    .end local v4           #e:Ljava/lang/NumberFormatException;
    :cond_6
    if-nez v5, :cond_2

    .line 71
    const/4 v11, 0x0

    aget-object v11, v3, v11

    const-string v12, "Channel0DecayTable"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v11, p0, Landroid/net/wifi/ScoreFrequencyBand;->ChannelScoreDecayTable:[[F

    const/4 v12, 0x0

    aput-object v9, v11, v12

    goto :goto_1

    .line 72
    :cond_7
    const/4 v11, 0x0

    aget-object v11, v3, v11

    const-string v12, "Channel1DecayTable"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, p0, Landroid/net/wifi/ScoreFrequencyBand;->ChannelScoreDecayTable:[[F

    const/4 v12, 0x1

    aput-object v9, v11, v12

    goto :goto_1

    .line 73
    :cond_8
    const/4 v11, 0x0

    aget-object v11, v3, v11

    const-string v12, "Channel2DecayTable"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Landroid/net/wifi/ScoreFrequencyBand;->ChannelScoreDecayTable:[[F

    const/4 v12, 0x2

    aput-object v9, v11, v12

    goto/16 :goto_1
.end method


# virtual methods
.method public varargs Score(I[I)I
    .locals 4
    .parameter "freq"
    .parameter "ChannelPopulation"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 106
    iget-object v1, p0, Landroid/net/wifi/ScoreFrequencyBand;->ScoreTable:[F

    aget v0, v1, v2

    .line 108
    .local v0, ret:F
    const/16 v1, 0x1388

    if-le p1, v1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/ScoreFrequencyBand;->ScoreTable:[F

    aget v0, v1, v3

    .line 112
    :cond_0
    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    invoke-direct {p0, p2}, Landroid/net/wifi/ScoreFrequencyBand;->getPopulationDecay([I)F

    move-result v1

    mul-float/2addr v0, v1

    .line 117
    :goto_0
    iget v1, p0, Landroid/net/wifi/ScoreBase;->WEIGHT:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 121
    float-to-int v1, v0

    return v1

    .line 113
    :cond_1
    new-array v1, v2, [I

    aget v2, p2, v3

    aput v2, v1, v3

    invoke-direct {p0, v1}, Landroid/net/wifi/ScoreFrequencyBand;->getPopulationDecay([I)F

    move-result v1

    mul-float/2addr v0, v1

    goto :goto_0
.end method
