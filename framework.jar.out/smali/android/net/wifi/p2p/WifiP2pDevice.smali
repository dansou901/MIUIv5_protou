.class public Landroid/net/wifi/p2p/WifiP2pDevice;
.super Ljava/lang/Object;
.source "WifiP2pDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final AVAILABLE:I = 0x3

.field public static final CONNECTED:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEVICE_CAPAB_CLIENT_DISCOVERABILITY:I = 0x2

.field private static final DEVICE_CAPAB_CONCURRENT_OPER:I = 0x4

.field private static final DEVICE_CAPAB_DEVICE_LIMIT:I = 0x10

.field private static final DEVICE_CAPAB_INFRA_MANAGED:I = 0x8

.field private static final DEVICE_CAPAB_INVITATION_PROCEDURE:I = 0x20

.field private static final DEVICE_CAPAB_SERVICE_DISCOVERY:I = 0x1

.field public static final FAILED:I = 0x2

.field private static final GROUP_CAPAB_CROSS_CONN:I = 0x10

.field private static final GROUP_CAPAB_GROUP_FORMATION:I = 0x40

.field private static final GROUP_CAPAB_GROUP_LIMIT:I = 0x4

.field private static final GROUP_CAPAB_GROUP_OWNER:I = 0x1

.field private static final GROUP_CAPAB_INTRA_BSS_DIST:I = 0x8

.field private static final GROUP_CAPAB_PERSISTENT_GROUP:I = 0x2

.field private static final GROUP_CAPAB_PERSISTENT_RECONN:I = 0x20

.field public static final INVITED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiP2pDevice"

.field public static final UNAVAILABLE:I = 0x4

.field private static final WPS_CONFIG_DISPLAY:I = 0x8

.field private static final WPS_CONFIG_KEYPAD:I = 0x100

.field private static final WPS_CONFIG_PUSHBUTTON:I = 0x80

.field private static final detailedDevicePattern:Ljava/util/regex/Pattern;

.field private static final threeTokenPattern:Ljava/util/regex/Pattern;

.field private static final twoTokenPattern:Ljava/util/regex/Pattern;


# instance fields
.field public deviceAddress:Ljava/lang/String;

.field public deviceCapability:I

.field public deviceName:Ljava/lang/String;

.field public groupCapability:I

.field private mIsCreateGroupOwner:Z

.field public primaryDeviceType:Ljava/lang/String;

.field public secondaryDeviceType:Ljava/lang/String;

.field public status:I

.field public wfdInfo:Landroid/net/wifi/p2p/WfdInfo;

.field public wpsConfigMethodsSupported:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    const-string v0, "((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) (\\d+ )?p2p_dev_addr=((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) pri_dev_type=(\\d+-[0-9a-fA-F]+-\\d+) name=\'(.*)\' config_methods=(0x[0-9a-fA-F]+) dev_capab=(0x[0-9a-fA-F]+) group_capab=(0x[0-9a-fA-F]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->detailedDevicePattern:Ljava/util/regex/Pattern;

    .line 137
    const-string v0, "(p2p_dev_addr=)?((?:[0-9a-f]{2}:){5}[0-9a-f]{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->twoTokenPattern:Ljava/util/regex/Pattern;

    .line 146
    const-string v0, "(?:[0-9a-f]{2}:){5}[0-9a-f]{2} p2p_dev_addr=((?:[0-9a-f]{2}:){5}[0-9a-f]{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->threeTokenPattern:Ljava/util/regex/Pattern;

    .line 338
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDevice$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 154
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 108
    const/4 v0, 0x4

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 111
    iput-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mIsCreateGroupOwner:Z

    .line 157
    new-instance v0, Landroid/net/wifi/p2p/WfdInfo;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WfdInfo;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WfdInfo;

    .line 158
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WfdInfo;

    iput v2, v0, Landroid/net/wifi/p2p/WfdInfo;->deviceType:I

    .line 159
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WfdInfo;

    iput-boolean v2, v0, Landroid/net/wifi/p2p/WfdInfo;->isCoupledSinkSupportedBySink:Z

    .line 160
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WfdInfo;

    iput-boolean v2, v0, Landroid/net/wifi/p2p/WfdInfo;->isCoupledSinkSupportedBySource:Z

    .line 161
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WfdInfo;

    iput-boolean v2, v0, Landroid/net/wifi/p2p/WfdInfo;->isContentProtectionSupported:Z

    .line 162
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WfdInfo;

    iput-boolean v2, v0, Landroid/net/wifi/p2p/WfdInfo;->isAudioUnspportedAtPrimarySink:Z

    .line 163
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WfdInfo;

    iput-boolean v2, v0, Landroid/net/wifi/p2p/WfdInfo;->isAudioUnspportedAtPrimarySink:Z

    .line 164
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WfdInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/net/wifi/p2p/WfdInfo;->isAvailableForSession:Z

    .line 165
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WfdInfo;

    iput-boolean v2, v0, Landroid/net/wifi/p2p/WfdInfo;->isServiceDiscoverySupported:Z

    .line 166
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WfdInfo;

    iput-boolean v2, v0, Landroid/net/wifi/p2p/WfdInfo;->isTDLSPersistentGroupIntended:Z

    .line 167
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WfdInfo;

    iput-boolean v2, v0, Landroid/net/wifi/p2p/WfdInfo;->isTDLSReInvokePersistentGroupReq:Z

    .line 168
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WfdInfo;

    iput-boolean v2, v0, Landroid/net/wifi/p2p/WfdInfo;->isTimeSynchronizationSupported:Z

    .line 169
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WfdInfo;

    iput v2, v0, Landroid/net/wifi/p2p/WfdInfo;->preferredConnectivity:I

    .line 170
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WfdInfo;

    const/16 v1, 0x1c44

    iput v1, v0, Landroid/net/wifi/p2p/WfdInfo;->sessionMgmtCtrlPort:I

    .line 171
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WfdInfo;

    iput v2, v0, Landroid/net/wifi/p2p/WfdInfo;->maxThroughput:I

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 304
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 108
    const/4 v0, 0x4

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mIsCreateGroupOwner:Z

    .line 305
    if-eqz p1, :cond_0

    .line 306
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 307
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 308
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    .line 309
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    .line 310
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    .line 311
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    .line 312
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    .line 313
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 315
    iget-boolean v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->mIsCreateGroupOwner:Z

    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mIsCreateGroupOwner:Z

    .line 317
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WfdInfo;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WfdInfo;

    .line 319
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 192
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v2, ""

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 43
    const-string v2, ""

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 108
    iput v6, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 111
    iput-boolean v3, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mIsCreateGroupOwner:Z

    .line 193
    const-string v2, "[ \n]"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, tokens:[Ljava/lang/String;
    array-length v2, v1

    if-ge v2, v4, :cond_0

    .line 197
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Malformed supplicant event"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 200
    :cond_0
    array-length v2, v1

    packed-switch v2, :pswitch_data_0

    .line 220
    sget-object v2, Landroid/net/wifi/p2p/WifiP2pDevice;->detailedDevicePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 221
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_4

    .line 222
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Malformed supplicant event"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 203
    .end local v0           #match:Ljava/util/regex/Matcher;
    :pswitch_0
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 243
    :cond_1
    :goto_0
    return-void

    .line 206
    :pswitch_1
    sget-object v2, Landroid/net/wifi/p2p/WifiP2pDevice;->twoTokenPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 207
    .restart local v0       #match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_2

    .line 208
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Malformed supplicant event"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 210
    :cond_2
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    goto :goto_0

    .line 213
    .end local v0           #match:Ljava/util/regex/Matcher;
    :pswitch_2
    sget-object v2, Landroid/net/wifi/p2p/WifiP2pDevice;->threeTokenPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 214
    .restart local v0       #match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_3

    .line 215
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Malformed supplicant event"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 217
    :cond_3
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    goto :goto_0

    .line 225
    :cond_4
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 226
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    .line 227
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 228
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    .line 229
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    .line 230
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    .line 234
    aget-object v2, v1, v3

    const-string v3, "P2P-DEVICE-FOUND"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 235
    iput v5, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 239
    :cond_5
    new-instance v2, Landroid/net/wifi/p2p/WfdInfo;

    invoke-direct {v2, p1}, Landroid/net/wifi/p2p/WfdInfo;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WfdInfo;

    .line 240
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WfdInfo;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WfdInfo;->isWFDDevice()Z

    move-result v2

    if-eq v2, v4, :cond_1

    .line 241
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WfdInfo;

    goto/16 :goto_0

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$002(Landroid/net/wifi/p2p/WifiP2pDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mIsCreateGroupOwner:Z

    return p1
.end method

.method private parseHex(Ljava/lang/String;)I
    .locals 5
    .parameter "hexString"

    .prologue
    .line 364
    const/4 v1, 0x0

    .line 365
    .local v1, num:I
    const-string v2, "0x"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "0X"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 366
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 370
    :cond_1
    const/16 v2, 0x10

    :try_start_0
    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 374
    :goto_0
    return v1

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "WifiP2pDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse hex string "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 272
    if-ne p0, p1, :cond_1

    .line 279
    :cond_0
    :goto_0
    return v1

    .line 273
    :cond_1
    instance-of v3, p1, Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 275
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 276
    .local v0, other:Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v0, :cond_3

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 277
    :cond_3
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 279
    :cond_4
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getCreateGroupOwner()Z
    .locals 1

    .prologue
    .line 379
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mIsCreateGroupOwner:Z

    return v0
.end method

.method public isGroupOwner()Z
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isServiceDiscoveryCapable()Z
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCreateGroupOwner(Z)V
    .locals 3
    .parameter "IsCreateGroupOwner"

    .prologue
    .line 383
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mIsCreateGroupOwner:Z

    .line 384
    const-string v0, "WifiP2pDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetIsCreateGroupOwner: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mIsCreateGroupOwner:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 283
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 284
    .local v0, sbuf:Ljava/lang/StringBuffer;
    const-string v1, "Device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 285
    const-string v1, "\n deviceAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 286
    const-string v1, "\n primary type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 287
    const-string v1, "\n secondary type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    const-string v1, "\n wps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 289
    const-string v1, "\n grpcapab: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 290
    const-string v1, "\n devcapab: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 291
    const-string v1, "\n status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 292
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WfdInfo;

    if-eqz v1, :cond_0

    .line 293
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WfdInfo;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WfdInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public wpsDisplaySupported()Z
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public wpsKeypadSupported()Z
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public wpsPbcSupported()Z
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 323
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 327
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mIsCreateGroupOwner:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 334
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WfdInfo;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 335
    return-void

    .line 332
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
