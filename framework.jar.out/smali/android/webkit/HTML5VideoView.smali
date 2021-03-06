.class public Landroid/webkit/HTML5VideoView;
.super Ljava/lang/Object;
.source "HTML5VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Landroid/widget/MediaController$MediaPlayerControl;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HTML5VideoView$TimeupdateTask;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final COOKIE:Ljava/lang/String; = "Cookie"

.field private static final HIDE_URL_LOGS:Ljava/lang/String; = "x-hide-urls-from-log"

.field private static final LOGTAG:Ljava/lang/String; = "HTML5VideoView"

.field static final STATE_BUFFERING:I = 0x5

.field static final STATE_DETACHED:I = 0x6

.field static final STATE_INITIALIZED:I = 0x1

.field static final STATE_PLAYING:I = 0x4

.field static final STATE_PREPARED:I = 0x3

.field static final STATE_PREPARING:I = 0x2

.field static final STATE_RELEASED:I = 0x0

.field static final STATE_RESETTED:I = 0x4

.field private static final SURFACE_TEXTURE_STATE_ATTACHED_FULLSCREEN:I = 0x1

.field private static final SURFACE_TEXTURE_STATE_ATTACHED_INLINE:I = 0x0

.field private static final SURFACE_TEXTURE_STATE_DETACHED:I = 0x2

.field private static final TIMEUPDATE_PERIOD:I = 0xfa


# instance fields
.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCurrentBufferPercentage:I

.field protected mCurrentState:I

.field private mDuration:I

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mPauseDuringPreparing:Z

.field protected mPlayer:Landroid/media/MediaPlayer;

.field private mPlayerBuffering:Z

.field protected mProxy:Landroid/webkit/HTML5VideoViewProxy;

.field private mSaveSeekTime:I

.field private mStartWhenPrepared:Z

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSurfaceTextureState:I

.field private mTextureNames:[I

.field private mTimer:Ljava/util/Timer;

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/webkit/HTML5VideoView;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 619
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 524
    iput-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mPlayerBuffering:Z

    .line 583
    iput-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mStartWhenPrepared:Z

    .line 598
    new-instance v0, Landroid/webkit/HTML5VideoView$1;

    invoke-direct {v0, p0}, Landroid/webkit/HTML5VideoView$1;-><init>(Landroid/webkit/HTML5VideoView;)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 620
    return-void
.end method

.method constructor <init>(Landroid/webkit/HTML5VideoViewProxy;I)V
    .locals 2
    .parameter "proxy"
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 297
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 524
    iput-boolean v1, p0, Landroid/webkit/HTML5VideoView;->mPlayerBuffering:Z

    .line 583
    iput-boolean v1, p0, Landroid/webkit/HTML5VideoView;->mStartWhenPrepared:Z

    .line 598
    new-instance v0, Landroid/webkit/HTML5VideoView$1;

    invoke-direct {v0, p0}, Landroid/webkit/HTML5VideoView$1;-><init>(Landroid/webkit/HTML5VideoView;)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 298
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    .line 299
    const/4 v0, 0x1

    iput v0, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    .line 300
    iput-object p1, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 301
    iput p2, p0, Landroid/webkit/HTML5VideoView;->mSaveSeekTime:I

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HTML5VideoView;->mTimer:Ljava/util/Timer;

    .line 303
    iput-boolean v1, p0, Landroid/webkit/HTML5VideoView;->mPauseDuringPreparing:Z

    .line 304
    return-void
.end method

.method static synthetic access$002(Landroid/webkit/HTML5VideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Landroid/webkit/HTML5VideoView;->mCurrentBufferPercentage:I

    return p1
.end method

.method private attachMediaController()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 434
    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2, v2}, Landroid/media/MediaPlayer;->getMetadata(ZZ)Landroid/media/Metadata;

    move-result-object v0

    .line 436
    .local v0, data:Landroid/media/Metadata;
    if-eqz v0, :cond_6

    .line 437
    invoke-virtual {v0, v3}, Landroid/media/Metadata;->has(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Landroid/webkit/HTML5VideoView;->mCanPause:Z

    .line 439
    invoke-virtual {v0, v4}, Landroid/media/Metadata;->has(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v4}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Landroid/webkit/HTML5VideoView;->mCanSeekBack:Z

    .line 441
    invoke-virtual {v0, v5}, Landroid/media/Metadata;->has(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v5}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    iput-boolean v2, p0, Landroid/webkit/HTML5VideoView;->mCanSeekForward:Z

    .line 446
    :goto_2
    invoke-static {}, Landroid/webkit/HTML5VideoFullscreen;->instance()Landroid/webkit/HTML5VideoFullscreen;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v1, v2, p0}, Landroid/webkit/HTML5VideoFullscreen;->attachMediaController(Landroid/webkit/HTML5VideoViewProxy;Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 447
    return-void

    :cond_4
    move v1, v2

    .line 437
    goto :goto_0

    :cond_5
    move v1, v2

    .line 439
    goto :goto_1

    .line 444
    :cond_6
    iput-boolean v3, p0, Landroid/webkit/HTML5VideoView;->mCanSeekForward:Z

    iput-boolean v3, p0, Landroid/webkit/HTML5VideoView;->mCanSeekBack:Z

    iput-boolean v3, p0, Landroid/webkit/HTML5VideoView;->mCanPause:Z

    goto :goto_2
.end method

.method private detachInlineGLContext()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 192
    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/webkit/HTML5VideoView;->mSurfaceTextureState:I

    if-nez v1, :cond_0

    .line 195
    :try_start_0
    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    .line 199
    const/4 v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/webkit/HTML5VideoView;->mTextureNames:[I

    .line 200
    const/4 v1, 0x1

    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mTextureNames:[I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 201
    const/4 v1, 0x2

    iput v1, p0, Landroid/webkit/HTML5VideoView;->mSurfaceTextureState:I

    .line 202
    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy;->updateVideoLayerPlayerState()V

    .line 203
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/webkit/HTML5VideoView;->setInlineFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, e:Ljava/lang/RuntimeException;
    iput v4, p0, Landroid/webkit/HTML5VideoView;->mSurfaceTextureState:I

    .line 206
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method private static generateHeaders(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;)Ljava/util/Map;
    .locals 5
    .parameter "url"
    .parameter "proxy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/HTML5VideoViewProxy;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    invoke-virtual {p1}, Landroid/webkit/HTML5VideoViewProxy;->getWebView()Landroid/webkit/WebViewClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->isPrivateBrowsingEnabled()Z

    move-result v2

    .line 309
    .local v2, isPrivate:Z
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, cookieValue:Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 311
    .local v1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 312
    const-string v3, "Cookie"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    :cond_0
    if-eqz v2, :cond_1

    .line 315
    const-string/jumbo v3, "x-hide-urls-from-log"

    const-string/jumbo v4, "true"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    :cond_1
    return-object v1
.end method

.method private isFullscreen()Z
    .locals 1

    .prologue
    .line 451
    invoke-static {}, Landroid/webkit/HTML5VideoFullscreen;->instance()Landroid/webkit/HTML5VideoFullscreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoFullscreen;->isFullscreenView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prepareDataCommon(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 5
    .parameter "proxy"

    .prologue
    .line 363
    const/4 v1, 0x1

    :try_start_0
    iput v1, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    .line 364
    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 365
    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/HTML5VideoView;->mUri:Landroid/net/Uri;

    iget-object v4, p0, Landroid/webkit/HTML5VideoView;->mHeaders:Ljava/util/Map;

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 366
    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 374
    :goto_0
    const/4 v1, 0x2

    iput v1, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    .line 375
    return-void

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 369
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 370
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 371
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 372
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private setInlineFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 405
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 406
    return-void
.end method


# virtual methods
.method public attachInlineGlContextIfNeeded()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 212
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/webkit/HTML5VideoView;->mSurfaceTextureState:I

    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Landroid/webkit/HTML5VideoView;->isFullscreen()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 219
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/webkit/HTML5VideoView;->getTextureName()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    .line 220
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/HTML5VideoView;->mSurfaceTextureState:I

    .line 221
    invoke-direct {p0, p0}, Landroid/webkit/HTML5VideoView;->setInlineFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 223
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->updateVideoLayerPlayerState()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :cond_1
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public canPause()Z
    .locals 1

    .prologue
    .line 565
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 569
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 573
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mCanSeekForward:Z

    return v0
.end method

.method public decideDisplayMode()V
    .locals 3

    .prologue
    .line 485
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 486
    .local v1, surfaceTexture:Landroid/graphics/SurfaceTexture;
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 487
    .local v0, surface:Landroid/view/Surface;
    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 488
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 489
    return-void
.end method

.method public deleteSurfaceTexture()V
    .locals 0

    .prologue
    .line 636
    return-void
.end method

.method public enterFullScreenVideoState(ILandroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "layerId"
    .parameter "proxy"
    .parameter "webView"

    .prologue
    .line 633
    return-void
.end method

.method public enterFullscreenVideoState(Landroid/webkit/WebViewClassic;FFFF)V
    .locals 9
    .parameter "webView"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 537
    invoke-direct {p0}, Landroid/webkit/HTML5VideoView;->detachInlineGLContext()V

    .line 538
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mSurfaceTextureState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 539
    const-string v0, "HTML5VideoView"

    const-string v1, "Unable to enter Fullscreen at this time"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :goto_0
    return-void

    .line 542
    :cond_0
    iput v8, p0, Landroid/webkit/HTML5VideoView;->mCurrentBufferPercentage:I

    .line 544
    invoke-static {}, Landroid/webkit/HTML5VideoFullscreen;->instance()Landroid/webkit/HTML5VideoFullscreen;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {p0}, Landroid/webkit/HTML5VideoView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/HTML5VideoFullscreen;->enterFullscreen(Landroid/webkit/HTML5VideoViewProxy;Landroid/graphics/SurfaceTexture;FFFF)V

    .line 547
    invoke-static {}, Landroid/webkit/HTML5VideoFullscreen;->instance()Landroid/webkit/HTML5VideoFullscreen;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    iget v2, p0, Landroid/webkit/HTML5VideoView;->mVideoWidth:I

    iget v3, p0, Landroid/webkit/HTML5VideoView;->mVideoHeight:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/HTML5VideoFullscreen;->setVideoSize(Landroid/webkit/HTML5VideoViewProxy;II)V

    .line 548
    invoke-static {}, Landroid/webkit/HTML5VideoFullscreen;->instance()Landroid/webkit/HTML5VideoFullscreen;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    iget v0, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    move v0, v7

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/webkit/HTML5VideoFullscreen;->switchProgressView(Landroid/webkit/HTML5VideoViewProxy;Z)V

    .line 549
    iput v7, p0, Landroid/webkit/HTML5VideoView;->mSurfaceTextureState:I

    .line 551
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    goto :goto_0

    :cond_1
    move v0, v8

    .line 548
    goto :goto_1
.end method

.method public exitFullscreenVideoState(FFFF)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 555
    invoke-direct {p0}, Landroid/webkit/HTML5VideoView;->isFullscreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 561
    :goto_0
    return-void

    .line 559
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoView;->pause()V

    .line 560
    invoke-static {}, Landroid/webkit/HTML5VideoFullscreen;->instance()Landroid/webkit/HTML5VideoFullscreen;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/HTML5VideoFullscreen;->exitFullscreen(Landroid/webkit/HTML5VideoViewProxy;FFFF)V

    goto :goto_0
.end method

.method public fullScreenExited()Z
    .locals 1

    .prologue
    .line 649
    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 578
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mCurrentBufferPercentage:I

    .line 580
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 2

    .prologue
    .line 241
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 242
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 244
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentState()I
    .locals 1

    .prologue
    .line 409
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    const/4 v0, 0x4

    .line 412
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    goto :goto_0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 233
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 234
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 236
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPauseDuringPreparing()Z
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mPauseDuringPreparing:Z

    return v0
.end method

.method public getPlayerBuffering()Z
    .locals 1

    .prologue
    .line 527
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mPlayerBuffering:Z

    return v0
.end method

.method public getReadyToUseSurfTex()Z
    .locals 1

    .prologue
    .line 653
    const/4 v0, 0x0

    return v0
.end method

.method public getStartWhenPrepared()Z
    .locals 1

    .prologue
    .line 590
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mStartWhenPrepared:Z

    return v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 494
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 495
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mTextureNames:[I

    if-nez v0, :cond_0

    .line 496
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/webkit/HTML5VideoView;->mTextureNames:[I

    .line 497
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mTextureNames:[I

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 499
    :cond_0
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mTextureNames:[I

    aget v1, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 500
    iput v2, p0, Landroid/webkit/HTML5VideoView;->mSurfaceTextureState:I

    .line 502
    :cond_1
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getTextureName()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 516
    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mTextureNames:[I

    if-eqz v1, :cond_0

    .line 517
    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mTextureNames:[I

    aget v0, v1, v0

    .line 519
    :cond_0
    return v0
.end method

.method public getVideoLayerId()I
    .locals 1

    .prologue
    .line 639
    const/4 v0, 0x0

    return v0
.end method

.method public init(IIZ)V
    .locals 0
    .parameter "videoLayerId"
    .parameter "position"
    .parameter "skipPrepare"

    .prologue
    .line 626
    return-void
.end method

.method public isFullScreenMode()Z
    .locals 1

    .prologue
    .line 657
    const/4 v0, 0x0

    return v0
.end method

.method public isInlineVideoConfigured()Z
    .locals 1

    .prologue
    .line 417
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mSurfaceTextureState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 255
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 256
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    .line 258
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAudioFocusChange(I)V
    .locals 0
    .parameter "focusChange"

    .prologue
    .line 595
    return-void
.end method

.method public onEnterFullscreen()V
    .locals 3

    .prologue
    .line 606
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 607
    invoke-direct {p0}, Landroid/webkit/HTML5VideoView;->attachMediaController()V

    .line 608
    invoke-static {}, Landroid/webkit/HTML5VideoFullscreen;->instance()Landroid/webkit/HTML5VideoFullscreen;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {p0}, Landroid/webkit/HTML5VideoView;->isPlaying()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HTML5VideoFullscreen;->showMediaControls(Landroid/webkit/HTML5VideoViewProxy;Z)V

    .line 610
    :cond_0
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .parameter "surfaceTexture"

    .prologue
    .line 331
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->getWebView()Landroid/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 332
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5
    .parameter "mp"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 456
    const/4 v2, 0x3

    iput v2, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    .line 457
    iget v2, p0, Landroid/webkit/HTML5VideoView;->mSaveSeekTime:I

    invoke-virtual {p0, v2}, Landroid/webkit/HTML5VideoView;->seekTo(I)V

    .line 459
    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eqz v2, :cond_0

    .line 460
    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v2, p1}, Landroid/webkit/HTML5VideoViewProxy;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 462
    :cond_0
    invoke-direct {p0}, Landroid/webkit/HTML5VideoView;->isFullscreen()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 463
    iget v2, p0, Landroid/webkit/HTML5VideoView;->mSurfaceTextureState:I

    if-eq v2, v0, :cond_2

    .line 465
    invoke-direct {p0}, Landroid/webkit/HTML5VideoView;->detachInlineGLContext()V

    .line 466
    sget-boolean v2, Landroid/webkit/HTML5VideoView;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    iget v2, p0, Landroid/webkit/HTML5VideoView;->mSurfaceTextureState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 467
    :cond_1
    invoke-static {}, Landroid/webkit/HTML5VideoFullscreen;->instance()Landroid/webkit/HTML5VideoFullscreen;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {p0}, Landroid/webkit/HTML5VideoView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/webkit/HTML5VideoFullscreen;->setSurfaceTextureToFullscreen(Landroid/webkit/HTML5VideoViewProxy;Landroid/graphics/SurfaceTexture;)V

    .line 469
    iput v0, p0, Landroid/webkit/HTML5VideoView;->mSurfaceTextureState:I

    .line 472
    :cond_2
    invoke-direct {p0}, Landroid/webkit/HTML5VideoView;->attachMediaController()V

    .line 473
    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/webkit/HTML5VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 474
    invoke-static {}, Landroid/webkit/HTML5VideoFullscreen;->instance()Landroid/webkit/HTML5VideoFullscreen;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v2, v3, v1}, Landroid/webkit/HTML5VideoFullscreen;->switchProgressView(Landroid/webkit/HTML5VideoViewProxy;Z)V

    .line 475
    invoke-static {}, Landroid/webkit/HTML5VideoFullscreen;->instance()Landroid/webkit/HTML5VideoFullscreen;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {p0}, Landroid/webkit/HTML5VideoView;->getStartWhenPrepared()Z

    move-result v4

    if-nez v4, :cond_5

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/webkit/HTML5VideoFullscreen;->showMediaControls(Landroid/webkit/HTML5VideoViewProxy;Z)V

    .line 478
    :cond_3
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mPauseDuringPreparing:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/webkit/HTML5VideoView;->getStartWhenPrepared()Z

    move-result v0

    if-nez v0, :cond_6

    .line 479
    :cond_4
    iput-boolean v1, p0, Landroid/webkit/HTML5VideoView;->mPauseDuringPreparing:Z

    .line 482
    :goto_1
    return-void

    :cond_5
    move v0, v1

    .line 475
    goto :goto_0

    .line 481
    :cond_6
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoView;->start()V

    goto :goto_1
.end method

.method public onStopFullscreen()V
    .locals 1

    .prologue
    .line 613
    const/4 v0, 0x2

    iput v0, p0, Landroid/webkit/HTML5VideoView;->mSurfaceTextureState:I

    .line 615
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoView;->attachInlineGlContextIfNeeded()V

    .line 616
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 2
    .parameter "mp"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 506
    iput p2, p0, Landroid/webkit/HTML5VideoView;->mVideoWidth:I

    .line 507
    iput p3, p0, Landroid/webkit/HTML5VideoView;->mVideoHeight:I

    .line 508
    invoke-direct {p0}, Landroid/webkit/HTML5VideoView;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    invoke-static {}, Landroid/webkit/HTML5VideoFullscreen;->instance()Landroid/webkit/HTML5VideoFullscreen;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0, v1, p2, p3}, Landroid/webkit/HTML5VideoFullscreen;->setVideoSize(Landroid/webkit/HTML5VideoViewProxy;II)V

    .line 510
    :cond_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eqz v0, :cond_1

    .line 511
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/HTML5VideoViewProxy;->onVideoSizeChanged(Landroid/media/MediaPlayer;II)V

    .line 513
    :cond_1
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 167
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 168
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 176
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnPaused()V

    .line 178
    invoke-direct {p0}, Landroid/webkit/HTML5VideoView;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    invoke-static {}, Landroid/webkit/HTML5VideoFullscreen;->instance()Landroid/webkit/HTML5VideoFullscreen;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HTML5VideoFullscreen;->showMediaControls(Landroid/webkit/HTML5VideoViewProxy;Z)V

    .line 184
    :cond_1
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    .line 185
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 186
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HTML5VideoView;->mTimer:Ljava/util/Timer;

    .line 189
    :cond_2
    return-void

    .line 169
    :cond_3
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 170
    iput-boolean v2, p0, Landroid/webkit/HTML5VideoView;->mPauseDuringPreparing:Z

    goto :goto_0
.end method

.method public pauseAndDispatch(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 623
    return-void
.end method

.method public prepareDataAndDisplayMode()V
    .locals 3

    .prologue
    .line 378
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoView;->decideDisplayMode()V

    .line 380
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 381
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 382
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 383
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 384
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 386
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-direct {p0, v0}, Landroid/webkit/HTML5VideoView;->prepareDataCommon(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 390
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WAKE_LOCK"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 392
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 394
    :cond_0
    invoke-direct {p0}, Landroid/webkit/HTML5VideoView;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 397
    invoke-static {}, Landroid/webkit/HTML5VideoFullscreen;->instance()Landroid/webkit/HTML5VideoFullscreen;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HTML5VideoFullscreen;->switchProgressView(Landroid/webkit/HTML5VideoViewProxy;Z)V

    .line 401
    :cond_1
    :goto_0
    return-void

    .line 398
    :cond_2
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mSurfaceTextureState:I

    if-nez v0, :cond_1

    .line 399
    invoke-direct {p0, p0}, Landroid/webkit/HTML5VideoView;->setInlineFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    goto :goto_0
.end method

.method public prepareDataAndDisplayMode(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 629
    return-void
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 263
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    if-eqz v0, :cond_1

    .line 264
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoView;->stopPlayback()V

    .line 265
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 267
    iput v2, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    .line 268
    invoke-direct {p0}, Landroid/webkit/HTML5VideoView;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    invoke-static {}, Landroid/webkit/HTML5VideoFullscreen;->instance()Landroid/webkit/HTML5VideoFullscreen;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0, v1}, Landroid/webkit/HTML5VideoFullscreen;->clearSurfaceTexture(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 273
    :cond_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 274
    iput-object v3, p0, Landroid/webkit/HTML5VideoView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 275
    iput-object v3, p0, Landroid/webkit/HTML5VideoView;->mTextureNames:[I

    .line 277
    :cond_1
    iput v2, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    .line 278
    return-void
.end method

.method public reprepareData(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 661
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 664
    return-void
.end method

.method public retrieveMetadata(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 5
    .parameter "proxy"

    .prologue
    .line 335
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 337
    .local v1, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    :try_start_2
    iget-object v3, p0, Landroid/webkit/HTML5VideoView;->mHeaders:Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    .line 338
    const/16 v2, 0x12

    :try_start_4
    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v2

    :try_start_5
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_6

    move-result v2

    :try_start_6
    iput v2, p0, Landroid/webkit/HTML5VideoView;->mVideoWidth:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_7

    .line 340
    const/16 v2, 0x13

    :try_start_7
    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_8

    move-result-object v2

    :try_start_8
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_9

    move-result v2

    :try_start_9
    iput v2, p0, Landroid/webkit/HTML5VideoView;->mVideoHeight:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_a

    .line 342
    const/16 v2, 0x9

    :try_start_a
    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_b

    move-result-object v2

    :try_start_b
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_c

    move-result v2

    :try_start_c
    iput v2, p0, Landroid/webkit/HTML5VideoView;->mDuration:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_d

    .line 344
    :try_start_d
    iget v2, p0, Landroid/webkit/HTML5VideoView;->mVideoWidth:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_e

    :try_start_e
    iget v3, p0, Landroid/webkit/HTML5VideoView;->mVideoHeight:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_f

    :try_start_f
    iget v4, p0, Landroid/webkit/HTML5VideoView;->mDuration:I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_10

    :try_start_10
    invoke-virtual {p1, v2, v3, v4}, Landroid/webkit/HTML5VideoViewProxy;->updateSizeAndDuration(III)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_11

    .line 352
    :goto_0
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 354
    return-void

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_11
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_0

    .line 352
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v2

    .line 347
    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_0

    :catch_3
    move-exception v2

    goto :goto_0

    :catch_4
    move-exception v2

    goto :goto_0

    :catch_5
    move-exception v2

    goto :goto_0

    :catch_6
    move-exception v2

    goto :goto_0

    :catch_7
    move-exception v2

    goto :goto_0

    :catch_8
    move-exception v2

    goto :goto_0

    :catch_9
    move-exception v2

    goto :goto_0

    :catch_a
    move-exception v2

    goto :goto_0

    :catch_b
    move-exception v2

    goto :goto_0

    :catch_c
    move-exception v2

    goto :goto_0

    :catch_d
    move-exception v2

    goto :goto_0

    :catch_e
    move-exception v2

    goto :goto_0

    :catch_f
    move-exception v2

    goto :goto_0

    :catch_10
    move-exception v2

    goto :goto_0

    :catch_11
    move-exception v2

    goto :goto_0
.end method

.method public seekTo(I)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 248
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 249
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 252
    :goto_0
    return-void

    .line 251
    :cond_0
    iput p1, p0, Landroid/webkit/HTML5VideoView;->mSaveSeekTime:I

    goto :goto_0
.end method

.method public setOnCompletionListener(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 1
    .parameter "proxy"

    .prologue
    .line 358
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 359
    return-void
.end method

.method public setOnErrorListener(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 667
    return-void
.end method

.method public setOnInfoListener(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 670
    return-void
.end method

.method public setOnPreparedListener(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 673
    return-void
.end method

.method public setPlayerBuffering(Z)V
    .locals 2
    .parameter "playerBuffering"

    .prologue
    .line 531
    iput-boolean p1, p0, Landroid/webkit/HTML5VideoView;->mPlayerBuffering:Z

    .line 532
    invoke-direct {p0}, Landroid/webkit/HTML5VideoView;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    invoke-static {}, Landroid/webkit/HTML5VideoFullscreen;->instance()Landroid/webkit/HTML5VideoFullscreen;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0, v1, p1}, Landroid/webkit/HTML5VideoFullscreen;->switchProgressView(Landroid/webkit/HTML5VideoViewProxy;Z)V

    .line 534
    :cond_0
    return-void
.end method

.method public setStartWhenPrepared(Z)V
    .locals 0
    .parameter "willPlay"

    .prologue
    .line 586
    iput-boolean p1, p0, Landroid/webkit/HTML5VideoView;->mStartWhenPrepared:Z

    .line 587
    return-void
.end method

.method public setVideoURI(Ljava/lang/String;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 322
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/HTML5VideoView;->mUri:Landroid/net/Uri;

    .line 323
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-static {p1, v0}, Landroid/webkit/HTML5VideoView;->generateHeaders(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/HTML5VideoView;->mHeaders:Ljava/util/Map;

    .line 324
    return-void
.end method

.method public setVideoURI(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 0
    .parameter "uri"
    .parameter "proxy"

    .prologue
    .line 676
    return-void
.end method

.method public setVolume(F)V
    .locals 1
    .parameter "volume"

    .prologue
    .line 291
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 294
    :cond_0
    return-void
.end method

.method public showControllerInFullScreen()V
    .locals 0

    .prologue
    .line 643
    return-void
.end method

.method public start()V
    .locals 10

    .prologue
    const-wide/16 v2, 0xfa

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 134
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    if-ne v0, v9, :cond_2

    .line 137
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Landroid/webkit/HTML5VideoView;->mTimer:Ljava/util/Timer;

    .line 140
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mTimer:Ljava/util/Timer;

    new-instance v1, Landroid/webkit/HTML5VideoView$TimeupdateTask;

    iget-object v4, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-direct {v1, p0, v4}, Landroid/webkit/HTML5VideoView$TimeupdateTask;-><init>(Landroid/webkit/HTML5VideoView;Landroid/webkit/HTML5VideoViewProxy;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 145
    :cond_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    .line 146
    .local v6, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v6, p0, v9, v8}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 149
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 157
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnPlaying()V

    .line 158
    invoke-direct {p0}, Landroid/webkit/HTML5VideoView;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    invoke-static {}, Landroid/webkit/HTML5VideoFullscreen;->instance()Landroid/webkit/HTML5VideoFullscreen;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0, v1, v7}, Landroid/webkit/HTML5VideoFullscreen;->switchProgressView(Landroid/webkit/HTML5VideoViewProxy;Z)V

    .line 160
    invoke-static {}, Landroid/webkit/HTML5VideoFullscreen;->instance()Landroid/webkit/HTML5VideoFullscreen;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0, v1, v7}, Landroid/webkit/HTML5VideoFullscreen;->showMediaControls(Landroid/webkit/HTML5VideoViewProxy;Z)V

    .line 164
    .end local v6           #audioManager:Landroid/media/AudioManager;
    :cond_1
    :goto_0
    return-void

    .line 163
    :cond_2
    invoke-virtual {p0, v8}, Landroid/webkit/HTML5VideoView;->setStartWhenPrepared(Z)V

    goto :goto_0
.end method

.method public stopPlayback()V
    .locals 2

    .prologue
    .line 281
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 282
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 284
    :cond_0
    return-void
.end method

.method public surfaceTextureDeleted()Z
    .locals 1

    .prologue
    .line 679
    const/4 v0, 0x0

    return v0
.end method

.method protected switchProgressView(Z)V
    .locals 0
    .parameter "playerBuffering"

    .prologue
    .line 646
    return-void
.end method
