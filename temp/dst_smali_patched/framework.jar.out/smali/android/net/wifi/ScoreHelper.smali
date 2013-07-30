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
    .locals 8
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
    const/4 v4, 0x5

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    iput-object v3, p0, Landroid/net/wifi/ScoreHelper;->WEIGHTS:[I

    new-array v3, v4, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v7

    const/4 v4, 0x1

    const-string v5, ""

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, ""

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, ""

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, ""

    aput-object v5, v3, v4

    iput-object v3, p0, Landroid/net/wifi/ScoreHelper;->CONFIGS:[Ljava/lang/String;

    iput-object v6, p0, Landroid/net/wifi/ScoreHelper;->m_ApScanList:Ljava/util/List;

    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, p0, Landroid/net/wifi/ScoreHelper;->m_ApChannelList:Landroid/util/SparseIntArray;

    iput-object v6, p0, Landroid/net/wifi/ScoreHelper;->m_ScoreResult:Ljava/util/List;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/net/wifi/ScoreHelper;->scoreMap:Ljava/util/HashMap;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/net/wifi/ScoreHelper;->m_WifiConfigList:Ljava/util/List;

    iput-object v6, p0, Landroid/net/wifi/ScoreHelper;->m_APRecords:Ljava/util/List;

    invoke-direct {p0}, Landroid/net/wifi/ScoreHelper;->readConfigFile()Z

    iput-object p1, p0, Landroid/net/wifi/ScoreHelper;->m_ApScanList:Ljava/util/List;

    iput-object p2, p0, Landroid/net/wifi/ScoreHelper;->m_APRecords:Ljava/util/List;

    iget-object v3, p0, Landroid/net/wifi/ScoreHelper;->m_ApScanList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .local v2, result:Landroid/net/wifi/ScanResult;
    iget v3, v2, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v3}, Landroid/net/wifi/ScoreConstants;->getWifiChannelNumber(I)I

    move-result v0

    .local v0, channel:I
    iget-object v3, p0, Landroid/net/wifi/ScoreHelper;->m_ApChannelList:Landroid/util/SparseIntArray;

    iget-object v4, p0, Landroid/net/wifi/ScoreHelper;->m_ApChannelList:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .end local v0           #channel:I
    .end local v2           #result:Landroid/net/wifi/ScanResult;
    :cond_0
    return-void

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

    new-instance v0, Landroid/net/wifi/ScoreActiveUse;

    iget-object v1, p0, Landroid/net/wifi/ScoreHelper;->WEIGHTS:[I

    aget v1, v1, v3

    iget-object v2, p0, Landroid/net/wifi/ScoreHelper;->CONFIGS:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/ScoreActiveUse;-><init>(ILjava/lang/String;)V

    .local v0, score:Landroid/net/wifi/ScoreActiveUse;
    invoke-virtual {p0, p2}, Landroid/net/wifi/ScoreHelper;->getMatchingAPRecords(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/ScoreBase;->m_APRecords:Ljava/util/List;

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

    new-instance v0, Landroid/net/wifi/ScoreDisconnection;

    iget-object v1, p0, Landroid/net/wifi/ScoreHelper;->WEIGHTS:[I

    aget v1, v1, v3

    iget-object v2, p0, Landroid/net/wifi/ScoreHelper;->CONFIGS:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/ScoreDisconnection;-><init>(ILjava/lang/String;)V

    .local v0, score:Landroid/net/wifi/ScoreDisconnection;
    invoke-virtual {p0, p1}, Landroid/net/wifi/ScoreHelper;->getMatchingAPRecords(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/ScoreBase;->m_APRecords:Ljava/util/List;

    invoke-virtual {v0}, Landroid/net/wifi/ScoreDisconnection;->Score()I

    move-result v1

    return v1
.end method

.method private computeScoreFrequencyBand(Ljava/lang/String;I)I
    .locals 9
    .parameter "bssid"
    .parameter "freq"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    invoke-static {p2}, Landroid/net/wifi/ScoreConstants;->getWifiChannelNumber(I)I

    move-result v1

    .local v1, channel:I
    iget-object v4, p0, Landroid/net/wifi/ScoreHelper;->m_ApChannelList:Landroid/util/SparseIntArray;

    add-int/lit8 v5, v1, -0x2

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    iget-object v5, p0, Landroid/net/wifi/ScoreHelper;->m_ApChannelList:Landroid/util/SparseIntArray;

    add-int/lit8 v6, v1, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    add-int v3, v4, v5

    .local v3, upper:I
    iget-object v4, p0, Landroid/net/wifi/ScoreHelper;->m_ApChannelList:Landroid/util/SparseIntArray;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    iget-object v5, p0, Landroid/net/wifi/ScoreHelper;->m_ApChannelList:Landroid/util/SparseIntArray;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    add-int v2, v4, v5

    .local v2, lower:I
    iget-object v4, p0, Landroid/net/wifi/ScoreHelper;->m_ApChannelList:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .local v0, center:I
    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    new-instance v4, Landroid/net/wifi/ScoreFrequencyBand;

    iget-object v5, p0, Landroid/net/wifi/ScoreHelper;->WEIGHTS:[I

    aget v5, v5, v8

    iget-object v6, p0, Landroid/net/wifi/ScoreHelper;->CONFIGS:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-direct {v4, v5, v6}, Landroid/net/wifi/ScoreFrequencyBand;-><init>(ILjava/lang/String;)V

    const/4 v5, 0x3

    new-array v5, v5, [I

    aput v0, v5, v7

    const/4 v6, 0x1

    aput v2, v5, v6

    aput v3, v5, v8

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

    new-instance v0, Landroid/net/wifi/ScoreTx;

    iget-object v1, p0, Landroid/net/wifi/ScoreHelper;->WEIGHTS:[I

    aget v1, v1, v3

    iget-object v2, p0, Landroid/net/wifi/ScoreHelper;->CONFIGS:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/ScoreTx;-><init>(ILjava/lang/String;)V

    .local v0, score:Landroid/net/wifi/ScoreTx;
    invoke-virtual {p0, p1}, Landroid/net/wifi/ScoreHelper;->getMatchingAPRecords(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/ScoreBase;->m_APRecords:Ljava/util/List;

    invoke-virtual {v0, p2}, Landroid/net/wifi/ScoreTx;->Score(I)I

    move-result v1

    return v1
.end method

.method private readConfigFile()Z
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v9, "ScoreHelper"

    const-string v10, " + readConfigFile"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    .local v6, result:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, in:Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .local v4, reader:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .local v3, line:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    const-string v9, "/data/misc/wifi_scoreap.conf"

    invoke-direct {v2, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a

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

    .end local v4           #reader:Ljava/io/BufferedReader;
    .local v5, reader:Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

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

    const-string v9, "\\="

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

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

    array-length v9, v6

    const/4 v10, 0x2

    if-eq v9, v10, :cond_2

    const-string v9, "ScoreHelper"

    const-string v10, " + Invalid config line. Moving on..."

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v1       #in:Ljava/io/FileInputStream;
    :goto_1
    :try_start_3
    const-string v9, "ScoreHelper"

    const-string v10, " + Not found ScoreAP config file"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :cond_0
    if-eqz v4, :cond_1

    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_1
    :goto_2
    move v7, v8

    :goto_3
    return v7

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

    const/4 v9, 0x0

    aget-object v9, v6, v9

    const/4 v10, 0x1

    aget-object v10, v6, v10

    invoke-direct {p0, v9, v10}, Landroid/net/wifi/ScoreHelper;->readConfigWeight(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    move-object v1, v2

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

    if-eqz v1, :cond_3

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    :cond_3
    if-eqz v4, :cond_1

    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_5
    goto :goto_3

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

    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    :cond_5
    if-eqz v4, :cond_6

    :try_start_c
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    :cond_6
    throw v8

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

    :cond_8
    if-eqz v2, :cond_9

    :try_start_e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    :cond_9
    if-eqz v5, :cond_a

    :try_start_f
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    :cond_a
    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto/16 :goto_2

    :catch_3
    move-exception v0

    .restart local v0       #e:Ljava/io/IOException;
    :goto_7
    goto/16 :goto_3

    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v0

    goto :goto_5

    .local v0, e:Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v0

    goto :goto_7

    :catch_6
    move-exception v0

    goto :goto_5

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
    const-string v1, "WEIGHT_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .local v0, ret:I
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    if-ltz v0, :cond_0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    const-string v1, "WEIGHT_RSSI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/ScoreHelper;->WEIGHTS:[I

    const/4 v2, 0x0

    aput v0, v1, v2

    goto :goto_0

    :cond_2
    const-string v1, "WEIGHT_TX"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/net/wifi/ScoreHelper;->WEIGHTS:[I

    const/4 v2, 0x1

    aput v0, v1, v2

    goto :goto_0

    :cond_3
    const-string v1, "WEIGHT_FREQUENCY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/net/wifi/ScoreHelper;->WEIGHTS:[I

    const/4 v2, 0x2

    aput v0, v1, v2

    goto :goto_0

    :cond_4
    const-string v1, "WEIGHT_DISCONNECTION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/net/wifi/ScoreHelper;->WEIGHTS:[I

    const/4 v2, 0x3

    aput v0, v1, v2

    goto :goto_0

    :cond_5
    const-string v1, "WEIGHT_ACTIVEUSE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/ScoreHelper;->WEIGHTS:[I

    const/4 v2, 0x4

    aput v0, v1, v2

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private readConfigs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "name"
    .parameter "config"

    .prologue
    const-string v0, "CONFIG_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "CONFIG_RSSI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

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

    :cond_2
    const-string v0, "CONFIG_TX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

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

    :cond_3
    const-string v0, "CONFIG_FREQUENCY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

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

    :cond_4
    const-string v0, "CONFIG_DISCONNECTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/net/wifi/ScoreHelper;->CONFIGS:[Ljava/lang/String;

    const/4 v1, 0x3

    aput-object p2, v0, v1

    goto/16 :goto_0

    :cond_5
    const-string v0, "CONFIG_ACTIVEUSE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/ScoreHelper;->CONFIGS:[Ljava/lang/String;

    const/4 v1, 0x4

    aput-object p2, v0, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public computeScore()Ljava/util/List;
    .locals 13
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
    const/4 v5, 0x0

    iget-object v4, p0, Landroid/net/wifi/ScoreHelper;->m_ApScanList:Ljava/util/List;

    if-nez v4, :cond_0

    move-object v4, v5

    :goto_0
    return-object v4

    :cond_0
    iget-object v4, p0, Landroid/net/wifi/ScoreHelper;->m_ApScanList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v5

    goto :goto_0

    :cond_1
    iget-object v4, p0, Landroid/net/wifi/ScoreHelper;->scoreMap:Ljava/util/HashMap;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/net/wifi/ScoreHelper;->scoreMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    :cond_2
    iget-object v4, p0, Landroid/net/wifi/ScoreHelper;->m_ApScanList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .local v2, result:Landroid/net/wifi/ScanResult;
    new-instance v3, Landroid/net/wifi/ScoreChart;

    invoke-direct {v3}, Landroid/net/wifi/ScoreChart;-><init>()V

    .local v3, score:Landroid/net/wifi/ScoreChart;
    iget-object v4, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v4, v3, Landroid/net/wifi/ScoreChart;->ssid:Ljava/lang/String;

    iget-object v4, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v4, v3, Landroid/net/wifi/ScoreChart;->bssid:Ljava/lang/String;

    iget v4, v2, Landroid/net/wifi/ScanResult;->frequency:I

    iget v6, v2, Landroid/net/wifi/ScanResult;->level:I

    invoke-direct {p0, v4, v6}, Landroid/net/wifi/ScoreHelper;->computeScoreRssi(II)I

    move-result v4

    iput v4, v3, Landroid/net/wifi/ScoreChart;->score_rssi:I

    iget-object v4, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget v6, v2, Landroid/net/wifi/ScanResult;->level:I

    invoke-direct {p0, v4, v6}, Landroid/net/wifi/ScoreHelper;->computeScoreTx(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Landroid/net/wifi/ScoreChart;->score_tx:I

    iget-object v4, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget v6, v2, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-direct {p0, v4, v6}, Landroid/net/wifi/ScoreHelper;->computeScoreFrequencyBand(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Landroid/net/wifi/ScoreChart;->score_frequency:I

    iget-object v4, p0, Landroid/net/wifi/ScoreHelper;->WEIGHTS:[I

    const/4 v6, 0x3

    aget v4, v4, v6

    iput v4, v3, Landroid/net/wifi/ScoreChart;->score_disconnect:I

    iget-object v4, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v6, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-direct {p0, v4, v6}, Landroid/net/wifi/ScoreHelper;->computeScoreActiveUse(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/net/wifi/ScoreChart;->score_activeuse:I

    iget-object v4, p0, Landroid/net/wifi/ScoreHelper;->scoreMap:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v2           #result:Landroid/net/wifi/ScanResult;
    .end local v3           #score:Landroid/net/wifi/ScoreChart;
    :cond_3
    iget-object v4, p0, Landroid/net/wifi/ScoreHelper;->m_ApScanList:Ljava/util/List;

    new-instance v6, Landroid/net/wifi/ScoreHelper$2;

    invoke-direct {v6, p0}, Landroid/net/wifi/ScoreHelper$2;-><init>(Landroid/net/wifi/ScoreHelper;)V

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :try_start_0
    iget-object v4, p0, Landroid/net/wifi/ScoreHelper;->m_ApScanList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .restart local v2       #result:Landroid/net/wifi/ScanResult;
    const-string v6, "ScoreHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " + ScoreResult: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%3s"

    const/4 v4, 0x1

    new-array v9, v4, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v4, p0, Landroid/net/wifi/ScoreHelper;->scoreMap:Ljava/util/HashMap;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScoreChart;

    invoke-virtual {v4}, Landroid/net/wifi/ScoreChart;->Score()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", AP: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "%32s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " ["

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "]"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", Rssi: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%2s"

    const/4 v4, 0x1

    new-array v9, v4, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v4, p0, Landroid/net/wifi/ScoreHelper;->scoreMap:Ljava/util/HashMap;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScoreChart;

    iget v4, v4, Landroid/net/wifi/ScoreChart;->score_rssi:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " ["

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, v2, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "]"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", Tx: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%2s"

    const/4 v4, 0x1

    new-array v9, v4, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v4, p0, Landroid/net/wifi/ScoreHelper;->scoreMap:Ljava/util/HashMap;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScoreChart;

    iget v4, v4, Landroid/net/wifi/ScoreChart;->score_tx:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", Freq: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%2s"

    const/4 v4, 0x1

    new-array v9, v4, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v4, p0, Landroid/net/wifi/ScoreHelper;->scoreMap:Ljava/util/HashMap;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScoreChart;

    iget v4, v4, Landroid/net/wifi/ScoreChart;->score_frequency:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " ["

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, v2, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "]"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", Disconn: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%2s"

    const/4 v4, 0x1

    new-array v9, v4, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v4, p0, Landroid/net/wifi/ScoreHelper;->scoreMap:Ljava/util/HashMap;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScoreChart;

    iget v4, v4, Landroid/net/wifi/ScoreChart;->score_disconnect:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", Last Used: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%2s"

    const/4 v4, 0x1

    new-array v9, v4, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v4, p0, Landroid/net/wifi/ScoreHelper;->scoreMap:Ljava/util/HashMap;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScoreChart;

    iget v4, v4, Landroid/net/wifi/ScoreChart;->score_activeuse:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .end local v2           #result:Landroid/net/wifi/ScanResult;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "ScoreHelper"

    const-string v6, " + computeScore got IndexOutOfBoundsException"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    goto/16 :goto_0

    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/net/wifi/ScoreHelper;->m_ScoreResult:Ljava/util/List;

    iget-object v4, p0, Landroid/net/wifi/ScoreHelper;->m_ScoreResult:Ljava/util/List;

    iget-object v5, p0, Landroid/net/wifi/ScoreHelper;->m_ApScanList:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v4, p0, Landroid/net/wifi/ScoreHelper;->m_ApScanList:Ljava/util/List;

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
    iget-object v3, p0, Landroid/net/wifi/ScoreHelper;->m_ScoreResult:Ljava/util/List;

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/ScoreHelper;->computeScore()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-object v3, p0, Landroid/net/wifi/ScoreHelper;->m_ScoreResult:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .local v2, result:Landroid/net/wifi/ScanResult;
    iget-object v3, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

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

    goto :goto_0
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
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

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

    .local v2, record:Landroid/net/wifi/APRecords;
    invoke-virtual {v2}, Landroid/net/wifi/APRecords;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v2           #record:Landroid/net/wifi/APRecords;
    :cond_1
    return-object v1
.end method

.method public setWifiConfigurationList(Ljava/util/List;)V
    .locals 2
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
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/ScoreHelper;->m_WifiConfigList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Landroid/net/wifi/ScoreHelper;->m_WifiConfigList:Ljava/util/List;

    new-instance v1, Landroid/net/wifi/ScoreHelper$1;

    invoke-direct {v1, p0}, Landroid/net/wifi/ScoreHelper$1;-><init>(Landroid/net/wifi/ScoreHelper;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method
