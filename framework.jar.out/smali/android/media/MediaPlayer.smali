.class public Landroid/media/MediaPlayer;
.super Ljava/lang/Object;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaPlayer$DLNAEventHandler;,
        Landroid/media/MediaPlayer$OnInfoListener;,
        Landroid/media/MediaPlayer$OnErrorListener;,
        Landroid/media/MediaPlayer$OnTimedTextListener;,
        Landroid/media/MediaPlayer$OnVideoSizeChangedListener;,
        Landroid/media/MediaPlayer$OnSeekCompleteListener;,
        Landroid/media/MediaPlayer$OnBufferingUpdateListener;,
        Landroid/media/MediaPlayer$OnCompletionListener;,
        Landroid/media/MediaPlayer$OnPreparedListener;,
        Landroid/media/MediaPlayer$EventHandler;,
        Landroid/media/MediaPlayer$TrackInfo;
    }
.end annotation


# static fields
.field private static final ANDROID_HTC_INVOKE_END:I = 0x2328

.field private static final ANDROID_HTC_INVOKE_START:I = 0x22ce

.field public static final APPLY_METADATA_FILTER:Z = true

.field public static final BYPASS_METADATA_FILTER:Z = false

.field private static final IMEDIA_PLAYER:Ljava/lang/String; = "android.media.IMediaPlayer"

.field private static final INVOKE_ID_ADD_EXTERNAL_SOURCE:I = 0x2

.field private static final INVOKE_ID_ADD_EXTERNAL_SOURCE_FD:I = 0x3

.field private static final INVOKE_ID_DESELECT_TRACK:I = 0x5

.field private static final INVOKE_ID_GET_TRACK_INFO:I = 0x1

.field private static final INVOKE_ID_SELECT_TRACK:I = 0x4

.field private static final INVOKE_ID_SET_VIDEO_SCALE_MODE:I = 0x6

.field private static final KEY_PARAMETER_MEDIA_TRACK_BASE:I = 0x7d0

.field private static final KEY_PARAMETER_MEDIA_TRACK_INFO:I = 0x7d0

.field private static final MEDIA_BUFFERING_UPDATE:I = 0x3

.field private static final MEDIA_ERROR:I = 0x64

.field public static final MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:I = 0xc8

.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_ERROR_UNKNOWN:I = 0x1

.field private static final MEDIA_INFO:I = 0xc8

.field public static final MEDIA_INFO_BAD_INTERLEAVING:I = 0x320

.field public static final MEDIA_INFO_BUFFERING_END:I = 0x2be

.field public static final MEDIA_INFO_BUFFERING_START:I = 0x2bd

.field public static final MEDIA_INFO_METADATA_UPDATE:I = 0x322

.field public static final MEDIA_INFO_NOT_SEEKABLE:I = 0x321

.field public static final MEDIA_INFO_STARTED_AS_NEXT:I = 0x2

.field public static final MEDIA_INFO_TIMED_TEXT_ERROR:I = 0x384

.field public static final MEDIA_INFO_UNKNOWN:I = 0x1

.field public static final MEDIA_INFO_VIDEO_TRACK_LAGGING:I = 0x2bc

.field public static final MEDIA_MIMETYPE_TEXT_SUBRIP:Ljava/lang/String; = "application/x-subrip"

.field private static final MEDIA_NOP:I = 0x0

.field private static final MEDIA_PLAYBACK_COMPLETE:I = 0x2

.field private static final MEDIA_PREPARED:I = 0x1

.field private static final MEDIA_SEEK_COMPLETE:I = 0x4

.field private static final MEDIA_SET_VIDEO_SIZE:I = 0x5

.field private static final MEDIA_TIMED_TEXT:I = 0x63

.field public static final METADATA_ALL:Z = false

.field public static final METADATA_UPDATE_ONLY:Z = true

.field private static final MM_HEADERS:[Ljava/lang/String; = null

.field private static final MM_SETTINGS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "MediaPlayer"

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT:I = 0x1

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING:I = 0x2

.field private static final mEnableDLNAHiddenFuncFileName:Ljava/lang/String; = ".enableDLNAhiddnefunc"

.field private static mForceDisableDLNA:Z

.field private static mNetworkType:Ljava/lang/String;


# instance fields
.field private final ACTION_AUDIO_STREAMING_MODE_CHANGE:Ljava/lang/String;

.field private final DISABLE_DLNA:I

.field private final DLNAPrepareFailed:I

.field private final KEY_AUDIO_STREAMING_MODE:Ljava/lang/String;

.field private final TAG_UB:Ljava/lang/String;

.field private final TURNOFFSKIPSEEKPREVIEWMODE:I

.field private final TURNONSKIPSEEKPREVIEWMODE:I

.field private final UB_START:I

.field private final UB_STOP:I

.field private cb:Landroid/view/SurfaceHolder$Callback;

.field isAudioOnly:Z

.field isStreamingPlay:Z

.field private mContext:Landroid/content/Context;

.field private volatile mDLNAAgent:Landroid/media/MediaPluginDLNA;

.field private mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;

.field private final mDLNAFlag:Z

.field private mDLNAInitDone:Z

.field private mDLNALock:Ljava/lang/Object;

.field private mDLNAMode:Z

.field private mDLNAThumbnail:Landroid/graphics/Bitmap;

.field private mDoSeekFlag:Z

.field private final mDummyHeight:I

.field private final mDummyWidth:I

.field private mEventHandler:Landroid/media/MediaPlayer$EventHandler;

.field private mICallBack:Landroid/os/IBinder;

.field private mListenerContext:I

.field private mNativeContext:I

.field private mNativeSurfaceTexture:I

.field private mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

.field private mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mPath:Ljava/lang/String;

.field private mPreSeekSec:I

.field private mPrepareDone:Z

.field private mScreenOnWhilePlaying:Z

.field private mStayAwake:Z

.field private mStreamType:I

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mUseFileDescriptor:Z

.field mUseProxy:Ljava/lang/Boolean;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 578
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 579
    invoke-static {}, Landroid/media/MediaPlayer;->native_init()V

    .line 609
    sput-boolean v3, Landroid/media/MediaPlayer;->mForceDisableDLNA:Z

    .line 3663
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "minudpport"

    aput-object v1, v0, v3

    const-string/jumbo v1, "maxudpport"

    aput-object v1, v0, v4

    const-string v1, "buffertime"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string/jumbo v2, "rtsptimeout"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "rtptimeout"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "rtcpreportinterval"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "rtspkeepaliveinterval"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MediaPlayer;->MM_SETTINGS:[Ljava/lang/String;

    .line 3673
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "rtspuseragent"

    aput-object v1, v0, v3

    const-string/jumbo v1, "wapprofile"

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/MediaPlayer;->MM_HEADERS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 594
    iput-object v3, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 599
    iput-boolean v4, p0, Landroid/media/MediaPlayer;->mDLNAFlag:Z

    .line 600
    const/16 v1, 0x1e0

    iput v1, p0, Landroid/media/MediaPlayer;->mDummyWidth:I

    .line 601
    const/16 v1, 0x140

    iput v1, p0, Landroid/media/MediaPlayer;->mDummyHeight:I

    .line 602
    const/16 v1, -0x1f4

    iput v1, p0, Landroid/media/MediaPlayer;->DLNAPrepareFailed:I

    .line 603
    const/16 v1, 0x4000

    iput v1, p0, Landroid/media/MediaPlayer;->DISABLE_DLNA:I

    .line 604
    iput-object v3, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    .line 605
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mDLNALock:Ljava/lang/Object;

    .line 606
    iput-boolean v2, p0, Landroid/media/MediaPlayer;->mUseFileDescriptor:Z

    .line 607
    iput-boolean v2, p0, Landroid/media/MediaPlayer;->mPrepareDone:Z

    .line 608
    iput-boolean v2, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    .line 610
    const-string v1, ""

    iput-object v1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    .line 611
    iput-boolean v2, p0, Landroid/media/MediaPlayer;->mDoSeekFlag:Z

    .line 612
    iput v2, p0, Landroid/media/MediaPlayer;->mPreSeekSec:I

    .line 613
    iput-boolean v2, p0, Landroid/media/MediaPlayer;->mDLNAInitDone:Z

    .line 615
    const/16 v1, 0x22e0

    iput v1, p0, Landroid/media/MediaPlayer;->TURNONSKIPSEEKPREVIEWMODE:I

    .line 616
    const/16 v1, 0x22e1

    iput v1, p0, Landroid/media/MediaPlayer;->TURNOFFSKIPSEEKPREVIEWMODE:I

    .line 617
    iput-object v3, p0, Landroid/media/MediaPlayer;->mDLNAThumbnail:Landroid/graphics/Bitmap;

    .line 1294
    iput v4, p0, Landroid/media/MediaPlayer;->UB_START:I

    .line 1295
    const/4 v1, 0x2

    iput v1, p0, Landroid/media/MediaPlayer;->UB_STOP:I

    .line 1296
    const-string v1, "HtcDeviceInfoManager"

    iput-object v1, p0, Landroid/media/MediaPlayer;->TAG_UB:Ljava/lang/String;

    .line 1523
    iput-boolean v2, p0, Landroid/media/MediaPlayer;->isStreamingPlay:Z

    .line 1524
    iput-boolean v2, p0, Landroid/media/MediaPlayer;->isAudioOnly:Z

    .line 1525
    const-string v1, "com.htc.Audio.Streaming.ModeChange"

    iput-object v1, p0, Landroid/media/MediaPlayer;->ACTION_AUDIO_STREAMING_MODE_CHANGE:Ljava/lang/String;

    .line 1526
    const-string v1, "audio_streaming_status"

    iput-object v1, p0, Landroid/media/MediaPlayer;->KEY_AUDIO_STREAMING_MODE:Ljava/lang/String;

    .line 1940
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mICallBack:Landroid/os/IBinder;

    .line 1942
    const/4 v1, 0x3

    iput v1, p0, Landroid/media/MediaPlayer;->mStreamType:I

    .line 3237
    new-instance v1, Landroid/media/MediaPlayer$2;

    invoke-direct {v1, p0}, Landroid/media/MediaPlayer$2;-><init>(Landroid/media/MediaPlayer;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

    .line 3596
    new-instance v1, Landroid/media/MediaPlayer$5;

    invoke-direct {v1, p0}, Landroid/media/MediaPlayer$5;-><init>(Landroid/media/MediaPlayer;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->cb:Landroid/view/SurfaceHolder$Callback;

    .line 3662
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaPlayer;->mUseProxy:Ljava/lang/Boolean;

    .line 631
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 632
    new-instance v1, Landroid/media/MediaPlayer$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/MediaPlayer$EventHandler;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    .line 642
    :goto_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Landroid/media/MediaPlayer;->native_setup(Ljava/lang/Object;)V

    .line 643
    return-void

    .line 633
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 634
    new-instance v1, Landroid/media/MediaPlayer$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/MediaPlayer$EventHandler;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    goto :goto_0

    .line 636
    :cond_1
    iput-object v3, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    goto :goto_0
.end method

.method private AddProxyInfo(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/util/Map;)V
    .locals 6
    .parameter "host"
    .parameter "resolver"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3923
    .local p3, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "streamplayer_httpproxyip_HTC"

    invoke-static {p2, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3924
    .local v0, httpProxyIP:Ljava/lang/String;
    const-string/jumbo v4, "streamplayer_httpproxyport_HTC"

    invoke-static {p2, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3925
    .local v1, httpProxyPort:Ljava/lang/String;
    const-string/jumbo v4, "streamplayer_rtspproxyip_HTC"

    invoke-static {p2, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3926
    .local v2, rtspProxyIP:Ljava/lang/String;
    const-string/jumbo v4, "streamplayer_rtspproxyport_HTC"

    invoke-static {p2, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3928
    .local v3, rtspProxyPort:Ljava/lang/String;
    iget-object v4, p0, Landroid/media/MediaPlayer;->mUseProxy:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "0.0.0.0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "0"

    invoke-virtual {v1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_3

    .line 3929
    if-eqz p1, :cond_2

    const-string v4, "localhost"

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "127.0.0.1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    .line 3930
    :cond_0
    const-string v4, "MediaPlayer"

    const-string v5, "localhost"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3940
    :goto_0
    iget-object v4, p0, Landroid/media/MediaPlayer;->mUseProxy:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "0.0.0.0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_5

    .line 3941
    if-eqz p1, :cond_4

    const-string v4, "localhost"

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "127.0.0.1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4

    .line 3942
    :cond_1
    const-string v4, "MediaPlayer"

    const-string v5, "localhost"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3951
    :goto_1
    return-void

    .line 3932
    :cond_2
    const-string v4, "MediaPlayer"

    const-string/jumbo v5, "setting hp"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3933
    const-string/jumbo v4, "x-htc-httpproxyip"

    invoke-interface {p3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3934
    const-string/jumbo v4, "x-htc-httpproxyport"

    invoke-interface {p3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3937
    :cond_3
    const-string v4, "MediaPlayer"

    const-string/jumbo v5, "skip setting hp"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3944
    :cond_4
    const-string v4, "MediaPlayer"

    const-string/jumbo v5, "setting rp"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3945
    const-string/jumbo v4, "x-htc-rtspproxyip"

    invoke-interface {p3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3946
    const-string/jumbo v4, "x-htc-rtspproxyport"

    invoke-interface {p3, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3949
    :cond_5
    const-string v4, "MediaPlayer"

    const-string/jumbo v5, "skip setting rp"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private native _disconnectSurface(Landroid/view/Surface;)V
.end method

.method private native _getParameter(ILandroid/os/Parcel;)V
.end method

.method private _invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 7
    .parameter "request"
    .parameter "reply"

    .prologue
    const/4 v6, 0x0

    .line 703
    iget-boolean v3, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v3, :cond_1

    .line 729
    :cond_0
    :goto_0
    return-void

    .line 705
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    if-eqz v3, :cond_3

    .line 706
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 707
    .local v1, nID:I
    const-string v3, "MediaPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DLNA]invoke nID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    const/16 v3, 0x4000

    if-ne v1, v3, :cond_2

    .line 709
    const-string v3, "MediaPlayer"

    const-string v4, "[DLNA]force disable DLNA mode!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const/4 v3, 0x1

    sput-boolean v3, Landroid/media/MediaPlayer;->mForceDisableDLNA:Z

    goto :goto_0

    .line 713
    :cond_2
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 717
    .end local v1           #nID:I
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 718
    .local v0, methodID:I
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 720
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v2

    .line 721
    .local v2, retcode:I
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 722
    if-eqz v2, :cond_0

    .line 723
    const/16 v3, 0x22ce

    if-le v0, v3, :cond_4

    const/16 v3, 0x2328

    if-ge v0, v3, :cond_4

    .line 724
    const-string v3, "MediaPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invoke "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " got failure code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 726
    :cond_4
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failure code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private native _pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _release()V
.end method

.method private native _reset()V
.end method

.method private native _seekTo(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setVideoSurface(Landroid/view/Surface;)V
.end method

.method private native _start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method static synthetic access$000(Landroid/content/Context;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 542
    invoke-static {p0, p1}, Landroid/media/MediaPlayer;->sendMediaBroadcast(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$100(Landroid/media/MediaPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 542
    iget v0, p0, Landroid/media/MediaPlayer;->mNativeContext:I

    return v0
.end method

.method static synthetic access$1000(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 542
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/media/MediaPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 542
    invoke-direct {p0}, Landroid/media/MediaPlayer;->hasSurface()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Landroid/media/MediaPlayer;)Landroid/media/MediaPluginDLNA;
    .locals 1
    .parameter "x0"

    .prologue
    .line 542
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    return-object v0
.end method

.method static synthetic access$1202(Landroid/media/MediaPlayer;Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPluginDLNA;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 542
    iput-object p1, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    return-object p1
.end method

.method static synthetic access$1302(Landroid/media/MediaPlayer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 542
    iput-object p1, p0, Landroid/media/MediaPlayer;->mDLNAThumbnail:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1400(Landroid/media/MediaPlayer;)Landroid/view/Surface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 542
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/media/MediaPlayer;Landroid/view/Surface;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 542
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->processDLNAIcon(Landroid/view/Surface;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 542
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;

    return-object v0
.end method

.method static synthetic access$1702(Landroid/media/MediaPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 542
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mDLNAInitDone:Z

    return p1
.end method

.method static synthetic access$1800(Landroid/media/MediaPlayer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 542
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->setWirelessDisplayStatus(Z)V

    return-void
.end method

.method static synthetic access$1900(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 542
    invoke-direct {p0}, Landroid/media/MediaPlayer;->resetDLNAParameters()V

    return-void
.end method

.method static synthetic access$200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 542
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/media/MediaPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 542
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    return v0
.end method

.method static synthetic access$2002(Landroid/media/MediaPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 542
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    return p1
.end method

.method static synthetic access$2100(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 542
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_reset()V

    return-void
.end method

.method static synthetic access$2200(Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 542
    invoke-static {p0}, Landroid/media/MediaPlayer;->enableDLNAHiddenFunc(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2302(Landroid/media/MediaPlayer;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 542
    iput-object p1, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$2400(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 542
    invoke-direct {p0}, Landroid/media/MediaPlayer;->initDLNAController()V

    return-void
.end method

.method static synthetic access$300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 542
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$400(Landroid/media/MediaPlayer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 542
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    return-void
.end method

.method static synthetic access$500(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 542
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    return-object v0
.end method

.method static synthetic access$600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 542
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic access$700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 542
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    return-object v0
.end method

.method static synthetic access$800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 542
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$900(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 542
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method private add_mm_headers(Landroid/content/ContentResolver;Ljava/util/Map;)V
    .locals 8
    .parameter "resolver"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3702
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Landroid/media/MediaPlayer;->MM_HEADERS:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_4

    aget-object v1, v0, v3

    .line 3703
    .local v1, header_name:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "streamplayer_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_HTC"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3704
    .local v2, header_value:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3705
    :cond_0
    const-string v5, "MediaPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "header Name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is no value"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3707
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 3708
    const-string/jumbo v5, "rtspuseragent"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3709
    const-string v5, "User-Agent"

    invoke-interface {p2, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3702
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3711
    :cond_3
    const-string/jumbo v5, "wapprofile"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3712
    const-string/jumbo v5, "x-wap-profile"

    invoke-interface {p2, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3716
    .end local v1           #header_name:Ljava/lang/String;
    .end local v2           #header_value:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private add_mm_headers_runtime(Ljava/util/Map;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3720
    .local p1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "unknownPhoneType"

    sput-object v5, Landroid/media/MediaPlayer;->mNetworkType:Ljava/lang/String;

    .line 3722
    const/4 v5, 0x0

    :try_start_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Landroid/media/MediaPlayer;->mUseProxy:Ljava/lang/Boolean;

    .line 3723
    iget-object v5, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3725
    .local v0, connMgr:Landroid/net/ConnectivityManager;
    const/16 v5, 0x12

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    const/16 v5, 0x12

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3727
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "network type=USB"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3728
    const-string/jumbo v5, "x-network-type"

    const-string v6, "USB"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3729
    const-string v5, "Bandwidth"

    const-string v6, "1920000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3730
    const-string/jumbo v5, "usb"

    sput-object v5, Landroid/media/MediaPlayer;->mNetworkType:Ljava/lang/String;

    .line 3870
    .end local v0           #connMgr:Landroid/net/ConnectivityManager;
    :goto_0
    return-void

    .line 3732
    .restart local v0       #connMgr:Landroid/net/ConnectivityManager;
    :cond_0
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3734
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "network type=wifi"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3735
    const-string/jumbo v5, "x-network-type"

    const-string v6, "WIFI"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3736
    const-string v5, "Bandwidth"

    const-string v6, "11000000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3737
    const-string/jumbo v5, "wifi"

    sput-object v5, Landroid/media/MediaPlayer;->mNetworkType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3866
    .end local v0           #connMgr:Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v1

    .line 3867
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "MediaPlayer"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3739
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #connMgr:Landroid/net/ConnectivityManager;
    :cond_1
    const/4 v5, 0x6

    :try_start_1
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_3

    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3741
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "network type=wimax"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3742
    const-string/jumbo v5, "x-network-type"

    const-string v6, "Wimax"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3743
    const-string v5, "Bandwidth"

    const-string v6, "11000000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3744
    const-string/jumbo v5, "wimax"

    sput-object v5, Landroid/media/MediaPlayer;->mNetworkType:Ljava/lang/String;

    .line 3745
    invoke-direct {p0}, Landroid/media/MediaPlayer;->isUsingProxyProject()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3746
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Landroid/media/MediaPlayer;->mUseProxy:Ljava/lang/Boolean;

    goto :goto_0

    .line 3749
    :cond_2
    const-string v5, "MediaPlayer"

    const-string v6, "This project don\'t need to use proxy."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3752
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3754
    const/4 v2, -0x1

    .line 3755
    .local v2, phoneNetworkType:I
    const-string/jumbo v5, "mobile"

    sput-object v5, Landroid/media/MediaPlayer;->mNetworkType:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3758
    :try_start_2
    iget-object v5, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 3760
    .local v4, telephonyManager:Landroid/telephony/TelephonyManager;
    const-string v5, "MediaPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "operator number="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3762
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    .line 3763
    .local v3, telNetworkType:I
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    .line 3765
    packed-switch v3, :pswitch_data_0

    .line 3787
    .end local v3           #telNetworkType:I
    .end local v4           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_4
    :goto_1
    packed-switch v2, :pswitch_data_1

    goto/16 :goto_0

    .line 3790
    :pswitch_0
    :try_start_3
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=GPRS"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3791
    const-string/jumbo v5, "x-network-type"

    const-string v6, "GSM"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3792
    const-string v5, "Bandwidth"

    const-string v6, "141000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 3767
    .restart local v3       #telNetworkType:I
    .restart local v4       #telephonyManager:Landroid/telephony/TelephonyManager;
    :pswitch_1
    :try_start_4
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "unknow telphone network type"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 3783
    .end local v3           #telNetworkType:I
    .end local v4           #telephonyManager:Landroid/telephony/TelephonyManager;
    :catch_1
    move-exception v1

    .line 3784
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_5
    const-string v5, "MediaPlayer"

    const-string v6, "get telphoneManager exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 3770
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v3       #telNetworkType:I
    .restart local v4       #telephonyManager:Landroid/telephony/TelephonyManager;
    :pswitch_2
    :try_start_6
    const-string v5, "MediaPlayer"

    const-string v6, "GSM telphone network type"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3773
    :pswitch_3
    invoke-direct {p0}, Landroid/media/MediaPlayer;->isUsingProxyProject()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3774
    const-string v5, "MediaPlayer"

    const-string v6, "TelephonyManager.PHONE_TYPE_CDMA"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3775
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Landroid/media/MediaPlayer;->mUseProxy:Ljava/lang/Boolean;

    goto :goto_1

    .line 3779
    :pswitch_4
    const-string v5, "MediaPlayer"

    const-string v6, "TelephonyManager.PHONE_TYPE_SIP"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 3796
    .end local v3           #telNetworkType:I
    .end local v4           #telephonyManager:Landroid/telephony/TelephonyManager;
    :pswitch_5
    :try_start_7
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=EDGE"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3797
    const-string/jumbo v5, "x-network-type"

    const-string v6, "GSM"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3798
    const-string v5, "Bandwidth"

    const-string v6, "384000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3808
    :pswitch_6
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=UMTS"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3809
    const-string/jumbo v5, "x-network-type"

    const-string v6, "UMTS"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3810
    const-string v5, "Bandwidth"

    const-string v6, "1920000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3814
    :pswitch_7
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=CDMA"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3815
    const-string/jumbo v5, "x-network-type"

    const-string v6, "iS95"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3816
    const-string v5, "Bandwidth"

    const-string v6, "141000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3820
    :pswitch_8
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=EVD 0"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3821
    const-string/jumbo v5, "x-network-type"

    const-string v6, "EVDO 0"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3822
    const-string v5, "Bandwidth"

    const-string v6, "2400000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3826
    :pswitch_9
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=EVD0 A"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3827
    const-string/jumbo v5, "x-network-type"

    const-string v6, "EVDO A"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3828
    const-string v5, "Bandwidth"

    const-string v6, "3100000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3832
    :pswitch_a
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=EVD0 B"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3833
    const-string/jumbo v5, "x-network-type"

    const-string v6, "EVDO B"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3834
    const-string v5, "Bandwidth"

    const-string v6, "4900000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3838
    :pswitch_b
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=1xRTT"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3839
    const-string/jumbo v5, "x-network-type"

    const-string v6, "1xRTT"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3840
    const-string v5, "Bandwidth"

    const-string v6, "1920000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3844
    :pswitch_c
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=LTE"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3845
    const-string/jumbo v5, "x-network-type"

    const-string v6, "LTE"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3846
    const-string v5, "Bandwidth"

    const-string v6, "1920000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3850
    :pswitch_d
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=IDEN"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3851
    const-string/jumbo v5, "x-network-type"

    const-string v6, "IDEN"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3852
    const-string v5, "Bandwidth"

    const-string v6, "1920000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3856
    :pswitch_e
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=EHRPD"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3857
    const-string/jumbo v5, "x-network-type"

    const-string v6, "EHRPD"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3858
    const-string v5, "Bandwidth"

    const-string v6, "1920000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3863
    .end local v2           #phoneNetworkType:I
    :cond_5
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "unknown network type"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 3765
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 3787
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_d
        :pswitch_a
        :pswitch_c
        :pswitch_e
    .end packed-switch
.end method

.method private add_mm_settings(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 9
    .parameter "resolver"
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3682
    .local p3, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 3684
    .local v1, host:Ljava/lang/String;
    invoke-direct {p0, v1, p1, p3}, Landroid/media/MediaPlayer;->AddProxyInfo(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/util/Map;)V

    .line 3687
    sget-object v0, Landroid/media/MediaPlayer;->MM_SETTINGS:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 3688
    .local v4, setting_name:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "streamplayer_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_HTC"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3689
    .local v5, setting_value:Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3690
    :cond_0
    const-string v6, "MediaPlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "skip setting ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",null) "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3687
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3694
    :cond_1
    const-string v6, "MediaPlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add setting ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3695
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "x-htc-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3697
    .end local v4           #setting_name:Ljava/lang/String;
    .end local v5           #setting_value:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static availableMimeTypeForExternalSource(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 2364
    const-string v0, "application/x-subrip"

    if-ne p0, v0, :cond_0

    .line 2365
    const/4 v0, 0x1

    .line 2367
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static create(Landroid/content/Context;I)Landroid/media/MediaPlayer;
    .locals 9
    .parameter "context"
    .parameter "resid"

    .prologue
    const/4 v8, 0x0

    .line 929
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 930
    .local v6, afd:Landroid/content/res/AssetFileDescriptor;
    if-nez v6, :cond_0

    move-object v0, v8

    .line 947
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    :goto_0
    return-object v0

    .line 932
    .restart local v6       #afd:Landroid/content/res/AssetFileDescriptor;
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 933
    .local v0, mp:Landroid/media/MediaPlayer;
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 934
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 935
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 937
    .end local v0           #mp:Landroid/media/MediaPlayer;
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v7

    .line 938
    .local v7, ex:Ljava/io/IOException;
    const-string v1, "MediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v7           #ex:Ljava/io/IOException;
    :goto_1
    move-object v0, v8

    .line 947
    goto :goto_0

    .line 940
    :catch_1
    move-exception v7

    .line 941
    .local v7, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 943
    .end local v7           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v7

    .line 944
    .local v7, ex:Ljava/lang/SecurityException;
    const-string v1, "MediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 874
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Landroid/media/MediaPlayer;
    .locals 4
    .parameter "context"
    .parameter "uri"
    .parameter "holder"

    .prologue
    .line 892
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 893
    .local v1, mp:Landroid/media/MediaPlayer;
    invoke-virtual {v1, p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 894
    if-eqz p2, :cond_0

    .line 895
    invoke-virtual {v1, p2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 897
    :cond_0
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 910
    .end local v1           #mp:Landroid/media/MediaPlayer;
    :goto_0
    return-object v1

    .line 899
    :catch_0
    move-exception v0

    .line 900
    .local v0, ex:Ljava/io/IOException;
    const-string v2, "MediaPlayer"

    const-string v3, "create failed:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 910
    .end local v0           #ex:Ljava/io/IOException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 902
    :catch_1
    move-exception v0

    .line 903
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "MediaPlayer"

    const-string v3, "create failed:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 905
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 906
    .local v0, ex:Ljava/lang/SecurityException;
    const-string v2, "MediaPlayer"

    const-string v3, "create failed:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static enableDLNAHiddenFunc(Ljava/lang/String;)Z
    .locals 9
    .parameter "func"

    .prologue
    .line 3611
    const/4 v0, 0x0

    .line 3614
    .local v0, bEnableFlag:Z
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    .line 3615
    .local v6, sdcard:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v7, ".enableDLNAhiddnefunc"

    invoke-direct {v3, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3616
    .local v3, fd:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3617
    if-eqz p0, :cond_3

    .line 3618
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3621
    .local v4, in:Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 3622
    .local v5, len:I
    const/16 v7, 0x400

    :try_start_1
    new-array v1, v7, [B

    .line 3623
    .local v1, data:[B
    :cond_0
    const/4 v7, -0x1

    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-eq v7, v5, :cond_1

    .line 3624
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v1, v8, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v7, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-eqz v7, :cond_0

    .line 3625
    const/4 v0, 0x1

    .line 3630
    :cond_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 3640
    .end local v1           #data:[B
    .end local v3           #fd:Ljava/io/File;
    .end local v4           #in:Ljava/io/FileInputStream;
    .end local v5           #len:I
    .end local v6           #sdcard:Ljava/io/File;
    :cond_2
    :goto_0
    return v0

    .line 3630
    .restart local v3       #fd:Ljava/io/File;
    .restart local v4       #in:Ljava/io/FileInputStream;
    .restart local v5       #len:I
    .restart local v6       #sdcard:Ljava/io/File;
    :catchall_0
    move-exception v7

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    throw v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 3636
    .end local v3           #fd:Ljava/io/File;
    .end local v4           #in:Ljava/io/FileInputStream;
    .end local v5           #len:I
    .end local v6           #sdcard:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 3637
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 3633
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #fd:Ljava/io/File;
    .restart local v6       #sdcard:Ljava/io/File;
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getContext()Landroid/content/Context;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 3386
    iget-object v5, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_0

    .line 3387
    iget-object v4, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    .line 3424
    :goto_0
    return-object v4

    .line 3390
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v5

    iput-object v5, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    .line 3391
    iget-object v5, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    if-nez v5, :cond_2

    .line 3393
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3394
    .local v3, handler:Landroid/os/Handler;
    new-instance v5, Landroid/media/MediaPlayer$3;

    invoke-direct {v5, p0}, Landroid/media/MediaPlayer$3;-><init>(Landroid/media/MediaPlayer;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3401
    const/4 v0, 0x0

    .line 3402
    .local v0, count:I
    :goto_1
    const/16 v5, 0x32

    if-ge v0, v5, :cond_1

    .line 3404
    :try_start_1
    iget-object v5, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    if-nez v5, :cond_1

    .line 3405
    const-wide/16 v5, 0xa

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3411
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3408
    :catch_0
    move-exception v1

    .line 3409
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v5, "MediaPlayer"

    const-string v6, "[DLNA]sleep() error"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 3418
    .end local v0           #count:I
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #handler:Landroid/os/Handler;
    :catch_1
    move-exception v2

    .line 3419
    .local v2, ex:Ljava/lang/Exception;
    const-string v5, "MediaPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[DLNA][getContext]can not get application context, ex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3413
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v0       #count:I
    .restart local v3       #handler:Landroid/os/Handler;
    :cond_1
    :try_start_3
    iget-object v5, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    if-nez v5, :cond_2

    .line 3414
    const-string v5, "MediaPlayer"

    const-string v6, "[DLNA]can not get application context"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 3424
    .end local v0           #count:I
    .end local v3           #handler:Landroid/os/Handler;
    :cond_2
    iget-object v4, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method private getDrmPlaybackUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "drmuri"

    .prologue
    .line 958
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 959
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x6

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string/jumbo v3, "title"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "content_offset"

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string v3, "content_id"

    aput-object v3, v2, v1

    const/4 v1, 0x5

    const-string v3, "content_boundary_offset"

    aput-object v3, v2, v1

    .line 965
    .local v2, cols:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 966
    .local v11, drmcur:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 969
    .local v10, drmFileToPlay:Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 970
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 971
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 972
    const-string v1, "_data"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 973
    .local v9, data:Ljava/lang/String;
    const-string v1, "content_offset"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 975
    .local v7, contentOffset:I
    const-string v1, "content_id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 977
    .local v8, contentid:Ljava/lang/String;
    const-string v1, "content_boundary_offset"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 980
    .local v6, boundaryoffset:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/htcfs/oma-drm1-fs"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&drm_header_len="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&drm_trailor_len="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&sd_content_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 984
    .end local v6           #boundaryoffset:Ljava/lang/String;
    .end local v7           #contentOffset:I
    .end local v8           #contentid:Ljava/lang/String;
    .end local v9           #data:Ljava/lang/String;
    :cond_0
    if-eqz v11, :cond_1

    .line 985
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 986
    const/4 v11, 0x0

    .line 990
    :cond_1
    return-object v10

    .line 984
    :catchall_0
    move-exception v1

    if-eqz v11, :cond_2

    .line 985
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 986
    const/4 v11, 0x0

    .line 984
    :cond_2
    throw v1
.end method

.method private getParameter(ILandroid/os/Parcel;)V
    .locals 4
    .parameter "key"
    .parameter "reply"

    .prologue
    .line 2144
    const/16 v1, 0x7d0

    if-ge p1, v1, :cond_0

    .line 2145
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->_getParameter(ILandroid/os/Parcel;)V

    .line 2153
    :goto_0
    return-void

    .line 2148
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->_getParameter(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2149
    :catch_0
    move-exception v0

    .line 2150
    .local v0, e:Ljava/lang/Throwable;
    const-string v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getParameter function get exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private hasSurface()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3484
    :try_start_0
    const-string v2, "MediaPlayer"

    const-string v3, "[DLNA][getDLNAThmubnail]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3485
    iget-object v2, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/media/MediaPlayer;->mSurface:Landroid/view/Surface;

    if-eqz v2, :cond_5

    .line 3486
    :cond_0
    iget-object v2, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v2, :cond_3

    .line 3487
    iget-object v2, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaPlayer;->mSurface:Landroid/view/Surface;

    .line 3498
    :cond_1
    iget-object v2, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v2, :cond_2

    .line 3499
    iget-object v2, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v3, p0, Landroid/media/MediaPlayer;->cb:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 3501
    :cond_2
    const/4 v1, 0x1

    .line 3508
    :goto_0
    return v1

    .line 3488
    :cond_3
    iget-object v2, p0, Landroid/media/MediaPlayer;->mSurface:Landroid/view/Surface;

    if-eqz v2, :cond_4

    .line 3489
    iget-object v2, p0, Landroid/media/MediaPlayer;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3490
    const-string v2, "MediaPlayer"

    const-string v3, "[DLNA]mSurface is invalid"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3506
    :catch_0
    move-exception v0

    .line 3507
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DLNA]getSurface exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3494
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    :try_start_1
    const-string v2, "MediaPlayer"

    const-string v3, "[DLNA]no valid surface"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3495
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/MediaPlayer;->mSurface:Landroid/view/Surface;

    goto :goto_0

    .line 3503
    :cond_5
    const-string v2, "MediaPlayer"

    const-string v3, "[DLNA]mSurfaceHolder and mSurface are null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private initDLNA()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3455
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    .local v2, looper:Landroid/os/Looper;
    if-eqz v2, :cond_0

    .line 3456
    new-instance v3, Landroid/media/MediaPlayer$DLNAEventHandler;

    invoke-direct {v3, p0, p0, v2}, Landroid/media/MediaPlayer$DLNAEventHandler;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V

    iput-object v3, p0, Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;

    .line 3461
    :goto_0
    if-nez v2, :cond_1

    .line 3462
    iput-boolean v6, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    .line 3463
    const-string v3, "MediaPlayer"

    const-string v4, "[DLNA]no looper"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3479
    :goto_1
    return v6

    .line 3458
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;

    goto :goto_0

    .line 3467
    :cond_1
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer$4;

    invoke-direct {v1, p0, v2}, Landroid/media/MediaPlayer$4;-><init>(Landroid/media/MediaPlayer;Landroid/os/Looper;)V

    .line 3472
    .local v1, h:Landroid/os/Handler;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3473
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3474
    .end local v1           #h:Landroid/os/Handler;
    :catch_0
    move-exception v0

    .line 3475
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "MediaPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DLNA][initDLNA]Init DLNA module failed, ex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3476
    iput-boolean v6, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    goto :goto_1
.end method

.method private initDLNAController()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 3121
    const-string v1, "MediaPlayer"

    const-string v3, "initDLNAController() in"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3123
    iget-object v3, p0, Landroid/media/MediaPlayer;->mDLNALock:Ljava/lang/Object;

    monitor-enter v3

    .line 3125
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v1, :cond_1

    .line 3126
    const-string v1, "MediaPlayer"

    const-string v4, "[initDLNAController][reuse original DLNA agent]"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3127
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v1}, Landroid/media/MediaPluginDLNA;->connect()V

    .line 3128
    monitor-exit v3

    .line 3181
    :cond_0
    :goto_0
    return-void

    .line 3130
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3132
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    if-nez v1, :cond_2

    .line 3133
    const-string v1, "MediaPlayer"

    const-string v3, "context is null,create DLNA Controller failed.."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3134
    iput-object v4, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    .line 3135
    iput-boolean v5, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    .line 3136
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->doStart()V

    goto :goto_0

    .line 3130
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 3142
    :cond_2
    iget-object v1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    const-string v3, "content://"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3143
    const-string v1, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3146
    :try_start_2
    iget-object v1, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3147
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    .line 3148
    .local v2, proj:[Ljava/lang/String;
    iget-object v1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3149
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 3150
    const-string v1, "_data"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 3151
    .local v6, column_index:I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3152
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    .line 3153
    const-string v1, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get absolute path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3171
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v2           #proj:[Ljava/lang/String;
    .end local v6           #column_index:I
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_3
    :goto_1
    const-string v1, "MediaPlayer"

    const-string v3, "Create MediaPlugin type DLNA in initDLNAController()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3172
    iget-object v1, p0, Landroid/media/MediaPlayer;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

    invoke-interface {v1, p0}, Landroid/media/MediaPlugin$OnEventListener;->setMediaPlayer(Landroid/media/MediaPlayer;)V

    .line 3173
    new-instance v1, Landroid/media/MediaPluginDLNA;

    iget-object v3, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    iget-object v5, p0, Landroid/media/MediaPlayer;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

    invoke-direct {v1, v3, v4, v5}, Landroid/media/MediaPluginDLNA;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/media/MediaPlugin$OnEventListener;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    .line 3174
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v1, :cond_0

    .line 3175
    iget v1, p0, Landroid/media/MediaPlayer;->mPreSeekSec:I

    if-lez v1, :cond_0

    .line 3176
    const-string v1, "MediaPlayer"

    const-string v3, "AP request seekTo() before start()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3177
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    iget v3, p0, Landroid/media/MediaPlayer;->mPreSeekSec:I

    invoke-virtual {v1, v3}, Landroid/media/MediaPluginDLNA;->setPreSeek(I)V

    goto/16 :goto_0

    .line 3156
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v2       #proj:[Ljava/lang/String;
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_4
    :try_start_3
    const-string v1, "MediaPlayer"

    const-string/jumbo v3, "null cursor, error when retrive absolute path, use original path..."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 3158
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v2           #proj:[Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 3159
    .local v8, ex:Ljava/lang/SecurityException;
    const-string v1, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3160
    const-string v1, ""

    iput-object v1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    goto :goto_1

    .line 3161
    .end local v8           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v8

    .line 3162
    .local v8, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not retrieve absolute path from content uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3163
    const-string v1, ""

    iput-object v1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    goto :goto_1

    .line 3165
    .end local v8           #ex:Ljava/lang/IllegalArgumentException;
    :cond_5
    iget-object v1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    const-string v3, "http://"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    const-string/jumbo v3, "rtsp://"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3166
    :cond_6
    const-string v1, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "streaming uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3169
    :cond_7
    const-string v1, "MediaPlayer"

    iget-object v3, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private isDrmUri(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 951
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://drm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 953
    const/4 v0, 0x1

    .line 954
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isForceDisableDLNA()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 3644
    const-string v3, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DLNA]AP force disable DLNA: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v1, Landroid/media/MediaPlayer;->mForceDisableDLNA:Z

    if-eqz v1, :cond_0

    const-string v1, "TRUE"

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3645
    sget-boolean v1, Landroid/media/MediaPlayer;->mForceDisableDLNA:Z

    if-eqz v1, :cond_1

    move v1, v2

    .line 3653
    .local v0, forceDisableDLNA:Ljava/lang/String;
    :goto_1
    return v1

    .line 3644
    .end local v0           #forceDisableDLNA:Ljava/lang/String;
    :cond_0
    const-string v1, "FALSE"

    goto :goto_0

    .line 3648
    :cond_1
    const-string v1, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DLNA]Force disable DLNA: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "dlna.marketapp.forceDisableDLNA"

    invoke-static {v4}, Landroid/media/MediaPluginDLNA;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3649
    const-string v1, "dlna.marketapp.forceDisableDLNA"

    invoke-static {v1}, Landroid/media/MediaPluginDLNA;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3650
    .restart local v0       #forceDisableDLNA:Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string v1, "forceDisableDLNA"

    invoke-static {v1}, Landroid/media/MediaPlayer;->enableDLNAHiddenFunc(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    move v1, v2

    .line 3651
    goto :goto_1

    .line 3653
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isNeedAddProxyInfo(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 3901
    invoke-direct {p0}, Landroid/media/MediaPlayer;->isUsingProxyProject()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->isStreaming(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3902
    const/4 v0, 0x1

    .line 3904
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStreaming(Ljava/lang/String;)Z
    .locals 4
    .parameter "path"

    .prologue
    const/4 v3, 0x7

    const/4 v0, 0x0

    .line 3892
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "rtsp://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3894
    :cond_0
    const/4 v0, 0x1

    .line 3896
    :cond_1
    return v0
.end method

.method private isUsingProxyProject()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3873
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x94

    if-ne v1, v2, :cond_0

    .line 3874
    const-string v1, "MediaPlayer"

    const-string v2, "This is a sprint project"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3887
    :goto_0
    return v0

    .line 3877
    :cond_0
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 3878
    const-string v1, "MediaPlayer"

    const-string v2, "This is a boost project"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3881
    :cond_1
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xaf

    if-ne v1, v2, :cond_2

    .line 3882
    const-string v1, "MediaPlayer"

    const-string v2, "This is a VMUS project"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3886
    :cond_2
    const-string v0, "MediaPlayer"

    const-string v1, "This is not a sprint project"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3887
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVideoScalingModeSupported(I)Z
    .locals 2
    .parameter "mode"

    .prologue
    const/4 v0, 0x1

    .line 3108
    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final native native_finalize()V
.end method

.method private final native native_getMetadata(ZZLandroid/os/Parcel;)Z
.end method

.method private static final native native_init()V
.end method

.method private final native native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I
.end method

.method public static native native_pullBatteryData(Landroid/os/Parcel;)I
.end method

.method private final native native_setMetadataFilter(Landroid/os/Parcel;)I
.end method

.method private final native native_setRetransmitEndpoint(Ljava/lang/String;I)I
.end method

.method private final native native_setup(Ljava/lang/Object;)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .parameter "mediaplayer_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 2749
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    .line 2750
    .local v1, mp:Landroid/media/MediaPlayer;
    if-nez v1, :cond_1

    .line 2762
    :cond_0
    :goto_0
    return-void

    .line 2754
    :cond_1
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_2

    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 2756
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 2758
    :cond_2
    iget-object v2, v1, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    if-eqz v2, :cond_0

    .line 2759
    iget-object v2, v1, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2760
    .local v0, m:Landroid/os/Message;
    iget-object v2, v1, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private processDLNAIcon(Landroid/view/Surface;)V
    .locals 21
    .parameter "surface"

    .prologue
    .line 3513
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-nez v3, :cond_0

    .line 3564
    :goto_0
    return-void

    .line 3517
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v9

    .line 3518
    .local v9, c:Landroid/graphics/Canvas;
    const-string v3, "MediaPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DLNA][processDLNA]canvas width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3519
    const-string v3, "MediaPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DLNA][processDLNA]canvas height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3521
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mDLNAThumbnail:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    .line 3522
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x4020005

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MediaPlayer;->mDLNAThumbnail:Landroid/graphics/Bitmap;

    .line 3526
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaPlayer;->mDLNAThumbnail:Landroid/graphics/Bitmap;

    .line 3529
    .local v2, img:Landroid/graphics/Bitmap;
    invoke-virtual {v9}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v13, v3, v4

    .line 3530
    .local v13, destWidthScaleRate:F
    invoke-virtual {v9}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v12, v3, v4

    .line 3533
    .local v12, destHeigthScaleRate:F
    const/high16 v19, 0x3f80

    .line 3534
    .local v19, scaleWidth:F
    const/high16 v17, 0x3f80

    .line 3535
    .local v17, scaleHeight:F
    cmpl-float v3, v13, v12

    if-ltz v3, :cond_2

    .line 3536
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v19, v3, v12

    .line 3537
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v17, v3, v12

    .line 3544
    :goto_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v20, v19, v3

    .line 3545
    .local v20, scaleWidthRate:F
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v18, v17, v3

    .line 3548
    .local v18, scaleHeightRate:F
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 3549
    .local v7, mtx:Landroid/graphics/Matrix;
    move/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 3550
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 3554
    .local v16, resizeBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v9}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v10, v3, 0x2

    .line 3555
    .local v10, centreX:I
    invoke-virtual {v9}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v11, v3, 0x2

    .line 3556
    .local v11, centreY:I
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 3557
    .local v15, paint:Landroid/graphics/Paint;
    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3558
    int-to-float v3, v10

    int-to-float v4, v11

    move-object/from16 v0, v16

    invoke-virtual {v9, v0, v3, v4, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 3559
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 3560
    invoke-direct/range {p0 .. p1}, Landroid/media/MediaPlayer;->_disconnectSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3561
    .end local v2           #img:Landroid/graphics/Bitmap;
    .end local v7           #mtx:Landroid/graphics/Matrix;
    .end local v9           #c:Landroid/graphics/Canvas;
    .end local v10           #centreX:I
    .end local v11           #centreY:I
    .end local v12           #destHeigthScaleRate:F
    .end local v13           #destWidthScaleRate:F
    .end local v15           #paint:Landroid/graphics/Paint;
    .end local v16           #resizeBitmap:Landroid/graphics/Bitmap;
    .end local v17           #scaleHeight:F
    .end local v18           #scaleHeightRate:F
    .end local v19           #scaleWidth:F
    .end local v20           #scaleWidthRate:F
    :catch_0
    move-exception v14

    .line 3562
    .local v14, e:Ljava/lang/Exception;
    const-string v3, "MediaPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DLNA]processDLNA icon exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3539
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v2       #img:Landroid/graphics/Bitmap;
    .restart local v9       #c:Landroid/graphics/Canvas;
    .restart local v12       #destHeigthScaleRate:F
    .restart local v13       #destWidthScaleRate:F
    .restart local v17       #scaleHeight:F
    .restart local v19       #scaleWidth:F
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v19, v3, v13

    .line 3540
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    int-to-float v3, v3

    mul-float v17, v3, v13

    goto/16 :goto_1
.end method

.method private resetDLNAParameters()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3430
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_0

    .line 3431
    iget-object v1, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v2, p0, Landroid/media/MediaPlayer;->cb:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 3432
    :cond_0
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;

    if-eqz v1, :cond_1

    .line 3433
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer$DLNAEventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3434
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/media/MediaPlayer;->setDLNASkipSeekPreview(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3438
    :goto_0
    iput-boolean v3, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    .line 3439
    iput-boolean v3, p0, Landroid/media/MediaPlayer;->mUseFileDescriptor:Z

    .line 3440
    iput-boolean v3, p0, Landroid/media/MediaPlayer;->mPrepareDone:Z

    .line 3441
    sput-boolean v3, Landroid/media/MediaPlayer;->mForceDisableDLNA:Z

    .line 3442
    const-string v1, ""

    iput-object v1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    .line 3443
    iput-boolean v3, p0, Landroid/media/MediaPlayer;->mDoSeekFlag:Z

    .line 3444
    iput-boolean v3, p0, Landroid/media/MediaPlayer;->mDLNAInitDone:Z

    .line 3445
    iput v3, p0, Landroid/media/MediaPlayer;->mPreSeekSec:I

    .line 3446
    iput-object v4, p0, Landroid/media/MediaPlayer;->mDLNAThumbnail:Landroid/graphics/Bitmap;

    .line 3449
    return-void

    .line 3435
    :catch_0
    move-exception v0

    .line 3436
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MediaPlayer"

    const-string v2, "[DLNA]mSurfaceHolder removeCallback exception!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private selectOrDeselectTrack(IZ)V
    .locals 3
    .parameter "index"
    .parameter "select"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2560
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2561
    .local v1, request:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2563
    .local v0, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IMediaPlayer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2564
    if-eqz p2, :cond_0

    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2565
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2566
    invoke-virtual {p0, v1, v0}, Landroid/media/MediaPlayer;->htc_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2568
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2571
    return-void

    .line 2564
    :cond_0
    const/4 v2, 0x5

    goto :goto_0

    .line 2568
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2568
    throw v2
.end method

.method private static sendMediaBroadcast(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "act"

    .prologue
    .line 1332
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1333
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.HtcDeviceInfoManager.MediaReceiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1334
    const-string/jumbo v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1335
    const-string v1, "act"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1336
    const-string/jumbo v1, "pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1337
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1338
    return-void
.end method

.method private setDLNASkipSeekPreview(Z)V
    .locals 6
    .parameter "skip"

    .prologue
    .line 3567
    const-string v3, "MediaPlayer"

    const-string v4, "[DLNA]setDLNASkipSeekPreview+"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3568
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->newRequest()Landroid/os/Parcel;

    move-result-object v2

    .line 3569
    .local v2, request:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3570
    .local v1, reply:Landroid/os/Parcel;
    if-nez p1, :cond_0

    .line 3572
    const/16 v3, 0x22e1

    :try_start_0
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3573
    const-string v3, "MediaPlayer"

    const-string v4, "[DLNA]set DLNASkipSeekPreview to false+"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3574
    invoke-virtual {p0, v2, v1}, Landroid/media/MediaPlayer;->htc_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 3575
    const-string v3, "MediaPlayer"

    const-string v4, "[DLNA]set DLNASkipSeekPreview to false-"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3579
    :goto_0
    const-string v3, "MediaPlayer"

    const-string v4, "[DLNA]setDLNASkipSeekPreview-"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3594
    :goto_1
    return-void

    .line 3576
    :catch_0
    move-exception v0

    .line 3577
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "MediaPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DLNA]setDLNASkipSeekPreview failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3583
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/media/MediaPluginDLNA;->getWirelessDisplayStatus(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3585
    const/16 v3, 0x22e0

    :try_start_1
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3586
    const-string v3, "MediaPlayer"

    const-string v4, "[DLNA]set DLNASkipSeekPreview to true +"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3587
    invoke-virtual {p0, v2, v1}, Landroid/media/MediaPlayer;->htc_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 3588
    const-string v3, "MediaPlayer"

    const-string v4, "[DLNA]set DLNASkipSeekPreview to true -"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3593
    :cond_1
    :goto_2
    const-string v3, "MediaPlayer"

    const-string v4, "[DLNA]setDLNASkipSeekPreview-"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3589
    :catch_1
    move-exception v0

    .line 3590
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "MediaPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DLNA]setDLNASkipSeekPreview failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .parameter "path"
    .parameter "keys"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1143
    iput-object p1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    .line 1144
    iget-boolean v3, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v3, :cond_1

    .line 1145
    iget-object v3, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v3, :cond_0

    .line 1146
    iget-object v3, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    iget-object v4, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/media/MediaPluginDLNA;->handleSetDataSource(Ljava/lang/String;)V

    .line 1165
    :cond_0
    :goto_0
    return-void

    .line 1149
    :cond_1
    invoke-static {}, Landroid/media/MediaPlayer;->isForceDisableDLNA()Z

    move-result v3

    sput-boolean v3, Landroid/media/MediaPlayer;->mForceDisableDLNA:Z

    .line 1152
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1153
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1154
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1155
    .local v2, is:Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 1156
    .local v0, fd:Ljava/io/FileDescriptor;
    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 1157
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 1160
    .end local v0           #fd:Ljava/io/FileDescriptor;
    .end local v2           #is:Ljava/io/FileInputStream;
    :cond_2
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->isStreaming(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/media/MediaPlayer;->isStreamingPlay:Z

    .line 1163
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaPlayer;->_setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setDataSourceAndProxyInfo(Ljava/lang/String;)V
    .locals 4
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 3910
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    .line 3911
    iget-object v1, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 3912
    const-string v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDataSourceAndProxyInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3913
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3914
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 3918
    .end local v0           #uri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 3916
    :cond_0
    const-string v1, "MediaPlayer"

    const-string/jumbo v2, "setDataSource FAILED, CAN NOT ADD PROXY HEADERS !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setLPAflag()V
    .locals 5

    .prologue
    .line 1212
    const-string v3, "MediaPlayer"

    const-string/jumbo v4, "setLPAflag() in"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    iget-object v3, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 1215
    const-string v3, "MediaPlayer"

    const-string v4, "mContext is null, can\'t getMirrorDisplayStatus!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    :goto_0
    const-string v3, "MediaPlayer"

    const-string/jumbo v4, "setLPAflag() out"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    return-void

    .line 1218
    :cond_0
    iget-object v3, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wireless_display"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/WirelessDisplayManager;

    .line 1219
    .local v0, mgr:Lcom/htc/service/WirelessDisplayManager;
    if-nez v0, :cond_1

    .line 1220
    const-string v3, "MediaPlayer"

    const-string v4, "getSystemService failed!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1223
    :cond_1
    invoke-virtual {v0}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1224
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->newRequest()Landroid/os/Parcel;

    move-result-object v2

    .line 1225
    .local v2, request:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1226
    .local v1, reply:Landroid/os/Parcel;
    const/16 v3, 0x22e0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1227
    const-string v3, "MediaPlayer"

    const-string/jumbo v4, "set AwesomePlayer LPA flag to true +"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    invoke-virtual {p0, v2, v1}, Landroid/media/MediaPlayer;->htc_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 1229
    const-string v3, "MediaPlayer"

    const-string/jumbo v4, "set AwesomePlayer LPA flag to true -"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1232
    .end local v1           #reply:Landroid/os/Parcel;
    .end local v2           #request:Landroid/os/Parcel;
    :cond_2
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->newRequest()Landroid/os/Parcel;

    move-result-object v2

    .line 1233
    .restart local v2       #request:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1234
    .restart local v1       #reply:Landroid/os/Parcel;
    const/16 v3, 0x22e1

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1235
    const-string v3, "MediaPlayer"

    const-string/jumbo v4, "set AwesomePlayer LPA flag to false +"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    invoke-virtual {p0, v2, v1}, Landroid/media/MediaPlayer;->htc_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 1237
    const-string v3, "MediaPlayer"

    const-string/jumbo v4, "set AwesomePlayer LPA flag to false -"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setWirelessDisplayStatus(Z)V
    .locals 1
    .parameter "status"

    .prologue
    .line 3116
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/media/MediaPluginDLNA;->setWirelessDisplayStatus(Landroid/content/Context;Z)V

    .line 3117
    return-void
.end method

.method private start_stop_notify(I)V
    .locals 6
    .parameter "act"

    .prologue
    .line 1299
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 1300
    iget-object v3, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Landroid/media/MediaPlayer;->sendMediaBroadcast(Landroid/content/Context;I)V

    .line 1330
    :goto_0
    return-void

    .line 1303
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    .line 1304
    .local v2, loopMain:Landroid/os/Looper;
    if-nez v2, :cond_1

    .line 1305
    const-string v3, "HtcDeviceInfoManager"

    const-string v4, "MediaPlayer.satr_stop_notify, no main loop!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1326
    .end local v2           #loopMain:Landroid/os/Looper;
    :catch_0
    move-exception v0

    .line 1328
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "HtcDeviceInfoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MediaPlayer.start_stop_notify, ex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1308
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v2       #loopMain:Landroid/os/Looper;
    :cond_1
    :try_start_1
    new-instance v1, Landroid/media/MediaPlayer$1;

    invoke-direct {v1, p0, v2, p1}, Landroid/media/MediaPlayer$1;-><init>(Landroid/media/MediaPlayer;Landroid/os/Looper;I)V

    .line 1324
    .local v1, h:Landroid/os/Handler;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private stayAwake(Z)V
    .locals 7
    .parameter "awake"

    .prologue
    const/4 v4, 0x2

    .line 1532
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-ne v3, v4, :cond_1

    .line 1534
    iget-boolean v3, p0, Landroid/media/MediaPlayer;->isStreamingPlay:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Landroid/media/MediaPlayer;->isAudioOnly:Z

    if-eqz v3, :cond_1

    .line 1535
    const-string v5, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notify streaming music "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p1, :cond_3

    const-string/jumbo v3, "on"

    :goto_0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " to handle screen light"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    move v2, p1

    .line 1540
    .local v2, status:Z
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.Audio.Streaming.ModeChange"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1541
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "audio_streaming_status"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1542
    iget-object v3, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 1543
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getContext()Landroid/content/Context;

    .line 1545
    :cond_0
    iget-object v3, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_4

    .line 1546
    iget-object v3, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1559
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #status:Z
    :cond_1
    :goto_1
    if-eqz p1, :cond_5

    const/4 v3, 0x1

    :goto_2
    invoke-direct {p0, v3}, Landroid/media/MediaPlayer;->start_stop_notify(I)V

    .line 1563
    iget-object v3, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_2

    .line 1564
    if-eqz p1, :cond_6

    iget-object v3, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1565
    iget-object v3, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1570
    :cond_2
    :goto_3
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mStayAwake:Z

    .line 1571
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 1572
    return-void

    .line 1535
    :cond_3
    const-string/jumbo v3, "off"

    goto :goto_0

    .line 1548
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #status:Z
    :cond_4
    :try_start_1
    const-string v3, "MediaPlayer"

    const-string v5, "error: no context"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1549
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1550
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "MediaPlayer"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #status:Z
    :cond_5
    move v3, v4

    .line 1559
    goto :goto_2

    .line 1566
    :cond_6
    if-nez p1, :cond_2

    iget-object v3, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1567
    iget-object v3, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_3
.end method

.method private updateSurfaceScreenOn()V
    .locals 2

    .prologue
    .line 1575
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 1576
    iget-object v1, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mStayAwake:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 1578
    :cond_0
    return-void

    .line 1576
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public native _attachAuxEffect(I)V
.end method

.method public native _getAudioSessionId()I
.end method

.method public native _getCurrentPosition()I
.end method

.method public native _getDuration()I
.end method

.method public native _getVideoHeight()I
.end method

.method public native _getVideoWidth()I
.end method

.method public native _isLooping()Z
.end method

.method public native _isPlaying()Z
.end method

.method public native _prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native _prepareAsync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native _setAudioSessionId(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native _setAudioStreamType(I)V
.end method

.method public native _setAuxEffectSendLevel(F)V
.end method

.method public native _setLooping(Z)V
.end method

.method public native _setVolume(FF)V
.end method

.method public addTimedTextSource(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "uri"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2422
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 2423
    .local v2, scheme:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2424
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p3}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V

    .line 2444
    :cond_1
    :goto_0
    return-void

    .line 2428
    :cond_2
    const/4 v0, 0x0

    .line 2430
    .local v0, fd:Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2431
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string/jumbo v3, "r"

    invoke-virtual {v1, p2, v3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 2432
    if-nez v0, :cond_3

    .line 2440
    if-eqz v0, :cond_1

    .line 2441
    .end local v1           #resolver:Landroid/content/ContentResolver;
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 2435
    .restart local v1       #resolver:Landroid/content/ContentResolver;
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p0, v3, p3}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2440
    if-eqz v0, :cond_1

    goto :goto_1

    .end local v1           #resolver:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_4

    .line 2441
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 2440
    :cond_4
    throw v3

    .line 2437
    :catch_0
    move-exception v3

    .line 2440
    if-eqz v0, :cond_1

    goto :goto_1

    .line 2438
    :catch_1
    move-exception v3

    .line 2440
    if-eqz v0, :cond_1

    goto :goto_1
.end method

.method public addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V
    .locals 5
    .parameter "fd"
    .parameter "offset"
    .parameter "length"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2488
    invoke-static {p6}, Landroid/media/MediaPlayer;->availableMimeTypeForExternalSource(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2489
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal mimeType for timed text source: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2492
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2493
    .local v1, request:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2495
    .local v0, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IMediaPlayer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2496
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2497
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 2498
    invoke-virtual {v1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2499
    invoke-virtual {v1, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 2500
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2501
    invoke-virtual {p0, v1, v0}, Landroid/media/MediaPlayer;->htc_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2503
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2504
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2506
    return-void

    .line 2503
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2504
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2503
    throw v2
.end method

.method public addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 7
    .parameter "fd"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2465
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V

    .line 2466
    return-void
.end method

.method public addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "path"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2388
    invoke-static {p2}, Landroid/media/MediaPlayer;->availableMimeTypeForExternalSource(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2389
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal mimeType for timed text source: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2390
    .local v3, msg:Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2393
    .end local v3           #msg:Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2394
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2395
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2396
    .local v2, is:Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 2397
    .local v0, fd:Ljava/io/FileDescriptor;
    invoke-virtual {p0, v0, p2}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    .line 2398
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 2403
    return-void

    .line 2401
    .end local v0           #fd:Ljava/io/FileDescriptor;
    .end local v2           #is:Ljava/io/FileInputStream;
    :cond_1
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public attachAuxEffect(I)V
    .locals 1
    .parameter "effectId"

    .prologue
    .line 2073
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_0

    .line 2076
    :goto_0
    return-void

    .line 2075
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->_attachAuxEffect(I)V

    goto :goto_0
.end method

.method public native captureFrame()Landroid/graphics/Bitmap;
.end method

.method public deselectTrack(I)V
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2555
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->selectOrDeselectTrack(IZ)V

    .line 2556
    return-void
.end method

.method public doStart()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1397
    const-string v1, "MediaPlayer"

    const-string v2, "doStart() in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v1, :cond_1

    .line 1401
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1402
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mDLNAInitDone:Z

    if-eqz v1, :cond_0

    .line 1403
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v1}, Landroid/media/MediaPluginDLNA;->handleStart()V

    .line 1405
    :cond_0
    const-string v1, "MediaPlayer"

    const-string v2, "[DLNA]doStart() out"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    :goto_0
    return-void

    .line 1410
    :cond_1
    const/16 v1, 0x7d0

    invoke-virtual {p0, v1}, Landroid/media/MediaPlayer;->getIntParameter(I)I

    move-result v0

    .line 1411
    .local v0, testGetParameter:I
    const-string v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIntParameter = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_start()V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 2629
    invoke-direct {p0}, Landroid/media/MediaPlayer;->native_finalize()V

    return-void
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 2048
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2050
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->_getAudioSessionId()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 1680
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_1

    .line 1681
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v0, :cond_0

    .line 1682
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0}, Landroid/media/MediaPluginDLNA;->handleGetCurrentPosition()I

    move-result v0

    .line 1688
    :goto_0
    return v0

    .line 1684
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1688
    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->_getCurrentPosition()I

    move-result v0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 1702
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_1

    .line 1703
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v0, :cond_0

    .line 1704
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0}, Landroid/media/MediaPluginDLNA;->getDuration()I

    move-result v0

    .line 1710
    :goto_0
    return v0

    .line 1706
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1710
    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->_getDuration()I

    move-result v0

    goto :goto_0
.end method

.method public native getFrameAt(I)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public getIntParameter(I)I
    .locals 2
    .parameter "key"

    .prologue
    .line 2189
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2190
    .local v0, p:Landroid/os/Parcel;
    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->getParameter(ILandroid/os/Parcel;)V

    .line 2191
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2192
    .local v1, ret:I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2193
    return v1
.end method

.method public getMetadata(ZZ)Landroid/media/Metadata;
    .locals 4
    .parameter "update_only"
    .parameter "apply_filter"

    .prologue
    const/4 v2, 0x0

    .line 1734
    iget-boolean v3, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v3, :cond_1

    move-object v0, v2

    .line 1750
    :cond_0
    :goto_0
    return-object v0

    .line 1736
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1737
    .local v1, reply:Landroid/os/Parcel;
    new-instance v0, Landroid/media/Metadata;

    invoke-direct {v0}, Landroid/media/Metadata;-><init>()V

    .line 1739
    .local v0, data:Landroid/media/Metadata;
    invoke-direct {p0, p1, p2, v1}, Landroid/media/MediaPlayer;->native_getMetadata(ZZLandroid/os/Parcel;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1740
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    move-object v0, v2

    .line 1741
    goto :goto_0

    .line 1746
    :cond_2
    invoke-virtual {v0, v1}, Landroid/media/Metadata;->parse(Landroid/os/Parcel;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1747
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    move-object v0, v2

    .line 1748
    goto :goto_0
.end method

.method public getParcelParameter(I)Landroid/os/Parcel;
    .locals 1
    .parameter "key"

    .prologue
    .line 2163
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2164
    .local v0, p:Landroid/os/Parcel;
    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->getParameter(ILandroid/os/Parcel;)V

    .line 2165
    return-object v0
.end method

.method public getStringParameter(I)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 2175
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2176
    .local v0, p:Landroid/os/Parcel;
    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->getParameter(ILandroid/os/Parcel;)V

    .line 2177
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2178
    .local v1, ret:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2179
    return-object v1
.end method

.method public getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2338
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2339
    .local v1, request:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2341
    .local v0, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IMediaPlayer"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2342
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2343
    invoke-virtual {p0, v1, v0}, Landroid/media/MediaPlayer;->htc_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 2344
    sget-object v3, Landroid/media/MediaPlayer$TrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/MediaPlayer$TrackInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2347
    .local v2, trackInfo:[Landroid/media/MediaPlayer$TrackInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2345
    return-object v2

    .line 2347
    .end local v2           #trackInfo:[Landroid/media/MediaPlayer$TrackInfo;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2347
    throw v3
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 1613
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x140

    .line 1615
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->_getVideoHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 1593
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x1e0

    .line 1595
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->_getVideoWidth()I

    move-result v0

    goto :goto_0
.end method

.method public htc_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 4
    .parameter "request"
    .parameter "reply"

    .prologue
    .line 734
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    :goto_0
    return-void

    .line 735
    :catch_0
    move-exception v0

    .line 736
    .local v0, e:Ljava/lang/Throwable;
    const-string v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoke get exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 0
    .parameter "request"
    .parameter "reply"

    .prologue
    .line 697
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 698
    return-void
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 1972
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1974
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->_isLooping()Z

    move-result v0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 1629
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_1

    .line 1630
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0}, Landroid/media/MediaPluginDLNA;->isPlaying()Z

    move-result v0

    .line 1635
    :goto_0
    return v0

    .line 1631
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1635
    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->_isPlaying()Z

    move-result v0

    goto :goto_0
.end method

.method public newRequest()Landroid/os/Parcel;
    .locals 2

    .prologue
    .line 676
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 677
    .local v0, parcel:Landroid/os/Parcel;
    const-string v1, "android.media.IMediaPlayer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 678
    return-object v0
.end method

.method public pause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1451
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_1

    .line 1452
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v0, :cond_0

    .line 1453
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0}, Landroid/media/MediaPluginDLNA;->handlePause()V

    .line 1455
    :cond_0
    const-string v0, "MediaPlayer"

    const-string v1, "[DLNA]pause() out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    :goto_0
    return-void

    .line 1460
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1461
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_pause()V

    goto :goto_0
.end method

.method public prepare()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1256
    invoke-direct {p0}, Landroid/media/MediaPlayer;->setLPAflag()V

    .line 1259
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_0

    .line 1263
    :goto_0
    return-void

    .line 1262
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->_prepare()V

    goto :goto_0
.end method

.method public prepareAsync()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1277
    invoke-direct {p0}, Landroid/media/MediaPlayer;->setLPAflag()V

    .line 1280
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v1, :cond_1

    .line 1281
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;

    if-eqz v1, :cond_0

    .line 1282
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/media/MediaPlayer$DLNAEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1283
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer$DLNAEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1290
    .end local v0           #m:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 1289
    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->_prepareAsync()V

    goto :goto_0
.end method

.method public release()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1839
    const-string v2, "MediaPlayer"

    const-string/jumbo v3, "release() in"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1844
    iget-boolean v2, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v2, :cond_1

    .line 1845
    :cond_0
    const-string v2, "MediaPlayer"

    const-string v3, "[DLNA]release mDLNAAgent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    :try_start_0
    iget-object v2, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v2}, Landroid/media/MediaPluginDLNA;->handleRelease()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1851
    :goto_0
    iput-object v4, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    .line 1852
    invoke-direct {p0}, Landroid/media/MediaPlayer;->resetDLNAParameters()V

    .line 1856
    :cond_1
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 1857
    iput-object v4, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 1858
    iput-object v4, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 1859
    iput-object v4, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 1860
    iput-object v4, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 1861
    iput-object v4, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 1862
    iput-object v4, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 1863
    iput-object v4, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 1864
    iput-object v4, p0, Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    .line 1865
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_release()V

    .line 1866
    iget v2, p0, Landroid/media/MediaPlayer;->mStreamType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 1868
    :try_start_1
    const-string v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    .line 1869
    .local v1, service:Landroid/media/IAudioService;
    if-eqz v1, :cond_2

    .line 1870
    iget-object v2, p0, Landroid/media/MediaPlayer;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->unregisterBeatsMediaClient(Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1875
    .end local v1           #service:Landroid/media/IAudioService;
    :cond_2
    :goto_1
    const-string v2, "MediaPlayer"

    const-string/jumbo v3, "release() out"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    return-void

    .line 1848
    :catch_0
    move-exception v0

    .line 1849
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1871
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1872
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "MediaPlayer"

    const-string v3, "Exception : get AudioService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1886
    const-string v1, "MediaPlayer"

    const-string/jumbo v2, "reset() in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1891
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v1, :cond_1

    .line 1892
    :cond_0
    const-string v1, "MediaPlayer"

    const-string v2, "[DLNA]reset mDLNAAgent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v1}, Landroid/media/MediaPluginDLNA;->handleReset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1898
    :goto_0
    iput-object v3, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    .line 1899
    invoke-direct {p0}, Landroid/media/MediaPlayer;->resetDLNAParameters()V

    .line 1903
    :cond_1
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_reset()V

    .line 1905
    iget-object v1, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1906
    const-string v1, "MediaPlayer"

    const-string/jumbo v2, "reset() out"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    return-void

    .line 1895
    :catch_0
    move-exception v0

    .line 1896
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public seekTo(I)V
    .locals 4
    .parameter "msec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1650
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v1, :cond_1

    .line 1651
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v1, :cond_0

    .line 1652
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v1, p1}, Landroid/media/MediaPluginDLNA;->handleSeekTo(I)V

    .line 1667
    :cond_0
    :goto_0
    return-void

    .line 1655
    :cond_1
    if-lez p1, :cond_4

    move v1, p1

    :goto_1
    iput v1, p0, Landroid/media/MediaPlayer;->mPreSeekSec:I

    .line 1656
    sget-boolean v1, Landroid/media/MediaPlayer;->mForceDisableDLNA:Z

    if-nez v1, :cond_3

    .line 1657
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mPrepareDone:Z

    if-nez v1, :cond_3

    .line 1658
    const/16 v1, 0x7d0

    invoke-virtual {p0, v1}, Landroid/media/MediaPlayer;->getIntParameter(I)I

    move-result v0

    .line 1659
    .local v0, contentType:I
    const-string v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[seekTo] contentType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", msec: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/MediaPlayer;->mPreSeekSec:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    iget-object v1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x386

    if-eq v0, v1, :cond_3

    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mUseFileDescriptor:Z

    if-nez v1, :cond_3

    .line 1661
    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/media/MediaPlayer;->setDLNASkipSeekPreview(Z)V

    .line 1666
    .end local v0           #contentType:I
    :cond_3
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_seekTo(I)V

    goto :goto_0

    .line 1655
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public selectTrack(I)V
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2537
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->selectOrDeselectTrack(IZ)V

    .line 2538
    return-void
.end method

.method public setAudioSessionId(I)V
    .locals 1
    .parameter "sessionId"

    .prologue
    .line 2032
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_0

    .line 2035
    :goto_0
    return-void

    .line 2034
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->_setAudioSessionId(I)V

    goto :goto_0
.end method

.method public setAudioStreamType(I)V
    .locals 4
    .parameter "streamtype"

    .prologue
    .line 1921
    iput p1, p0, Landroid/media/MediaPlayer;->mStreamType:I

    .line 1924
    iget-boolean v2, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v2, :cond_1

    .line 1936
    :cond_0
    :goto_0
    return-void

    .line 1926
    :cond_1
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->_setAudioStreamType(I)V

    .line 1927
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 1929
    :try_start_0
    const-string v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    .line 1930
    .local v1, service:Landroid/media/IAudioService;
    if-eqz v1, :cond_0

    .line 1931
    iget-object v2, p0, Landroid/media/MediaPlayer;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->registerBeatsMediaClient(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1932
    .end local v1           #service:Landroid/media/IAudioService;
    :catch_0
    move-exception v0

    .line 1933
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MediaPlayer"

    const-string v3, "Exception : get AudioService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAuxEffectSendLevel(F)V
    .locals 1
    .parameter "level"

    .prologue
    .line 2212
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_0

    .line 2215
    :goto_0
    return-void

    .line 2214
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->_setAuxEffectSendLevel(F)V

    goto :goto_0
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1002
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 1003
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 9
    .parameter "context"
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1015
    .local p3, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Landroid/media/MediaPlayer;->isDrmUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1016
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->getDrmPlaybackUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 1019
    :cond_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_2

    .line 1020
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    .line 1021
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v0, :cond_1

    .line 1022
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    iget-object v1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPluginDLNA;->handleSetDataSource(Ljava/lang/String;)V

    .line 1076
    :cond_1
    :goto_0
    return-void

    .line 1025
    :cond_2
    iput-object p1, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    .line 1026
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    .line 1027
    invoke-static {}, Landroid/media/MediaPlayer;->isForceDisableDLNA()Z

    move-result v0

    sput-boolean v0, Landroid/media/MediaPlayer;->mForceDisableDLNA:Z

    .line 1030
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    .line 1031
    .local v8, scheme:Ljava/lang/String;
    if-eqz v8, :cond_3

    const-string v0, "file"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1032
    :cond_3
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 1036
    :cond_4
    const/4 v6, 0x0

    .line 1038
    .local v6, fd:Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1039
    .local v7, resolver:Landroid/content/ContentResolver;
    const-string/jumbo v0, "r"

    invoke-virtual {v7, p2, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 1040
    if-nez v6, :cond_5

    .line 1055
    if-eqz v6, :cond_1

    .line 1056
    :goto_1
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 1046
    :cond_5
    :try_start_1
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_6

    .line 1047
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 1055
    :goto_2
    if-eqz v6, :cond_1

    goto :goto_1

    .line 1049
    :cond_6
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1052
    .end local v7           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v0

    .line 1055
    if-eqz v6, :cond_7

    .line 1056
    :goto_3
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 1061
    :cond_7
    iput-object p1, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    .line 1062
    if-nez p3, :cond_8

    .line 1063
    new-instance p3, Ljava/util/HashMap;

    .end local p3           #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 1066
    .restart local p3       #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1068
    .restart local v7       #resolver:Landroid/content/ContentResolver;
    invoke-direct {p0, v7, p3}, Landroid/media/MediaPlayer;->add_mm_headers(Landroid/content/ContentResolver;Ljava/util/Map;)V

    .line 1069
    invoke-direct {p0, p3}, Landroid/media/MediaPlayer;->add_mm_headers_runtime(Ljava/util/Map;)V

    .line 1070
    invoke-direct {p0, v7, p2, p3}, Landroid/media/MediaPlayer;->add_mm_settings(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/Map;)V

    .line 1074
    const-string v0, "MediaPlayer"

    const-string v1, "Couldn\'t open file on client side, trying server side"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 1055
    .end local v7           #resolver:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_9

    .line 1056
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 1055
    :cond_9
    throw v0

    .line 1053
    :catch_1
    move-exception v0

    .line 1055
    if-eqz v6, :cond_7

    goto :goto_3
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 6
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1181
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 1182
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "setDataSource(FileDescriptor fd) out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    iget-object v0, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1186
    const-string v0, "MediaPlayer"

    const-string v1, "[DLNA]setDataSource(FileDescriptor fd) use file descriptor directlly"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaPlayer;->mUseFileDescriptor:Z

    .line 1193
    :goto_0
    return-void

    .line 1189
    :cond_0
    const-string v0, "MediaPlayer"

    const-string v1, "[DLNA]setDataSource(FileDescriptor fd) not use file descriptor directlly"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public native setDataSource(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 2
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1096
    iput-object p1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    .line 1097
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_1

    .line 1098
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v0, :cond_0

    .line 1099
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    iget-object v1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPluginDLNA;->handleSetDataSource(Ljava/lang/String;)V

    .line 1109
    :cond_0
    :goto_0
    return-void

    .line 1104
    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->isNeedAddProxyInfo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1105
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->setDataSourceAndProxyInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 1107
    :cond_2
    invoke-direct {p0, p1, v1, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1122
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1123
    .local v3, keys:[Ljava/lang/String;
    const/4 v4, 0x0

    .line 1125
    .local v4, values:[Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1126
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .line 1127
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 1129
    const/4 v1, 0x0

    .line 1130
    .local v1, i:I
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1131
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v1

    .line 1132
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v4, v1

    .line 1133
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1136
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_0
    invoke-direct {p0, p1, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1137
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "sh"

    .prologue
    .line 755
    const-string v1, "MediaPlayer"

    const-string v2, "[DLNA]setDisplay"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v1, :cond_0

    .line 768
    :goto_0
    return-void

    .line 759
    :cond_0
    iput-object p1, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 761
    if-eqz p1, :cond_1

    .line 762
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 766
    .local v0, surface:Landroid/view/Surface;
    :goto_1
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 767
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    goto :goto_0

    .line 764
    .end local v0           #surface:Landroid/view/Surface;
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #surface:Landroid/view/Surface;
    goto :goto_1
.end method

.method public setLooping(Z)V
    .locals 1
    .parameter "looping"

    .prologue
    .line 1953
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_1

    .line 1954
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0, p1}, Landroid/media/MediaPluginDLNA;->handleSetLooping(Z)V

    .line 1960
    :cond_0
    :goto_0
    return-void

    .line 1959
    :cond_1
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->_setLooping(Z)V

    goto :goto_0
.end method

.method public setMetadataFilter(Ljava/util/Set;Ljava/util/Set;)I
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1778
    .local p1, allow:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p2, block:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->newRequest()Landroid/os/Parcel;

    move-result-object v2

    .line 1784
    .local v2, request:Landroid/os/Parcel;
    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v6

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x4

    add-int v0, v4, v5

    .line 1786
    .local v0, capacity:I
    invoke-virtual {v2}, Landroid/os/Parcel;->dataCapacity()I

    move-result v4

    if-ge v4, v0, :cond_0

    .line 1787
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataCapacity(I)V

    .line 1790
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1791
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1792
    .local v3, t:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1794
    .end local v3           #t:Ljava/lang/Integer;
    :cond_1
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1795
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1796
    .restart local v3       #t:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1798
    .end local v3           #t:Ljava/lang/Integer;
    :cond_2
    invoke-direct {p0, v2}, Landroid/media/MediaPlayer;->native_setMetadataFilter(Landroid/os/Parcel;)I

    move-result v4

    return v4
.end method

.method public native setNextMediaPlayer(Landroid/media/MediaPlayer;)V
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2847
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 2848
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2813
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 2814
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2995
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 2996
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 3099
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 3100
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2786
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 2787
    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2874
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 2875
    return-void
.end method

.method public setOnTimedTextListener(Landroid/media/MediaPlayer$OnTimedTextListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2935
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    .line 2936
    return-void
.end method

.method public setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2906
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 2907
    return-void
.end method

.method public setParameter(II)Z
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 2130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2131
    .local v0, p:Landroid/os/Parcel;
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2132
    invoke-virtual {p0, p1, v0}, Landroid/media/MediaPlayer;->setParameter(ILandroid/os/Parcel;)Z

    move-result v1

    .line 2133
    .local v1, ret:Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2134
    return v1
.end method

.method public native setParameter(ILandroid/os/Parcel;)Z
.end method

.method public setParameter(ILjava/lang/String;)Z
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 2115
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2116
    .local v0, p:Landroid/os/Parcel;
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2117
    invoke-virtual {p0, p1, v0}, Landroid/media/MediaPlayer;->setParameter(ILandroid/os/Parcel;)Z

    move-result v1

    .line 2118
    .local v1, ret:Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2119
    return v1
.end method

.method public setRetransmitEndpoint(Ljava/net/InetSocketAddress;)V
    .locals 6
    .parameter "endpoint"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 2612
    const/4 v0, 0x0

    .line 2613
    .local v0, addrString:Ljava/lang/String;
    const/4 v1, 0x0

    .line 2615
    .local v1, port:I
    if-eqz p1, :cond_0

    .line 2616
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 2617
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    .line 2620
    :cond_0
    invoke-direct {p0, v0, v1}, Landroid/media/MediaPlayer;->native_setRetransmitEndpoint(Ljava/lang/String;I)I

    move-result v2

    .line 2621
    .local v2, ret:I
    if-eqz v2, :cond_1

    .line 2622
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal re-transmit endpoint; native ret "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2624
    :cond_1
    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 2
    .parameter "screenOn"

    .prologue
    .line 1512
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eq v0, p1, :cond_1

    .line 1513
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    .line 1514
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    :cond_0
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    .line 1517
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 1519
    :cond_1
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2
    .parameter "surface"

    .prologue
    .line 791
    const-string v0, "MediaPlayer"

    const-string v1, "[DLNA]setSurface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_0

    .line 802
    :goto_0
    return-void

    .line 793
    :cond_0
    iput-object p1, p0, Landroid/media/MediaPlayer;->mSurface:Landroid/view/Surface;

    .line 796
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 797
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "setScreenOnWhilePlaying(true) is ineffective for Surface"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 800
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 801
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    goto :goto_0
.end method

.method public setVideoScalingMode(I)V
    .locals 5
    .parameter "mode"

    .prologue
    .line 845
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->isVideoScalingModeSupported(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 846
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scaling mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 847
    .local v0, msg:Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 849
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 850
    .local v2, request:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 852
    .local v1, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IMediaPlayer"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 853
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 854
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 855
    invoke-virtual {p0, v2, v1}, Landroid/media/MediaPlayer;->htc_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 857
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 858
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 860
    return-void

    .line 857
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 858
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 857
    throw v3
.end method

.method public setVolume(FF)V
    .locals 1
    .parameter "leftVolume"
    .parameter "rightVolume"

    .prologue
    .line 1995
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_1

    .line 1996
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPluginDLNA;->handleSetVolume(FF)V

    .line 2002
    :cond_0
    :goto_0
    return-void

    .line 2001
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaPlayer;->_setVolume(FF)V

    goto :goto_0
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 1484
    const/4 v1, 0x0

    .line 1485
    .local v1, washeld:Z
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    .line 1486
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1487
    const/4 v1, 0x1

    .line 1488
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1490
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1493
    :cond_1
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1494
    .local v0, pm:Landroid/os/PowerManager;
    const/high16 v2, 0x2000

    or-int/2addr v2, p2

    const-class v3, Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1495
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1496
    if-eqz v1, :cond_2

    .line 1497
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1499
    :cond_2
    return-void
.end method

.method public start()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1350
    invoke-direct {p0, v5}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1353
    sget-boolean v2, Landroid/media/MediaPlayer;->mForceDisableDLNA:Z

    if-nez v2, :cond_4

    .line 1355
    iget-boolean v2, p0, Landroid/media/MediaPlayer;->mPrepareDone:Z

    if-eqz v2, :cond_0

    .line 1356
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->doStart()V

    .line 1357
    const-string v2, "MediaPlayer"

    const-string/jumbo v3, "start() out"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    :goto_0
    return-void

    .line 1361
    :cond_0
    iput-boolean v5, p0, Landroid/media/MediaPlayer;->mPrepareDone:Z

    .line 1363
    const/16 v2, 0x7d0

    invoke-virtual {p0, v2}, Landroid/media/MediaPlayer;->getIntParameter(I)I

    move-result v1

    .line 1364
    .local v1, contentType:I
    const-string v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DLNA]contentType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    const/4 v0, 0x0

    .line 1368
    .local v0, bInitDLNA:Z
    iget-object v2, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1369
    const-string v2, "MediaPlayer"

    const-string v3, "[DLNA]Streaming path, should enable DLNA"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    const/4 v0, 0x1

    .line 1374
    :cond_1
    const/16 v2, 0x386

    if-eq v1, v2, :cond_2

    iget-boolean v2, p0, Landroid/media/MediaPlayer;->mUseFileDescriptor:Z

    if-nez v2, :cond_2

    .line 1375
    const-string v2, "MediaPlayer"

    const-string v3, "[DLNA]Not audio only content, should enable DLNA"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    const/4 v0, 0x1

    .line 1379
    :cond_2
    if-eqz v0, :cond_5

    .line 1380
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/media/MediaPluginDLNA;->getWirelessDisplayStatus(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1381
    invoke-direct {p0}, Landroid/media/MediaPlayer;->initDLNA()I

    .line 1385
    :goto_1
    const-string v2, "MediaPlayer"

    const-string v3, "[DLNA]start() out"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1383
    :cond_3
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->doStart()V

    goto :goto_1

    .line 1389
    .end local v0           #bInitDLNA:Z
    .end local v1           #contentType:I
    :cond_4
    const-string v2, "MediaPlayer"

    const-string v3, "[DLNA]force disable DLNA"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    :cond_5
    iput-boolean v5, p0, Landroid/media/MediaPlayer;->mPrepareDone:Z

    .line 1393
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->doStart()V

    goto :goto_0
.end method

.method public native stepFrame(Z)Z
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1426
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_1

    .line 1427
    invoke-direct {p0, v1}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1428
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v0, :cond_0

    .line 1429
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0}, Landroid/media/MediaPluginDLNA;->handleStop()V

    .line 1431
    :cond_0
    const-string v0, "MediaPlayer"

    const-string v1, "[DLNA]stop() out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    :goto_0
    return-void

    .line 1436
    :cond_1
    invoke-direct {p0, v1}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1437
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_stop()V

    goto :goto_0
.end method
