.class public Lmiui/view/VolumePanel;
.super Landroid/os/Handler;
.source "VolumePanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/view/VolumePanel$VolumeChangeInfo;,
        Lmiui/view/VolumePanel$StreamControl;,
        Lmiui/view/VolumePanel$StreamResources;
    }
.end annotation


# static fields
.field private static final ANIMATION_TIME_UNIT:I = 0x32

.field private static final BEEP_DURATION:I = 0x96

.field private static final FREE_DELAY:I = 0x2710

.field private static LOGD:Z = false

.field private static final MAX_VOLUME:I = 0x64

.field private static final MSG_FREE_RESOURCES:I = 0x1

.field private static final MSG_MUTE_CHANGED:I = 0x7

.field private static final MSG_PLAY_SOUND:I = 0x2

.field private static final MSG_REMOTE_VOLUME_CHANGED:I = 0x8

.field private static final MSG_REMOTE_VOLUME_UPDATE_IF_SHOWN:I = 0x9

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x6

.field private static final MSG_SLIDER_VISIBILITY_CHANGED:I = 0xa

.field private static final MSG_STOP_SOUNDS:I = 0x3

.field private static final MSG_TIMEOUT:I = 0x5

.field private static final MSG_VIBRATE:I = 0x4

.field private static final MSG_VOLUME_CHANGED:I = 0x0

.field public static final PLAY_SOUND_DELAY:I = 0x12c

.field private static final STREAMS:[Lmiui/view/VolumePanel$StreamResources; = null

.field private static final STREAM_MASTER:I = -0x64

.field private static final TAG:Ljava/lang/String; = "VolumePanel"

.field private static final TIMEOUT_DELAY:I = 0x3e8

.field public static final VIBRATE_DELAY:I = 0x12c

.field private static final VIBRATE_DURATION:I = 0x12c


# instance fields
.field private VOLUME_MAX:I

.field private VOLUME_NORMAL:I

.field private VOLUME_SILENT:I

.field private mActiveStreamType:I

.field private mAudioManager:Landroid/media/AudioManager;

.field protected mAudioService:Landroid/media/AudioService;

.field protected mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mIsAnimationCancel:Z

.field mLastAudibleRingVolume:I

.field private mOrientationChanged:I

.field mRestoreRingVolume:I

.field private mRingIsSilent:Z

.field private mStreamControls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lmiui/view/VolumePanel$StreamControl;",
            ">;"
        }
    .end annotation
.end field

.field private mThemeChanged:I

.field private mToneGenerators:[Landroid/media/ToneGenerator;

.field private mVibrator:Landroid/os/Vibrator;

.field private mView:Landroid/view/View;

.field private mVoiceCapable:Z

.field private mVolumeDivider:Landroid/widget/ImageView;

.field private mVolumeHeadSet:Landroid/widget/ImageView;

.field private mVolumeIcon:Landroid/widget/ImageView;

.field private mVolumePanel:Landroid/view/View;

.field private mVolumePregress:Lmiui/v5/widget/CircleProgressView;

.field private mVolumeStatus:I

.field private mVolumeType:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 76
    sput-boolean v2, Lmiui/view/VolumePanel;->LOGD:Z

    .line 200
    const/16 v0, 0x8

    new-array v0, v0, [Lmiui/view/VolumePanel$StreamResources;

    sget-object v1, Lmiui/view/VolumePanel$StreamResources;->BluetoothSCOStream:Lmiui/view/VolumePanel$StreamResources;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lmiui/view/VolumePanel$StreamResources;->RingerStream:Lmiui/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lmiui/view/VolumePanel$StreamResources;->VoiceStream:Lmiui/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lmiui/view/VolumePanel$StreamResources;->MediaStream:Lmiui/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lmiui/view/VolumePanel$StreamResources;->NotificationStream:Lmiui/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lmiui/view/VolumePanel$StreamResources;->AlarmStream:Lmiui/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lmiui/view/VolumePanel$StreamResources;->MasterStream:Lmiui/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lmiui/view/VolumePanel$StreamResources;->RemoteStream:Lmiui/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    sput-object v0, Lmiui/view/VolumePanel;->STREAMS:[Lmiui/view/VolumePanel$StreamResources;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioService;)V
    .locals 2
    .parameter "context"
    .parameter "volumeService"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 224
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 136
    iput v0, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    .line 232
    iput v0, p0, Lmiui/view/VolumePanel;->mThemeChanged:I

    .line 233
    iput v0, p0, Lmiui/view/VolumePanel;->mOrientationChanged:I

    .line 591
    iput v1, p0, Lmiui/view/VolumePanel;->VOLUME_NORMAL:I

    .line 592
    const/4 v0, 0x1

    iput v0, p0, Lmiui/view/VolumePanel;->VOLUME_MAX:I

    .line 593
    const/4 v0, 0x2

    iput v0, p0, Lmiui/view/VolumePanel;->VOLUME_SILENT:I

    .line 1132
    iput v1, p0, Lmiui/view/VolumePanel;->mLastAudibleRingVolume:I

    .line 1133
    iput v1, p0, Lmiui/view/VolumePanel;->mRestoreRingVolume:I

    .line 225
    iput-object p1, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    .line 226
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    .line 227
    iput-object p2, p0, Lmiui/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    .line 228
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->recreateIfNeeded()V

    .line 229
    invoke-direct {p0}, Lmiui/view/VolumePanel;->listenToRingerMode()V

    .line 230
    return-void
.end method

.method static synthetic access$000(Lmiui/view/VolumePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lmiui/view/VolumePanel;->resetTimeout()V

    return-void
.end method

.method static synthetic access$100(Lmiui/view/VolumePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lmiui/view/VolumePanel;->forceTimeout()V

    return-void
.end method

.method static synthetic access$200(Lmiui/view/VolumePanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    return v0
.end method

.method static synthetic access$202(Lmiui/view/VolumePanel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    return p1
.end method

.method static synthetic access$300(Lmiui/view/VolumePanel;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/view/VolumePanel;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lmiui/view/VolumePanel;->mVolumeDivider:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lmiui/view/VolumePanel;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lmiui/view/VolumePanel;->mVolumeHeadSet:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lmiui/view/VolumePanel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lmiui/view/VolumePanel;->mIsAnimationCancel:Z

    return v0
.end method

.method static synthetic access$800(Lmiui/view/VolumePanel;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lmiui/view/VolumePanel;->mVolumeIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lmiui/view/VolumePanel;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    return-object v0
.end method

.method private createStreamControl()V
    .locals 7

    .prologue
    .line 378
    new-instance v5, Ljava/util/HashMap;

    sget-object v6, Lmiui/view/VolumePanel;->STREAMS:[Lmiui/view/VolumePanel$StreamResources;

    array-length v6, v6

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    iput-object v5, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    .line 379
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v5, Lmiui/view/VolumePanel;->STREAMS:[Lmiui/view/VolumePanel$StreamResources;

    array-length v5, v5

    if-ge v0, v5, :cond_3

    .line 380
    sget-object v5, Lmiui/view/VolumePanel;->STREAMS:[Lmiui/view/VolumePanel$StreamResources;

    aget-object v3, v5, v0

    .line 381
    .local v3, streamRes:Lmiui/view/VolumePanel$StreamResources;
    iget v4, v3, Lmiui/view/VolumePanel$StreamResources;->streamType:I

    .line 382
    .local v4, streamType:I
    iget-boolean v5, p0, Lmiui/view/VolumePanel;->mVoiceCapable:Z

    if-eqz v5, :cond_0

    sget-object v5, Lmiui/view/VolumePanel$StreamResources;->NotificationStream:Lmiui/view/VolumePanel$StreamResources;

    if-ne v3, v5, :cond_0

    .line 383
    sget-object v3, Lmiui/view/VolumePanel$StreamResources;->RingerStream:Lmiui/view/VolumePanel$StreamResources;

    .line 385
    :cond_0
    new-instance v2, Lmiui/view/VolumePanel$StreamControl;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Lmiui/view/VolumePanel$StreamControl;-><init>(Lmiui/view/VolumePanel;Lmiui/view/VolumePanel$1;)V

    .line 386
    .local v2, sc:Lmiui/view/VolumePanel$StreamControl;
    iput v4, v2, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    .line 387
    iget v5, v3, Lmiui/view/VolumePanel$StreamResources;->iconRes:I

    iput v5, v2, Lmiui/view/VolumePanel$StreamControl;->iconRes:I

    .line 388
    iget v5, v3, Lmiui/view/VolumePanel$StreamResources;->iconMuteRes:I

    iput v5, v2, Lmiui/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 389
    iget v5, v3, Lmiui/view/VolumePanel$StreamResources;->descRes:I

    iput v5, v2, Lmiui/view/VolumePanel$StreamControl;->descRes:I

    .line 390
    const/4 v5, 0x6

    if-eq v4, v5, :cond_1

    if-nez v4, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 392
    .local v1, plusOne:I
    :goto_1
    invoke-direct {p0, v4}, Lmiui/view/VolumePanel;->getStreamMaxVolume(I)I

    move-result v5

    add-int/2addr v5, v1

    iput v5, v2, Lmiui/view/VolumePanel$StreamControl;->maxVolume:I

    .line 393
    iget-object v5, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 390
    .end local v1           #plusOne:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 395
    .end local v2           #sc:Lmiui/view/VolumePanel$StreamControl;
    .end local v3           #streamRes:Lmiui/view/VolumePanel$StreamResources;
    .end local v4           #streamType:I
    :cond_3
    return-void
.end method

.method private forceTimeout()V
    .locals 1

    .prologue
    const/4 v0, 0x5

    .line 1115
    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 1116
    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->sendMessage(Landroid/os/Message;)Z

    .line 1117
    return-void
.end method

.method private getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;
    .locals 4
    .parameter "streamType"

    .prologue
    .line 1004
    const/16 v1, -0x64

    if-ne p1, v1, :cond_0

    const/4 v1, 0x0

    .line 1016
    :goto_0
    return-object v1

    .line 1005
    :cond_0
    monitor-enter p0

    .line 1006
    :try_start_0
    iget-object v1, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 1008
    :try_start_1
    iget-object v1, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    new-instance v2, Landroid/media/ToneGenerator;

    const/16 v3, 0x64

    invoke-direct {v2, p1, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    aput-object v2, v1, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1016
    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1

    monitor-exit p0

    goto :goto_0

    .line 1017
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1009
    :catch_0
    move-exception v0

    .line 1010
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_3
    sget-boolean v1, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_1

    .line 1011
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToneGenerator constructor failed with RuntimeException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private getStreamMaxVolume(I)I
    .locals 1
    .parameter "streamType"

    .prologue
    .line 358
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 359
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterMaxVolume()I

    move-result v0

    .line 363
    :goto_0
    return v0

    .line 360
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 361
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRemoteStreamMaxVolume()I

    move-result v0

    goto :goto_0

    .line 363
    :cond_1
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method private getStreamVolume(I)I
    .locals 1
    .parameter "streamType"

    .prologue
    .line 368
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 369
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterVolume()I

    move-result v0

    .line 373
    :goto_0
    return v0

    .line 370
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 371
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRemoteStreamVolume()I

    move-result v0

    goto :goto_0

    .line 373
    :cond_1
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method private isMuted(I)Z
    .locals 1
    .parameter "streamType"

    .prologue
    .line 348
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 349
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMasterMute()Z

    move-result v0

    .line 353
    :goto_0
    return v0

    .line 350
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_2

    .line 351
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRemoteStreamVolume()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 353
    :cond_2
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    goto :goto_0
.end method

.method private listenToRingerMode()V
    .locals 3

    .prologue
    .line 326
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 327
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 328
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 329
    iget-object v1, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    new-instance v2, Lmiui/view/VolumePanel$4;

    invoke-direct {v2, p0}, Lmiui/view/VolumePanel$4;-><init>(Lmiui/view/VolumePanel;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 345
    return-void
.end method

.method private reorderStream(I)V
    .locals 4
    .parameter "activeStreamType"

    .prologue
    .line 398
    iget-object v1, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/VolumePanel$StreamControl;

    .line 399
    .local v0, active:Lmiui/view/VolumePanel$StreamControl;
    if-nez v0, :cond_0

    .line 400
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing stream type! - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const/4 v1, -0x1

    iput v1, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    .line 406
    :goto_0
    return-void

    .line 403
    :cond_0
    iput p1, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    .line 404
    invoke-direct {p0, v0}, Lmiui/view/VolumePanel;->updateState(Lmiui/view/VolumePanel$StreamControl;)V

    goto :goto_0
.end method

.method private resetTimeout()V
    .locals 3

    .prologue
    const/4 v0, 0x5

    .line 1110
    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 1111
    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lmiui/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1112
    return-void
.end method

.method private setMusicIcon(II)V
    .locals 3
    .parameter "resId"
    .parameter "resMuteId"

    .prologue
    .line 1026
    iget-object v1, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/VolumePanel$StreamControl;

    .line 1027
    .local v0, sc:Lmiui/view/VolumePanel$StreamControl;
    if-eqz v0, :cond_0

    .line 1028
    iput p1, v0, Lmiui/view/VolumePanel$StreamControl;->iconRes:I

    .line 1029
    iput p2, v0, Lmiui/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 1030
    iget-object v2, p0, Lmiui/view/VolumePanel;->mVolumeIcon:Landroid/widget/ImageView;

    iget v1, v0, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lmiui/view/VolumePanel;->isMuted(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Lmiui/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1031
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumeType:Landroid/widget/TextView;

    iget v2, v0, Lmiui/view/VolumePanel$StreamControl;->descRes:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1033
    :cond_0
    return-void

    .line 1030
    :cond_1
    iget v1, v0, Lmiui/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_0
.end method

.method private startMaxVolumeAnimation()V
    .locals 11

    .prologue
    .line 767
    const/16 v10, 0x46

    .line 768
    .local v10, ANIMATION_TIME:I
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3f8ccccd

    const/high16 v3, 0x3f80

    const v4, 0x3f8ccccd

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 770
    .local v0, scaleAnimation1:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0x46

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 771
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0xa

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setStartTime(J)V

    .line 773
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const v2, 0x3f8ccccd

    const/high16 v3, 0x3f80

    const v4, 0x3f8ccccd

    const/high16 v5, 0x3f80

    const/4 v6, 0x1

    const/high16 v7, 0x3f00

    const/4 v8, 0x1

    const/high16 v9, 0x3f00

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 775
    .local v1, scaleAnimation2:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0x46

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 777
    new-instance v2, Lmiui/view/VolumePanel$5;

    invoke-direct {v2, p0, v1}, Lmiui/view/VolumePanel$5;-><init>(Lmiui/view/VolumePanel;Landroid/view/animation/ScaleAnimation;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 796
    iget-object v2, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 797
    return-void
.end method

.method private startSilentAnimation()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x32

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 906
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 907
    .local v0, alphaAnimation1:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 909
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 910
    .local v1, alphaAnimation2:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 912
    new-instance v2, Lmiui/view/VolumePanel$8;

    invoke-direct {v2, p0, v1}, Lmiui/view/VolumePanel$8;-><init>(Lmiui/view/VolumePanel;Landroid/view/animation/AlphaAnimation;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 931
    iget-object v2, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 932
    return-void
.end method

.method private startVibrateAnimation()V
    .locals 15

    .prologue
    .line 802
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/view/VolumePanel;->mIsAnimationCancel:Z

    .line 804
    const/4 v0, 0x4

    new-array v12, v0, [Landroid/view/animation/RotateAnimation;

    .line 805
    .local v12, rotationAnimation:[Landroid/view/animation/RotateAnimation;
    const/4 v14, 0x0

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x4100

    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    aput-object v0, v12, v14

    .line 807
    const/4 v0, 0x0

    aget-object v0, v12, v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 808
    const/4 v0, 0x0

    aget-object v0, v12, v0

    const-wide/16 v1, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 810
    const/4 v14, 0x1

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, 0x4100

    const/high16 v2, -0x3f00

    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    aput-object v0, v12, v14

    .line 812
    const/4 v0, 0x1

    aget-object v0, v12, v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 813
    const/4 v0, 0x1

    aget-object v0, v12, v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 815
    const/4 v14, 0x2

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, -0x3f00

    const/high16 v2, 0x4100

    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    aput-object v0, v12, v14

    .line 817
    const/4 v0, 0x2

    aget-object v0, v12, v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 818
    const/4 v0, 0x2

    aget-object v0, v12, v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 820
    const/4 v14, 0x3

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, -0x3f00

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    aput-object v0, v12, v14

    .line 822
    const/4 v0, 0x3

    aget-object v0, v12, v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 823
    const/4 v0, 0x3

    aget-object v0, v12, v0

    const-wide/16 v1, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 825
    new-instance v9, Lmiui/view/VolumePanel$6;

    invoke-direct {v9, p0, v12}, Lmiui/view/VolumePanel$6;-><init>(Lmiui/view/VolumePanel;[Landroid/view/animation/RotateAnimation;)V

    .line 857
    .local v9, animationListener:Landroid/view/animation/Animation$AnimationListener;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    array-length v0, v12

    add-int/lit8 v0, v0, -0x1

    if-ge v10, v0, :cond_0

    .line 858
    aget-object v0, v12, v10

    invoke-virtual {v0, v9}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 857
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 860
    :cond_0
    iget-object v0, p0, Lmiui/view/VolumePanel;->mVolumeIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    aget-object v1, v12, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 863
    new-instance v11, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {v11, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 864
    .local v11, random:Ljava/util/Random;
    const/16 v7, 0xa

    .line 865
    .local v7, DISTANCEX:I
    const/4 v8, 0x5

    .line 867
    .local v8, DISTANCEY:I
    new-instance v13, Landroid/view/animation/TranslateAnimation;

    const/4 v0, 0x0

    const/high16 v1, 0x4120

    invoke-virtual {v11}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    const/high16 v3, 0x40a0

    invoke-virtual {v11}, Ljava/util/Random;->nextFloat()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-direct {v13, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 869
    .local v13, translateAnimation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v0, 0x32

    invoke-virtual {v13, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 871
    new-instance v0, Lmiui/view/VolumePanel$7;

    invoke-direct {v0, p0, v11}, Lmiui/view/VolumePanel$7;-><init>(Lmiui/view/VolumePanel;Ljava/util/Random;)V

    invoke-virtual {v13, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 902
    iget-object v0, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 903
    return-void
.end method

.method private updateState(Lmiui/view/VolumePanel$StreamControl;)V
    .locals 5
    .parameter "sc"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 410
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumePregress:Lmiui/v5/widget/CircleProgressView;

    iget v4, p1, Lmiui/view/VolumePanel$StreamControl;->maxVolume:I

    invoke-virtual {v1, v4}, Lmiui/v5/widget/CircleProgressView;->setMaxProgress(I)V

    .line 411
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumePregress:Lmiui/v5/widget/CircleProgressView;

    iget v4, p1, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v4}, Lmiui/view/VolumePanel;->getStreamVolume(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lmiui/v5/widget/CircleProgressView;->setProgress(I)V

    .line 412
    iget v1, p1, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lmiui/view/VolumePanel;->isMuted(I)Z

    move-result v0

    .line 413
    .local v0, muted:Z
    iget-object v4, p0, Lmiui/view/VolumePanel;->mVolumePregress:Lmiui/v5/widget/CircleProgressView;

    if-nez v0, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lmiui/v5/widget/CircleProgressView;->setEnabled(Z)V

    .line 414
    iget-object v4, p0, Lmiui/view/VolumePanel;->mVolumeIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget v1, p1, Lmiui/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 415
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumeType:Landroid/widget/TextView;

    iget v4, p1, Lmiui/view/VolumePanel$StreamControl;->descRes:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 416
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumePanel:Landroid/view/View;

    const v4, 0x6020195

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 417
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumePregress:Lmiui/v5/widget/CircleProgressView;

    invoke-virtual {v1, v3}, Lmiui/v5/widget/CircleProgressView;->setBackgroundResource(I)V

    .line 418
    iget v1, p1, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 420
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumeIcon:Landroid/widget/ImageView;

    const v4, 0x60201a3

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 421
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumePanel:Landroid/view/View;

    const v4, 0x6020196

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 422
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumePregress:Lmiui/v5/widget/CircleProgressView;

    const v4, 0x60201a0

    invoke-virtual {v1, v4}, Lmiui/v5/widget/CircleProgressView;->setBackgroundResource(I)V

    .line 424
    :cond_0
    iget v1, p1, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    const/16 v4, -0xc8

    if-ne v1, v4, :cond_3

    .line 427
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumePregress:Lmiui/v5/widget/CircleProgressView;

    invoke-virtual {v1, v2}, Lmiui/v5/widget/CircleProgressView;->setEnabled(Z)V

    .line 433
    :goto_2
    return-void

    :cond_1
    move v1, v3

    .line 413
    goto :goto_0

    .line 414
    :cond_2
    iget v1, p1, Lmiui/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_1

    .line 428
    :cond_3
    iget v1, p1, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    iget-object v4, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v4

    if-eq v1, v4, :cond_4

    if-eqz v0, :cond_4

    .line 429
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumePregress:Lmiui/v5/widget/CircleProgressView;

    invoke-virtual {v1, v3}, Lmiui/v5/widget/CircleProgressView;->setEnabled(Z)V

    goto :goto_2

    .line 431
    :cond_4
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumePregress:Lmiui/v5/widget/CircleProgressView;

    invoke-virtual {v1, v2}, Lmiui/v5/widget/CircleProgressView;->setEnabled(Z)V

    goto :goto_2
.end method

.method private updateStreamDevice(I)V
    .locals 4
    .parameter "streamType"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 466
    invoke-static {p1}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    .line 467
    .local v0, device:I
    if-nez p1, :cond_0

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    .line 468
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumeHeadSet:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 469
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumeDivider:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 470
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumeHeadSet:Landroid/widget/ImageView;

    const v2, 0x60202c0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 483
    :goto_0
    return-void

    .line 474
    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_1

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    .line 476
    :cond_1
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumeHeadSet:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 477
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumeDivider:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 478
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumeHeadSet:Landroid/widget/ImageView;

    const v2, 0x60202bf

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 480
    :cond_2
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumeHeadSet:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 481
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumeDivider:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v1, -0x1

    .line 1048
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1107
    :cond_0
    :goto_0
    return-void

    .line 1051
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lmiui/view/VolumePanel$VolumeChangeInfo;

    invoke-virtual {p0, v1, v2, v0}, Lmiui/view/VolumePanel;->onVolumeChanged(IILmiui/view/VolumePanel$VolumeChangeInfo;)V

    goto :goto_0

    .line 1056
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lmiui/view/VolumePanel;->onMuteChanged(II)V

    goto :goto_0

    .line 1061
    :pswitch_2
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->onFreeResources()V

    goto :goto_0

    .line 1066
    :pswitch_3
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->onStopSounds()V

    goto :goto_0

    .line 1071
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lmiui/view/VolumePanel;->onPlaySound(II)V

    goto :goto_0

    .line 1076
    :pswitch_5
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->onVibrate()V

    goto :goto_0

    .line 1081
    :pswitch_6
    iget-object v0, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1082
    iget-object v0, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1083
    iput v1, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    goto :goto_0

    .line 1088
    :pswitch_7
    iget-object v0, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    if-le v0, v1, :cond_0

    .line 1089
    iget-object v0, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    iget v1, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/VolumePanel$StreamControl;

    invoke-direct {p0, v0}, Lmiui/view/VolumePanel;->updateState(Lmiui/view/VolumePanel$StreamControl;)V

    goto :goto_0

    .line 1095
    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lmiui/view/VolumePanel;->onRemoteVolumeChanged(II)V

    goto :goto_0

    .line 1100
    :pswitch_9
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->onRemoteVolumeUpdateIfShown()V

    goto :goto_0

    .line 1104
    :pswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lmiui/view/VolumePanel;->onSliderVisibilityChanged(II)V

    goto :goto_0

    .line 1048
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 1146
    iget-object v0, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 1120
    invoke-direct {p0}, Lmiui/view/VolumePanel;->forceTimeout()V

    .line 1121
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1122
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.sound.RingerVolumeActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1124
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1126
    :try_start_0
    iget-object v2, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1130
    :goto_0
    return-void

    .line 1127
    :catch_0
    move-exception v0

    .line 1128
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "VolumePanel"

    const-string/jumbo v3, "start sound settings"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onFreeResources()V
    .locals 3

    .prologue
    .line 1036
    monitor-enter p0

    .line 1037
    :try_start_0
    iget-object v1, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 1038
    iget-object v1, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 1039
    iget-object v1, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 1041
    :cond_0
    iget-object v1, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 1037
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1043
    :cond_1
    monitor-exit p0

    .line 1044
    return-void

    .line 1043
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onMuteChanged(II)V
    .locals 5
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v4, 0x0

    .line 579
    sget-boolean v1, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMuteChanged(streamType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_0
    iget-object v1, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/VolumePanel$StreamControl;

    .line 582
    .local v0, sc:Lmiui/view/VolumePanel$StreamControl;
    if-eqz v0, :cond_1

    .line 583
    iget-object v2, p0, Lmiui/view/VolumePanel;->mVolumeIcon:Landroid/widget/ImageView;

    iget v1, v0, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lmiui/view/VolumePanel;->isMuted(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Lmiui/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 584
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumeType:Landroid/widget/TextView;

    iget v2, v0, Lmiui/view/VolumePanel$StreamControl;->descRes:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 587
    :cond_1
    new-instance v1, Lmiui/view/VolumePanel$VolumeChangeInfo;

    invoke-direct {v1, v4, v4}, Lmiui/view/VolumePanel$VolumeChangeInfo;-><init>(II)V

    invoke-virtual {p0, p1, p2, v1}, Lmiui/view/VolumePanel;->onVolumeChanged(IILmiui/view/VolumePanel$VolumeChangeInfo;)V

    .line 588
    return-void

    .line 583
    :cond_2
    iget v1, v0, Lmiui/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_0
.end method

.method protected onPlaySound(II)V
    .locals 4
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v2, 0x3

    .line 727
    invoke-virtual {p0, v2}, Lmiui/view/VolumePanel;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 728
    invoke-virtual {p0, v2}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 730
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->onStopSounds()V

    .line 733
    :cond_0
    monitor-enter p0

    .line 734
    :try_start_0
    invoke-direct {p0, p1}, Lmiui/view/VolumePanel;->getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;

    move-result-object v0

    .line 735
    .local v0, toneGen:Landroid/media/ToneGenerator;
    if-eqz v0, :cond_1

    .line 736
    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 737
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lmiui/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v1, v2, v3}, Lmiui/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 739
    :cond_1
    monitor-exit p0

    .line 740
    return-void

    .line 739
    .end local v0           #toneGen:Landroid/media/ToneGenerator;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onRemoteVolumeChanged(II)V
    .locals 6
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/16 v3, -0xc8

    .line 938
    sget-boolean v0, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRemoteVolumeChanged(stream:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 941
    :cond_1
    monitor-enter p0

    .line 942
    :try_start_0
    iget v0, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    if-eq v0, v3, :cond_2

    .line 943
    const/16 v0, -0xc8

    invoke-direct {p0, v0}, Lmiui/view/VolumePanel;->reorderStream(I)V

    .line 945
    :cond_2
    const/16 v0, -0xc8

    invoke-virtual {p0, v0, p2}, Lmiui/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 946
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 951
    :cond_3
    :goto_0
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lmiui/view/VolumePanel;->mRingIsSilent:Z

    if-nez v0, :cond_4

    .line 952
    invoke-virtual {p0, v4}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 953
    invoke-virtual {p0, v4, p1, p2}, Lmiui/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lmiui/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 956
    :cond_4
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_5

    .line 957
    invoke-virtual {p0, v4}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 958
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 959
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->onStopSounds()V

    .line 962
    :cond_5
    invoke-virtual {p0, v5}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 963
    invoke-virtual {p0, v5}, Lmiui/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lmiui/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 965
    invoke-direct {p0}, Lmiui/view/VolumePanel;->resetTimeout()V

    .line 966
    return-void

    .line 946
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 948
    :cond_6
    sget-boolean v0, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_3

    const-string v0, "VolumePanel"

    const-string v1, "not calling onShowVolumeChanged(), no FLAG_SHOW_UI or no UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onRemoteVolumeUpdateIfShown()V
    .locals 3

    .prologue
    const/16 v2, -0xc8

    .line 969
    sget-boolean v0, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    const-string v1, "onRemoteVolumeUpdateIfShown()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    :cond_0
    iget-object v0, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 973
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lmiui/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 975
    :cond_1
    return-void
.end method

.method protected onShowVolumeChanged(II)V
    .locals 13
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const v12, 0x602019a

    const/4 v11, 0x2

    const/4 v5, 0x0

    const/16 v10, -0xc8

    const/4 v6, 0x1

    .line 595
    invoke-direct {p0, p1}, Lmiui/view/VolumePanel;->getStreamVolume(I)I

    move-result v0

    .line 597
    .local v0, index:I
    iput-boolean v5, p0, Lmiui/view/VolumePanel;->mRingIsSilent:Z

    .line 599
    sget-boolean v7, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v7, :cond_0

    .line 600
    const-string v7, "VolumePanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onShowVolumeChanged(streamType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", flags: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "), index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_0
    invoke-direct {p0, p1}, Lmiui/view/VolumePanel;->getStreamMaxVolume(I)I

    move-result v1

    .line 608
    .local v1, max:I
    sparse-switch p1, :sswitch_data_0

    .line 674
    :cond_1
    :goto_0
    :sswitch_0
    iget-object v7, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/view/VolumePanel$StreamControl;

    .line 675
    .local v3, sc:Lmiui/view/VolumePanel$StreamControl;
    if-eqz v3, :cond_5

    .line 676
    iget v7, v3, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    if-ne v7, v11, :cond_2

    iget-object v7, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    if-eq v7, v6, :cond_3

    .line 678
    :cond_2
    iput-boolean v6, p0, Lmiui/view/VolumePanel;->mIsAnimationCancel:Z

    .line 680
    :cond_3
    iget-object v7, p0, Lmiui/view/VolumePanel;->mVolumePregress:Lmiui/v5/widget/CircleProgressView;

    iget v8, v3, Lmiui/view/VolumePanel$StreamControl;->maxVolume:I

    invoke-virtual {v7, v8}, Lmiui/v5/widget/CircleProgressView;->setMaxProgress(I)V

    .line 681
    iget-object v7, p0, Lmiui/view/VolumePanel;->mVolumePregress:Lmiui/v5/widget/CircleProgressView;

    invoke-virtual {v7, v0}, Lmiui/v5/widget/CircleProgressView;->setProgress(I)V

    .line 682
    iget v7, v3, Lmiui/view/VolumePanel$StreamControl;->maxVolume:I

    if-ne v0, v7, :cond_9

    iget-object v7, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 683
    iget v7, p0, Lmiui/view/VolumePanel;->mVolumeStatus:I

    iget v8, p0, Lmiui/view/VolumePanel;->VOLUME_MAX:I

    if-eq v7, v8, :cond_4

    .line 684
    invoke-direct {p0}, Lmiui/view/VolumePanel;->startMaxVolumeAnimation()V

    .line 685
    iget v7, p0, Lmiui/view/VolumePanel;->VOLUME_MAX:I

    iput v7, p0, Lmiui/view/VolumePanel;->mVolumeStatus:I

    .line 698
    :cond_4
    :goto_1
    iget-object v7, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v7

    if-eq p1, v7, :cond_b

    if-eq p1, v10, :cond_b

    invoke-direct {p0, p1}, Lmiui/view/VolumePanel;->isMuted(I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 700
    iget-object v7, p0, Lmiui/view/VolumePanel;->mVolumePregress:Lmiui/v5/widget/CircleProgressView;

    invoke-virtual {v7, v5}, Lmiui/v5/widget/CircleProgressView;->setEnabled(Z)V

    .line 706
    :cond_5
    :goto_2
    iget-object v5, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-nez v5, :cond_6

    .line 707
    if-ne p1, v10, :cond_d

    const/4 v4, -0x1

    .line 709
    .local v4, stream:I
    :goto_3
    iget-object v5, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v4}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 710
    iget-object v5, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v7, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 711
    iget-object v5, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 715
    .end local v4           #stream:I
    :cond_6
    if-eq p1, v10, :cond_7

    iget-object v5, p0, Lmiui/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v5, p1}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    if-ne v5, v6, :cond_7

    .line 721
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lmiui/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x12c

    invoke-virtual {p0, v5, v6, v7}, Lmiui/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 723
    :cond_7
    return-void

    .line 612
    .end local v3           #sc:Lmiui/view/VolumePanel$StreamControl;
    :sswitch_1
    iget-object v7, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 614
    .local v2, ringuri:Landroid/net/Uri;
    if-nez v2, :cond_1

    .line 615
    iput-boolean v6, p0, Lmiui/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    .line 622
    .end local v2           #ringuri:Landroid/net/Uri;
    :sswitch_2
    iget-object v7, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v7

    and-int/lit16 v7, v7, 0x380

    if-eqz v7, :cond_8

    .line 626
    const v7, 0x6020197

    const v8, 0x6020198

    invoke-direct {p0, v7, v8}, Lmiui/view/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_0

    .line 628
    :cond_8
    invoke-direct {p0, v12, v12}, Lmiui/view/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_0

    .line 639
    :sswitch_3
    add-int/lit8 v0, v0, 0x1

    .line 640
    add-int/lit8 v1, v1, 0x1

    .line 641
    goto/16 :goto_0

    .line 649
    :sswitch_4
    iget-object v7, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v7, v11}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 651
    .restart local v2       #ringuri:Landroid/net/Uri;
    if-nez v2, :cond_1

    .line 652
    iput-boolean v6, p0, Lmiui/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    .line 663
    .end local v2           #ringuri:Landroid/net/Uri;
    :sswitch_5
    add-int/lit8 v0, v0, 0x1

    .line 664
    add-int/lit8 v1, v1, 0x1

    .line 665
    goto/16 :goto_0

    .line 669
    :sswitch_6
    sget-boolean v7, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v7, :cond_1

    const-string v7, "VolumePanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "showing remote volume "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " over "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 687
    .restart local v3       #sc:Lmiui/view/VolumePanel$StreamControl;
    :cond_9
    iget v7, v3, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    if-ne v7, v11, :cond_a

    iget-object v7, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 690
    iget v7, p0, Lmiui/view/VolumePanel;->mVolumeStatus:I

    iget v8, p0, Lmiui/view/VolumePanel;->VOLUME_SILENT:I

    if-eq v7, v8, :cond_4

    .line 691
    invoke-direct {p0}, Lmiui/view/VolumePanel;->startSilentAnimation()V

    .line 692
    iget v7, p0, Lmiui/view/VolumePanel;->VOLUME_SILENT:I

    iput v7, p0, Lmiui/view/VolumePanel;->mVolumeStatus:I

    goto/16 :goto_1

    .line 695
    :cond_a
    iget v7, p0, Lmiui/view/VolumePanel;->VOLUME_NORMAL:I

    iput v7, p0, Lmiui/view/VolumePanel;->mVolumeStatus:I

    goto/16 :goto_1

    .line 702
    :cond_b
    iget-object v7, p0, Lmiui/view/VolumePanel;->mVolumePregress:Lmiui/v5/widget/CircleProgressView;

    invoke-direct {p0, p1}, Lmiui/view/VolumePanel;->isMuted(I)Z

    move-result v8

    if-nez v8, :cond_c

    move v5, v6

    :cond_c
    invoke-virtual {v7, v5}, Lmiui/v5/widget/CircleProgressView;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_d
    move v4, p1

    .line 707
    goto/16 :goto_3

    .line 608
    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0xc8 -> :sswitch_6
        0x0 -> :sswitch_3
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_0
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
    .end sparse-switch
.end method

.method protected declared-synchronized onSliderVisibilityChanged(II)V
    .locals 6
    .parameter "streamType"
    .parameter "visible"

    .prologue
    const/4 v1, 0x1

    .line 986
    monitor-enter p0

    :try_start_0
    sget-boolean v3, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSliderVisibilityChanged(stream="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", visi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    :cond_0
    if-ne p2, v1, :cond_2

    .line 988
    .local v1, isVisible:Z
    :goto_0
    sget-object v3, Lmiui/view/VolumePanel;->STREAMS:[Lmiui/view/VolumePanel$StreamResources;

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_1

    .line 989
    sget-object v3, Lmiui/view/VolumePanel;->STREAMS:[Lmiui/view/VolumePanel$StreamResources;

    aget-object v2, v3, v0

    .line 990
    .local v2, streamRes:Lmiui/view/VolumePanel$StreamResources;
    iget v3, v2, Lmiui/view/VolumePanel$StreamResources;->streamType:I

    if-ne v3, p1, :cond_3

    .line 991
    iput-boolean v1, v2, Lmiui/view/VolumePanel$StreamResources;->show:Z

    .line 992
    if-nez v1, :cond_1

    iget v3, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    if-ne v3, p1, :cond_1

    .line 993
    const/4 v3, -0x1

    iput v3, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 998
    .end local v2           #streamRes:Lmiui/view/VolumePanel$StreamResources;
    :cond_1
    monitor-exit p0

    return-void

    .line 987
    .end local v0           #i:I
    .end local v1           #isVisible:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 988
    .restart local v0       #i:I
    .restart local v1       #isVisible:Z
    .restart local v2       #streamRes:Lmiui/view/VolumePanel$StreamResources;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 986
    .end local v0           #i:I
    .end local v1           #isVisible:Z
    .end local v2           #streamRes:Lmiui/view/VolumePanel$StreamResources;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected onStopSounds()V
    .locals 4

    .prologue
    .line 744
    monitor-enter p0

    .line 745
    :try_start_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 746
    .local v1, numStreamTypes:I
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 747
    iget-object v3, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v2, v3, v0

    .line 748
    .local v2, toneGen:Landroid/media/ToneGenerator;
    if-eqz v2, :cond_0

    .line 749
    invoke-virtual {v2}, Landroid/media/ToneGenerator;->stopTone()V

    .line 746
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 752
    .end local v2           #toneGen:Landroid/media/ToneGenerator;
    :cond_1
    monitor-exit p0

    .line 753
    return-void

    .line 752
    .end local v0           #i:I
    .end local v1           #numStreamTypes:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method protected onVibrate()V
    .locals 3

    .prologue
    .line 758
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 764
    :goto_0
    return-void

    .line 762
    :cond_0
    iget-object v0, p0, Lmiui/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 763
    invoke-direct {p0}, Lmiui/view/VolumePanel;->startVibrateAnimation()V

    goto :goto_0
.end method

.method protected onVolumeChanged(IILmiui/view/VolumePanel$VolumeChangeInfo;)V
    .locals 5
    .parameter "streamType"
    .parameter "flags"
    .parameter "vc"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 545
    sget-boolean v0, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVolumeChanged(streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_3

    .line 548
    monitor-enter p0

    .line 549
    :try_start_0
    iget v0, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    if-eq v0, p1, :cond_1

    .line 550
    invoke-direct {p0, p1}, Lmiui/view/VolumePanel;->reorderStream(I)V

    .line 552
    :cond_1
    invoke-virtual {p0, p1, p2}, Lmiui/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 554
    if-ne v3, p1, :cond_2

    iget v0, p0, Lmiui/view/VolumePanel;->mRestoreRingVolume:I

    if-nez v0, :cond_2

    .line 555
    iget v0, p3, Lmiui/view/VolumePanel$VolumeChangeInfo;->mFromVolume:I

    iput v0, p0, Lmiui/view/VolumePanel;->mRestoreRingVolume:I

    .line 557
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    :cond_3
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lmiui/view/VolumePanel;->mRingIsSilent:Z

    if-nez v0, :cond_4

    .line 561
    invoke-virtual {p0, v3}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 562
    invoke-virtual {p0, v3, p1, p2}, Lmiui/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lmiui/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 565
    :cond_4
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_5

    .line 566
    invoke-virtual {p0, v3}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 567
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 568
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->onStopSounds()V

    .line 571
    :cond_5
    invoke-virtual {p0, v4}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 572
    invoke-virtual {p0, v4}, Lmiui/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lmiui/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 574
    invoke-direct {p0}, Lmiui/view/VolumePanel;->resetTimeout()V

    .line 575
    return-void

    .line 557
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postDisplaySafeVolumeWarning()V
    .locals 0

    .prologue
    .line 1152
    return-void
.end method

.method public postHasNewRemotePlaybackInfo()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 513
    invoke-virtual {p0, v1}, Lmiui/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    :goto_0
    return-void

    .line 516
    :cond_0
    invoke-virtual {p0, v1}, Lmiui/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postMasterMuteChanged(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 535
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Lmiui/view/VolumePanel;->postMuteChanged(II)V

    .line 536
    return-void
.end method

.method public postMasterVolumeChanged(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 520
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Lmiui/view/VolumePanel;->postVolumeChanged(II)V

    .line 521
    return-void
.end method

.method public postMuteChanged(II)V
    .locals 1
    .parameter "streamType"
    .parameter "flags"

    .prologue
    .line 524
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    :goto_0
    return-void

    .line 525
    :cond_0
    monitor-enter p0

    .line 526
    :try_start_0
    iget-object v0, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 527
    invoke-direct {p0}, Lmiui/view/VolumePanel;->createStreamControl()V

    .line 529
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 531
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1, p2}, Lmiui/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 529
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postRemoteSliderVisibility(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 497
    const/16 v1, 0xa

    const/16 v2, -0xc8

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v2, v0}, Lmiui/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 499
    return-void

    .line 497
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postRemoteVolumeChanged(II)V
    .locals 2
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/16 v1, 0x8

    .line 486
    invoke-virtual {p0, v1}, Lmiui/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    :goto_0
    return-void

    .line 487
    :cond_0
    monitor-enter p0

    .line 488
    :try_start_0
    iget-object v0, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 489
    invoke-direct {p0}, Lmiui/view/VolumePanel;->createStreamControl()V

    .line 491
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 493
    invoke-virtual {p0, v1, p1, p2}, Lmiui/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 491
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postVolumeChanged(II)V
    .locals 7
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v6, 0x0

    .line 436
    const/4 v0, 0x0

    .line 437
    .local v0, from:I
    const/4 v2, 0x0

    .line 438
    .local v2, to:I
    const/4 v3, 0x2

    if-ne v3, p1, :cond_0

    .line 439
    iget v0, p0, Lmiui/view/VolumePanel;->mLastAudibleRingVolume:I

    .line 440
    iget-object v3, p0, Lmiui/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v3, p1}, Landroid/media/AudioService;->getLastAudibleStreamVolume(I)I

    move-result v2

    .line 441
    iput v2, p0, Lmiui/view/VolumePanel;->mLastAudibleRingVolume:I

    .line 443
    :cond_0
    invoke-virtual {p0, v6}, Lmiui/view/VolumePanel;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 463
    :goto_0
    return-void

    .line 444
    :cond_1
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->recreateIfNeeded()V

    .line 445
    invoke-direct {p0, p1}, Lmiui/view/VolumePanel;->updateStreamDevice(I)V

    .line 446
    monitor-enter p0

    .line 447
    :try_start_0
    iget-object v3, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v3, :cond_2

    .line 448
    invoke-direct {p0}, Lmiui/view/VolumePanel;->createStreamControl()V

    .line 450
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    iget-object v3, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    .line 453
    iget-object v3, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/VolumePanel$StreamControl;

    .line 454
    .local v1, sc:Lmiui/view/VolumePanel$StreamControl;
    if-eqz v1, :cond_4

    .line 455
    iput p1, v1, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    .line 456
    iget-object v3, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    .end local v1           #sc:Lmiui/view/VolumePanel$StreamControl;
    :cond_3
    :goto_1
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 462
    new-instance v3, Lmiui/view/VolumePanel$VolumeChangeInfo;

    invoke-direct {v3, v0, v2}, Lmiui/view/VolumePanel$VolumeChangeInfo;-><init>(II)V

    invoke-virtual {p0, v6, p1, p2, v3}, Lmiui/view/VolumePanel;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 450
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 458
    .restart local v1       #sc:Lmiui/view/VolumePanel$StreamControl;
    :cond_4
    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unkown stream type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was not bind any streamcontrol"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public recreateIfNeeded()V
    .locals 12

    .prologue
    .line 235
    iget-object v9, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 236
    .local v0, config:Landroid/content/res/Configuration;
    if-nez v0, :cond_0

    const/4 v6, 0x0

    .line 237
    .local v6, themeChanged:I
    :goto_0
    if-nez v0, :cond_1

    const/4 v4, 0x0

    .line 238
    .local v4, orientationChanged:I
    :goto_1
    iget v9, p0, Lmiui/view/VolumePanel;->mThemeChanged:I

    if-ne v9, v6, :cond_2

    iget v9, p0, Lmiui/view/VolumePanel;->mOrientationChanged:I

    if-ne v9, v4, :cond_2

    .line 323
    :goto_2
    return-void

    .line 236
    .end local v4           #orientationChanged:I
    .end local v6           #themeChanged:I
    :cond_0
    iget-object v9, v0, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    iget v6, v9, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    goto :goto_0

    .line 237
    .restart local v6       #themeChanged:I
    :cond_1
    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    goto :goto_1

    .line 240
    .restart local v4       #orientationChanged:I
    :cond_2
    iput v6, p0, Lmiui/view/VolumePanel;->mThemeChanged:I

    .line 241
    iput v4, p0, Lmiui/view/VolumePanel;->mOrientationChanged:I

    .line 242
    const/4 v9, 0x0

    iput-object v9, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    .line 244
    iget-object v9, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x6090004

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 246
    .local v7, useMasterVolume:Z
    if-eqz v7, :cond_4

    .line 247
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    sget-object v9, Lmiui/view/VolumePanel;->STREAMS:[Lmiui/view/VolumePanel$StreamResources;

    array-length v9, v9

    if-ge v1, v9, :cond_4

    .line 248
    sget-object v9, Lmiui/view/VolumePanel;->STREAMS:[Lmiui/view/VolumePanel$StreamResources;

    aget-object v5, v9, v1

    .line 249
    .local v5, streamRes:Lmiui/view/VolumePanel$StreamResources;
    iget v9, v5, Lmiui/view/VolumePanel$StreamResources;->streamType:I

    const/16 v10, -0x64

    if-ne v9, v10, :cond_3

    const/4 v9, 0x1

    :goto_4
    iput-boolean v9, v5, Lmiui/view/VolumePanel$StreamResources;->show:Z

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 249
    :cond_3
    const/4 v9, 0x0

    goto :goto_4

    .line 253
    .end local v1           #i:I
    .end local v5           #streamRes:Lmiui/view/VolumePanel$StreamResources;
    :cond_4
    iget-object v9, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 255
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v9, 0x6030055

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    .line 256
    iget-object v9, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    new-instance v10, Lmiui/view/VolumePanel$1;

    invoke-direct {v10, p0}, Lmiui/view/VolumePanel$1;-><init>(Lmiui/view/VolumePanel;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 263
    iget-object v9, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object v9, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    const v10, 0x60b00b1

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lmiui/view/VolumePanel;->mVolumeIcon:Landroid/widget/ImageView;

    .line 266
    iget-object v9, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    const v10, 0x60b00b4

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lmiui/view/VolumePanel;->mVolumeType:Landroid/widget/TextView;

    .line 267
    iget-object v9, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    const v10, 0x60b00b0

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lmiui/view/VolumePanel;->mVolumeHeadSet:Landroid/widget/ImageView;

    .line 268
    iget-object v9, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    const v10, 0x60b00cf

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lmiui/view/VolumePanel;->mVolumeDivider:Landroid/widget/ImageView;

    .line 269
    iget-object v9, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    const v10, 0x60b00b3

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lmiui/v5/widget/CircleProgressView;

    iput-object v9, p0, Lmiui/view/VolumePanel;->mVolumePregress:Lmiui/v5/widget/CircleProgressView;

    .line 270
    iget-object v9, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    const v10, 0x60b00b2

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lmiui/view/VolumePanel;->mVolumePanel:Landroid/view/View;

    .line 272
    iget-object v9, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    if-eqz v9, :cond_5

    .line 273
    iget-object v9, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->dismiss()V

    .line 289
    :goto_5
    iget-object v9, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    const-string v10, "Volume control"

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v9, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v10, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 291
    iget-object v9, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    new-instance v10, Lmiui/view/VolumePanel$3;

    invoke-direct {v10, p0}, Lmiui/view/VolumePanel$3;-><init>(Lmiui/view/VolumePanel;)V

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 303
    iget-object v9, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 304
    .local v8, window:Landroid/view/Window;
    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 305
    .local v3, lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v9, 0x0

    iput-object v9, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 306
    if-eqz v0, :cond_6

    iget v9, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    .line 308
    const/16 v9, 0x30

    invoke-virtual {v8, v9}, Landroid/view/Window;->setGravity(I)V

    .line 309
    iget-object v9, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x60a004d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    iput v9, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 315
    :goto_6
    const/4 v9, 0x0

    iput-object v9, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 316
    const/16 v9, 0x7e4

    iput v9, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 317
    const/4 v9, -0x2

    iput v9, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 318
    const/4 v9, -0x2

    iput v9, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 319
    invoke-virtual {v8, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 320
    const v9, 0x40008

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 322
    iget-object v9, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x6090006

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    iput-boolean v9, p0, Lmiui/view/VolumePanel;->mVoiceCapable:Z

    goto/16 :goto_2

    .line 275
    .end local v3           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v8           #window:Landroid/view/Window;
    :cond_5
    new-instance v9, Lmiui/view/VolumePanel$2;

    iget-object v10, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    const v11, 0x60d0046

    invoke-direct {v9, p0, v10, v11}, Lmiui/view/VolumePanel$2;-><init>(Lmiui/view/VolumePanel;Landroid/content/Context;I)V

    iput-object v9, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    .line 286
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v9

    new-array v9, v9, [Landroid/media/ToneGenerator;

    iput-object v9, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    .line 287
    iget-object v9, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "vibrator"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Vibrator;

    iput-object v9, p0, Lmiui/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    goto/16 :goto_5

    .line 312
    .restart local v3       #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v8       #window:Landroid/view/Window;
    :cond_6
    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Landroid/view/Window;->setGravity(I)V

    .line 313
    const/4 v9, 0x0

    iput v9, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_6
.end method
