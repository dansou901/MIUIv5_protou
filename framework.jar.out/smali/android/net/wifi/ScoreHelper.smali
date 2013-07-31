.class public Landroid/net/wifi/ScoreHelper;
.super Ljava/lang/Object;
.source "ScoreHelper.java"


# static fields
.field public static final CONFIG_FILE_PATH:Ljava/lang/String; = "/data/misc/wifi_scoreap.conf"

.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "ScoreHelper"

.field public static final TYPE_ACTIVEUSE:I = 0x4

.field public static final TYPE_DISCONNECTION:I = 0x3

.field public static final TYPE_FREQUENCY:I = 0x2

.field public static final TYPE_RSSI:I = 0x0

.field public static final TYPE_TX:I = 0x1


# instance fields
.field private CONFIGS:[Ljava/lang/String;

.field private WEIGHTS:[I

.field public m_APRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/APRecords;",
            ">;"
        }
    .end annotation
.end field

.field public m_ApChannelList:Landroid/util/SparseIntArray;

.field public m_ApScanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field public m_ScoreResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private m_WifiConfigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public scoreMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/ScoreChart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/APRecords;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, scanResult:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .local p2, apRecords:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/APRecords;>;"
    const/4 v5, 0x5

    const/4 v7, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-array v4, v5, [I

    fill-array-data v4, :array_0

    iput-object v4, p0, Landroid/net/wifi/ScoreHelper;->WEIGHTS:[I

    .line 29
    new-array v4, v5, [Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v9

    const-string v5, ""

    aput-object v5, v4, v10

    const/4 v5, 0x2

    const-string v6, ""

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, ""

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, ""

    aput-object v6, v4, v5

    iput-object v4, p0, Landroid/net/wifi/ScoreHelper;->CONFIGS:[Ljava/lang/String;

    .line 31
    iput-object v7, p0, Landroid/net/wifi/ScoreHelper;->m_ApScanList:Ljava/util/List;

    .line 32
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, p0, Landroid/net/wifi/ScoreHelper;->m_ApChannelList:Landroid/util/SparseIntArray;

    .line 33
    iput-object v7, p0, Landroid/net/wifi/ScoreHelper;->m_ScoreResult:Ljava/util/List;

    .line 34
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Landroid/net/wifi/ScoreHelper;->scoreMap:Ljava/util/HashMap;

    .line 36
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/net/wifi/ScoreHelper;->m_WifiConfigList:Ljava/util/List;

    .line 62
    iput-object v7, p0, Landroid/net/wifi/ScoreHelper;->m_APRecords:Ljava/util/List;

    .line 77
    invoke-direct {p0}, Landroid/net/wifi/ScoreHelper;->readConfigFile()Z

    .line 79
    iput-object p1, p0, Landroid/net/wifi/ScoreHelper;->m_ApScanList:Ljava/util/List;

    .line 80
    iput-object p2, p0, Landroid/net/wifi/ScoreHelper;->m_APRecords:Ljava/util/List;

    .line 82
    iget-object v4, p0, Landroid/net/wifi/ScoreHelper;->m_ApScanList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 83
    .local v3, result:Landroid/net/wifi/ScanResult;
    iget v4, v3, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v4}, Landroid/net/wifi/ScoreConstants;->getWifiChannelNumber(I)I

    move-result v0

    .line 84
    .local v0, channel:I
    iget-object v4, p0, Landroid/net/wifi/ScoreHelper;->m_ApChannelList:Landroid/util/SparseIntArray;

    iget-object v5, p0, Landroid/net/wifi/ScoreHelper;->m_ApChannelList:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v0, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 87
    .end local v0           #channel:I
    .end local v3           #result:Landroid/net/wifi/ScanResult;
    :cond_0
    iget-object v4, p0, Landroid/net/wifi/ScoreHelper;->m_APRecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/APRecords;

    .line 88
    .local v2, record:Landroid/net/wifi/APRecords;
    const-string v4, "ScoreHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " + APRecords: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%32s"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/net/wifi/APRecords;->getSSID()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/wifi/APRecords;->getBSSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Rssi: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%4s"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/net/wifi/APRecords;->getRSSI()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Freq: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%4s"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/net/wifi/APRecords;->getFREQ()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", DisR: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%35s"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/net/wifi/APRecords;->getDisconnectedReason()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ExRSSI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%3s"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/net/wifi/APRecords;->getExtremeRSSI()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ExTX: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%3s"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/net/wifi/APRecords;->getExtremeTXRATE()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", NeTX: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%3s"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/net/wifi/APRecords;->getTXRATE()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 101
    .end local v2           #record:Landroid/net/wifi/APRecords;
    :cond_1
    return-void

    .line 28
    :array_0
    .array-data 0x4
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private computeScoreActiveUse(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "ssid"
    .parameter "bssid"

    .prologue
    const/4 v3, 0x4

    .line 178
    new-instance v0, Landroid/net/wifi/ScoreActiveUse;

    iget-object v1, p0, Landroid/net/wifi/ScoreHelper;->WEIGHTS:[I

    aget v1, v1, v3

    iget-object v2, p0, Landroid/net/wifi/ScoreHelper;->CONFIGS:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/ScoreActiveUse;-><init>(ILjava/lang/String;)V

    .line 179
    .local v0, score:Landroid/net/wifi/ScoreActiveUse;
    invoke-virtual {p0, p2}, Landroid/net/wifi/ScoreHelper;->getMatchingAPRecords(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/ScoreBase;->m_APRecords:Ljava/util/List;

    .line 181
    iget-object v1, p0, Landroid/net/wifi/ScoreHelper;->m_WifiConfigList:Ljava/util/List;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/ScoreActiveUse;->Score(Ljava/lang/String;Ljava/util/List;)I

    move-result v1

    return v1
.end method

.method private computeScoreDisconnection(Ljava/lang/String;)I
    .locals 4
    .parameter "bssid"

    .prologue
    const/4 v3, 0x3

    .line 185
    new-instance v0, Landroid/net/wifi/ScoreDisconnection;

    iget-object v1, p0, Landroid/net/wifi/ScoreHelper;->WEIGHTS:[I

    aget v1, v1, v3

    iget-object v2, p0, Landroid/net/wifi/ScoreHelper;->CONFIGS:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/ScoreDisconnection;-><init>(ILjava/lang/String;)V

    .line 186
    .local v0, score:Landroid/net/wifi/ScoreDisconnection;
    invoke-virtual {p0, p1}, Landroid/net/wifi/ScoreHelper;->getMatchingAPRecords(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/ScoreBase;->m_APRecords:Ljava/util/List;

    .line 188
    invoke-virtual {v0}, Landroid/net/wifi/ScoreDisconnection;->Score()I

    move-result v1

    return v1
.end method

.method private computeScoreFrequencyBand(Ljava/lang/String;I)I
    .locals 12
    .parameter "bssid"
    .parameter "freq"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 204
    invoke-static {p2}, Landroid/net/wifi/ScoreConstants;->getWifiChannelNumber(I)I

    move-result v1

    .line 206
    .local v1, channel:I
    iget-object v4, p0, Landroid/net/wifi/ScoreHelper;->m_ApChannelList:Landroid/util/SparseIntArray;

    add-int/lit8 v5, v1, -0x2

    invoke-virtual {v4, v5, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    iget-object v5, p0, Landroid/net/wifi/ScoreHelper;->m_ApChannelList:Landroid/util/SparseIntArray;

    add-int/lit8 v6, v1, 0x2

    invoke-virtual {v5, v6, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    add-int v3, v4, v5

    .line 207
    .local v3, upper:I
    iget-object v4, p0, Landroid/net/wifi/ScoreHelper;->m_ApChannelList:Landroid/util/SparseIntArray;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    iget-object v5, p0, Landroid/net/wifi/ScoreHelper;->m_ApChannelList:Landroid/util/SparseIntArray;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    add-int v2, v4, v5

    .line 208
    .local v2, lower:I
    iget-object v4, p0, Landroid/net/wifi/ScoreHelper;->m_ApChannelList:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 209
    .local v0, center:I
    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 211
    :cond_0
    const-string v4, "ScoreHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " + ChannelPopulation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", freq: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", channel: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%3s"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", population: center = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%2s"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", offset1 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%2s"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", offset2 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%2s"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v4, Landroid/net/wifi/ScoreFrequencyBand;

    iget-object v5, p0, Landroid/net/wifi/ScoreHelper;->WEIGHTS:[I

    aget v5, v5, v11

    iget-object v6, p0, Landroid/net/wifi/ScoreHelper;->CONFIGS:[Ljava/lang/String;

    aget-object v6, v6, v11

    invoke-direct {v4, v5, v6}, Landroid/net/wifi/ScoreFrequencyBand;-><init>(ILjava/lang/String;)V

    const/4 v5, 0x3

    new-array v5, v5, [I

    aput v0, v5, v9

    aput v2, v5, v10

    aput v3, v5, v11

    invoke-virtual {v4, p2, v5}, Landroid/net/wifi/ScoreFrequencyBand;->Score(I[I)I

    move-result v4

    return v4
.end method

.method private computeScoreRssi(II)I
    .locals 4
    .parameter "freq"
    .parameter "rssi"

    .prologue
    const/4 v3, 0x0

    .line 192
    new-instance v0, Landroid/net/wifi/ScoreRSSI;

    iget-object v1, p0, Landroid/net/wifi/ScoreHelper;->WEIGHTS:[I

    aget v1, v1, v3

    iget-object v2, p0, Landroid/net/wifi/ScoreHelper;->CONFIGS:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/ScoreRSSI;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/ScoreRSSI;->Score(II)I

    move-result v0

    return v0
.end method

.method private computeScoreTx(Ljava/lang/String;I)I
    .locals 4
    .parameter "bssid"
    .parameter "rssi"

    .prologue
    const/4 v3, 0x1

    .line 196
    new-instance v0, Landroid/net/wifi/ScoreTx;

    iget-object v1, p0, Landroid/net/wifi/ScoreHelper;->WEIGHTS:[I

    aget v1, v1, v3

    iget-object v2, p0, Landroid/net/wifi/ScoreHelper;->CONFIGS:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/ScoreTx;-><init>(ILjava/lang/String;)V

    .line 197
    .local v0, score:Landroid/net/wifi/ScoreTx;
    invoke-virtual {p0, p1}, Landroid/net/wifi/ScoreHelper;->getMatchingAPRecords(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/ScoreBase;->m_APRecords:Ljava/util/List;

    .line 199
    invoke-virtual {v0, p2}, Landroid/net/wifi/ScoreTx;->Score(I)I

    move-result v1

    return v1
.end method

.method private readConfigFile()Z
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 256
    const-string v9, "ScoreHelper"

    const-string v10, " + readConfigFile"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v6, 0x0

    .line 258
    .local v6, result:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 259
    .local v1, in:Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 260
    .local v4, reader:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 263
    .local v3, line:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    const-string v9, "/data/misc/wifi_scoreap.conf"

    invoke-direct {v2, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a

    .line 264
    .end local v1           #in:Ljava/io/FileInputStream;
    .local v2, in:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b

    .line 265
    .end local v4           #reader:Ljava/io/BufferedReader;
    .local v5, reader:Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 266
    const-string v9, "ScoreHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " + config line read: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const-string v9, "\\="

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 270
    const-string v9, "ScoreHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " + config line length: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    array-length v9, v6

    const/4 v10, 0x2

    if-eq v9, v10, :cond_2

    .line 273
    const-string v9, "ScoreHelper"

    const-string v10, " + Invalid config line. Moving on..."

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 287
    :catch_0
    move-exception v0

    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    move-object v1, v2

    .line 288
    .end local v2           #in:Ljava/io/FileInputStream;
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v1       #in:Ljava/io/FileInputStream;
    :goto_1
    :try_start_3
    const-string v9, "ScoreHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " + FileNotFoundException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 292
    if-eqz v1, :cond_0

    .line 293
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 296
    :cond_0
    if-eqz v4, :cond_1

    .line 297
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_1
    :goto_2
    move v7, v8

    .line 301
    :goto_3
    return v7

    .line 276
    .end local v1           #in:Ljava/io/FileInputStream;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/FileInputStream;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :cond_2
    const/4 v9, 0x0

    :try_start_6
    aget-object v9, v6, v9

    const-string v10, "WEIGHT_"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 277
    const/4 v9, 0x0

    aget-object v9, v6, v9

    const/4 v10, 0x1

    aget-object v10, v6, v10

    invoke-direct {p0, v9, v10}, Landroid/net/wifi/ScoreHelper;->readConfigWeight(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 289
    :catch_1
    move-exception v0

    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    move-object v1, v2

    .line 290
    .end local v2           #in:Ljava/io/FileInputStream;
    .local v0, e:Ljava/io/IOException;
    .restart local v1       #in:Ljava/io/FileInputStream;
    :goto_4
    :try_start_7
    const-string v9, "ScoreHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " + IOException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 292
    if-eqz v1, :cond_3

    .line 293
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 296
    :cond_3
    if-eqz v4, :cond_1

    .line 297
    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_2

    .line 298
    :catch_2
    move-exception v0

    :goto_5
    goto :goto_3

    .line 279
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #in:Ljava/io/FileInputStream;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/FileInputStream;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :cond_4
    const/4 v9, 0x0

    :try_start_a
    aget-object v9, v6, v9

    const-string v10, "CONFIG_"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 280
    const/4 v9, 0x0

    aget-object v9, v6, v9

    const/4 v10, 0x1

    aget-object v10, v6, v10

    invoke-direct {p0, v9, v10}, Landroid/net/wifi/ScoreHelper;->readConfigs(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_0

    .line 292
    :catchall_0
    move-exception v8

    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    :goto_6
    if-eqz v1, :cond_5

    .line 293
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 296
    :cond_5
    if-eqz v4, :cond_6

    .line 297
    :try_start_c
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 292
    :cond_6
    throw v8

    .line 283
    .end local v1           #in:Ljava/io/FileInputStream;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/FileInputStream;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :cond_7
    :try_start_d
    const-string v9, "ScoreHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " + Invalid config: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v11, v6, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", data: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v6, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1

    goto/16 :goto_0

    .line 292
    :cond_8
    if-eqz v2, :cond_9

    .line 293
    :try_start_e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    .line 296
    :cond_9
    if-eqz v5, :cond_a

    .line 297
    :try_start_f
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    :cond_a
    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    move-object v1, v2

    .line 300
    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto/16 :goto_2

    .line 294
    :catch_3
    move-exception v0

    .restart local v0       #e:Ljava/io/IOException;
    :goto_7
    goto/16 :goto_3

    .line 298
    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v0

    goto :goto_5

    .line 294
    .local v0, e:Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v0

    goto :goto_7

    .line 298
    :catch_6
    move-exception v0

    goto :goto_5

    .line 294
    .local v0, e:Ljava/io/IOException;
    :catch_7
    move-exception v0

    goto :goto_7

    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #in:Ljava/io/FileInputStream;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/FileInputStream;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :catch_8
    move-exception v0

    .restart local v0       #e:Ljava/io/IOException;
    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto/16 :goto_3

    .line 298
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #in:Ljava/io/FileInputStream;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/FileInputStream;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :catch_9
    move-exception v0

    .restart local v0       #e:Ljava/io/IOException;
    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto/16 :goto_3

    .line 292
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v8

    goto :goto_6

    .end local v1           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v8

    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_6

    .line 289
    :catch_a
    move-exception v0

    goto/16 :goto_4

    .end local v1           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    :catch_b
    move-exception v0

    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 287
    :catch_c
    move-exception v0

    goto/16 :goto_1

    .end local v1           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    :catch_d
    move-exception v0

    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method private readConfigWeight(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .parameter "config"

    .prologue
    .line 232
    const-string v1, "WEIGHT_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    const/4 v0, 0x0

    .line 236
    .local v0, ret:I
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 240
    :goto_1
    if-ltz v0, :cond_0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    .line 242
    const-string v1, "WEIGHT_RSSI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 243
    iget-object v1, p0, Landroid/net/wifi/ScoreHelper;->WEIGHTS:[I

    const/4 v2, 0x0

    aput v0, v1, v2

    goto :goto_0

    .line 244
    :cond_2
    const-string v1, "WEIGHT_TX"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 245
    iget-object v1, p0, Landroid/net/wifi/ScoreHelper;->WEIGHTS:[I

    const/4 v2, 0x1

    aput v0, v1, v2

    goto :goto_0

    .line 246
    :cond_3
    const-string v1, "WEIGHT_FREQUENCY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 247
    iget-object v1, p0, Landroid/net/wifi/ScoreHelper;->WEIGHTS:[I

    const/4 v2, 0x2

    aput v0, v1, v2

    goto :goto_0

    .line 248
    :cond_4
    const-string v1, "WEIGHT_DISCONNECTION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 249
    iget-object v1, p0, Landroid/net/wifi/ScoreHelper;->WEIGHTS:[I

    const/4 v2, 0x3

    aput v0, v1, v2

    goto :goto_0

    .line 250
    :cond_5
    const-string v1, "WEIGHT_ACTIVEUSE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Landroid/net/wifi/ScoreHelper;->WEIGHTS:[I

    const/4 v2, 0x4

    aput v0, v1, v2

    goto :goto_0

    .line 238
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private readConfigs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "name"
    .parameter "config"

    .prologue
    .line 217
    const-string v0, "CONFIG_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    const-string v0, "CONFIG_RSSI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/wifi/ScoreHelper;->CONFIGS:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    goto :goto_0

    .line 221
    :cond_2
    const-string v0, "CONFIG_TX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/wifi/ScoreHelper;->CONFIGS:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    goto :goto_0

    .line 223
    :cond_3
    const-string v0, "CONFIG_FREQUENCY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/wifi/ScoreHelper;->CONFIGS:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    goto :goto_0

    .line 225
    :cond_4
    const-string v0, "CONFIG_DISCONNECTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 226
    iget-object v0, p0, Landroid/net/wifi/ScoreHelper;->CONFIGS:[Ljava/lang/String;

    const/4 v1, 0x3

    aput-object p2, v0, v1

    goto/16 :goto_0

    .line 227
    :cond_5
    const-string v0, "CONFIG_ACTIVEUSE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Landroid/net/wifi/ScoreHelper;->CONFIGS:[Ljava/lang/String;

    const/4 v1, 0x4

    aput-object p2, v0, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public computeScore()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 116
    iget-object v3, p0, Landroid/net/wifi/ScoreHelper;->m_ApScanList:Ljava/util/List;

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 174
    :goto_0
    return-object v3

    .line 117
    :cond_0
    iget-object v3, p0, Landroid/net/wifi/ScoreHelper;->m_ApScanList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 119
    :cond_1
    iget-object v3, p0, Landroid/net/wifi/ScoreHelper;->scoreMap:Ljava/util/HashMap;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/net/wifi/ScoreHelper;->scoreMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 121
    :cond_2
    iget-object v3, p0, Landroid/net/wifi/ScoreHelper;->m_ApScanList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 123
    .local v1, result:Landroid/net/wifi/ScanResult;
    new-instance v2, Landroid/net/wifi/ScoreChart;

    invoke-direct {v2}, Landroid/net/wifi/ScoreChart;-><init>()V

    .line 124
    .local v2, score:Landroid/net/wifi/ScoreChart;
    iget-object v3, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v3, v2, Landroid/net/wifi/ScoreChart;->ssid:Ljava/lang/String;

    .line 125
    iget-object v3, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v3, v2, Landroid/net/wifi/ScoreChart;->bssid:Ljava/lang/String;

    .line 126
    iget v3, v1, Landroid/net/wifi/ScanResult;->frequency:I

    iget v4, v1, Landroid/net/wifi/ScanResult;->level:I

    invoke-direct {p0, v3, v4}, Landroid/net/wifi/ScoreHelper;->computeScoreRssi(II)I

    move-result v3

    iput v3, v2, Landroid/net/wifi/ScoreChart;->score_rssi:I

    .line 127
    iget-object v3, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget v4, v1, Landroid/net/wifi/ScanResult;->level:I

    invoke-direct {p0, v3, v4}, Landroid/net/wifi/ScoreHelper;->computeScoreTx(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/net/wifi/ScoreChart;->score_tx:I

    .line 128
    iget-object v3, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget v4, v1, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-direct {p0, v3, v4}, Landroid/net/wifi/ScoreHelper;->computeScoreFrequencyBand(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/net/wifi/ScoreChart;->score_frequency:I

    .line 129
    iget-object v3, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/net/wifi/ScoreHelper;->computeScoreDisconnection(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/net/wifi/ScoreChart;->score_disconnect:I

    .line 130
    iget-object v3, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Landroid/net/wifi/ScoreHelper;->computeScoreActiveUse(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/net/wifi/ScoreChart;->score_activeuse:I

    .line 132
    iget-object v3, p0, Landroid/net/wifi/ScoreHelper;->scoreMap:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 135
    .end local v1           #result:Landroid/net/wifi/ScanResult;
    .end local v2           #score:Landroid/net/wifi/ScoreChart;
    :cond_3
    iget-object v3, p0, Landroid/net/wifi/ScoreHelper;->m_ApScanList:Ljava/util/List;

    new-instance v4, Landroid/net/wifi/ScoreHelper$2;

    invoke-direct {v4, p0}, Landroid/net/wifi/ScoreHelper$2;-><init>(Landroid/net/wifi/ScoreHelper;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 158
    iget-object v3, p0, Landroid/net/wifi/ScoreHelper;->m_ApScanList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 159
    .restart local v1       #result:Landroid/net/wifi/ScanResult;
    const-string v4, "ScoreHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " + ScoreResult: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%3s"

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v3, p0, Landroid/net/wifi/ScoreHelper;->scoreMap:Ljava/util/HashMap;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScoreChart;

    invoke-virtual {v3}, Landroid/net/wifi/ScoreChart;->Score()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", AP: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%32s"

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", Rssi: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%2s"

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v3, p0, Landroid/net/wifi/ScoreHelper;->scoreMap:Ljava/util/HashMap;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScoreChart;

    iget v3, v3, Landroid/net/wifi/ScoreChart;->score_rssi:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v1, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", Tx: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%2s"

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v3, p0, Landroid/net/wifi/ScoreHelper;->scoreMap:Ljava/util/HashMap;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScoreChart;

    iget v3, v3, Landroid/net/wifi/ScoreChart;->score_tx:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", Freq: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%2s"

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v3, p0, Landroid/net/wifi/ScoreHelper;->scoreMap:Ljava/util/HashMap;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScoreChart;

    iget v3, v3, Landroid/net/wifi/ScoreChart;->score_frequency:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v1, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", Disconn: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%2s"

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v3, p0, Landroid/net/wifi/ScoreHelper;->scoreMap:Ljava/util/HashMap;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScoreChart;

    iget v3, v3, Landroid/net/wifi/ScoreChart;->score_disconnect:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", Last Used: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%2s"

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v3, p0, Landroid/net/wifi/ScoreHelper;->scoreMap:Ljava/util/HashMap;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScoreChart;

    iget v3, v3, Landroid/net/wifi/ScoreChart;->score_activeuse:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 171
    .end local v1           #result:Landroid/net/wifi/ScanResult;
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/net/wifi/ScoreHelper;->m_ScoreResult:Ljava/util/List;

    .line 172
    iget-object v3, p0, Landroid/net/wifi/ScoreHelper;->m_ScoreResult:Ljava/util/List;

    iget-object v4, p0, Landroid/net/wifi/ScoreHelper;->m_ApScanList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 174
    iget-object v3, p0, Landroid/net/wifi/ScoreHelper;->m_ApScanList:Ljava/util/List;

    goto/16 :goto_0
.end method

.method public computeScore(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "ssid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v3, p0, Landroid/net/wifi/ScoreHelper;->m_ScoreResult:Ljava/util/List;

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/ScoreHelper;->computeScore()Ljava/util/List;

    .line 106
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-object v3, p0, Landroid/net/wifi/ScoreHelper;->m_ScoreResult:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 108
    .local v2, result:Landroid/net/wifi/ScanResult;
    iget-object v3, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    .end local v2           #result:Landroid/net/wifi/ScanResult;
    :cond_2
    const-string v3, "ScoreHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " + computeScore("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-object v1
.end method

.method public getMatchingAPRecords(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter "bssid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/APRecords;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/APRecords;>;"
    iget-object v3, p0, Landroid/net/wifi/ScoreHelper;->m_APRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/APRecords;

    .line 68
    .local v2, record:Landroid/net/wifi/APRecords;
    invoke-virtual {v2}, Landroid/net/wifi/APRecords;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    .end local v2           #record:Landroid/net/wifi/APRecords;
    :cond_1
    return-object v1
.end method

.method public setWifiConfigurationList(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez p1, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Landroid/net/wifi/ScoreHelper;->m_WifiConfigList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 43
    iget-object v0, p0, Landroid/net/wifi/ScoreHelper;->m_WifiConfigList:Ljava/util/List;

    new-instance v1, Landroid/net/wifi/ScoreHelper$1;

    invoke-direct {v1, p0}, Landroid/net/wifi/ScoreHelper$1;-><init>(Landroid/net/wifi/ScoreHelper;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 51
    const-string v0, "ScoreHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " + WifiConfigList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/ScoreHelper;->m_WifiConfigList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
