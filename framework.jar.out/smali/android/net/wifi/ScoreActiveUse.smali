.class public Landroid/net/wifi/ScoreActiveUse;
.super Landroid/net/wifi/ScoreBase;
.source "ScoreActiveUse.java"


# instance fields
.field private ScoreTable:[F


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 3
    .parameter "weight"
    .parameter "config"

    .prologue
    const/16 v2, 0x64

    const/4 v1, 0x4

    .line 9
    invoke-direct {p0}, Landroid/net/wifi/ScoreBase;-><init>()V

    .line 7
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/net/wifi/ScoreActiveUse;->ScoreTable:[F

    .line 10
    if-le p1, v2, :cond_0

    iput v2, p0, Landroid/net/wifi/ScoreBase;->WEIGHT:I

    .line 14
    :goto_0
    invoke-direct {p0, p2}, Landroid/net/wifi/ScoreActiveUse;->loadConfig(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Landroid/net/wifi/ScoreActiveUse;->ScoreTable:[F

    if-eqz v0, :cond_2

    .line 17
    iget-object v0, p0, Landroid/net/wifi/ScoreActiveUse;->ScoreTable:[F

    array-length v0, v0

    if-lez v0, :cond_2

    .line 21
    :goto_1
    return-void

    .line 11
    :cond_0
    if-gez p1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/ScoreBase;->WEIGHT:I

    goto :goto_0

    .line 12
    :cond_1
    iput p1, p0, Landroid/net/wifi/ScoreBase;->WEIGHT:I

    goto :goto_0

    .line 20
    :cond_2
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/net/wifi/ScoreActiveUse;->ScoreTable:[F

    goto :goto_1

    .line 7
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x33t 0x33t 0x33t 0x3ft
        0xcdt 0xcct 0xcct 0x3et
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 20
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x33t 0x33t 0x33t 0x3ft
        0xcdt 0xcct 0xcct 0x3et
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private loadConfig(Ljava/lang/String;)V
    .locals 6
    .parameter "config"

    .prologue
    .line 24
    if-nez p1, :cond_1

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 25
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 27
    const-string v4, "\\,"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 28
    .local v3, values:[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x1

    if-lt v4, v5, :cond_0

    .line 30
    array-length v4, v3

    new-array v2, v4, [F

    .line 31
    .local v2, ret:[F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 33
    :try_start_0
    aget-object v4, v3, v1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 34
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 37
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_2
    iput-object v2, p0, Landroid/net/wifi/ScoreActiveUse;->ScoreTable:[F

    goto :goto_0
.end method


# virtual methods
.method public Score(Ljava/lang/String;Ljava/util/List;)I
    .locals 5
    .parameter "ssid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v2, p0, Landroid/net/wifi/ScoreActiveUse;->ScoreTable:[F

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .line 44
    .local v1, ret:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Landroid/net/wifi/ScoreActiveUse;->ScoreTable:[F

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 45
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    if-ge v2, v3, :cond_1

    .line 49
    :cond_0
    :goto_1
    iget-object v2, p0, Landroid/net/wifi/ScoreActiveUse;->ScoreTable:[F

    aget v2, v2, v1

    iget v3, p0, Landroid/net/wifi/ScoreBase;->WEIGHT:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 51
    return v1

    .line 46
    :cond_1
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v3, "\""

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v0

    goto :goto_1

    .line 44
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
