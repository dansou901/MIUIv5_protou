.class Lcom/android/server/WiredAccessoryObserver;
.super Landroid/os/UEventObserver;
.source "WiredAccessoryObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WiredAccessoryObserver$BootCompletedReceiver;,
        Lcom/android/server/WiredAccessoryObserver$UEventInfo;
    }
.end annotation


# static fields
.field private static final BIT_BEATS_NOTIFICATION:I = 0x1

.field private static final BIT_HDMI_AUDIO:I = 0x10

.field private static final BIT_HEADSET:I = 0x1

.field private static final BIT_HEADSET_NO_MIC:I = 0x2

.field private static final BIT_LISTEN_NOTIFICATION:I = 0x1

.field private static final BIT_USB_ACCESSORY:I = 0x40

.field private static final BIT_USB_DEVICE:I = 0x20

.field private static final BIT_USB_HEADSET_ANLG:I = 0x4

.field private static final BIT_USB_HEADSET_DGTL:I = 0x8

.field private static final HEADSETS_WITH_MIC:I = 0x1

.field private static final LOG:Z = true

.field private static final SUPPORTED_HEADSETS:I = 0x7f

.field private static final TAG:Ljava/lang/String;

.field private static uEventInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/WiredAccessoryObserver$UEventInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHeadsetName:Ljava/lang/String;

.field private mHeadsetState:I

.field private mPrevHeadsetState:I

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/android/server/WiredAccessoryObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    .line 162
    invoke-static {}, Lcom/android/server/WiredAccessoryObserver;->makeObservedUEventList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/WiredAccessoryObserver;->uEventInfo:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 173
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 369
    new-instance v1, Lcom/android/server/WiredAccessoryObserver$1;

    invoke-direct {v1, p0}, Lcom/android/server/WiredAccessoryObserver$1;-><init>(Lcom/android/server/WiredAccessoryObserver;)V

    iput-object v1, p0, Lcom/android/server/WiredAccessoryObserver;->mHandler:Landroid/os/Handler;

    .line 174
    iput-object p1, p0, Lcom/android/server/WiredAccessoryObserver;->mContext:Landroid/content/Context;

    .line 175
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 176
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "WiredAccessoryObserver"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/WiredAccessoryObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 177
    iget-object v1, p0, Lcom/android/server/WiredAccessoryObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 178
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/WiredAccessoryObserver;->mAudioManager:Landroid/media/AudioManager;

    .line 180
    new-instance v1, Lcom/android/server/WiredAccessoryObserver$BootCompletedReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/server/WiredAccessoryObserver$BootCompletedReceiver;-><init>(Lcom/android/server/WiredAccessoryObserver;Lcom/android/server/WiredAccessoryObserver$1;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 182
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/WiredAccessoryObserver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/server/WiredAccessoryObserver;->init()V

    return-void
.end method

.method static synthetic access$200()Ljava/util/List;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/server/WiredAccessoryObserver;->uEventInfo:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/WiredAccessoryObserver;IILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WiredAccessoryObserver;->setDevicesState(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/WiredAccessoryObserver;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/server/WiredAccessoryObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private final declared-synchronized init()V
    .locals 10

    .prologue
    .line 249
    monitor-enter p0

    const/16 v7, 0x400

    :try_start_0
    new-array v0, v7, [C

    .line 250
    .local v0, buffer:[C
    iget v7, p0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    iput v7, p0, Lcom/android/server/WiredAccessoryObserver;->mPrevHeadsetState:I

    .line 252
    sget-object v7, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v8, "init()"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    sget-object v7, Lcom/android/server/WiredAccessoryObserver;->uEventInfo:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 255
    sget-object v7, Lcom/android/server/WiredAccessoryObserver;->uEventInfo:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WiredAccessoryObserver$UEventInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    .local v6, uei:Lcom/android/server/WiredAccessoryObserver$UEventInfo;
    :try_start_1
    new-instance v3, Ljava/io/FileReader;

    invoke-virtual {v6}, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 259
    .local v3, file:Ljava/io/FileReader;
    const/4 v7, 0x0

    const/16 v8, 0x400

    invoke-virtual {v3, v0, v7, v8}, Ljava/io/FileReader;->read([CII)I

    move-result v5

    .line 260
    .local v5, len:I
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 261
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 263
    .local v1, curState:I
    if-lez v1, :cond_0

    .line 264
    invoke-virtual {v6}, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8, v1}, Lcom/android/server/WiredAccessoryObserver;->updateState(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 254
    .end local v1           #curState:I
    .end local v3           #file:Ljava/io/FileReader;
    .end local v5           #len:I
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 267
    :catch_0
    move-exception v2

    .line 268
    .local v2, e:Ljava/io/FileNotFoundException;
    :try_start_2
    sget-object v7, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not found while attempting to determine initial switch state"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 249
    .end local v0           #buffer:[C
    .end local v2           #e:Ljava/io/FileNotFoundException;
    .end local v4           #i:I
    .end local v6           #uei:Lcom/android/server/WiredAccessoryObserver$UEventInfo;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 270
    .restart local v0       #buffer:[C
    .restart local v4       #i:I
    .restart local v6       #uei:Lcom/android/server/WiredAccessoryObserver$UEventInfo;
    :catch_1
    move-exception v2

    .line 271
    .local v2, e:Ljava/lang/Exception;
    :try_start_3
    sget-object v7, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v8, ""

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 274
    .end local v2           #e:Ljava/lang/Exception;
    .end local v6           #uei:Lcom/android/server/WiredAccessoryObserver$UEventInfo;
    :cond_1
    monitor-exit p0

    return-void
.end method

.method private static makeObservedUEventList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/WiredAccessoryObserver$UEventInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v0, retVal:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/WiredAccessoryObserver$UEventInfo;>;"
    new-instance v1, Lcom/android/server/WiredAccessoryObserver$UEventInfo;

    const-string v2, "h2w"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v6, v3}, Lcom/android/server/WiredAccessoryObserver$UEventInfo;-><init>(Ljava/lang/String;II)V

    .line 101
    .local v1, uei:Lcom/android/server/WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :goto_0
    new-instance v1, Lcom/android/server/WiredAccessoryObserver$UEventInfo;

    .end local v1           #uei:Lcom/android/server/WiredAccessoryObserver$UEventInfo;
    const-string v2, "usb_audio"

    const/4 v3, 0x4

    const/16 v4, 0x8

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/WiredAccessoryObserver$UEventInfo;-><init>(Ljava/lang/String;II)V

    .line 109
    .restart local v1       #uei:Lcom/android/server/WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :goto_1
    new-instance v1, Lcom/android/server/WiredAccessoryObserver$UEventInfo;

    .end local v1           #uei:Lcom/android/server/WiredAccessoryObserver$UEventInfo;
    const-string v2, "usb_audio_class"

    const/16 v3, 0x20

    const/16 v4, 0x40

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/WiredAccessoryObserver$UEventInfo;-><init>(Ljava/lang/String;II)V

    .line 117
    .restart local v1       #uei:Lcom/android/server/WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :goto_2
    new-instance v1, Lcom/android/server/WiredAccessoryObserver$UEventInfo;

    .end local v1           #uei:Lcom/android/server/WiredAccessoryObserver$UEventInfo;
    const-string v2, "Beats"

    invoke-direct {v1, v2, v6, v5}, Lcom/android/server/WiredAccessoryObserver$UEventInfo;-><init>(Ljava/lang/String;II)V

    .line 125
    .restart local v1       #uei:Lcom/android/server/WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 126
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    :goto_3
    new-instance v1, Lcom/android/server/WiredAccessoryObserver$UEventInfo;

    .end local v1           #uei:Lcom/android/server/WiredAccessoryObserver$UEventInfo;
    const-string v2, "Listen_notification"

    invoke-direct {v1, v2, v6, v5}, Lcom/android/server/WiredAccessoryObserver$UEventInfo;-><init>(Ljava/lang/String;II)V

    .line 133
    .restart local v1       #uei:Lcom/android/server/WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 134
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    :goto_4
    new-instance v1, Lcom/android/server/WiredAccessoryObserver$UEventInfo;

    .end local v1           #uei:Lcom/android/server/WiredAccessoryObserver$UEventInfo;
    const-string v2, "hdmi_audio"

    invoke-direct {v1, v2, v7, v5}, Lcom/android/server/WiredAccessoryObserver$UEventInfo;-><init>(Ljava/lang/String;II)V

    .line 148
    .restart local v1       #uei:Lcom/android/server/WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 149
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    :goto_5
    return-object v0

    .line 104
    :cond_0
    sget-object v2, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v3, "This kernel does not have wired headset support"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    :cond_1
    sget-object v2, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v3, "This kernel does not have usb audio support"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 120
    :cond_2
    sget-object v2, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v3, "This kernel does not have usb audio support"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 128
    :cond_3
    sget-object v2, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v3, "This kernel does not have Beats notification support"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 136
    :cond_4
    sget-object v2, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v3, "This kernel does not have Listen notification support"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 151
    :cond_5
    new-instance v1, Lcom/android/server/WiredAccessoryObserver$UEventInfo;

    .end local v1           #uei:Lcom/android/server/WiredAccessoryObserver$UEventInfo;
    const-string v2, "hdmi"

    invoke-direct {v1, v2, v7, v5}, Lcom/android/server/WiredAccessoryObserver$UEventInfo;-><init>(Ljava/lang/String;II)V

    .line 152
    .restart local v1       #uei:Lcom/android/server/WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 153
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 155
    :cond_6
    sget-object v2, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v3, "This kernel does not have HDMI audio support"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private final setDeviceState(IIILjava/lang/String;)V
    .locals 6
    .parameter "headset"
    .parameter "headsetState"
    .parameter "prevHeadsetState"
    .parameter "headsetName"

    .prologue
    const/4 v5, 0x1

    .line 333
    and-int v2, p2, p1

    and-int v3, p3, p1

    if-eq v2, v3, :cond_0

    .line 337
    and-int v2, p2, p1

    if-eqz v2, :cond_1

    .line 338
    const/4 v1, 0x1

    .line 343
    .local v1, state:I
    :goto_0
    if-ne p1, v5, :cond_2

    .line 344
    const/4 v0, 0x4

    .line 363
    .local v0, device:I
    :goto_1
    sget-object v3, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v1, v5, :cond_9

    const-string v2, " connected"

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v2, p0, Lcom/android/server/WiredAccessoryObserver;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v0, v1, p4}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;)V

    .line 367
    .end local v0           #device:I
    .end local v1           #state:I
    :cond_0
    :goto_3
    return-void

    .line 340
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #state:I
    goto :goto_0

    .line 345
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 346
    const/16 v0, 0x8

    .restart local v0       #device:I
    goto :goto_1

    .line 347
    .end local v0           #device:I
    :cond_3
    const/4 v2, 0x4

    if-ne p1, v2, :cond_4

    .line 348
    const/16 v0, 0x800

    .restart local v0       #device:I
    goto :goto_1

    .line 349
    .end local v0           #device:I
    :cond_4
    const/16 v2, 0x8

    if-ne p1, v2, :cond_5

    .line 350
    const/16 v0, 0x1000

    .restart local v0       #device:I
    goto :goto_1

    .line 351
    .end local v0           #device:I
    :cond_5
    const/16 v2, 0x10

    if-ne p1, v2, :cond_6

    .line 352
    const/16 v0, 0x400

    .restart local v0       #device:I
    goto :goto_1

    .line 353
    .end local v0           #device:I
    :cond_6
    const/16 v2, 0x20

    if-ne p1, v2, :cond_7

    .line 354
    const/16 v0, 0x4000

    .restart local v0       #device:I
    goto :goto_1

    .line 355
    .end local v0           #device:I
    :cond_7
    const/16 v2, 0x40

    if-ne p1, v2, :cond_8

    .line 356
    const/16 v0, 0x2000

    .restart local v0       #device:I
    goto :goto_1

    .line 358
    .end local v0           #device:I
    :cond_8
    sget-object v2, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDeviceState() invalid headset type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 363
    .restart local v0       #device:I
    :cond_9
    const-string v2, " disconnected"

    goto :goto_2
.end method

.method private final declared-synchronized setDevicesState(IILjava/lang/String;)V
    .locals 3
    .parameter "headsetState"
    .parameter "prevHeadsetState"
    .parameter "headsetName"

    .prologue
    .line 320
    monitor-enter p0

    const/16 v0, 0x7f

    .line 321
    .local v0, allHeadsets:I
    const/4 v1, 0x1

    .local v1, curHeadset:I
    :goto_0
    if-eqz v0, :cond_1

    .line 322
    and-int v2, v1, v0

    if-eqz v2, :cond_0

    .line 323
    :try_start_0
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/WiredAccessoryObserver;->setDeviceState(IIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    xor-int/lit8 v2, v1, -0x1

    and-int/2addr v0, v2

    .line 321
    :cond_0
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 327
    :cond_1
    monitor-exit p0

    return-void

    .line 320
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private final declared-synchronized update(Ljava/lang/String;I)V
    .locals 15
    .parameter "newName"
    .parameter "newState"

    .prologue
    .line 278
    monitor-enter p0

    and-int/lit8 v4, p2, 0x7f

    .line 279
    .local v4, headsetState:I
    :try_start_0
    iget v9, p0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    or-int v5, v4, v9

    .line 280
    .local v5, newOrOld:I
    const/4 v1, 0x0

    .line 281
    .local v1, delay:I
    and-int/lit8 v7, v4, 0x4

    .line 282
    .local v7, usb_headset_anlg:I
    and-int/lit8 v8, v4, 0x8

    .line 283
    .local v8, usb_headset_dgtl:I
    and-int/lit8 v3, v4, 0x3

    .line 284
    .local v3, h2w_headset:I
    const/4 v2, 0x1

    .line 285
    .local v2, h2wStateChange:Z
    const/4 v6, 0x1

    .line 289
    .local v6, usbStateChange:Z
    sget-object v9, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "newState = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", headsetState = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "mHeadsetState = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget v9, p0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    if-eq v9, v4, :cond_0

    add-int/lit8 v9, v3, -0x1

    and-int/2addr v9, v3

    if-eqz v9, :cond_1

    .line 292
    :cond_0
    sget-object v9, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v10, "unsetting h2w flag"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/4 v2, 0x0

    .line 297
    :cond_1
    shr-int/lit8 v9, v7, 0x2

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    shr-int/lit8 v9, v8, 0x3

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 298
    sget-object v9, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v10, "unsetting usb flag"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v6, 0x0

    .line 301
    :cond_2
    if-nez v2, :cond_3

    if-nez v6, :cond_3

    .line 302
    sget-object v9, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v10, "invalid transition, returning ..."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    :goto_0
    monitor-exit p0

    return-void

    .line 306
    :cond_3
    :try_start_1
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetName:Ljava/lang/String;

    .line 307
    iget v9, p0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    iput v9, p0, Lcom/android/server/WiredAccessoryObserver;->mPrevHeadsetState:I

    .line 308
    iput v4, p0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    .line 310
    iget-object v9, p0, Lcom/android/server/WiredAccessoryObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 311
    iget-object v9, p0, Lcom/android/server/WiredAccessoryObserver;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/server/WiredAccessoryObserver;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    iget v12, p0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    iget v13, p0, Lcom/android/server/WiredAccessoryObserver;->mPrevHeadsetState:I

    iget-object v14, p0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetName:Ljava/lang/String;

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 278
    .end local v1           #delay:I
    .end local v2           #h2wStateChange:Z
    .end local v3           #h2w_headset:I
    .end local v5           #newOrOld:I
    .end local v6           #usbStateChange:Z
    .end local v7           #usb_headset_anlg:I
    .end local v8           #usb_headset_dgtl:I
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method private final declared-synchronized updateState(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .parameter "devPath"
    .parameter "name"
    .parameter "state"

    .prologue
    const/4 v8, 0x1

    .line 214
    monitor-enter p0

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    sget-object v5, Lcom/android/server/WiredAccessoryObserver;->uEventInfo:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 215
    sget-object v5, Lcom/android/server/WiredAccessoryObserver;->uEventInfo:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WiredAccessoryObserver$UEventInfo;

    .line 216
    .local v4, uei:Lcom/android/server/WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v4}, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 217
    const-string v5, "Beats"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 218
    sget-object v5, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Beats UEVENT: STATE:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v0, 0x0

    .line 221
    .local v0, bests_status:Z
    new-instance v2, Landroid/content/Intent;

    const-string v5, "BEATS_NATIVE_NOTIFICATION"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    .local v2, intent:Landroid/content/Intent;
    const/high16 v5, 0x4000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 223
    if-ne p3, v8, :cond_0

    .line 224
    const/4 v0, 0x1

    .line 226
    :cond_0
    const-string v5, "NotificationOn"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 227
    sget-object v5, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Beats UEVENT: bests_status:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v5, 0x0

    invoke-static {v2, v5}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    .end local v0           #bests_status:Z
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #uei:Lcom/android/server/WiredAccessoryObserver$UEventInfo;
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 229
    .restart local v4       #uei:Lcom/android/server/WiredAccessoryObserver$UEventInfo;
    :cond_2
    :try_start_1
    const-string v5, "Listen_notification"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 230
    sget-object v5, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listen UEVENT: STATE:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v3, 0x0

    .line 233
    .local v3, listen_status:Z
    new-instance v2, Landroid/content/Intent;

    const-string v5, "LISTEN_NATIVE_NOTIFICATION"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    .restart local v2       #intent:Landroid/content/Intent;
    const/high16 v5, 0x4000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 235
    if-ne p3, v8, :cond_3

    .line 236
    const/4 v3, 0x1

    .line 238
    :cond_3
    const-string v5, "NotificationOn"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 239
    sget-object v5, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listen UEVENT: listen_status:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v5, 0x0

    invoke-static {v2, v5}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 214
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #listen_status:Z
    .end local v4           #uei:Lcom/android/server/WiredAccessoryObserver$UEventInfo;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 242
    .restart local v4       #uei:Lcom/android/server/WiredAccessoryObserver$UEventInfo;
    :cond_4
    :try_start_2
    iget v5, p0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    invoke-virtual {v4, v5, p3}, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->computeNewHeadsetState(II)I

    move-result v5

    invoke-direct {p0, p2, v5}, Lcom/android/server/WiredAccessoryObserver;->update(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 214
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    .line 200
    sget-object v4, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Headset UEVENT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :try_start_0
    const-string v4, "DEVPATH"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, devPath:Ljava/lang/String;
    const-string v4, "SWITCH_NAME"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, name:Ljava/lang/String;
    const-string v4, "SWITCH_STATE"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 206
    .local v3, state:I
    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/WiredAccessoryObserver;->updateState(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v0           #devPath:Ljava/lang/String;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #state:I
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v1

    .line 208
    .local v1, e:Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not parse switch state from event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
