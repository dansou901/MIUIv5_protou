.class public Landroid/net/wifi/ScoreDisconnection;
.super Landroid/net/wifi/ScoreBase;
.source "ScoreDisconnection.java"


# static fields
.field private static final SCORE_DEFAULT:I = 0x3

.field private static final SCORE_DRIVER:I = 0x3

.field private static final SCORE_DRIVER_LOST:I = 0x4

.field private static final SCORE_USER_FORGET:I = 0x0

.field private static final SCORE_USER_SWITCH:I = 0x1

.field private static final SCORE_USER_TERMINATE:I = 0x2


# instance fields
.field private ScoreTable:[I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 3
    .parameter "weight"
    .parameter "config"

    .prologue
    const/16 v2, 0x64

    const/4 v1, 0x5

    invoke-direct {p0}, Landroid/net/wifi/ScoreBase;-><init>()V

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/net/wifi/ScoreDisconnection;->ScoreTable:[I

    if-le p1, v2, :cond_0

    iput v2, p0, Landroid/net/wifi/ScoreBase;->WEIGHT:I

    :goto_0
    invoke-direct {p0, p2}, Landroid/net/wifi/ScoreDisconnection;->loadConfig(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/ScoreDisconnection;->ScoreTable:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/net/wifi/ScoreDisconnection;->ScoreTable:[I

    array-length v0, v0

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
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/net/wifi/ScoreDisconnection;->ScoreTable:[I

    goto :goto_1

    nop

    :array_0
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private loadConfig(Ljava/lang/String;)V
    .locals 6
    .parameter "config"

    .prologue
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "\\,"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, values:[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x1

    if-lt v4, v5, :cond_0

    array-length v4, v3

    new-array v2, v4, [I

    .local v2, ret:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_2

    :try_start_0
    aget-object v4, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0

    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_2
    iput-object v2, p0, Landroid/net/wifi/ScoreDisconnection;->ScoreTable:[I

    goto :goto_0
.end method


# virtual methods
.method public Score()I
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    iget-object v2, p0, Landroid/net/wifi/ScoreDisconnection;->ScoreTable:[I

    aget v2, v2, v5

    int-to-float v1, v2

    .local v1, ret:F
    iget-object v2, p0, Landroid/net/wifi/ScoreBase;->m_APRecords:Ljava/util/List;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/net/wifi/ScoreDisconnection;->ScoreTable:[I

    iget-object v3, p0, Landroid/net/wifi/ScoreDisconnection;->ScoreTable:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    int-to-float v2, v2

    div-float v2, v1, v2

    iget v3, p0, Landroid/net/wifi/ScoreBase;->WEIGHT:I

    int-to-float v3, v3

    mul-float v1, v2, v3

    float-to-int v2, v1

    return v2

    :cond_1
    iget-object v2, p0, Landroid/net/wifi/ScoreBase;->m_APRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/ScoreBase;->m_APRecords:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/APRecords;

    invoke-virtual {v2}, Landroid/net/wifi/APRecords;->getDisconnectedReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, reason:Ljava/lang/String;
    const-string v2, "By USER (change SSID)"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/ScoreDisconnection;->ScoreTable:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v1, v2

    goto :goto_0

    :cond_2
    const-string v2, "By USER (forget network)"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/net/wifi/ScoreDisconnection;->ScoreTable:[I

    aget v2, v2, v4

    int-to-float v1, v2

    goto :goto_0

    :cond_3
    const-string v2, "By DRIVER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/net/wifi/ScoreDisconnection;->ScoreTable:[I

    aget v2, v2, v5

    int-to-float v1, v2

    goto :goto_0

    :cond_4
    const-string v2, "By DRIVER (beacon lost, switch AP)"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/net/wifi/ScoreDisconnection;->ScoreTable:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    int-to-float v1, v2

    goto :goto_0

    :cond_5
    const-string v2, "By USER (terminate, hotspot, airplane mode)"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/wifi/ScoreDisconnection;->ScoreTable:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    int-to-float v1, v2

    goto/16 :goto_0
.end method
