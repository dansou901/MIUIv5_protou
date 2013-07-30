.class public Landroid/media/medialinkhd/HtcDLNAServiceManager;
.super Ljava/lang/Object;
.source "HtcDLNAServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;,
        Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;,
        Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;,
        Landroid/media/medialinkhd/HtcDLNAServiceManager$HtcDLNAColumn;,
        Landroid/media/medialinkhd/HtcDLNAServiceManager$BaseColumn;,
        Landroid/media/medialinkhd/HtcDLNAServiceManager$ImageGroundId;
    }
.end annotation


# static fields
.field public static final ACTION_DESTROY_DLNA_MEDIACONTROLLERS:Ljava/lang/String; = "com.htc.medialinkhd.destroy_dlna_mediacontrollers"

.field public static final ACTION_DMC_DESTROY_NOTIFY_AP:Ljava/lang/String; = "com.htc.htcdlnamiddlelayer.action.dmc_destroy_notify"

.field public static final ACTION_DMC_STOP_POSITION:Ljava/lang/String; = "com.htc.htcdlnamiddlelayer.action.dmc_stop_position"

.field public static final AUTOPLAYWANTSHOWSTOP:I = 0x3e8

.field private static final CREATE_MEDIA_CONTROLLER_EXIST:I = 0x2

.field private static final CREATE_MEDIA_CONTROLLER_FAILED:I = 0x0

.field private static final CREATE_MEDIA_CONTROLLER_NEW:I = 0x1

.field private static final DISCOVER_TIMEOUT:I = 0x1388

.field public static final DTCP_FILLBUFFER_EOS:I = -0x1

.field public static final DTCP_FILLBUFFER_ERROR:I = -0x2

.field public static final DTCP_MIMETYPE_AUDIO_AAC:Ljava/lang/String; = "audio/adts"

.field public static final DTCP_MIMETYPE_AUDIO_MP3:Ljava/lang/String; = "audio/mpeg"

.field public static final DTCP_MIMETYPE_AUDIO_MP4:Ljava/lang/String; = "audio/mp4"

.field public static final DTCP_MIMETYPE_AUDIO_WMA:Ljava/lang/String; = "audio/x-ms-wma"

.field public static final DTCP_MIMETYPE_VIDEO_AVI:Ljava/lang/String; = "video/x-msvideo"

.field public static final DTCP_MIMETYPE_VIDEO_MP4:Ljava/lang/String; = "video/mp4"

.field public static final DTCP_MIMETYPE_VIDEO_MPEG:Ljava/lang/String; = "video/mpeg"

.field public static final DTCP_MIMETYPE_VIDEO_WMV:Ljava/lang/String; = "video/x-ms-wmv"

.field public static final ERROR_DISCOVER_TIMOUT_CODE:I = -0x4000

.field public static final ERROR_DISCOVER_TIMOUT_MSG:Ljava/lang/String; = "Discover Timeout"

.field public static final ERROR_SESSION_DESTROYED_DUE_TO_NO_RESOURCE:I = -0x140

.field public static final FILTER_AUDIO:I = 0x1

.field public static final FILTER_IMAGE:I = 0x2

.field public static final FILTER_UNKNOWN:I = 0x0

.field public static final FILTER_VIDEO:I = 0x4

.field public static final ITEM_TYPE_AUDIO:I = 0x1

.field public static final ITEM_TYPE_FOLDER:I = 0x0

.field public static final ITEM_TYPE_IMAGE:I = 0x2

.field public static final ITEM_TYPE_UNKNOWN:I = -0x1

.field public static final ITEM_TYPE_VIDEO:I = 0x4

.field public static final KEY_APP:Ljava/lang/String; = "appName"

.field public static final KEY_CONTROLLER:Ljava/lang/String; = "controllerName"

.field public static final KEY_COOKIE:Ljava/lang/String; = "cookie"

.field public static final KEY_ERRORID:Ljava/lang/String; = "error_id"

.field public static final KEY_ERRORMSG:Ljava/lang/String; = "error_message"

.field public static final KEY_MEDIA:Ljava/lang/String; = "media"

.field public static final KEY_POSITION:Ljava/lang/String; = "position"

.field static final LOG_TAG:Ljava/lang/String; = "HtcDLNAServiceManager "

.field private static final MSG_CHANGE_STATE:I = 0x2711

.field private static final MSG_UPDTAE_POS:I = 0x2712

.field static final NOREPEAT:I = 0x0

.field public static final NO_REPEAT:I = 0x0

.field private static final PHOTO_SLIDESHOW_START:I = 0x0

.field private static final PHOTO_SLIDESHOW_STOP:I = 0x1

.field static final REPEATALL:I = 0x1

.field static final REPEATONE:I = 0x2

.field public static final REPEAT_ALL:I = 0x1

.field public static final REPEAT_CURRENT:I = 0x2

.field public static final RESPON_DISCOVER_TIMOUT_CODE:I = 0x4e20

.field public static final RESPON_DISCOVER_TIMOUT_MSG:Ljava/lang/String; = "Discover DMR success"

.field public static final RESPON_SEEK_ERROR:I = -0x144

.field public static final RESPON_SETAVTRANSPORTURI_ERROR:I = -0x142

.field public static final RESPON_SETAVTRANSPORTURI_SUCCESS:I = -0x141

.field public static final RESPON_SETAVTRANSPORTURI_TIMEOUT:I = -0x143

.field public static final RETURN_CODE_DEVICE_NOT_SUPPORT_DTCPIP:I = -0x3f1

.field public static final RETURN_CODE_GENERAL_ERROR:I = -0x3ee

.field public static final RETURN_CODE_INVALID_ARGUMENT:I = -0x3ea

.field public static final RETURN_CODE_INVALID_RENDERERID:I = -0x3f0

.field public static final RETURN_CODE_LISTENER_NOT_READY:I = -0x3ec

.field public static final RETURN_CODE_NO_VALID_SESSION_COOKIE:I = -0x3ef

.field public static final RETURN_CODE_OK:I = -0x3e8

.field public static final RETURN_CODE_RENDERER_NOT_READY:I = -0x3eb

.field public static final RETURN_CODE_SAME_RENDERER_ALREADY_EXIST:I = -0x3ed

.field public static final RETURN_CODE_WRONG_STATE:I = -0x3e9

.field private static final SRV_DLNA:Ljava/lang/String; = "com.htc.htcdlnamiddlelayer.DLNAService"

.field private static final SRV_DTCP:Ljava/lang/String; = "com.awox.dtcpmiddlelayer.AwoxDTCPServerService"

.field public static final STATE_AUTOPLAYNEXT:I = 0x3e9

.field public static final STATE_DISCONNECTED:I = 0x9

.field public static final STATE_END:I = 0xa

.field public static final STATE_IDLE:I = 0x8

.field public static final STATE_NO_MEDIA:I = 0x6

.field public static final STATE_PAUSED:I = 0x2

.field public static final STATE_PLAYING:I = 0x0

.field public static final STATE_STOPPED:I = 0x1

.field public static final STATE_TRANSITIONING:I = 0x5

.field private static final URI_PREFIX_DEF_GETTER:Ljava/lang/String; = "content://dlna/dmr_func_get_default?cookie="

.field private static final URI_PREFIX_DEF_SETTER:Ljava/lang/String; = "content://dlna/dmr_func_set_default?cookie="

.field private static final URI_PREFIX_GETTER:Ljava/lang/String; = "content://dlna/dmr_func_get_current?cookie="

.field private static final URI_PREFIX_SETTER:Ljava/lang/String; = "content://dlna/dmr_func_set_current?cookie="


# instance fields
.field private SEEK_THREADHOLD:I

.field private bDTCPGetURI:Z

.field private bIsDTCPPlayEnd:Z

.field private bIsDTCPSupport:Z

.field private bIsDTCPURINext:Z

.field private isDTCPIPContent:Z

.field private mClientSeekTo:I

.field private mContext:Landroid/content/Context;

.field private mControllerInfo:Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

.field private mCookie:I

.field private mCurrentPos:I

.field private mDLNAServiceStatusListener:Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

.field private mDLNAServiceStatusListenerLockObject:Ljava/lang/Object;

.field private mDTCPFillBufferCallback:Landroid/media/medialinkhd/HtcDLNADTCPFillBufferCallback;

.field private mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

.field private mDTCPServiceCB:Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub;

.field private mDTCPServiceConnection:Landroid/content/ServiceConnection;

.field private mFilter:I

.field private mHandler:Landroid/os/Handler;

.field private mMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

.field private mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

.field private mMiddleLayerListenerLockObject:Ljava/lang/Object;

.field private final mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

.field private mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

.field private mRendererCreated:Z

.field private mRendererDiscoverer:Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;

.field private mRendererId:Ljava/lang/String;

.field private mRunAsSlideShow:Z

.field private mServerID:Ljava/lang/String;

.field private mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private volatile mState:Ljava/lang/Integer;

.field private mUriDefRendererGetter:Landroid/net/Uri;

.field private mUriDefRendererSaver:Landroid/net/Uri;

.field private mUriRendererGetter:Landroid/net/Uri;

.field private mUriRendererSaver:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4
    .parameter "context"
    .parameter "sessionCookie"
    .parameter "filter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/medialinkhd/CookieException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x5

    iput v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->SEEK_THREADHOLD:I

    iput-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    iput v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iput-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    iput-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mServerID:Ljava/lang/String;

    iput-boolean v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    iput-boolean v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    iput v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mFilter:I

    iput v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mClientSeekTo:I

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    iput v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    iput-boolean v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z

    iput-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mUriRendererSaver:Landroid/net/Uri;

    iput-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mUriRendererGetter:Landroid/net/Uri;

    iput-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mUriDefRendererSaver:Landroid/net/Uri;

    iput-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mUriDefRendererGetter:Landroid/net/Uri;

    iput-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iput-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

    new-instance v1, Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;

    invoke-direct {v1, p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;-><init>(Landroid/media/medialinkhd/HtcDLNAServiceManager;)V

    iput-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    iput-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    iput-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListenerLockObject:Ljava/lang/Object;

    iput-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    iput-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDTCPServiceConnection:Landroid/content/ServiceConnection;

    iput-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDTCPFillBufferCallback:Landroid/media/medialinkhd/HtcDLNADTCPFillBufferCallback;

    iput-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    iput-boolean v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->bIsDTCPSupport:Z

    iput-boolean v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->bIsDTCPPlayEnd:Z

    iput-boolean v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->bIsDTCPURINext:Z

    iput-boolean v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->bDTCPGetURI:Z

    new-instance v1, Landroid/media/medialinkhd/HtcDLNAServiceManager$1;

    invoke-direct {v1, p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager$1;-><init>(Landroid/media/medialinkhd/HtcDLNAServiceManager;)V

    iput-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDTCPServiceCB:Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub;

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

    iput-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    new-instance v1, Landroid/media/medialinkhd/HtcDLNAServiceManager$2;

    invoke-direct {v1, p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager$2;-><init>(Landroid/media/medialinkhd/HtcDLNAServiceManager;)V

    iput-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    iput p2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://dlna/dmr_func_get_current?cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mUriRendererGetter:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://dlna/dmr_func_get_default?cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mUriDefRendererGetter:Landroid/net/Uri;

    iput p3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mFilter:I

    new-instance v1, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    invoke-direct {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;-><init>()V

    iput-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    new-instance v1, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;

    invoke-direct {v1, p0}, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;-><init>(Landroid/media/medialinkhd/HtcDLNAServiceManager;)V

    iput-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;

    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    return-void
.end method

.method static synthetic access$000(Landroid/media/medialinkhd/HtcDLNAServiceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->bDTCPGetURI:Z

    return v0
.end method

.method static synthetic access$100(Landroid/media/medialinkhd/HtcDLNAServiceManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    return v0
.end method

.method static synthetic access$1000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-static {p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/media/medialinkhd/HtcDLNAServiceManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListenerLockObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/media/medialinkhd/HtcDLNAServiceManager;)Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    return-object v0
.end method

.method static synthetic access$1202(Landroid/media/medialinkhd/HtcDLNAServiceManager;Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;)Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    return-object p1
.end method

.method static synthetic access$1300(Landroid/media/medialinkhd/HtcDLNAServiceManager;)Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/media/medialinkhd/HtcDLNAServiceManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mFilter:I

    return v0
.end method

.method static synthetic access$200(Landroid/media/medialinkhd/HtcDLNAServiceManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/media/medialinkhd/HtcDLNAServiceManager;)Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/media/medialinkhd/HtcDLNAServiceManager;Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->sendResponseMsg(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Landroid/media/medialinkhd/HtcDLNAServiceManager;ILjava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/media/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    return-object v0
.end method

.method static synthetic access$400(Landroid/media/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/htcdlnainterface/IDLNAPluginService;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    return-object v0
.end method

.method static synthetic access$402(Landroid/media/medialinkhd/HtcDLNAServiceManager;Lcom/htc/htcdlnainterface/IDLNAPluginService;)Lcom/htc/htcdlnainterface/IDLNAPluginService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    return-object p1
.end method

.method static synthetic access$500(Landroid/media/medialinkhd/HtcDLNAServiceManager;)Landroid/media/medialinkhd/HtcDLNADTCPFillBufferCallback;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDTCPFillBufferCallback:Landroid/media/medialinkhd/HtcDLNADTCPFillBufferCallback;

    return-object v0
.end method

.method static synthetic access$600(Landroid/media/medialinkhd/HtcDLNAServiceManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->updatePlayingPosition()V

    return-void
.end method

.method static synthetic access$700(Landroid/media/medialinkhd/HtcDLNAServiceManager;)Lcom/awox/dtcpmiddlelayer/IDTCPService;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

    return-object v0
.end method

.method static synthetic access$702(Landroid/media/medialinkhd/HtcDLNAServiceManager;Lcom/awox/dtcpmiddlelayer/IDTCPService;)Lcom/awox/dtcpmiddlelayer/IDTCPService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

    return-object p1
.end method

.method static synthetic access$800(Landroid/media/medialinkhd/HtcDLNAServiceManager;)Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDTCPServiceCB:Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub;

    return-object v0
.end method

.method static synthetic access$900(Landroid/media/medialinkhd/HtcDLNAServiceManager;)Ljava/lang/Integer;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    return-object v0
.end method

.method private static addConnectedCookieInProvider(Landroid/content/Context;II)Z
    .locals 5
    .parameter "context"
    .parameter "cookie"
    .parameter "pid"

    .prologue
    const/4 v2, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-static {p0, p1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getGeneratedCookieInProvider(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .local v0, generatedCookie:Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "HtcDLNAServiceManager "

    const-string v4, "[addConnectedCookieInProvider], cookie not found in GeneratedCookie"

    invoke-static {v3, v4}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://dlna/dmr_func_add_connected_cookie?process_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&cookie="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .local v1, result:Ljava/lang/String;
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://dlna/dmr_func_add_connected_cookie?process_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&cookie="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method private static addGeneratedCookieInProvider(Landroid/content/Context;II)Z
    .locals 5
    .parameter "context"
    .parameter "cookie"
    .parameter "pid"

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://dlna/dmr_func_add_generated_cookie?process_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&cookie="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .local v0, result:Ljava/lang/String;
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://dlna/dmr_func_add_generated_cookie?process_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&cookie="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private static autoLog()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    return-void
.end method

.method private static autoLog(Ljava/lang/String;)V
    .locals 4
    .parameter "appendString"

    .prologue
    const/4 v3, 0x4

    const-string v1, "HtcDLNAServiceManager "

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", Line: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private checkCookieValue(I)Z
    .locals 1
    .parameter "newCookie"

    .prologue
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0xff

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private cleanDataMember()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDTCPServiceConnection:Landroid/content/ServiceConnection;

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDTCPFillBufferCallback:Landroid/media/medialinkhd/HtcDLNADTCPFillBufferCallback;

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    return-void
.end method

.method private connectDTCPServer(Z)V
    .locals 4
    .parameter "bGetURI"

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->bIsDTCPURINext:Z

    iput-boolean p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->bDTCPGetURI:Z

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

    if-eqz v0, :cond_0

    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "DTCP Service started!!"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "startService(SRV_DTCP)"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.awox.dtcpmiddlelayer.AwoxDTCPServerService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance v0, Landroid/media/medialinkhd/HtcDLNAServiceManager$3;

    invoke-direct {v0, p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager$3;-><init>(Landroid/media/medialinkhd/HtcDLNAServiceManager;)V

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDTCPServiceConnection:Landroid/content/ServiceConnection;

    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "bindService(SRV_DTCP)"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.awox.dtcpmiddlelayer.AwoxDTCPServerService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDTCPServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method

.method private createMediaControllerAndSetControllerInfo(Ljava/lang/String;Lcom/htc/htcdlnainterface/DLNAStatusBarData;)I
    .locals 9
    .parameter "rendererId"
    .parameter "statusBarData"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .local v2, result:I
    :try_start_0
    iget-object v6, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v7, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v8, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v6, v7, v8, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->createMediaController(ILjava/lang/String;Lcom/htc/htcdlnainterface/DLNAStatusBarData;)I

    move-result v2

    const-string v6, "HtcDLNAServiceManager "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[setRenderer] createMediaController result:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mCookie: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mRendererId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    move v4, v5

    :cond_0
    iput-boolean v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v2, :cond_1

    const-string v4, "HtcDLNAServiceManager "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setRenderer] Set renderer faild with renderer ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, -0x3ee

    :goto_0
    return v4

    :cond_1
    invoke-direct {p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getServiceControlStatus()Lcom/htc/htcdlnainterface/DLNAControllerStatus;

    move-result-object v3

    .local v3, status:Lcom/htc/htcdlnainterface/DLNAControllerStatus;
    if-eqz v3, :cond_4

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {v3}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getRepeatState()I

    move-result v6

    #setter for: Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRepeat:I
    invoke-static {v4, v6}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1602(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {v3}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getShuffle()Z

    move-result v6

    #setter for: Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mShuffle:Z
    invoke-static {v4, v6}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1702(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;Z)Z

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {v3}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getVolumeValue()I

    move-result v6

    #setter for: Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mVolume:I
    invoke-static {v4, v6}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1802(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    iget-object v6, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    #setter for: Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRendererId:Ljava/lang/String;
    invoke-static {v4, v6}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1902(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {v3}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getDuration()J

    move-result-wide v6

    long-to-int v6, v6

    #setter for: Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDuration:I
    invoke-static {v4, v6}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$2002(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I

    const-string v4, "HtcDLNAServiceManager "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[setRenderer] Get current DMR init state( "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getCurDMRPlayState()I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ) and set to DLNAManager."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getCurDMRPlayState()I

    move-result v0

    .local v0, dmrState:I
    const/16 v4, 0x3e8

    if-ne v0, v4, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-direct {p0, v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->isValidState(I)Z

    move-result v4

    if-ne v4, v5, :cond_3

    const-string v4, "HtcDLNAServiceManager "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setRenderer]  setState( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " )."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v4, v5}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    :cond_3
    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    const-string v4, "HtcDLNAServiceManager "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setRenderer] Same renderer id already exists in DLNA Service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v5, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v6, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMCControlItemInfo(ILjava/lang/String;)V

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {v3}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getCurrentIndex()J

    move-result-wide v5

    #setter for: Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mIndex:J
    invoke-static {v4, v5, v6}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$2102(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;J)J

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {v3}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getTotalCount()J

    move-result-wide v5

    #setter for: Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mTotal:J
    invoke-static {v4, v5, v6}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$2202(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #dmrState:I
    .end local v3           #status:Lcom/htc/htcdlnainterface/DLNAControllerStatus;
    :cond_4
    :goto_1
    const/16 v4, -0x3e8

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private disconnectDTCPServer(Z)V
    .locals 3
    .parameter "bplayend"

    .prologue
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->bIsDTCPPlayEnd:Z

    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

    invoke-interface {v1}, Lcom/awox/dtcpmiddlelayer/IDTCPService;->stopDTCPServer()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDTCPServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public static generateNewSessionCookie()I
    .locals 1

    .prologue
    invoke-static {}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog()V

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->generateNewSessionCookie(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static generateNewSessionCookie(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    invoke-static {}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .local v0, cookie:I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .local v1, myProcessID:I
    return v0
.end method

.method private static getConnectedCookieInProvider(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "cookie"

    .prologue
    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://dlna/dmr_func_get_connected_cookie?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .local v0, result:Ljava/lang/String;
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://dlna/dmr_func_get_connected_cookie?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getCurrentPlayingFilePath(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "cookie"

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://dlna/dmr_func_get_current_playing_file_path?cookie="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .local v0, currentPlayingFilePath:Ljava/lang/String;
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getCurrentPlayingFilePath]: content://dlna/dmr_func_get_current_playing_file_path?cookie="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private static getGeneratedCookieInProvider(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "cookie"

    .prologue
    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://dlna/dmr_func_get_generated_cookie?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .local v0, result:Ljava/lang/String;
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://dlna/dmr_func_get_generated_cookie?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7
    .parameter "contentUri"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v1

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "_data"

    aput-object v1, v2, v0

    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getRenderer(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "cookie"

    .prologue
    invoke-static {}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog()V

    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getRenderer]: cookie = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://dlna/dmr_func_get_current?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .local v0, currentRenderer:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .end local v0           #currentRenderer:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #currentRenderer:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getServiceControlStatus()Lcom/htc/htcdlnainterface/DLNAControllerStatus;
    .locals 5

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, status:Lcom/htc/htcdlnainterface/DLNAControllerStatus;
    :try_start_0
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMCControlStatus(ILjava/lang/String;)Lcom/htc/htcdlnainterface/DLNAControllerStatus;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private getSlideShowStatus()I
    .locals 6

    .prologue
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    const/4 v1, 0x1

    .local v1, nRet:I
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v3, :cond_1

    :cond_0
    move v2, v1

    .end local v1           #nRet:I
    .local v2, nRet:I
    :goto_0
    return v2

    .end local v2           #nRet:I
    .restart local v1       #nRet:I
    :cond_1
    :try_start_0
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v5, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMCPhotoSlideshowState(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getSlideShowStatus] result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    move v2, v1

    .end local v1           #nRet:I
    .restart local v2       #nRet:I
    goto :goto_0

    .end local v2           #nRet:I
    .restart local v1       #nRet:I
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private initMiddleLayerListener()V
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-direct {v0, p0}, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;-><init>(Landroid/media/medialinkhd/HtcDLNAServiceManager;)V

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isCookieValid(Landroid/content/Context;I)Z
    .locals 1
    .parameter "context"
    .parameter "cookie"

    .prologue
    invoke-static {}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog()V

    const/4 v0, 0x1

    return v0
.end method

.method public static isFilePlaying(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "cookie"
    .parameter "filePath"

    .prologue
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cookie:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", filePath:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getCurrentPlayingFilePath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .local v0, currentPlayingFilePath:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "utf-8"

    invoke-static {p2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-static {v0, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .end local v0           #currentPlayingFilePath:Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private isPackageExists(Ljava/lang/String;)Z
    .locals 6
    .parameter "targetPackage"

    .prologue
    const/4 v4, 0x0

    iget-object v5, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .local v3, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .local v2, packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .local v1, packageInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    .end local v1           #packageInfo:Landroid/content/pm/ApplicationInfo;
    :cond_1
    return v4
.end method

.method public static isPreviousStopAndResetDone(I)Z
    .locals 1
    .parameter "cookie"

    .prologue
    invoke-static {}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog()V

    const/4 v0, 0x1

    return v0
.end method

.method private isValidState(I)Z
    .locals 3
    .parameter "stateCode"

    .prologue
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state code ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private lockCommand(I)V
    .locals 5
    .parameter "timeout"

    .prologue
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[lockCommand]"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

    int-to-long v2, p1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    :goto_0
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[lockCommand][OUT]"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_1
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[lockCommand][InterruptedException]"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    goto :goto_0

    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method private static moveGeneratedCookieToRemovedCookieInProvider(Landroid/content/Context;II)Z
    .locals 5
    .parameter "context"
    .parameter "cookie"
    .parameter "pid"

    .prologue
    const/4 v2, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-static {p0, p1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getGeneratedCookieInProvider(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .local v0, generatedCookie:Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "HtcDLNAServiceManager "

    const-string v4, "[moveGeneratedCookieToRemovedCookieInProvider], cookie not found in GeneratedCookie"

    invoke-static {v3, v4}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://dlna/dmr_func_remove_generated_cookie?cookie="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .local v1, result:Ljava/lang/String;
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://dlna/dmr_func_remove_generated_cookie?cookie="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://dlna/dmr_func_remove_connected_cookie?cookie="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://dlna/dmr_func_remove_connected_cookie?cookie="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://dlna/dmr_func_add_released_cookie?process_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&cookie="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://dlna/dmr_func_add_released_cookie?process_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&cookie="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method private static removeConnectedCookieInProvider(Landroid/content/Context;I)Z
    .locals 4
    .parameter "context"
    .parameter "cookie"

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://dlna/dmr_func_remove_connected_cookie?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .local v0, result:Ljava/lang/String;
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://dlna/dmr_func_remove_connected_cookie?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private saveRenderer()Z
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->saveRenderer(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private saveRenderer(Ljava/lang/String;)Z
    .locals 4
    .parameter "renderer"

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://dlna/dmr_func_set_current?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .local v0, result:Ljava/lang/String;
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[saveRenderer]: content://dlna/dmr_func_set_current?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private sendErrorMsg(ILjava/lang/String;)I
    .locals 6
    .parameter "error_id"
    .parameter "error_msg"

    .prologue
    const/4 v5, 0x0

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    if-nez v1, :cond_0

    monitor-exit v2

    :goto_0
    return v5

    :cond_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v1}, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->getHtcDLNAControllerStatusListener()Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;

    move-result-object v0

    .local v0, listener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_1

    const-string v1, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[sendErrorMsg][id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;->onError(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0           #listener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sendResponseMsg(Ljava/lang/String;ILjava/lang/String;)I
    .locals 6
    .parameter "rendererID"
    .parameter "response_id"
    .parameter "response_msg"

    .prologue
    const/4 v5, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v2}, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->getHtcDLNAControllerStatusListener()Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;

    move-result-object v1

    .local v1, listener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v1, :cond_0

    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[sendResponseMsg][id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2, p3}, Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;->onResponse(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1           #listener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method private unlockCommand()V
    .locals 2

    .prologue
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[unlockCommand]"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[unlockCommand][OUT]"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private updatePlayingPosition()V
    .locals 6

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getCurrentPosition()I

    move-result v1

    .local v1, position:I
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    #setter for: Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPosition:I
    invoke-static {v2, v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1502(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v2}, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->getHtcDLNAControllerStatusListener()Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;

    move-result-object v0

    .local v0, listener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_0

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;->onUpdatePosition(J)V

    .end local v0           #listener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    :cond_0
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public albumArtDownload(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "cookie"
    .parameter "serverId"
    .parameter "contentId"

    .prologue
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "albumArtDownload : invalid mService"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2, p3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->albumArtDownload(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public browse(ILjava/lang/String;Ljava/lang/String;JIJ)V
    .locals 10
    .parameter "cookie"
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"
    .parameter "count"
    .parameter "boundary"

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "browse : invalid mService"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move/from16 v6, p6

    move-wide/from16 v7, p7

    invoke-interface/range {v0 .. v8}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->browse(ILjava/lang/String;Ljava/lang/String;JIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v9

    .local v9, e:Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public browseCancel(ILjava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .parameter "cookie"
    .parameter "serverId"
    .parameter "containerId"
    .parameter "startIndex"

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "browseCancel : invalid mService"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->browseCancel(ILjava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    .local v6, e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public cancelContentThumbnail(II)V
    .locals 3
    .parameter "cookie"
    .parameter "groupID"

    .prologue
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "cancelContentThumbnail : invalid mService"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->cancelContentThumbnail(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public checkErrorExists()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    :cond_0
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[checkErrorExists] error state for getErrorReason(), current state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->checkErrorExists(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "[checkErrorExists] No error exists."

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[checkErrorExists] Error exists."

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public connect()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v1, -0x3e8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1

    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[connect] called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, -0x3e9

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    if-nez v2, :cond_2

    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[connect] please set DLNAServiceStatusListener before connect()."

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, -0x3ec

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v4, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    invoke-interface {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;->onServiceConnected()V

    goto :goto_0

    :cond_3
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "Request connect service"

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->initMiddleLayerListener()V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.htcdlnamiddlelayer.DLNAService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v2, "binder_name"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    invoke-virtual {p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->isDTCPSupport()Z

    move-result v2

    iput-boolean v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->bIsDTCPSupport:Z

    goto :goto_0
.end method

.method public continueBrowseDown(ILjava/lang/String;Ljava/lang/String;JJII)V
    .locals 11
    .parameter "cookie"
    .parameter "serverId"
    .parameter "containerId"
    .parameter "firstIndex"
    .parameter "startIndex"
    .parameter "count"
    .parameter "browsedCount"

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "continueBrowseDown : invalid mService"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->continueBrowseDown(ILjava/lang/String;Ljava/lang/String;JJII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v10

    .local v10, e:Landroid/os/RemoteException;
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public disconnect()V
    .locals 7

    .prologue
    const/16 v4, 0x9

    const/4 v6, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v4, :cond_0

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "Request disconnect service"

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v4, v2, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    :try_start_0
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v5, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-interface {v2, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->unregisterCallback(ILcom/htc/htcdlnainterface/IDLNAPluginNotify;)V

    :cond_2
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v2}, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->reset()V

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    iput-object v6, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListenerLockObject:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    .local v0, clientListener:Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;->onServiceDisconnected()V

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    :cond_4
    monitor-exit v3

    goto :goto_0

    .end local v0           #clientListener:Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v2
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public dtcpFillBuffer(JI[B)I
    .locals 3
    .parameter "id"
    .parameter "size"
    .parameter "data"

    .prologue
    :try_start_0
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "mDTCPService.FillBuffer"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/awox/dtcpmiddlelayer/IDTCPService;->FillBuffer(JI[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, -0x3e8

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/16 v1, -0x3e9

    goto :goto_0
.end method

.method public dtcpSetAVTransportPushBufferURI(Ljava/lang/String;J)I
    .locals 4
    .parameter "mimetype"
    .parameter "totalsize"

    .prologue
    const/16 v0, -0x3e9

    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "dtcpSetAVTransportPushBufferURI()"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->bIsDTCPSupport:Z

    if-nez v1, :cond_0

    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[dtcpSetAVTransportPushBufferURI] RETURN_CODE_DEVICE_NOT_SUPPORT_DTCPIP"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x3f1

    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[dtcpSetAVTransportPushBufferURI] path == null, RETURN_CODE_INVALID_ARGUMENT"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x3ea

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_3

    :cond_2
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[dtcpSetAVTransportPushBufferURI] null == mService || !mRendererCreated, RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x3eb

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    :cond_4
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dtcpSetAVTransportPushBufferURI] called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDTCPFillBufferCallback:Landroid/media/medialinkhd/HtcDLNADTCPFillBufferCallback;

    if-nez v1, :cond_6

    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[dtcpSetAVTransportPushBufferURI] mDTCPFillBufferCallback == null RETURN_CODE_WRONG_STATE"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "new DLNAPushMediaInfo"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    invoke-direct {v0}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;-><init>()V

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    invoke-virtual {v0, p1}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->setMediaFilePath(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    invoke-virtual {v0, p1}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->setMetaDataFilePath(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    invoke-virtual {v0, p2, p3}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->setTotalFileSize(J)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->connectDTCPServer(Z)V

    const/16 v0, -0x3e8

    goto/16 :goto_0
.end method

.method public dtcpSetAVTransportURI(Ljava/lang/String;)I
    .locals 3
    .parameter "path"

    .prologue
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "dtcpSetAVTransportURI()"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDTCPFillBufferCallback:Landroid/media/medialinkhd/HtcDLNADTCPFillBufferCallback;

    iget-boolean v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->bIsDTCPSupport:Z

    if-nez v0, :cond_0

    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[dtcpSetAVTransportURI] RETURN_CODE_DEVICE_NOT_SUPPORT_DTCPIP"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x3f1

    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[dtcpSetAVTransportURI] path == null, RETURN_CODE_INVALID_ARGUMENT"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x3ea

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[dtcpSetAVTransportURI] null == mService || !mRendererCreated, RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x3eb

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    :cond_4
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dtcpSetAVTransportURI] called in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x3e9

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "new DLNAPushMediaInfo"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    invoke-direct {v0}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;-><init>()V

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    invoke-virtual {v0, p1}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->setMediaFilePath(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->connectDTCPServer(Z)V

    const/16 v0, -0x3e8

    goto :goto_0
.end method

.method public dtcpSetPushBufferCB(Landroid/media/medialinkhd/HtcDLNADTCPFillBufferCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDTCPFillBufferCallback:Landroid/media/medialinkhd/HtcDLNADTCPFillBufferCallback;

    return-void
.end method

.method public findUsableRenderer(Lcom/htc/htcdlnainterface/DLNAStatusBarData;)Z
    .locals 4
    .parameter "statusBarData"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRendererAsReadyDongle] called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setRendererAsReadyDongle(Lcom/htc/htcdlnainterface/DLNAStatusBarData;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "HtcDLNAServiceManager "

    const-string v2, "[findUsableRenderer][setRendererAsReadyDongle]"

    invoke-static {v0, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setRendererAsDefaultRenderer(Lcom/htc/htcdlnainterface/DLNAStatusBarData;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "HtcDLNAServiceManager "

    const-string v2, "[findUsableRenderer][setRendererAsDefaultRenderer]"

    invoke-static {v0, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method public getContainerID()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMCCurrentContainerID(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getContentID()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMCCurrentContentID(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getContentThumbnail(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "cookie"
    .parameter "serverID"
    .parameter "contentID"
    .parameter "groupID"

    .prologue
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "getContentThumbnail : invalid mService"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getContentThumbnail(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getControllerInfo()Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 6

    .prologue
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v3, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    :cond_2
    const-string v3, "HtcDLNAServiceManager "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getCurrentPosition] error state for getCurrentPosition(), current state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, -0x3e9

    goto :goto_0

    :cond_3
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_4

    const-string v3, "HtcDLNAServiceManager "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getCurrentPosition] error state for getCurrentPosition(), current state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", return pos:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x0

    .local v1, position:I
    const/4 v2, 0x0

    .local v2, positionNegative:Z
    :try_start_0
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v5, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getPlayPosition(ILjava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    long-to-int v1, v3

    :goto_1
    if-gez v1, :cond_5

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_5
    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mClientSeekTo:I

    if-ltz v3, :cond_6

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->SEEK_THREADHOLD:I

    if-gt v3, v4, :cond_6

    iget v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mClientSeekTo:I

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_6
    const/4 v3, -0x1

    iput v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mClientSeekTo:I

    if-nez v2, :cond_7

    move v3, v1

    :goto_2
    iput v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    const-string v3, "HtcDLNAServiceManager "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getCurrentPosition] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    goto :goto_2
.end method

.method public getCurrentSessionCookie()I
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    iget v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    return v0
.end method

.method public getDMCControlItemInfo(ILjava/lang/String;)V
    .locals 3
    .parameter "cookie"
    .parameter "rendererId"

    .prologue
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "getDMCControlItemInfo : invalid mService"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMCControlItemInfo(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDMCCurrentLocalPlayIndex(ILjava/lang/String;)I
    .locals 5
    .parameter "cookie"
    .parameter "rendererID"

    .prologue
    const/4 v1, -0x1

    .local v1, nIndex:I
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v3, :cond_0

    const-string v3, "HtcDLNAServiceManager "

    const-string v4, "getDMCCurrentLocalPlayIndex : invalid service"

    invoke-static {v3, v4}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .end local v1           #nIndex:I
    .local v2, nIndex:I
    :goto_0
    return v2

    .end local v2           #nIndex:I
    .restart local v1       #nIndex:I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v3, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMCCurrentLocalPlayIndex(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .end local v1           #nIndex:I
    .restart local v2       #nIndex:I
    goto :goto_0

    .end local v2           #nIndex:I
    .restart local v1       #nIndex:I
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getDMCVolumeControlSupport(ILjava/lang/String;)Z
    .locals 5
    .parameter "cookie"
    .parameter "rendererID"

    .prologue
    const/4 v0, 0x1

    .local v0, bSupport:Z
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v3, :cond_0

    const-string v3, "HtcDLNAServiceManager "

    const-string v4, "getDMCVolumeControlSupport : invalid service"

    invoke-static {v3, v4}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .end local v0           #bSupport:Z
    .local v1, bSupport:I
    :goto_0
    return v1

    .end local v1           #bSupport:I
    .restart local v0       #bSupport:Z
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v3, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMCVolumeControlSupport(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .restart local v1       #bSupport:I
    goto :goto_0

    .end local v1           #bSupport:I
    :catch_0
    move-exception v2

    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getDMPContentItemDetails(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "cookie"
    .parameter "serverId"
    .parameter "contentId"

    .prologue
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "getDMPContentItemDetails : invalid mService"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2, p3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMPContentItemDetails(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDefaultRenderer()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mUriDefRendererGetter:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()I
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getCurrentPosition] error state for getPlayingPosition(), current state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", return pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    #getter for: Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDuration:I
    invoke-static {v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$2000(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    #getter for: Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDuration:I
    invoke-static {v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$2000(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)I

    move-result v0

    goto :goto_0
.end method

.method public getErrorId()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    :cond_0
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getErrorReason] error state for getErrorReason(), current state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->checkErrorExists(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "[getErrorReason] NoError"

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const/4 v1, 0x0

    .local v1, lastErrorId:I
    :try_start_1
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getLastErrorId(ILjava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    :goto_1
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getErrorId] error ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getErrorReason()Ljava/lang/String;
    .locals 5

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    :cond_0
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getErrorReason] error state for getErrorReason(), current state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error state for getErrorReason(), current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->checkErrorExists(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "[getErrorReason] NoError "

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "No errror."
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const-string v1, ""

    .local v1, lastErrorReason:Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getLastErrorReason(ILjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_1
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getErrorReason] error ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getErrorRendererID()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    :cond_0
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getErrorRendererID] error state for getErrorReason(), current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error state for getErrorRendererID(), current state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->checkErrorExists(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[getErrorRendererID] NoError "

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "No errror."
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getErrorRendererID] error Renderer ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getFilter()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mFilter:I

    return v0
.end method

.method public getHtcDLNARendererDiscoverer()Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;

    return-object v0
.end method

.method public getItemDetails()Lcom/htc/htcdlnainterface/DLNAContentItemDetails;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const-string v3, "HtcDLNAServiceManager "

    const-string v4, "[getItemDetails]"

    invoke-static {v3, v4}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    :cond_0
    const-string v3, "HtcDLNAServiceManager "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getItemDetails] error state for getItemDetails(), current state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    .local v0, details:Lcom/htc/htcdlnainterface/DLNAContentItemDetails;
    :try_start_0
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v5, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMCContentItemDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/htcdlnainterface/DLNAContentItemDetails;

    move-result-object v0

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v3}, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->getHtcDLNAControllerStatusListener()Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;

    move-result-object v2

    .local v2, listener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getPlayingIndex()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6, v0}, Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;->onItemDetailsUpdated(JLcom/htc/htcdlnainterface/DLNAContentItemDetails;)V

    .end local v2           #listener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    :cond_3
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getMirrorRenderer()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    :cond_0
    const-string v3, "HtcDLNAServiceManager "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getRenderer] called in wrong state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    const/4 v1, 0x0

    .local v1, rendererData:Lcom/htc/htcdlnainterface/DLNARendererData;
    :try_start_0
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getMirrorRenderer(I)Lcom/htc/htcdlnainterface/DLNARendererData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    const-string v3, "HtcDLNAServiceManager "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getMirrorRenderer] rendererData = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getPlayingIndex()J
    .locals 8

    .prologue
    const-wide/16 v1, -0x1

    .local v1, index:J
    iget-object v5, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v5, :cond_1

    :cond_0
    move-wide v3, v1

    .end local v1           #index:J
    .local v3, index:J
    :goto_0
    return-wide v3

    .end local v3           #index:J
    .restart local v1       #index:J
    :cond_1
    :try_start_0
    iget-object v5, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v6, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v7, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getPlaylistPlayIndex(ILjava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_1
    const-string v5, "HtcDLNAServiceManager "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getPlayingIndex] index = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v3, v1

    .end local v1           #index:J
    .restart local v3       #index:J
    goto :goto_0

    .end local v3           #index:J
    .restart local v1       #index:J
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getPlaylistSize()J
    .locals 8

    .prologue
    const-wide/16 v1, -0x1

    .local v1, total:J
    iget-object v5, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v5, :cond_1

    :cond_0
    move-wide v3, v1

    .end local v1           #total:J
    .local v3, total:J
    :goto_0
    return-wide v3

    .end local v3           #total:J
    .restart local v1       #total:J
    :cond_1
    :try_start_0
    iget-object v5, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v6, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v7, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getPlaylistTotalCount(ILjava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_1
    const-string v5, "HtcDLNAServiceManager "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getPlaylistSize] total = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v3, v1

    .end local v1           #total:J
    .restart local v3       #total:J
    goto :goto_0

    .end local v3           #total:J
    .restart local v1       #total:J
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getRenderer()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    :cond_0
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getRenderer] called in wrong state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getRenderer]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mUriRendererGetter:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mUriRendererGetter:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .local v0, currentRenderer:Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public getRendererData(Ljava/lang/String;)Lcom/htc/htcdlnainterface/DLNARendererData;
    .locals 5
    .parameter "rendererId"

    .prologue
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    .local v1, rendererData:Lcom/htc/htcdlnainterface/DLNARendererData;
    :try_start_0
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v2, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getRendererIdData(Ljava/lang/String;)Lcom/htc/htcdlnainterface/DLNARendererData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getRendererData] rendererData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getRendererId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    return-object v0
.end method

.method public getRepeatState()I
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ControllerInfo.Repeat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    #getter for: Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRepeat:I
    invoke-static {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1600(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    #getter for: Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRepeat:I
    invoke-static {v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1600(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)I

    move-result v0

    return v0
.end method

.method public getServerThumbnail(ILjava/lang/String;)V
    .locals 3
    .parameter "cookie"
    .parameter "serverID"

    .prologue
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "getServerThumbnail : invalid mService"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getServerThumbnail(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getState()I
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getState] state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getStateNameByStateCode(I)Ljava/lang/String;
    .locals 3
    .parameter "stateCode"

    .prologue
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state code ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown state code ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STATE_PLAYING ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STATE_STOPPED ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STATE_PAUSED ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STATE_TRANSITIONING ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STATE_NO_MEDIA ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STATE_IDLE ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STATE_DISCONNECTED ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STATE_END ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getVolume()I
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getVolume] error state for setVolume(), current state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x3e9

    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    #getter for: Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mVolume:I
    invoke-static {v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1800(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)I

    move-result v0

    goto :goto_0
.end method

.method public imageDownload(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "cookie"
    .parameter "serverId"
    .parameter "contentId"

    .prologue
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "imageDownload : invalid mService"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2, p3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->imageDownload(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isBrowsingCmdDone(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "cookie"
    .parameter "serverID"
    .parameter "contentID"

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v2, :cond_0

    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "isBrowsingCmdDone: invalid service"

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v2, p1, p2, p3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->isBrowsingCmdDone(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isDTCPSupport()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isDTCPSupport(JI[B)Z
    .locals 1
    .parameter "id"
    .parameter "size"
    .parameter "data"

    .prologue
    invoke-virtual {p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->isDTCPSupport()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    iget-boolean v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v3, :cond_2

    invoke-direct {p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getSlideShowStatus()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getState()I

    move-result v0

    .local v0, state:I
    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public isShuffleEnabled()Z
    .locals 5

    .prologue
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v2, :cond_0

    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "isShuffleEnabled : invalid mService"

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    .local v1, shuffle:Z
    :try_start_0
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->isShuffleEnabled(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public pause()I
    .locals 5

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[pause], null == mService || !mRendererCreated, return RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, -0x3eb

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[pause] error state for pause(), current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, -0x3e9

    goto :goto_0

    :cond_2
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[pause] Request pause"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-boolean v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setDMCPhotoSlideshowState(ILjava/lang/String;I)Z

    :goto_1
    const/16 v1, -0x3e8

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->pause(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public play()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[play], null == mService || !mRendererCreated, return RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, -0x3eb

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[play] error state for play(), current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, -0x3e9

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->bIsDTCPPlayEnd:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->connectDTCPServer(Z)V

    :cond_3
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[play] Request play"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-boolean v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setDMCPhotoSlideshowState(ILjava/lang/String;I)Z

    :goto_1
    const/16 v1, -0x3e8

    goto :goto_0

    :cond_4
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->play(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public play(J)I
    .locals 4
    .parameter "index"

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[play], null == mService || !mRendererCreated, return RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, -0x3eb

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[play] error state for play(), current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, -0x3e9

    goto :goto_0

    :cond_2
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[play] Request play @ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->changePushPlaylistItem(ILjava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/16 v1, -0x3e8

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public playNext()I
    .locals 6

    .prologue
    const/4 v5, 0x2

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[playNext] null == mService || !mRendererCreated"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, -0x3eb

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v5, :cond_2

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[playNext] error status for playNext(), current status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, -0x3e9

    goto :goto_0

    :cond_2
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[playNext] Request next"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getPlaylistSize()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getRepeatState()I

    move-result v1

    if-ne v1, v5, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->seekTo(I)I

    :goto_1
    const/16 v1, -0x3e8

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->switchPlaylistNextItem(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public playPrevious()I
    .locals 6

    .prologue
    const/4 v5, 0x2

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[playPrevious] null == mService || !mRendererCreated"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, -0x3eb

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v5, :cond_2

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[playPrevious] error status for playPrevious(), current status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, -0x3e9

    goto :goto_0

    :cond_2
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[playPrevious] Request previous"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getPlaylistSize()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getRepeatState()I

    move-result v1

    if-ne v1, v5, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->seekTo(I)I

    :goto_1
    const/16 v1, -0x3e8

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->switchPlaylistPrevItem(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public reArrangePushPlaylist(ILjava/lang/String;I[I)Z
    .locals 5
    .parameter "cookie"
    .parameter "rendererID"
    .parameter "newIndex"
    .parameter "idList"

    .prologue
    const/4 v0, 0x0

    .local v0, bRet:Z
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v3, :cond_0

    const-string v3, "HtcDLNAServiceManager "

    const-string v4, "reArrangePushPlaylist : invalid service"

    invoke-static {v3, v4}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .end local v0           #bRet:Z
    .local v1, bRet:I
    :goto_0
    return v1

    .end local v1           #bRet:I
    .restart local v0       #bRet:Z
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->reArrangePushPlaylist(ILjava/lang/String;I[I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .restart local v1       #bRet:I
    goto :goto_0

    .end local v1           #bRet:I
    :catch_0
    move-exception v2

    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public refreshRendererList()V
    .locals 3

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->reSearchDevices(I)V

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getRendererList(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public refreshServerList()V
    .locals 3

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->reSearchDevices(I)V

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getServerList(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public release()I
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v6, :cond_0

    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[release] called in wrong state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, -0x3e9

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, currentState:I
    invoke-virtual {p0, v6, v4, v5}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v5, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-interface {v2, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->unregisterCallback(ILcom/htc/htcdlnainterface/IDLNAPluginNotify;)V

    :cond_1
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v2}, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->reset()V

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_4

    :try_start_2
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x2711

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x2712

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setDMCPhotoSlideshowState(ILjava/lang/String;I)Z

    :goto_2
    const/4 v2, 0x0

    iput v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->destroyMediaController(ILjava/lang/String;)V

    :cond_3
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    :goto_3
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "[release] unbindService."

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-direct {p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->cleanDataMember()V

    const/16 v2, -0x3e8

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    :cond_6
    :try_start_4
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->stop(ILjava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .restart local v1       #e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3
.end method

.method public reset()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v5, :cond_0

    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[reset] called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, -0x3e9

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2711

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2712

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :try_start_0
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[reset] call mService.destroyMediaController(mCookie: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mRendererId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->destroyMediaController(ILjava/lang/String;)V

    const/4 v1, 0x0

    iput v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/16 v1, 0x8

    invoke-virtual {p0, v1, v4, v5}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    const/16 v1, -0x3e8

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public runAsSlideShow()V
    .locals 0

    .prologue
    return-void
.end method

.method public saveDefaultRenderer(Ljava/lang/String;)Z
    .locals 4
    .parameter "rendererId"

    .prologue
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[saveDefaultRenderer] string:content://dlna/dmr_func_set_default?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://dlna/dmr_func_set_default?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .local v0, result:Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public seekTo(I)I
    .locals 6
    .parameter "timeSecs"

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[seekTo] error state for seekTo(), current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, -0x3e9

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[seekTo], null == mService || !mRendererCreated, return RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, -0x3eb

    goto :goto_0

    :cond_2
    if-gez p1, :cond_3

    const/4 p1, 0x0

    :cond_3
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[seekTo] Request seekTo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iput p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mClientSeekTo:I

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    int-to-long v4, p1

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setSeek(ILjava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/16 v1, -0x3e8

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public setAVTransportURI(Ljava/lang/String;)I
    .locals 7
    .parameter "path"

    .prologue
    const/4 v3, 0x0

    const/16 v0, -0x3ea

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[setAVTransportURI] path == null, RETURN_CODE_INVALID_ARGUMENT"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_2

    :cond_1
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[setAVTransportURI] null == mService || !mRendererCreated, RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x3eb

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_4

    :cond_3
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setAVTransportURI] called in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x3e9

    goto :goto_0

    :cond_4
    invoke-direct {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    iput-boolean v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z

    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setAVTransportURI] path= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v1, "rtsp://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "Not support rtsp streaming."

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v6

    .local v6, e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v6           #e:Landroid/os/RemoteException;
    :goto_1
    const/16 v0, -0x3e8

    goto/16 :goto_0

    :cond_5
    :try_start_1
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newSingleURI(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v0, "content://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newPushSingle(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newPushSingle(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public setAutoReleaseAfterPlayCompleted(Z)I
    .locals 5
    .parameter "autoRelease"

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    :cond_0
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setAutoReleaseAfterPlayCompleted] called in wrong state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, -0x3e9

    :goto_0
    return v2

    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v2, v3, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setAutoReleaseAfterPlayCompleted(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, result:Z
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/16 v2, -0x3e8

    goto :goto_0

    .end local v1           #result:Z
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const/16 v2, -0x3ee

    goto :goto_0
.end method

.method public setBrowseThumbSize(Ljava/lang/String;)Z
    .locals 4
    .parameter "sizeSequence"

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v2, :cond_0

    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "setBrowseThumbSize invalid service"

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v2, v3, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setBrowseThumbSize(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setClientSeekTo(I)V
    .locals 0
    .parameter "clientSeekTo"

    .prologue
    iput p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mClientSeekTo:I

    return-void
.end method

.method public setControllerStatusListener(Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;)I
    .locals 3
    .parameter "listener"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setControllerStatusListener] called in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x3e9

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->initMiddleLayerListener()V

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v0, p1}, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->setHtcDLNAControllerStatusListener(Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;)V

    :cond_1
    monitor-exit v1

    const/16 v0, -0x3e8

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDLNAServiceStatusListener(Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;)I
    .locals 3
    .parameter "listener"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setDLNAServiceStatusListener] called in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x3e9

    :goto_0
    return v0

    :cond_0
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    const/16 v0, -0x3e8

    goto :goto_0
.end method

.method public setDMCThumbSize(Ljava/lang/String;)Z
    .locals 4
    .parameter "sizeSequence"

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v2, :cond_0

    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "setDMCThumbSize invalid service"

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v2, v3, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setDMCThumbSize(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDMPAlbumArtSize(Ljava/lang/String;)Z
    .locals 4
    .parameter "sizeSequence"

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v2, :cond_0

    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "setDMPAlbumArtSize invalid service"

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v2, v3, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setDMPAlbumArtSize(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDTCPIPDataSource(Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;)V
    .locals 4
    .parameter "data"

    .prologue
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDTCPIPDataSource] DLNAPushMediaInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z

    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newPushEncryptSingle(ILjava/lang/String;Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDataSource([II)I
    .locals 9
    .parameter "pushList"
    .parameter "startIndex"

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/16 v0, -0x3ea

    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setDataSource] pushList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", start index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    iget v5, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mFilter:I

    iget-boolean v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v3, :cond_2

    const-wide/16 v6, 0x1f40

    :goto_1
    move v3, p2

    move-object v4, p1

    invoke-interface/range {v0 .. v7}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newPushPlaylist(ILjava/lang/String;I[IIJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const/16 v0, -0x3e8

    goto :goto_0

    :cond_2
    const-wide/16 v6, 0x0

    goto :goto_1

    :catch_0
    move-exception v8

    .local v8, e:Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method public setDataSource(Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;)V
    .locals 7
    .parameter "data"

    .prologue
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setDataSource] data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->getMediaFilePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setDataSource] MediaFilePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->getMediaFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->getMediaFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->getThumbFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newSingleURI(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    .local v6, e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v6           #e:Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newPushSingle2(ILjava/lang/String;Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setDataSource(Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;)V
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDataSource] DLNARemotePlaylistInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    iput-boolean v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z

    :try_start_0
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;->getServerID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mServerID:Ljava/lang/String;

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newRemotePlaylist(ILjava/lang/String;Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDataSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "serverID"
    .parameter "contentID"
    .parameter "containerID"

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    iput-boolean v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z

    :try_start_0
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mServerID:Ljava/lang/String;

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newRemoteSingle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    .local v6, e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setIPListSource(Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;)V
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setIPListSource] DLNAInternetPushPlaylistInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    iput-boolean v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z

    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newInternetPushList(ILjava/lang/String;Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setIPSingleSource(Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;)V
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setIPSingleSource] DLNAInternetPushPlaylistInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    iput-boolean v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z

    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newInternetPushSingle(ILjava/lang/String;Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setMediaTypeFiler(I)I
    .locals 3
    .parameter "filter"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setMediaTypeFiler] called in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x3e9

    :goto_0
    return v0

    :cond_1
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setMediaTypeFiler] filter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mFilter:I

    const/16 v0, -0x3e8

    goto :goto_0
.end method

.method public setOutputPath(ILjava/lang/String;)V
    .locals 2
    .parameter "index"
    .parameter "path"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setOutputPath(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setRenderer(Ljava/lang/String;Lcom/htc/htcdlnainterface/DLNAStatusBarData;)I
    .locals 6
    .parameter "rendererId"
    .parameter "statusBarData"

    .prologue
    const/16 v2, -0x3ee

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    if-nez p1, :cond_1

    const/16 v2, -0x3ea

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v3, "HtcDLNAServiceManager "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setRenderer] renderId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", statusBarData = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    :cond_2
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setRenderer] called in wrong state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, -0x3e9

    goto :goto_0

    :cond_3
    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-direct {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->checkCookieValue(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "[setRenderer] Please set valid session cookie first."

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, -0x3ef

    goto :goto_0

    :cond_4
    :try_start_0
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-direct {p0, v3, p2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->createMediaControllerAndSetControllerInfo(Ljava/lang/String;Lcom/htc/htcdlnainterface/DLNAStatusBarData;)I

    move-result v1

    .local v1, result:I
    if-eq v1, v2, :cond_0

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getCurrentPosition()I

    move-result v3

    #setter for: Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPosition:I
    invoke-static {v2, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1502(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I

    invoke-direct {p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->saveRenderer()Z

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getRendererList(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #result:I
    :goto_1
    const/16 v2, -0x3e8

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public setRendererAsDefaultRenderer(Lcom/htc/htcdlnainterface/DLNAStatusBarData;)Z
    .locals 5
    .parameter "statusBarData"

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setRendererAsReadyDongle] called in wrong state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getDefaultRenderer()Ljava/lang/String;

    move-result-object v0

    .local v0, renderID:Ljava/lang/String;
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setRendererAsDefaultRenderer][getDefaultRenderer] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getDefaultRenderer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "[setRendererAsDefaultRenderer] no default renderer available"

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRendererAsDefaultRenderer] statusBarData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;

    invoke-virtual {v1, v0}, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->setRendererID(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;

    invoke-virtual {v1, p1}, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->setStatusBarData(Lcom/htc/htcdlnainterface/DLNAStatusBarData;)V

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->setTimeout(J)V

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;

    new-instance v2, Landroid/media/medialinkhd/HtcDLNAServiceManager$5;

    invoke-direct {v2, p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager$5;-><init>(Landroid/media/medialinkhd/HtcDLNAServiceManager;)V

    invoke-virtual {v1, v2}, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->startDiscover(Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setRendererAsMediaLinkHD(Lcom/htc/htcdlnainterface/DLNAStatusBarData;)Z
    .locals 1
    .parameter "statusBarData"

    .prologue
    invoke-virtual {p0, p1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setRendererAsReadyDongle(Lcom/htc/htcdlnainterface/DLNAStatusBarData;)Z

    move-result v0

    return v0
.end method

.method public setRendererAsMediaLinkHD(Lcom/htc/htcdlnainterface/DLNAStatusBarData;I)Z
    .locals 1
    .parameter "statusBarData"
    .parameter "timeoutMs"

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setRendererAsReadyDongle(Lcom/htc/htcdlnainterface/DLNAStatusBarData;I)Z

    move-result v0

    return v0
.end method

.method public setRendererAsReadyDongle(Lcom/htc/htcdlnainterface/DLNAStatusBarData;)Z
    .locals 1
    .parameter "statusBarData"

    .prologue
    const/16 v0, 0x1388

    invoke-virtual {p0, p1, v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setRendererAsReadyDongle(Lcom/htc/htcdlnainterface/DLNAStatusBarData;I)Z

    move-result v0

    return v0
.end method

.method public setRendererAsReadyDongle(Lcom/htc/htcdlnainterface/DLNAStatusBarData;I)Z
    .locals 5
    .parameter "statusBarData"
    .parameter "timeoutMs"

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setRendererAsReadyDongle] called in wrong state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setRendererAsReadyDongle] statusBarData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/media/medialinkhd/WirelessDisplayHelper;->getReadyDongle(Landroid/content/Context;)Lcom/htc/service/DongleInfo;

    move-result-object v0

    .local v0, info:Lcom/htc/service/DongleInfo;
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/media/medialinkhd/WirelessDisplayHelper;->getReadyDongleIP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/media/medialinkhd/WirelessDisplayHelper;->getReadyDongleIP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/media/medialinkhd/WirelessDisplayHelper;->getReadyDongleIP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->setRendererIP(Ljava/lang/String;)V

    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRendererAsReadyDongle] WirelessDisplayHelper.getReadyDongleIP(mContext) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/media/medialinkhd/WirelessDisplayHelper;->getReadyDongleIP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;

    invoke-virtual {v1, p1}, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->setStatusBarData(Lcom/htc/htcdlnainterface/DLNAStatusBarData;)V

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->setTimeout(J)V

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;

    new-instance v2, Landroid/media/medialinkhd/HtcDLNAServiceManager$4;

    invoke-direct {v2, p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager$4;-><init>(Landroid/media/medialinkhd/HtcDLNAServiceManager;)V

    invoke-virtual {v1, v2}, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->startDiscover(Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getInetAddress()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getInetAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;

    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getInetAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->setRendererIP(Ljava/lang/String;)V

    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRendererAsReadyDongle] info.getInetAddress() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getInetAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getInetAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "[setRendererAsReadyDongle] Can not get dongle IP!!"

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setRendererStatusListener(Landroid/media/medialinkhd/HtcDLNARendererStatusListener;)I
    .locals 3
    .parameter "listener"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setRendererStatusListener] called in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x3e9

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->initMiddleLayerListener()V

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v0, p1}, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->setHtcDLNARendererStatusListener(Landroid/media/medialinkhd/HtcDLNARendererStatusListener;)V

    :cond_1
    monitor-exit v1

    const/16 v0, -0x3e8

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRepeat(I)I
    .locals 4
    .parameter "repeatMode"

    .prologue
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    :cond_0
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRepeat] called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, -0x3e9

    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRepeat] unknown repeat mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, -0x3ea

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_4

    :cond_3
    const/16 v1, -0x3eb

    goto :goto_0

    :cond_4
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRepeat] Request setRepeat = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setRepeat(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/16 v1, -0x3e8

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public setServerStatusListener(Landroid/media/medialinkhd/HtcDLNAServerStatusListener;)V
    .locals 2
    .parameter "serverListener"

    .prologue
    invoke-direct {p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->initMiddleLayerListener()V

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v0, p1}, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->setHtcDLNAServerStatusListener(Landroid/media/medialinkhd/HtcDLNAServerStatusListener;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setShuffle(Z)V
    .locals 4
    .parameter "shuffle"

    .prologue
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "setShuffle : invalid mService"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setShuffle(ILjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected declared-synchronized setState(IZZ)V
    .locals 8
    .parameter "newState"
    .parameter "fromMiddleLayer"
    .parameter "notifyUser"

    .prologue
    const/4 v7, 0x1

    monitor-enter p0

    :try_start_0
    const-string v3, "HtcDLNAServiceManager "

    const-string v4, "setState call stack:"

    invoke-static {v3, v4}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "HtcDLNAServiceManager "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Step 1] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "HtcDLNAServiceManager "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Step 2] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "HtcDLNAServiceManager "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Step 3] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getState()I

    move-result v2

    .local v2, statePrev:I
    const-string v3, "HtcDLNAServiceManager "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setState] >>> newState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, p1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", statePrev = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fromMiddleLayer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v3, 0x3e8

    if-ne p1, v3, :cond_0

    const/4 p1, 0x1

    const/4 v3, 0x1

    :try_start_1
    invoke-direct {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    :cond_0
    const/4 v3, 0x5

    if-eq p1, v3, :cond_1

    if-nez p1, :cond_2

    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->bIsDTCPURINext:Z

    :cond_2
    invoke-direct {p0, p1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->isValidState(I)Z

    move-result v3

    if-ne v3, v7, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    const-string v3, "HtcDLNAServiceManager "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setState] mControllerInfo.setPlayState("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, p1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {v3, p1}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setPlayState(I)V

    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0, p1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->isValidState(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v3

    if-ne v3, v7, :cond_4

    if-eq v2, p1, :cond_5

    :try_start_3
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v3}, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->getHtcDLNAControllerStatusListener()Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;

    move-result-object v1

    .local v1, listener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v1, :cond_4

    invoke-virtual {v1, p1}, Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;->onPlayStateChanged(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    .end local v1           #listener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v2           #statePrev:I
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v2       #statePrev:I
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_5
    const-string v3, "HtcDLNAServiceManager "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setState] statePrev == newState == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, p1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0
.end method

.method public setStreamingDataSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "link"
    .parameter "title"
    .parameter "thumbnail"

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[setStreamingDataSource] newPushPlaylist"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    iput-boolean v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z

    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newSingleURI(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    .local v6, e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setVolume(I)I
    .locals 4
    .parameter "volume"

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    :cond_0
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setVolume] error state for setVolume(), current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, -0x3e9

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_3

    :cond_2
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[setVolume], null == mService || !mRendererCreated, return RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, -0x3eb

    goto :goto_0

    :cond_3
    if-ltz p1, :cond_4

    const/16 v1, 0x64

    if-le p1, v1, :cond_5

    :cond_4
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setVolume], Invalid volume scalar("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), range is from 0 to 100."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, -0x3ea

    goto :goto_0

    :cond_5
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setVolume] Request volume = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    #setter for: Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mVolume:I
    invoke-static {v1, p1}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1802(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setVolume(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/16 v1, -0x3e8

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public stop()I
    .locals 7

    .prologue
    const/16 v1, -0x3e8

    const/4 v6, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    :cond_0
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[stop] error state for stop(), current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, -0x3e9

    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v6, :cond_2

    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "[stop] AP call stop() in STATE_STOPPED, return RETURN_CODE_OK directly."

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v2, :cond_4

    :cond_3
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[stop], null == mService || !mRendererCreated, return RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, -0x3eb

    goto :goto_0

    :cond_4
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "[stop] Request stop"

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-boolean v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setDMCPhotoSlideshowState(ILjava/lang/String;I)Z

    :goto_1
    const/4 v2, 0x0

    iput v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-direct {p0, v6}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    goto :goto_0

    :cond_5
    :try_start_1
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->stop(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method public stopAndReset()I
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v7, :cond_0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    :cond_0
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[stopAndReset] called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, -0x3e9

    :goto_0
    return v1

    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2711

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2712

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setDMCPhotoSlideshowState(ILjava/lang/String;I)Z

    :goto_1
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->destroyMediaController(ILjava/lang/String;)V

    const/4 v1, 0x0

    iput v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {p0, v7, v5, v6}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    const/16 v1, -0x3e8

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->stop(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method public subscribeServer(ILjava/lang/String;)V
    .locals 3
    .parameter "cookie"
    .parameter "serverId"

    .prologue
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "subscribeServer : invalid servce"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->subscribeServer(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public switchPlaylistNextItem(ILjava/lang/String;)V
    .locals 3
    .parameter "cookie"
    .parameter "rendererId"

    .prologue
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "switchPlaylistPrevItem : invalid mService"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->switchPlaylistNextItem(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public switchPlaylistPrevItem(ILjava/lang/String;)V
    .locals 3
    .parameter "cookie"
    .parameter "rendererId"

    .prologue
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "switchPlaylistPrevItem : invalid mService"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->switchPlaylistPrevItem(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public unsubscribeServer(ILjava/lang/String;)V
    .locals 3
    .parameter "cookie"
    .parameter "serverId"

    .prologue
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "unsubscribeServer : invalid servce"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->unsubscribeServer(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
