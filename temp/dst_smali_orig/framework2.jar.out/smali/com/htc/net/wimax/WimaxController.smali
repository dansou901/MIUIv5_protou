.class public Lcom/htc/net/wimax/WimaxController;
.super Ljava/lang/Object;
.source "WimaxController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/net/wimax/WimaxController$1;,
        Lcom/htc/net/wimax/WimaxController$WimaxLock;
    }
.end annotation


# static fields
.field public static final AUTH_NAI_REJECTED_ACTION:Ljava/lang/String; = "com.htc.net.wimax.AUTH_NAI_REJECTED_ACTION"

.field public static final AUTH_STATE_FAIL_ACTION:Ljava/lang/String; = "com.htc.net.wimax.AUTH_STATE_FAIL_ACTION"

.field public static final CURRENT_WIMAX_ENABLED_STATE:Ljava/lang/String; = "curWimaxEnabledState"

.field public static final ERROR_AUTHENTICATING:I = 0x1

.field public static final EXTRA_NAPID:Ljava/lang/String; = "napId"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final EXTRA_NEW_RSSI_LEVEL:Ljava/lang/String; = "newRssiLevel"

.field public static final EXTRA_NEW_STATE:Ljava/lang/String; = "newState"

.field public static final EXTRA_NSPID:Ljava/lang/String; = "nspId"

.field public static final EXTRA_WXCM_CONNECTED:Ljava/lang/String; = "connected"

.field private static LOCAL_LOGD:Z = false

.field private static final MAX_RSSI:I = 0x20

.field private static final MIN_RSSI:I = 0x5

.field public static final NETWORK_IDS_CHANGED_ACTION:Ljava/lang/String; = "com.htc.net.wimax.NETWORK_IDS_CHANGED"

.field public static final NETWORK_STATE_CHANGED_ACTION:Ljava/lang/String; = "com.htc.net.wimax.STATE_CHANGE"

.field public static final ON_BACKOFF_STATE_ACTION:Ljava/lang/String; = "com.htc.net.wimax.ON_BACKOFF_STATE_ACTION"

.field public static final PICK_WIMAX_NETWORK_ACTION:Ljava/lang/String; = "com.htc.net.wimax.PICK_WIMAX_NETWORK"

.field public static final PREVIOUS_WIMAX_ENABLED_STATE:Ljava/lang/String; = "preWimaxEnabledState"

.field public static final RSSI_CHANGED_ACTION:Ljava/lang/String; = "com.htc.net.wimax.RSSI_CHANGED"

.field public static final RSSI_LEVEL:I = 0x4

.field public static final SCAN_RESULTS_AVAILABLE_ACTION:Ljava/lang/String; = "com.htc.net.wimax.SCAN_RESULTS_AVAILABLE"

.field private static final TAG:Ljava/lang/String; = "WimaxController"

.field public static final WIMAX_ENABLED_CHANGED_ACTION:Ljava/lang/String; = "com.htc.net.wimax.WIMAX_ENABLED_CHANGED"

.field public static final WIMAX_ENABLED_STATE_DISABLED:I = 0x1

.field public static final WIMAX_ENABLED_STATE_DISABLING:I = 0x0

.field public static final WIMAX_ENABLED_STATE_ENABLED:I = 0x3

.field public static final WIMAX_ENABLED_STATE_ENABLING:I = 0x2

.field public static final WIMAX_ENABLED_STATE_UNKNOWN:I = 0x4

.field public static final WXCM_CONNECTION_CHANGE_ACTION:Ljava/lang/String; = "android.net.wimax.wxcm.CONNECTION_CHANGE"

.field public static final WXCM_ERROR_ACTION:Ljava/lang/String; = "com.htc.net.wimax.wxcmError"

.field public static final WXCM_STATE_CHANGED_ACTION:Ljava/lang/String; = "com.htc.net.wimax.wxcm.STATE_CHANGED"

.field public static mProfile:I


# instance fields
.field mHandler:Landroid/os/Handler;

.field mService:Lcom/htc/net/wimax/IWimaxController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/net/wimax/WimaxController;->LOCAL_LOGD:Z

    sput v0, Lcom/htc/net/wimax/WimaxController;->mProfile:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/htc/net/wimax/IWimaxController;Landroid/os/Handler;)V
    .locals 2
    .parameter "service"
    .parameter "handler"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    iput-object p2, p0, Lcom/htc/net/wimax/WimaxController;->mHandler:Landroid/os/Handler;

    sget-boolean v0, Lcom/htc/net/wimax/WimaxController;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxController"

    const-string v1, "WimaxController init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static calculateSignalLevel(II)I
    .locals 13
    .parameter "rssi100x"
    .parameter "cinr100x"

    .prologue
    const/16 v12, -0x4b

    const/4 v7, 0x3

    const/16 v11, 0x8

    const/4 v10, 0x6

    const/4 v6, 0x0

    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v9, 0x50

    if-ne v8, v9, :cond_f

    div-int/lit8 v4, p0, 0x64

    .local v4, rssi:I
    div-int/lit8 v2, p1, 0x64

    .local v2, cinr:I
    const/4 v8, 0x5

    new-array v1, v8, [[B

    new-array v8, v10, [B

    fill-array-data v8, :array_0

    aput-object v8, v1, v6

    const/4 v8, 0x1

    new-array v9, v10, [B

    fill-array-data v9, :array_1

    aput-object v9, v1, v8

    const/4 v8, 0x2

    new-array v9, v10, [B

    fill-array-data v9, :array_2

    aput-object v9, v1, v8

    new-array v8, v10, [B

    fill-array-data v8, :array_3

    aput-object v8, v1, v7

    const/4 v8, 0x4

    new-array v9, v10, [B

    fill-array-data v9, :array_4

    aput-object v9, v1, v8

    .local v1, antennaBarMatrix_KT:[[B
    const/4 v5, 0x0

    .local v5, rssiIdx:I
    const/4 v3, 0x0

    .local v3, cinrIdx:I
    const/16 v8, 0xf

    if-le v2, v8, :cond_2

    const/4 v3, 0x0

    :goto_0
    const/16 v7, -0x37

    if-le v4, v7, :cond_8

    const/4 v5, 0x0

    :goto_1
    const/4 v7, -0x1

    if-eq v3, v7, :cond_0

    const/4 v7, -0x1

    if-ne v4, v7, :cond_d

    :cond_0
    const-string v7, "WimaxController"

    const-string v8, "antennaBarMatrixIndex(-1) is not correct"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v6

    .end local v1           #antennaBarMatrix_KT:[[B
    .end local v2           #cinr:I
    .end local v3           #cinrIdx:I
    .end local v5           #rssiIdx:I
    :cond_1
    :goto_2
    return v3

    .restart local v1       #antennaBarMatrix_KT:[[B
    .restart local v2       #cinr:I
    .restart local v3       #cinrIdx:I
    .restart local v5       #rssiIdx:I
    :cond_2
    const/16 v8, 0xf

    if-lt v8, v2, :cond_3

    const/16 v8, 0xa

    if-le v2, v8, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/16 v8, 0xa

    if-lt v8, v2, :cond_4

    if-le v2, v7, :cond_4

    const/4 v3, 0x2

    goto :goto_0

    :cond_4
    if-lt v7, v2, :cond_5

    if-lez v2, :cond_5

    const/4 v3, 0x3

    goto :goto_0

    :cond_5
    if-gtz v2, :cond_6

    const/4 v7, -0x3

    if-le v2, v7, :cond_6

    const/4 v3, 0x4

    goto :goto_0

    :cond_6
    const/4 v7, -0x3

    if-le v7, v2, :cond_7

    const/4 v3, 0x5

    goto :goto_0

    :cond_7
    const/4 v3, -0x1

    goto :goto_0

    :cond_8
    const/16 v7, -0x37

    if-lt v7, v4, :cond_9

    const/16 v7, -0x41

    if-le v4, v7, :cond_9

    const/4 v5, 0x1

    goto :goto_1

    :cond_9
    const/16 v7, -0x41

    if-lt v7, v4, :cond_a

    if-le v4, v12, :cond_a

    const/4 v5, 0x2

    goto :goto_1

    :cond_a
    if-lt v12, v4, :cond_b

    const/16 v7, -0x50

    if-le v4, v7, :cond_b

    const/4 v5, 0x3

    goto :goto_1

    :cond_b
    const/16 v7, -0x50

    if-lt v7, v4, :cond_c

    const/4 v5, 0x4

    goto :goto_1

    :cond_c
    const/4 v5, -0x1

    goto :goto_1

    :cond_d
    sget-boolean v6, Lcom/htc/net/wimax/WimaxController;->LOCAL_LOGD:Z

    if-eqz v6, :cond_e

    const-string v6, "WimaxController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[KT]antennaBarMatrix_KT["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v1, v5

    aget-byte v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    aget-object v6, v1, v5

    aget-byte v3, v6, v3

    goto/16 :goto_2

    .end local v1           #antennaBarMatrix_KT:[[B
    .end local v2           #cinr:I
    .end local v3           #cinrIdx:I
    .end local v4           #rssi:I
    .end local v5           #rssiIdx:I
    :cond_f
    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v9, 0x51

    if-eq v8, v9, :cond_10

    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v9, 0x1

    if-ne v8, v9, :cond_23

    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v9, 0x1f

    if-ne v8, v9, :cond_23

    :cond_10
    div-int/lit8 v4, p0, 0x64

    .restart local v4       #rssi:I
    div-int/lit8 v8, p1, 0xa

    int-to-float v8, v8

    const/high16 v9, 0x4120

    div-float v2, v8, v9

    .local v2, cinr:F
    new-array v0, v10, [[B

    new-array v8, v11, [B

    fill-array-data v8, :array_5

    aput-object v8, v0, v6

    const/4 v8, 0x1

    new-array v9, v11, [B

    fill-array-data v9, :array_6

    aput-object v9, v0, v8

    const/4 v8, 0x2

    new-array v9, v11, [B

    fill-array-data v9, :array_7

    aput-object v9, v0, v8

    new-array v8, v11, [B

    fill-array-data v8, :array_8

    aput-object v8, v0, v7

    const/4 v7, 0x4

    new-array v8, v11, [B

    fill-array-data v8, :array_9

    aput-object v8, v0, v7

    const/4 v7, 0x5

    new-array v8, v11, [B

    fill-array-data v8, :array_a

    aput-object v8, v0, v7

    .local v0, antennaBarMatrix_KDDI:[[B
    const/4 v5, 0x0

    .restart local v5       #rssiIdx:I
    const/4 v3, 0x0

    .restart local v3       #cinrIdx:I
    const/16 v7, -0x5d

    if-lt v7, v4, :cond_12

    const/4 v5, 0x0

    :goto_3
    const/4 v7, 0x0

    cmpl-float v7, v7, v2

    if-ltz v7, :cond_1a

    const/4 v3, 0x0

    :goto_4
    const/4 v7, -0x1

    if-eq v3, v7, :cond_11

    const/4 v7, -0x1

    if-ne v4, v7, :cond_20

    :cond_11
    const-string v7, "WimaxController"

    const-string v8, "antennaBarMatrixIndex(-1) is not correct"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v6

    goto/16 :goto_2

    :cond_12
    const/16 v7, -0x5c

    if-gt v7, v4, :cond_13

    const/16 v7, -0x5a

    if-gt v4, v7, :cond_13

    const/4 v5, 0x1

    goto :goto_3

    :cond_13
    const/16 v7, -0x59

    if-gt v7, v4, :cond_14

    const/16 v7, -0x56

    if-gt v4, v7, :cond_14

    const/4 v5, 0x2

    goto :goto_3

    :cond_14
    const/16 v7, -0x55

    if-gt v7, v4, :cond_15

    const/16 v7, -0x4c

    if-gt v4, v7, :cond_15

    const/4 v5, 0x3

    goto :goto_3

    :cond_15
    if-gt v12, v4, :cond_16

    const/16 v7, -0x42

    if-gt v4, v7, :cond_16

    const/4 v5, 0x4

    goto :goto_3

    :cond_16
    const/16 v7, -0x41

    if-gt v7, v4, :cond_17

    const/16 v7, -0x38

    if-gt v4, v7, :cond_17

    const/4 v5, 0x5

    goto :goto_3

    :cond_17
    const/16 v7, -0x37

    if-gt v7, v4, :cond_18

    const/16 v7, -0x2e

    if-gt v4, v7, :cond_18

    const/4 v5, 0x6

    goto :goto_3

    :cond_18
    const/16 v7, -0x2d

    if-gt v7, v4, :cond_19

    const/4 v5, 0x7

    goto :goto_3

    :cond_19
    const/4 v5, -0x1

    goto :goto_3

    :cond_1a
    const v7, 0x3dcccccd

    cmpg-float v7, v7, v2

    if-gtz v7, :cond_1b

    const/high16 v7, 0x4080

    cmpg-float v7, v2, v7

    if-gtz v7, :cond_1b

    const/4 v3, 0x1

    goto :goto_4

    :cond_1b
    const v7, 0x40833333

    cmpg-float v7, v7, v2

    if-gtz v7, :cond_1c

    const/high16 v7, 0x4120

    cmpg-float v7, v2, v7

    if-gtz v7, :cond_1c

    const/4 v3, 0x2

    goto :goto_4

    :cond_1c
    const v7, 0x4121999a

    cmpg-float v7, v7, v2

    if-gtz v7, :cond_1d

    const/high16 v7, 0x4170

    cmpg-float v7, v2, v7

    if-gtz v7, :cond_1d

    const/4 v3, 0x3

    goto :goto_4

    :cond_1d
    const v7, 0x4171999a

    cmpg-float v7, v7, v2

    if-gtz v7, :cond_1e

    const/high16 v7, 0x41a0

    cmpg-float v7, v2, v7

    if-gtz v7, :cond_1e

    const/4 v3, 0x4

    goto/16 :goto_4

    :cond_1e
    const v7, 0x41a0cccd

    cmpg-float v7, v7, v2

    if-gtz v7, :cond_1f

    const/4 v3, 0x5

    goto/16 :goto_4

    :cond_1f
    const/4 v3, -0x1

    goto/16 :goto_4

    :cond_20
    sget v6, Lcom/htc/net/wimax/WimaxController;->mProfile:I

    invoke-static {v6}, Lcom/htc/net/wimax/WimaxController;->isVeeProfile(I)Z

    move-result v6

    if-eqz v6, :cond_21

    sget-boolean v6, Lcom/htc/net/wimax/WimaxController;->LOCAL_LOGD:Z

    if-eqz v6, :cond_1

    const-string v6, "WimaxController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[VEE] signal bar return level= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_21
    sget-boolean v6, Lcom/htc/net/wimax/WimaxController;->LOCAL_LOGD:Z

    if-eqz v6, :cond_22

    const-string v6, "WimaxController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(Default)[KDDI]antennaBarMatrix_KDDI["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v3

    aget-byte v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    aget-object v6, v0, v3

    aget-byte v3, v6, v5

    goto/16 :goto_2

    .end local v0           #antennaBarMatrix_KDDI:[[B
    .end local v2           #cinr:F
    .end local v3           #cinrIdx:I
    .end local v4           #rssi:I
    .end local v5           #rssiIdx:I
    :cond_23
    div-int/lit8 v4, p0, 0x64

    .restart local v4       #rssi:I
    const/16 v8, -0x5d

    if-ge v4, v8, :cond_24

    move v3, v6

    goto/16 :goto_2

    :cond_24
    if-ge v4, v12, :cond_25

    const/4 v3, 0x1

    goto/16 :goto_2

    :cond_25
    const/16 v8, -0x3c

    if-ge v4, v8, :cond_26

    const/4 v3, 0x2

    goto/16 :goto_2

    :cond_26
    const/16 v8, -0x3c

    if-gt v8, v4, :cond_27

    if-gtz v4, :cond_27

    move v3, v7

    goto/16 :goto_2

    :cond_27
    move v3, v6

    goto/16 :goto_2

    nop

    :array_0
    .array-data 0x1
        0x4t
        0x4t
        0x3t
        0x2t
        0x1t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 0x1
        0x4t
        0x3t
        0x2t
        0x1t
        0x1t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 0x1
        0x3t
        0x2t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 0x1
        0x2t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_4
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_5
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_6
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_7
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x1t
        0x2t
        0x2t
        0x2t
        0x2t
    .end array-data

    :array_8
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x1t
        0x2t
        0x3t
        0x3t
        0x3t
    .end array-data

    :array_9
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x4t
    .end array-data

    :array_a
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
    .end array-data
.end method

.method private debugChange()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, wimax_debug:Ljava/lang/String;
    const-string v1, "wimax.debug"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/htc/net/wimax/IWimaxController;->debugChange(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/net/wimax/IWimaxController;->debugChange(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isVeeProfile(I)Z
    .locals 2
    .parameter "profile"

    .prologue
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelAlarmDhcpRenew()V
    .locals 1

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v0}, Lcom/htc/net/wimax/IWimaxController;->cancelAlarmDhcpRenew()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public cancelAlarmScanRetry()V
    .locals 1

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v0}, Lcom/htc/net/wimax/IWimaxController;->cancelAlarmScanRetry()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public connectToDcs()Z
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->connectToDcs()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public createWimaxLock(Ljava/lang/String;)Lcom/htc/net/wimax/WimaxController$WimaxLock;
    .locals 2
    .parameter "tag"

    .prologue
    new-instance v0, Lcom/htc/net/wimax/WimaxController$WimaxLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/htc/net/wimax/WimaxController$WimaxLock;-><init>(Lcom/htc/net/wimax/WimaxController;Ljava/lang/String;Lcom/htc/net/wimax/WimaxController$1;)V

    return-object v0
.end method

.method public dcIsConnected()Z
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->dcIsConnected()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disconnectFromDcs()Z
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->disconnectFromDcs()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBoardName(Ljava/lang/String;)Z
    .locals 2
    .parameter "boardName"

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1}, Lcom/htc/net/wimax/IWimaxController;->getBoardName(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRfChipName(Ljava/lang/String;)Z
    .locals 2
    .parameter "rfChipName"

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1}, Lcom/htc/net/wimax/IWimaxController;->getRfChipName(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWimaxState()I
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->getWimaxState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public isBackoffState()Z
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->isBackoffState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDeviceReady()Z
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->isDeviceReady()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWimaxEnabled()Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxController;->getWimaxState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mgtSetSsStarted(Z)Z
    .locals 2
    .parameter "enable"

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1}, Lcom/htc/net/wimax/IWimaxController;->mgtSetSsStarted(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAlarmDhcpRenew(J)V
    .locals 1
    .parameter "duration"

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v0, p1, p2}, Lcom/htc/net/wimax/IWimaxController;->setAlarmDhcpRenew(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAlarmScanRetry(J)V
    .locals 1
    .parameter "duration"

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v0, p1, p2}, Lcom/htc/net/wimax/IWimaxController;->setAlarmScanRetry(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setWimaxDunMode(Z)V
    .locals 1
    .parameter "isDunMode"

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v0, p1}, Lcom/htc/net/wimax/IWimaxController;->setWimaxDunMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setWimaxEnabled(Z)Z
    .locals 2
    .parameter "enabled"

    .prologue
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxController;->debugChange()V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1}, Lcom/htc/net/wimax/IWimaxController;->setWimaxEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWimaxEnabledPersist(ZZ)Z
    .locals 2
    .parameter "enabled"
    .parameter "persist"

    .prologue
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxController;->debugChange()V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1, p2}, Lcom/htc/net/wimax/IWimaxController;->setWimaxEnabledPersist(ZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public wimaxRescan()I
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->wimaxRescan()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const/16 v1, -0x9

    goto :goto_0
.end method
