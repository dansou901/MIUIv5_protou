.class public Landroid/server/BluetoothA2dpService;
.super Landroid/bluetooth/IBluetoothA2dp$Stub;
.source "BluetoothA2dpService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/server/BluetoothA2dpService$IntentBroadcastHandler;
    }
.end annotation


# static fields
.field private static final A2DP_AVRCP_BLACKLIST:Ljava/lang/String; = "etc/bluetooth/a2dp_avrcp.conf"

.field public static final BLUETOOTH_A2DP_SERVICE:Ljava/lang/String; = "bluetooth_a2dp"

.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_ENABLED:Ljava/lang/String; = "bluetooth_enabled"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final DBG:Z = true

.field private static final INDEPENDENT_AVRCP_ADDRESS:[Ljava/lang/String; = null

.field private static final MESSAGE_CONNECT_TO:I = 0x1

.field private static final MESSAGE_DELAYED_CONNECT:I = 0x3

.field private static final MESSAGE_DISABLE_BT:I = 0x2

.field private static final MSG_CONNECTION_STATE_CHANGED:I = 0x0

.field private static final NAVI_KP_AV_ON:I = 0x9

.field private static final PLUGIN_TONE:I = 0x5

.field private static final PROPERTY_STATE:Ljava/lang/String; = "State"

.field private static final RESUME_AVRCP:I = 0x6

.field private static final RESUME_MIXER:I = 0x7

.field private static final RESUME_PHONE_STATE:I = 0x4

.field private static final SUSPEND_MIXER:I = 0x8

.field private static final TAG:Ljava/lang/String; = "BluetoothA2dpService"


# instance fields
.field private initialStart:Z

.field private initialSuspend:Z

.field private isInCall:Z

.field private isNaviEn:Z

.field private mA2dpExactNameBlacklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mA2dpPartialNameBlacklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAudioDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mBluetoothService:Landroid/server/BluetoothService;

.field private mConnectionAddressBlacklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionExactNameBlacklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionPartialNameBlacklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mIntentBroadcastHandler:Landroid/server/BluetoothA2dpService$IntentBroadcastHandler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSinkPlayState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetA2dpState:I

.field private mToggleAddressBlacklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mToggleExactNameBlacklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTogglePartialNameBlacklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 138
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "00:06:F7"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "04:76:6E"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "00:1E:3D"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "00:1B:FB"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "00:80:98"

    aput-object v2, v0, v1

    sput-object v0, Landroid/server/BluetoothA2dpService;->INDEPENDENT_AVRCP_ADDRESS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    .locals 4
    .parameter "context"
    .parameter "bluetoothService"

    .prologue
    const/4 v1, 0x0

    .line 447
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;-><init>()V

    .line 114
    iput-boolean v1, p0, Landroid/server/BluetoothA2dpService;->isInCall:Z

    .line 117
    iput-boolean v1, p0, Landroid/server/BluetoothA2dpService;->initialStart:Z

    .line 118
    iput-boolean v1, p0, Landroid/server/BluetoothA2dpService;->initialSuspend:Z

    .line 121
    iput-boolean v1, p0, Landroid/server/BluetoothA2dpService;->isNaviEn:Z

    .line 146
    new-instance v1, Landroid/server/BluetoothA2dpService$1;

    invoke-direct {v1, p0}, Landroid/server/BluetoothA2dpService$1;-><init>(Landroid/server/BluetoothA2dpService;)V

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 501
    new-instance v1, Landroid/server/BluetoothA2dpService$2;

    invoke-direct {v1, p0}, Landroid/server/BluetoothA2dpService$2;-><init>(Landroid/server/BluetoothA2dpService;)V

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    .line 448
    iput-object p1, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    .line 450
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 451
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "BluetoothA2dpService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 453
    new-instance v1, Landroid/server/BluetoothA2dpService$IntentBroadcastHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/server/BluetoothA2dpService$IntentBroadcastHandler;-><init>(Landroid/server/BluetoothA2dpService;Landroid/server/BluetoothA2dpService$1;)V

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mIntentBroadcastHandler:Landroid/server/BluetoothA2dpService$IntentBroadcastHandler;

    .line 455
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    .line 457
    iput-object p2, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    .line 458
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    if-nez v1, :cond_0

    .line 459
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Platform does not support Bluetooth"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 462
    :cond_0
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->initNative()Z

    move-result v1

    if-nez v1, :cond_1

    .line 463
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not init BluetoothA2dpService"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 466
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 468
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    .line 469
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 470
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 471
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 474
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 475
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 476
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 478
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 481
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 483
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    .line 484
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mSinkPlayState:Ljava/util/HashMap;

    .line 486
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 487
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->onBluetoothEnable()V

    .line 488
    :cond_2
    const/4 v1, -0x1

    iput v1, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    .line 489
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p0}, Landroid/server/BluetoothService;->setA2dpService(Landroid/server/BluetoothA2dpService;)V

    .line 490
    return-void
.end method

.method static synthetic access$000(Landroid/server/BluetoothA2dpService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->onBluetoothEnable()V

    return-void
.end method

.method static synthetic access$100(Landroid/server/BluetoothA2dpService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->onBluetoothDisable()V

    return-void
.end method

.method static synthetic access$1000(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->avrcpVolumeUpNative(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->avrcpVolumeDownNative(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Landroid/server/BluetoothA2dpService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Landroid/server/BluetoothA2dpService;->isInCall:Z

    return v0
.end method

.method static synthetic access$1202(Landroid/server/BluetoothA2dpService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Landroid/server/BluetoothA2dpService;->isInCall:Z

    return p1
.end method

.method static synthetic access$1300(Landroid/server/BluetoothA2dpService;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/server/BluetoothA2dpService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Landroid/server/BluetoothA2dpService;->isNaviEn:Z

    return v0
.end method

.method static synthetic access$1402(Landroid/server/BluetoothA2dpService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Landroid/server/BluetoothA2dpService;->isNaviEn:Z

    return p1
.end method

.method static synthetic access$1600(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-static {p0}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/server/BluetoothA2dpService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/server/BluetoothA2dpService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$200(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->isSinkDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/server/BluetoothA2dpService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->isAVRCPIndependent(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/server/BluetoothA2dpService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->setAvrcpPassThroughInternal(Z)V

    return-void
.end method

.method static synthetic access$600(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic access$800(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->isPhoneDocked(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    return-object v0
.end method

.method private declared-synchronized addAudioSink(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .parameter "device"

    .prologue
    .line 601
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 602
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    :cond_0
    monitor-exit p0

    return-void

    .line 601
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private adjustOtherSinkPriorities(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter "connectedDevice"

    .prologue
    .line 1153
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1154
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v0}, Landroid/server/BluetoothA2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    const/16 v3, 0x3e8

    if-lt v2, v3, :cond_0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1156
    const/16 v2, 0x64

    invoke-virtual {p0, v0, v2}, Landroid/server/BluetoothA2dpService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    .line 1159
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_1
    return-void
.end method

.method private synchronized native declared-synchronized avrcpVolumeDownNative(Ljava/lang/String;)Z
.end method

.method private synchronized native declared-synchronized avrcpVolumeUpNative(Ljava/lang/String;)Z
.end method

.method private checkSinkSuspendState(IILandroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .parameter "state"
    .parameter "prevState"
    .parameter "device"

    .prologue
    const/16 v5, 0xb

    const/16 v4, 0xa

    .line 1162
    const/4 v0, 0x1

    .line 1163
    .local v0, result:Z
    const-string v1, "BluetoothA2dpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSinkSuspendState(): state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mTargetA2dpState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    iget v1, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    if-eq p1, v1, :cond_0

    .line 1165
    if-ne p1, v4, :cond_1

    iget v1, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    if-ne v1, v5, :cond_1

    .line 1167
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "A2dpSuspended=true"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1175
    :cond_0
    :goto_0
    return v0

    .line 1168
    :cond_1
    if-ne p1, v5, :cond_2

    iget v1, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    if-ne v1, v4, :cond_2

    .line 1170
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "A2dpSuspended=false"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .line 1172
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native cleanupNative()V
.end method

.method private synchronized native declared-synchronized connectSinkNative(Ljava/lang/String;)Z
.end method

.method private convertBluezSinkStringToState(Ljava/lang/String;)I
    .locals 1
    .parameter "value"

    .prologue
    .line 581
    const-string v0, "disconnected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    const/4 v0, 0x0

    .line 589
    :goto_0
    return v0

    .line 583
    :cond_0
    const-string v0, "connecting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 584
    const/4 v0, 0x1

    goto :goto_0

    .line 585
    :cond_1
    const-string v0, "connected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 586
    const/4 v0, 0x2

    goto :goto_0

    .line 587
    :cond_2
    const-string/jumbo v0, "playing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 588
    const/16 v0, 0xa

    goto :goto_0

    .line 589
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private convertPriority(I)Ljava/lang/String;
    .locals 1
    .parameter "priority"

    .prologue
    .line 882
    sparse-switch p1, :sswitch_data_0

    .line 890
    const-string v0, "Not Set"

    :goto_0
    return-object v0

    .line 884
    :sswitch_0
    const-string v0, "Auto Connect"

    goto :goto_0

    .line 886
    :sswitch_1
    const-string v0, "On"

    goto :goto_0

    .line 888
    :sswitch_2
    const-string v0, "Off"

    goto :goto_0

    .line 882
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x64 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method private synchronized native declared-synchronized disconnectSinkNative(Ljava/lang/String;)Z
.end method

.method private synchronized native declared-synchronized getSinkPropertiesNative(Ljava/lang/String;)[Ljava/lang/Object;
.end method

.method private handleSinkPlayingStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 9
    .parameter "device"
    .parameter "state"
    .parameter "prevState"

    .prologue
    const/16 v8, 0xb

    const/16 v7, 0xa

    const/4 v6, 0x0

    const/4 v5, 0x7

    .line 1089
    if-ne p3, v8, :cond_0

    if-ne p2, v7, :cond_0

    .line 1091
    iget-boolean v1, p0, Landroid/server/BluetoothA2dpService;->initialStart:Z

    if-eqz v1, :cond_2

    .line 1096
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1097
    iput-boolean v6, p0, Landroid/server/BluetoothA2dpService;->initialStart:Z

    .line 1110
    :cond_0
    :goto_0
    if-ne p3, v7, :cond_1

    if-ne p2, v8, :cond_1

    .line 1112
    iget-boolean v1, p0, Landroid/server/BluetoothA2dpService;->initialSuspend:Z

    if-eqz v1, :cond_3

    .line 1119
    iput-boolean v6, p0, Landroid/server/BluetoothA2dpService;->initialSuspend:Z

    .line 1141
    :cond_1
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1142
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1143
    const-string v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1144
    const-string v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1145
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1146
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1148
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothA2dpService;->setSinkPlayState(Landroid/bluetooth/BluetoothDevice;I)V

    .line 1149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A2DP Playing state : device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " State:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 1150
    return-void

    .line 1099
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1103
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1105
    const-string v1, "BluetoothA2dpService"

    const-string v2, "Send mute tone for remote AVDTP START"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1127
    :cond_3
    iget-boolean v1, p0, Landroid/server/BluetoothA2dpService;->isInCall:Z

    if-nez v1, :cond_4

    .line 1128
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "A2dpSuspended=true"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1134
    :cond_4
    const-string v1, "HBH-DS980"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1135
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1136
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1
.end method

.method private handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 11
    .parameter "device"
    .parameter "prevState"
    .parameter "state"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/16 v8, 0x9

    const/4 v7, 0x1

    .line 977
    if-eq p3, p2, :cond_4

    .line 978
    const-string v3, "BluetoothA2dpService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSinkStateChange(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    if-eqz p3, :cond_0

    const/4 v3, 0x3

    if-ne p3, v3, :cond_5

    .line 982
    :cond_0
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 985
    invoke-direct {p0, v7}, Landroid/server/BluetoothA2dpService;->setAvrcpConnect(Z)V

    .line 986
    invoke-direct {p0, v9}, Landroid/server/BluetoothA2dpService;->setAvrcpPassThroughInternal(Z)V

    .line 987
    invoke-direct {p0, v7}, Landroid/server/BluetoothA2dpService;->setAvrcpToggle(Z)V

    .line 988
    const/16 v3, 0xb

    invoke-direct {p0, p1, v3}, Landroid/server/BluetoothA2dpService;->setSinkPlayState(Landroid/bluetooth/BluetoothDevice;I)V

    .line 989
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1047
    :cond_1
    :goto_0
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    invoke-direct {p0, p3, p2, p1}, Landroid/server/BluetoothA2dpService;->checkSinkSuspendState(IILandroid/bluetooth/BluetoothDevice;)Z

    .line 1050
    const/4 v3, -0x1

    iput v3, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    .line 1052
    if-ne p3, v7, :cond_2

    .line 1053
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1058
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "A2dpSuspended=false"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1061
    :cond_2
    if-ne p3, v10, :cond_3

    .line 1064
    invoke-virtual {p0, p1}, Landroid/server/BluetoothA2dpService;->isA2dpReconnectBlacklist(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 1065
    const/16 v3, 0x3e8

    invoke-virtual {p0, p1, v3}, Landroid/server/BluetoothA2dpService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 1072
    :goto_1
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->adjustOtherSinkPriorities(Landroid/bluetooth/BluetoothDevice;)V

    .line 1075
    :cond_3
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, p1, p3}, Landroid/media/AudioManager;->setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v1

    .line 1077
    .local v1, delay:I
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1078
    const-string v3, "BluetoothA2dpService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSinkStateChange(): delay = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mIntentBroadcastHandler:Landroid/server/BluetoothA2dpService$IntentBroadcastHandler;

    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mIntentBroadcastHandler:Landroid/server/BluetoothA2dpService$IntentBroadcastHandler;

    invoke-virtual {v4, v9, p2, p3, p1}, Landroid/server/BluetoothA2dpService$IntentBroadcastHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    int-to-long v5, v1

    invoke-virtual {v3, v4, v5, v6}, Landroid/server/BluetoothA2dpService$IntentBroadcastHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1086
    .end local v1           #delay:I
    :cond_4
    return-void

    .line 990
    :cond_5
    if-ne p3, v10, :cond_1

    .line 991
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 994
    invoke-direct {p0, v7}, Landroid/server/BluetoothA2dpService;->setAvrcpPassThroughInternal(Z)V

    .line 995
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 996
    .local v0, BtClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v0, :cond_6

    .line 1016
    :cond_6
    const/4 v2, 0x0

    .line 1017
    .local v2, msDelay:I
    const-string v3, "590Plantronics"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "iMT525"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "Jabra Halo"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1020
    :cond_7
    const/16 v2, 0x3e8

    .line 1025
    :cond_8
    :goto_2
    if-eqz v2, :cond_9

    .line 1026
    const-string v3, "BluetoothA2dpService"

    const-string v4, "Send mute tone to trigger AVDTP start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    int-to-long v5, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1031
    :cond_9
    iget-boolean v3, p0, Landroid/server/BluetoothA2dpService;->isNaviEn:Z

    if-eqz v3, :cond_a

    .line 1032
    const-string v3, "BluetoothA2dpService"

    const-string v4, "Trigger AVDTP start for Navigation!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1034
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x1e

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1040
    :cond_a
    if-nez p2, :cond_1

    const-string v3, "HS3000"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1042
    const-string v3, "BluetoothA2dpService"

    const-string v4, "Trigger HFP connection with Samsung HS3000"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Landroid/server/BluetoothService;->notifyIncomingA2dpConnection(Ljava/lang/String;Z)Z

    goto/16 :goto_0

    .line 1021
    :cond_b
    const-string v3, "Motorola Finiti"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1022
    const/16 v2, 0x1f4

    goto :goto_2

    .line 1067
    .end local v0           #BtClass:Landroid/bluetooth/BluetoothClass;
    .end local v2           #msDelay:I
    :cond_c
    const-string v3, "BluetoothA2dpService"

    const-string v4, "Match A2DP reconnect blacklist"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    const/16 v3, 0x64

    invoke-virtual {p0, p1, v3}, Landroid/server/BluetoothA2dpService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto/16 :goto_1
.end method

.method private native initNative()Z
.end method

.method private isAVRCPIndependent(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 7
    .parameter "device"

    .prologue
    const/4 v5, 0x0

    .line 1311
    if-nez p1, :cond_1

    .line 1322
    :cond_0
    :goto_0
    return v5

    .line 1314
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 1315
    .local v4, remoteAddress:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1318
    sget-object v1, Landroid/server/BluetoothA2dpService;->INDEPENDENT_AVRCP_ADDRESS:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 1319
    .local v0, address:Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1320
    const/4 v5, 0x1

    goto :goto_0

    .line 1318
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private isAudioGatewaySupported()Z
    .locals 2

    .prologue
    .line 1374
    const-string/jumbo v0, "service.brcm.bt.ag_supported"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized isConnectSinkFeasible(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    .line 673
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->isSinkDevice(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 683
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 677
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->addAudioSink(Landroid/bluetooth/BluetoothDevice;)V

    .line 679
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 680
    .local v0, path:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 683
    const/4 v1, 0x1

    goto :goto_0

    .line 673
    .end local v0           #path:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private isDensoAudio(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    .line 1326
    if-nez p1, :cond_1

    .line 1336
    :cond_0
    :goto_0
    return v1

    .line 1329
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1330
    .local v0, remoteAddress:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1333
    const-string v2, "00:1B:FB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1334
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private declared-synchronized isDisconnectSinkFeasible(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .parameter "device"

    .prologue
    const/4 v2, 0x0

    .line 763
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 764
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 774
    :goto_0
    :pswitch_0
    monitor-exit p0

    return v2

    .line 768
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/server/BluetoothA2dpService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 769
    .local v1, state:I
    packed-switch v1, :pswitch_data_0

    .line 774
    :pswitch_1
    const/4 v2, 0x1

    goto :goto_0

    .line 763
    .end local v0           #path:Ljava/lang/String;
    .end local v1           #state:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 769
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isPhoneDocked(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 8
    .parameter "device"

    .prologue
    const/4 v3, 0x0

    .line 290
    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.DOCK_EVENT"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 291
    .local v1, i:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 292
    const-string v4, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 293
    .local v2, state:I
    if-eqz v2, :cond_0

    .line 294
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 295
    .local v0, dockDevice:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 296
    const/4 v3, 0x1

    .line 300
    .end local v0           #dockDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #state:I
    :cond_0
    return v3
.end method

.method private isSinkDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 593
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/server/BluetoothService;->getRemoteUuids(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 594
    .local v0, uuids:[Landroid/os/ParcelUuid;
    if-eqz v0, :cond_0

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 595
    const/4 v1, 0x1

    .line 597
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isUVOAudio(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    .line 1340
    if-nez p1, :cond_1

    .line 1351
    :cond_0
    :goto_0
    return v1

    .line 1343
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1344
    .local v0, remoteName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1347
    const-string v2, "Sportage"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1348
    const-string v1, "It\'s Sportage carkit"

    invoke-static {v1}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 1349
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1242
    const-string v0, "BluetoothA2dpService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    return-void
.end method

.method private declared-synchronized onBluetoothDisable()V
    .locals 9

    .prologue
    .line 634
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 635
    iget-object v7, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    new-array v2, v7, [Landroid/bluetooth/BluetoothDevice;

    .line 636
    .local v2, devices:[Landroid/bluetooth/BluetoothDevice;
    iget-object v7, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2           #devices:[Landroid/bluetooth/BluetoothDevice;
    check-cast v2, [Landroid/bluetooth/BluetoothDevice;

    .line 637
    .restart local v2       #devices:[Landroid/bluetooth/BluetoothDevice;
    move-object v0, v2

    .local v0, arr$:[Landroid/bluetooth/BluetoothDevice;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v0, v3

    .line 638
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/server/BluetoothA2dpService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    .line 639
    .local v6, state:I
    sparse-switch v6, :sswitch_data_0

    .line 637
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 643
    :sswitch_0
    iget-object v7, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/server/BluetoothA2dpService;->disconnectSinkNative(Ljava/lang/String;)Z

    .line 645
    const/4 v7, 0x0

    invoke-direct {p0, v1, v6, v7}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 634
    .end local v0           #arr$:[Landroid/bluetooth/BluetoothDevice;
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #devices:[Landroid/bluetooth/BluetoothDevice;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v6           #state:I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 648
    .restart local v0       #arr$:[Landroid/bluetooth/BluetoothDevice;
    .restart local v1       #device:Landroid/bluetooth/BluetoothDevice;
    .restart local v2       #devices:[Landroid/bluetooth/BluetoothDevice;
    .restart local v3       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #state:I
    :sswitch_1
    const/4 v7, 0x3

    const/4 v8, 0x0

    :try_start_1
    invoke-direct {p0, v1, v7, v8}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_1

    .line 653
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v6           #state:I
    :cond_0
    iget-object v7, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 656
    .end local v0           #arr$:[Landroid/bluetooth/BluetoothDevice;
    .end local v2           #devices:[Landroid/bluetooth/BluetoothDevice;
    .end local v3           #i$:I
    .end local v5           #len$:I
    :cond_1
    iget-object v7, p0, Landroid/server/BluetoothA2dpService;->mSinkPlayState:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 660
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Landroid/server/BluetoothA2dpService;->setAvrcpPassThroughInternal(Z)V

    .line 662
    iget-object v7, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    const-string v8, "bluetooth_enabled=false"

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 664
    const-string v7, "BluetoothA2dpService"

    const-string v8, "A2DP profile has been disconnected"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.bluetooth.device.action.PROFILE_DISCONNECTED"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 666
    .local v4, intent:Landroid/content/Intent;
    const-string v7, "android.bluetooth.device.extra.PROFILE"

    const/4 v8, 0x2

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 667
    iget-object v7, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.BLUETOOTH"

    invoke-virtual {v7, v4, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 668
    monitor-exit p0

    return-void

    .line 639
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method private declared-synchronized onBluetoothEnable()V
    .locals 12

    .prologue
    .line 612
    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v10, "Devices"

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 613
    .local v3, devices:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 614
    const-string v9, ","

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 615
    .local v7, paths:[Ljava/lang/String;
    move-object v1, v7

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, v1, v4

    .line 616
    .local v6, path:Ljava/lang/String;
    iget-object v9, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v6}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 617
    .local v0, address:Ljava/lang/String;
    iget-object v9, p0, Landroid/server/BluetoothA2dpService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v9, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 618
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v9, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v0}, Landroid/server/BluetoothService;->getRemoteUuids(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v8

    .line 619
    .local v8, remoteUuids:[Landroid/os/ParcelUuid;
    if-eqz v8, :cond_0

    .line 620
    const/4 v9, 0x2

    new-array v9, v9, [Landroid/os/ParcelUuid;

    const/4 v10, 0x0

    sget-object v11, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 623
    invoke-direct {p0, v2}, Landroid/server/BluetoothA2dpService;->addAudioSink(Landroid/bluetooth/BluetoothDevice;)V

    .line 615
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 627
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #path:Ljava/lang/String;
    .end local v7           #paths:[Ljava/lang/String;
    .end local v8           #remoteUuids:[Landroid/os/ParcelUuid;
    :cond_1
    invoke-virtual {p0}, Landroid/server/BluetoothA2dpService;->readA2dpAvrcpBlacklistData()V

    .line 628
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    .line 629
    iget-object v9, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    const-string v10, "bluetooth_enabled=true"

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 630
    iget-object v9, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    const-string v10, "A2dpSuspended=false"

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    monitor-exit p0

    return-void

    .line 612
    .end local v3           #devices:Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method private onConnectSinkResult(Ljava/lang/String;Z)V
    .locals 4
    .parameter "deviceObjectPath"
    .parameter "result"

    .prologue
    .line 1188
    if-nez p2, :cond_0

    .line 1189
    if-eqz p1, :cond_0

    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v3}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1190
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v3, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1191
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1197
    .end local v0           #address:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1192
    .restart local v0       #address:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 1193
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/server/BluetoothA2dpService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 1194
    .local v2, state:I
    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0
.end method

.method private declared-synchronized onSinkPropertyChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .parameter "path"
    .parameter "propValues"

    .prologue
    const/16 v7, 0xa

    .line 934
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5}, Landroid/server/BluetoothService;->isEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    .line 974
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 938
    :cond_1
    const/4 v5, 0x0

    :try_start_1
    aget-object v2, p2, v5

    .line 939
    .local v2, name:Ljava/lang/String;
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 940
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 941
    const-string v5, "BluetoothA2dpService"

    const-string/jumbo v6, "onSinkPropertyChanged: Address of the remote device in null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 934
    .end local v0           #address:Ljava/lang/String;
    .end local v2           #name:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 945
    .restart local v0       #address:Ljava/lang/String;
    .restart local v2       #name:Ljava/lang/String;
    :cond_2
    :try_start_2
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 947
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    const-string v5, "State"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 948
    const/4 v5, 0x1

    aget-object v5, p2, v5

    invoke-direct {p0, v5}, Landroid/server/BluetoothA2dpService;->convertBluezSinkStringToState(Ljava/lang/String;)I

    move-result v4

    .line 949
    .local v4, state:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "A2DP: onSinkPropertyChanged newState is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "mPlayingA2dpDevice: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 951
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    .line 954
    invoke-direct {p0, v1}, Landroid/server/BluetoothA2dpService;->addAudioSink(Landroid/bluetooth/BluetoothDevice;)V

    .line 955
    const/4 v5, 0x0

    invoke-direct {p0, v1, v5, v4}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 957
    :cond_3
    if-ne v4, v7, :cond_4

    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v5, :cond_4

    .line 958
    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    .line 959
    const/16 v5, 0xb

    invoke-direct {p0, v1, v4, v5}, Landroid/server/BluetoothA2dpService;->handleSinkPlayingStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 960
    :cond_4
    if-ne v4, v7, :cond_5

    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v5, :cond_5

    .line 962
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onSinkPropertyChanged(): already playing state, current mPlayingA2dpDevice: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 963
    :cond_5
    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v5, :cond_6

    .line 964
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    .line 965
    const/16 v5, 0xb

    const/16 v6, 0xa

    invoke-direct {p0, v1, v5, v6}, Landroid/server/BluetoothA2dpService;->handleSinkPlayingStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_0

    .line 968
    :cond_6
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    .line 969
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 970
    .local v3, prevState:I
    invoke-direct {p0, v1, v3, v4}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private synchronized native declared-synchronized resumeSinkNative(Ljava/lang/String;)Z
.end method

.method private synchronized native declared-synchronized setAVRCPOnNative(Z)V
.end method

.method private setAvrcpConnect(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 1355
    const-string/jumbo v1, "service.brcm.bt.avrcp_initial"

    if-eqz p1, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    return-void

    .line 1355
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private setAvrcpPassThroughInternal(Z)V
    .locals 2
    .parameter "on"

    .prologue
    .line 1359
    const-string/jumbo v1, "service.brcm.bt.avrcp_pass_thru"

    if-eqz p1, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    return-void

    .line 1359
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private setAvrcpToggle(Z)V
    .locals 2
    .parameter "on"

    .prologue
    .line 1369
    const-string/jumbo v1, "service.brcm.bt.avrcp_toggle"

    if-eqz p1, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    return-void

    .line 1369
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private setSinkPlayState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2
    .parameter "device"
    .parameter "playState"

    .prologue
    .line 608
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mSinkPlayState:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    return-void
.end method

.method private synchronized native declared-synchronized setToggleNative(Z)V
.end method

.method private synchronized native declared-synchronized suspendSinkNative(Ljava/lang/String;)Z
.end method


# virtual methods
.method public declared-synchronized A2dpStartLock()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1250
    monitor-enter p0

    :try_start_0
    const-string v4, "BluetoothA2dpService"

    const-string v5, "Enter A2dpStartCheck"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1253
    const-string v3, "BluetoothA2dpService"

    const-string v4, "No sink existed, exit"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1278
    :goto_0
    monitor-exit p0

    return v2

    .line 1257
    :cond_0
    :try_start_1
    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v4, :cond_1

    .line 1258
    const-string v3, "BluetoothA2dpService"

    const-string v4, "Already have sink under PLAYING state, exit"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1250
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1262
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Landroid/server/BluetoothA2dpService;->initialSuspend:Z

    .line 1263
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/server/BluetoothA2dpService;->initialStart:Z

    .line 1269
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1270
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    const/4 v4, 0x2

    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v4, v2, :cond_2

    .line 1271
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1272
    const-string v2, "BluetoothA2dpService"

    const-string v4, "Disable AVRCP"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/server/BluetoothA2dpService;->setAvrcpPassThroughInternal(Z)V

    goto :goto_1

    .line 1277
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_3
    const-string v2, "BluetoothA2dpService"

    const-string v4, "Exit A2dpStartCheck"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v2, v3

    .line 1278
    goto :goto_0
.end method

.method public declared-synchronized A2dpSuspendLock()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1283
    monitor-enter p0

    :try_start_0
    const-string v2, "BluetoothA2dpService"

    const-string v3, "Enter A2dpSuspendCheck"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1286
    const-string v1, "BluetoothA2dpService"

    const-string v2, "No sink existed, exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1307
    :goto_0
    monitor-exit p0

    return v0

    .line 1290
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v2, :cond_1

    .line 1291
    const-string v1, "BluetoothA2dpService"

    const-string v2, "Already have sink under NOT_PLAYING state, exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1283
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1295
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Landroid/server/BluetoothA2dpService;->initialStart:Z

    .line 1296
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/server/BluetoothA2dpService;->initialSuspend:Z

    .line 1300
    iget-boolean v0, p0, Landroid/server/BluetoothA2dpService;->isInCall:Z

    if-nez v0, :cond_2

    .line 1301
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1303
    :cond_2
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1304
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1306
    const-string v0, "BluetoothA2dpService"

    const-string v2, "Exit A2dpSuspendCheck"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    .line 1307
    goto :goto_0
.end method

.method public declared-synchronized allowIncomingConnect(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 6
    .parameter "device"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 910
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    const-string v5, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 913
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 922
    :goto_0
    monitor-exit p0

    return v2

    .line 916
    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v3, v0}, Landroid/server/BluetoothService;->getAuthorizationAgentRequestData(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 917
    .local v1, data:Ljava/lang/Integer;
    if-nez v1, :cond_1

    .line 918
    const-string v3, "BluetoothA2dpService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowIncomingConnect("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") called but no native data available"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 910
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #data:Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 921
    .restart local v0       #address:Ljava/lang/String;
    .restart local v1       #data:Ljava/lang/Integer;
    :cond_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allowIncomingConnect: A2DP: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 922
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v0, p2, v3}, Landroid/server/BluetoothService;->setAuthorizationNative(Ljava/lang/String;ZI)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    goto :goto_0
.end method

.method public declared-synchronized connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .parameter "device"

    .prologue
    .line 695
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectSink("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 698
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->isConnectSinkFeasible(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 715
    :goto_0
    monitor-exit p0

    return v2

    .line 700
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 701
    .local v1, sinkDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/server/BluetoothA2dpService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 707
    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 708
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectSink: processing previous action for device("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 709
    const/4 v2, 0x1

    goto :goto_0

    .line 711
    :cond_2
    invoke-virtual {p0, v1}, Landroid/server/BluetoothA2dpService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 695
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #sinkDevice:Landroid/bluetooth/BluetoothDevice;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 715
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_2
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/server/BluetoothService;->connectSink(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    goto :goto_0
.end method

.method public declared-synchronized connectSinkInternal(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .parameter "device"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 719
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2}, Landroid/server/BluetoothService;->isEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 759
    :goto_0
    monitor-exit p0

    return v2

    .line 721
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 724
    .local v1, state:I
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {p0, v2}, Landroid/server/BluetoothA2dpService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 728
    goto :goto_0

    .line 731
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 739
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 742
    .local v0, path:Ljava/lang/String;
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 748
    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    .line 750
    invoke-virtual {p0, p1}, Landroid/server/BluetoothA2dpService;->isAvrcpConnectionBlacklisted(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/server/BluetoothA2dpService;->isInCall:Z

    if-eqz v2, :cond_2

    .line 751
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/server/BluetoothA2dpService;->setAvrcpConnect(Z)V

    .line 754
    :cond_2
    invoke-direct {p0, v0}, Landroid/server/BluetoothA2dpService;->connectSinkNative(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 756
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p1, v2, v1}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 757
    goto :goto_0

    .end local v0           #path:Ljava/lang/String;
    :pswitch_0
    move v2, v3

    .line 734
    goto :goto_0

    :pswitch_1
    move v2, v4

    .line 736
    goto :goto_0

    .restart local v0       #path:Ljava/lang/String;
    :cond_3
    move v2, v4

    .line 759
    goto :goto_0

    .line 719
    .end local v0           #path:Ljava/lang/String;
    .end local v1           #state:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 724
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 731
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 778
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnectSink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 781
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->isDisconnectSinkFeasible(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 782
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/server/BluetoothService;->disconnectSink(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 778
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnectSinkInternal(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .parameter "device"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 786
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/server/BluetoothA2dpService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 787
    .local v1, state:I
    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 789
    .local v0, path:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 797
    :pswitch_0
    const/4 v4, 0x3

    invoke-direct {p0, p1, v1, v4}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    .line 798
    invoke-direct {p0, v0}, Landroid/server/BluetoothA2dpService;->disconnectSinkNative(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 800
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p1, v2, v1}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 803
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    :pswitch_1
    move v2, v3

    .line 791
    goto :goto_0

    .line 793
    :pswitch_2
    :try_start_1
    const-string v3, "BluetoothA2dpService"

    const-string v4, "disconnectSinkIntenal: disconnection in progress"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 786
    .end local v0           #path:Ljava/lang/String;
    .end local v1           #state:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 789
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1231
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    const-string v5, "BluetoothA2dpService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 1239
    :cond_0
    monitor-exit p0

    return-void

    .line 1234
    :cond_1
    :try_start_1
    const-string v3, "Cached audio devices:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1235
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1236
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1237
    .local v2, state:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/bluetooth/BluetoothA2dp;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1231
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #state:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 495
    :try_start_0
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->cleanupNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    invoke-super {p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->finalize()V

    .line 499
    return-void

    .line 497
    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->finalize()V

    throw v0
.end method

.method public declared-synchronized getConnectedDevices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 860
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    invoke-virtual {p0, v1}, Landroid/server/BluetoothA2dpService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 863
    .local v0, sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    monitor-exit p0

    return-object v0

    .line 860
    .end local v0           #sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .parameter "device"

    .prologue
    .line 852
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 854
    .local v0, state:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 855
    const/4 v1, 0x0

    .line 856
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 852
    .end local v0           #state:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 11
    .parameter "states"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 867
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.BLUETOOTH"

    const-string v10, "Need BLUETOOTH permission"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 869
    .local v6, sinks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v8, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 870
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/server/BluetoothA2dpService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    .line 871
    .local v5, sinkState:I
    move-object v0, p1

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_0

    aget v7, v0, v3

    .line 872
    .local v7, state:I
    if-ne v7, v5, :cond_1

    .line 873
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 867
    .end local v0           #arr$:[I
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #sinkState:I
    .end local v6           #sinks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v7           #state:I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 871
    .restart local v0       #arr$:[I
    .restart local v1       #device:Landroid/bluetooth/BluetoothDevice;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #sinkState:I
    .restart local v6       #sinks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    .restart local v7       #state:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 878
    .end local v0           #arr$:[I
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #sinkState:I
    .end local v7           #state:I
    :cond_2
    monitor-exit p0

    return-object v6
.end method

.method public declared-synchronized getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    .line 895
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getBluetoothA2dpSinkPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 895
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 687
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isA2dpPlaying("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 690
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 691
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 687
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isA2dpReconnectBlacklist(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .parameter "device"

    .prologue
    const/4 v3, 0x1

    .line 428
    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mA2dpExactNameBlacklist:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 429
    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mA2dpExactNameBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 430
    .local v1, blacklistName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 431
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 443
    .end local v1           #blacklistName:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :goto_0
    return v3

    .line 436
    :cond_1
    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mA2dpPartialNameBlacklist:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 437
    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mA2dpPartialNameBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 438
    .local v0, blacklistAddress:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 439
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 443
    .end local v0           #blacklistAddress:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isAvrcpConnectionBlacklisted(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .parameter "device"

    .prologue
    const/4 v3, 0x1

    .line 400
    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mConnectionAddressBlacklist:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 401
    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mConnectionAddressBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 402
    .local v0, blacklistAddress:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 403
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 423
    .end local v0           #blacklistAddress:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :goto_0
    return v3

    .line 408
    :cond_1
    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mConnectionExactNameBlacklist:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 409
    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mConnectionExactNameBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 410
    .local v1, blacklistName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 411
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 416
    .end local v1           #blacklistName:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mConnectionPartialNameBlacklist:Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    .line 417
    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mConnectionPartialNameBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 418
    .restart local v1       #blacklistName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 419
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    .line 423
    .end local v1           #blacklistName:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isAvrcpToggleBlacklisted(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .parameter "device"

    .prologue
    const/4 v3, 0x1

    .line 372
    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mToggleAddressBlacklist:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 373
    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mToggleAddressBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 374
    .local v0, blacklistAddress:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 375
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 395
    .end local v0           #blacklistAddress:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :goto_0
    return v3

    .line 380
    :cond_1
    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mToggleExactNameBlacklist:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 381
    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mToggleExactNameBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 382
    .local v1, blacklistName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 383
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 388
    .end local v1           #blacklistName:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mTogglePartialNameBlacklist:Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    .line 389
    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mTogglePartialNameBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 390
    .restart local v1       #blacklistName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 391
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    .line 395
    .end local v1           #blacklistName:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public readA2dpAvrcpBlacklistData()V
    .locals 10

    .prologue
    .line 304
    iget-object v8, p0, Landroid/server/BluetoothA2dpService;->mToggleAddressBlacklist:Ljava/util/ArrayList;

    if-nez v8, :cond_0

    iget-object v8, p0, Landroid/server/BluetoothA2dpService;->mToggleExactNameBlacklist:Ljava/util/ArrayList;

    if-nez v8, :cond_0

    iget-object v8, p0, Landroid/server/BluetoothA2dpService;->mTogglePartialNameBlacklist:Ljava/util/ArrayList;

    if-nez v8, :cond_0

    iget-object v8, p0, Landroid/server/BluetoothA2dpService;->mConnectionAddressBlacklist:Ljava/util/ArrayList;

    if-nez v8, :cond_0

    iget-object v8, p0, Landroid/server/BluetoothA2dpService;->mConnectionExactNameBlacklist:Ljava/util/ArrayList;

    if-nez v8, :cond_0

    iget-object v8, p0, Landroid/server/BluetoothA2dpService;->mConnectionPartialNameBlacklist:Ljava/util/ArrayList;

    if-nez v8, :cond_0

    iget-object v8, p0, Landroid/server/BluetoothA2dpService;->mA2dpExactNameBlacklist:Ljava/util/ArrayList;

    if-nez v8, :cond_0

    iget-object v8, p0, Landroid/server/BluetoothA2dpService;->mA2dpPartialNameBlacklist:Ljava/util/ArrayList;

    if-eqz v8, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    const/4 v2, 0x0

    .line 316
    .local v2, fstream:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    const-string v8, "etc/bluetooth/a2dp_avrcp.conf"

    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 317
    .end local v2           #fstream:Ljava/io/FileInputStream;
    .local v3, fstream:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 318
    .local v4, in:Ljava/io/DataInputStream;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 320
    .local v1, file:Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, line:Ljava/lang/String;
    if-eqz v5, :cond_b

    .line 321
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 322
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "//"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 323
    const-string v8, "="

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 324
    .local v7, value:[Ljava/lang/String;
    if-eqz v7, :cond_2

    array-length v8, v7

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 325
    const/4 v8, 0x1

    aget-object v8, v7, v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 327
    .local v6, val:[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v8, v7, v8

    const-string v9, "ToggleAddressBlacklist"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 328
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, p0, Landroid/server/BluetoothA2dpService;->mToggleAddressBlacklist:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 355
    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #val:[Ljava/lang/String;
    .end local v7           #value:[Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 356
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    :goto_2
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FileNotFoundException: readA2dpAvrcpBlacklistData"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 360
    if-eqz v2, :cond_0

    .line 362
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 363
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v8

    goto :goto_0

    .line 330
    .end local v2           #fstream:Ljava/io/FileInputStream;
    .restart local v1       #file:Ljava/io/BufferedReader;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v5       #line:Ljava/lang/String;
    .restart local v6       #val:[Ljava/lang/String;
    .restart local v7       #value:[Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    :try_start_4
    aget-object v8, v7, v8

    const-string v9, "ToggleExactNameBlacklist"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 331
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, p0, Landroid/server/BluetoothA2dpService;->mToggleExactNameBlacklist:Ljava/util/ArrayList;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 357
    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #val:[Ljava/lang/String;
    .end local v7           #value:[Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object v2, v3

    .line 358
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .local v0, e:Ljava/io/IOException;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    :goto_3
    :try_start_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException: readA2dpAvrcpBlacklistData"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 360
    if-eqz v2, :cond_0

    .line 362
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 333
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fstream:Ljava/io/FileInputStream;
    .restart local v1       #file:Ljava/io/BufferedReader;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v5       #line:Ljava/lang/String;
    .restart local v6       #val:[Ljava/lang/String;
    .restart local v7       #value:[Ljava/lang/String;
    :cond_4
    const/4 v8, 0x0

    :try_start_7
    aget-object v8, v7, v8

    const-string v9, "TogglePartialNameBlacklist"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 334
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, p0, Landroid/server/BluetoothA2dpService;->mTogglePartialNameBlacklist:Ljava/util/ArrayList;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_1

    .line 360
    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #val:[Ljava/lang/String;
    .end local v7           #value:[Ljava/lang/String;
    :catchall_0
    move-exception v8

    move-object v2, v3

    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    :goto_4
    if-eqz v2, :cond_5

    .line 362
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 360
    :cond_5
    :goto_5
    throw v8

    .line 336
    .end local v2           #fstream:Ljava/io/FileInputStream;
    .restart local v1       #file:Ljava/io/BufferedReader;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v5       #line:Ljava/lang/String;
    .restart local v6       #val:[Ljava/lang/String;
    .restart local v7       #value:[Ljava/lang/String;
    :cond_6
    const/4 v8, 0x0

    :try_start_9
    aget-object v8, v7, v8

    const-string v9, "ConnectionAddressBlacklist"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 337
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, p0, Landroid/server/BluetoothA2dpService;->mConnectionAddressBlacklist:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 339
    :cond_7
    const/4 v8, 0x0

    aget-object v8, v7, v8

    const-string v9, "ConnectionExactNameBlacklist"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 340
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, p0, Landroid/server/BluetoothA2dpService;->mConnectionExactNameBlacklist:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 342
    :cond_8
    const/4 v8, 0x0

    aget-object v8, v7, v8

    const-string v9, "ConnectionPartialNameBlacklist"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 343
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, p0, Landroid/server/BluetoothA2dpService;->mConnectionPartialNameBlacklist:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 346
    :cond_9
    const/4 v8, 0x0

    aget-object v8, v7, v8

    const-string v9, "mA2dpExactNameBlacklist"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 347
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, p0, Landroid/server/BluetoothA2dpService;->mA2dpExactNameBlacklist:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 349
    :cond_a
    const/4 v8, 0x0

    aget-object v8, v7, v8

    const-string v9, "mA2dpPartialNameBlacklist"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 350
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, p0, Landroid/server/BluetoothA2dpService;->mA2dpPartialNameBlacklist:Ljava/util/ArrayList;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_1

    .line 360
    .end local v6           #val:[Ljava/lang/String;
    .end local v7           #value:[Ljava/lang/String;
    :cond_b
    if-eqz v3, :cond_c

    .line 362
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :cond_c
    :goto_6
    move-object v2, v3

    .line 367
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 363
    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #line:Ljava/lang/String;
    :catch_3
    move-exception v9

    goto/16 :goto_5

    .end local v2           #fstream:Ljava/io/FileInputStream;
    .restart local v1       #file:Ljava/io/BufferedReader;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v5       #line:Ljava/lang/String;
    :catch_4
    move-exception v8

    goto :goto_6

    .line 360
    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #line:Ljava/lang/String;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    goto/16 :goto_4

    .line 357
    :catch_5
    move-exception v0

    goto/16 :goto_3

    .line 355
    :catch_6
    move-exception v0

    goto/16 :goto_2
.end method

.method public declared-synchronized resumeSink(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .parameter "device"

    .prologue
    const/4 v2, 0x0

    .line 830
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    const-string v5, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resumeSink("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), mTargetA2dpState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 833
    if-eqz p1, :cond_0

    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mSinkPlayState:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 848
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 837
    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v3}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 838
    const-string v3, "BluetoothA2dpService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Oops, resumeSink "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but BT is not enabled."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 830
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 842
    :cond_2
    :try_start_2
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 843
    .local v0, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mSinkPlayState:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 844
    .local v1, state:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 847
    const/16 v2, 0xa

    iput v2, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    .line 848
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {p0, v2, v3, p1}, Landroid/server/BluetoothA2dpService;->checkSinkSuspendState(IILandroid/bluetooth/BluetoothDevice;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    goto :goto_0
.end method

.method public setAvrcpPassThrough(Z)V
    .locals 3
    .parameter "on"

    .prologue
    .line 1363
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    const-string/jumbo v1, "service.brcm.bt.avrcp_pass_thru"

    if-eqz p1, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    return-void

    .line 1364
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public declared-synchronized setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3
    .parameter "device"
    .parameter "priority"

    .prologue
    .line 902
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    const-string v0, "BluetoothA2dpService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPriority = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p2}, Landroid/server/BluetoothA2dpService;->convertPriority(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getBluetoothA2dpSinkPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 902
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized suspendSink(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .parameter "device"

    .prologue
    const/4 v2, 0x0

    .line 807
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    const-string v5, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "suspendSink("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), mTargetA2dpState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 810
    if-eqz p1, :cond_0

    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mSinkPlayState:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 826
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 814
    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v3}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 815
    const-string v3, "BluetoothA2dpService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Oops, suspendSink "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but BT is not enabled."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 807
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 819
    :cond_2
    :try_start_2
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 820
    .local v0, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mSinkPlayState:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 821
    .local v1, state:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 825
    const/16 v2, 0xb

    iput v2, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    .line 826
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {p0, v2, v3, p1}, Landroid/server/BluetoothA2dpService;->checkSinkSuspendState(IILandroid/bluetooth/BluetoothDevice;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    goto :goto_0
.end method
