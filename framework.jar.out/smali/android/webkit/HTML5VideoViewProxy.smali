.class Landroid/webkit/HTML5VideoViewProxy;
.super Landroid/os/Handler;
.source "HTML5VideoViewProxy.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;,
        Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;,
        Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;
    }
.end annotation


# static fields
.field private static final BUFFERING_END:I = 0x6a

.field private static final BUFFERING_START:I = 0x69

.field private static final ENDED:I = 0xc9

.field private static final ENTER_FULLSCREEN:I = 0x70

.field private static final ERROR:I = 0x67

.field private static final EXIT_FULLSCREEN:I = 0x71

.field private static final INIT:I = 0x6b

.field private static final LOAD:I = 0x6e

.field private static final LOAD_DEFAULT_POSTER:I = 0x68

.field private static final LOAD_METADATA:I = 0x6f

.field private static final LOGTAG:Ljava/lang/String; = "HTML5VideoViewProxy"

.field private static final PAUSE:I = 0x66

.field private static final PAUSED:I = 0xcb

.field private static final PLAY:I = 0x64

.field private static final PLAYING:I = 0xce

.field private static final POSTER_FETCHED:I = 0xca

.field private static final PREPARED:I = 0xc8

.field private static final SEEK:I = 0x65

.field private static final SET_VISIBILITY:I = 0x72

.field private static final SET_VOLUME:I = 0x6d

.field private static final SIZE_CHANGED:I = 0xcd

.field private static final STOPFULLSCREEN:I = 0xcc

.field private static final TERM:I = 0x6c

.field private static final TIMEUPDATE:I = 0x12c


# instance fields
.field private mIsFullscreen:Z

.field mNativePointer:I

.field private mPoster:Landroid/graphics/Bitmap;

.field private mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

.field private mSeekPosition:I

.field private mVideoLayerId:I

.field private mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

.field private mWebCoreHandler:Landroid/os/Handler;

.field private mWebView:Landroid/webkit/WebViewClassic;


# direct methods
.method private constructor <init>(Landroid/webkit/WebViewClassic;II)V
    .locals 2
    .parameter "webView"
    .parameter "nativePtr"
    .parameter "videoLayerId"

    .prologue
    .line 667
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 669
    iput-object p1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    .line 671
    iput p2, p0, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    .line 674
    iput p3, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoLayerId:I

    .line 676
    invoke-direct {p0}, Landroid/webkit/HTML5VideoViewProxy;->createWebCoreHandler()V

    .line 677
    new-instance v1, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    invoke-direct {v1, p0, p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;-><init>(Landroid/webkit/HTML5VideoViewProxy;Landroid/webkit/HTML5VideoViewProxy;)V

    iput-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    .line 678
    const/16 v1, 0x6b

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 679
    .local v0, message:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 680
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/HTML5VideoViewProxy;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoLayerId:I

    return v0
.end method

.method static synthetic access$100(Landroid/graphics/SurfaceTexture;IIIII)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 49
    invoke-static/range {p0 .. p5}, Landroid/webkit/HTML5VideoViewProxy;->nativeSendSurfaceTexture(Landroid/graphics/SurfaceTexture;IIIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Landroid/webkit/HTML5VideoViewProxy;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnSizeChanged(IIII)V

    return-void
.end method

.method static synthetic access$1102(Landroid/webkit/HTML5VideoViewProxy;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Landroid/webkit/HTML5VideoViewProxy;->mSeekPosition:I

    return p1
.end method

.method static synthetic access$1200(Landroid/webkit/HTML5VideoViewProxy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnEnded(I)V

    return-void
.end method

.method static synthetic access$1300(Landroid/webkit/HTML5VideoViewProxy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnPaused(I)V

    return-void
.end method

.method static synthetic access$1400(Landroid/webkit/HTML5VideoViewProxy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnPlaying(I)V

    return-void
.end method

.method static synthetic access$1500(Landroid/webkit/HTML5VideoViewProxy;Landroid/graphics/Bitmap;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnPosterFetched(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$1600(Landroid/webkit/HTML5VideoViewProxy;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnTimeupdate(II)V

    return-void
.end method

.method static synthetic access$1700(Landroid/webkit/HTML5VideoViewProxy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnStopFullscreen(I)V

    return-void
.end method

.method static synthetic access$200(Landroid/webkit/HTML5VideoViewProxy;)Landroid/webkit/WebViewClassic;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    return-object v0
.end method

.method static synthetic access$500(Landroid/webkit/HTML5VideoViewProxy;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy;->doSetPoster(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$900(Landroid/webkit/HTML5VideoViewProxy;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnPrepared(IIII)V

    return-void
.end method

.method private createWebCoreHandler()V
    .locals 1

    .prologue
    .line 683
    new-instance v0, Landroid/webkit/HTML5VideoViewProxy$1;

    invoke-direct {v0, p0}, Landroid/webkit/HTML5VideoViewProxy$1;-><init>(Landroid/webkit/HTML5VideoViewProxy;)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    .line 728
    return-void
.end method

.method private doSetPoster(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "poster"

    .prologue
    .line 731
    if-nez p1, :cond_0

    .line 739
    :goto_0
    return-void

    .line 735
    :cond_0
    iput-object p1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPoster:Landroid/graphics/Bitmap;

    .line 736
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xca

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 737
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 738
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static getInstance(Landroid/webkit/WebViewCore;II)Landroid/webkit/HTML5VideoViewProxy;
    .locals 2
    .parameter "webViewCore"
    .parameter "nativePtr"
    .parameter "videoLayerId"

    .prologue
    .line 983
    new-instance v0, Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->getWebViewClassic()Landroid/webkit/WebViewClassic;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Landroid/webkit/HTML5VideoViewProxy;-><init>(Landroid/webkit/WebViewClassic;II)V

    return-object v0
.end method

.method private native nativeGetMediaResourceUrl(I)Ljava/lang/String;
.end method

.method private native nativeOnEnded(I)V
.end method

.method private native nativeOnPaused(I)V
.end method

.method private native nativeOnPlaying(I)V
.end method

.method private native nativeOnPosterFetched(Landroid/graphics/Bitmap;I)V
.end method

.method private native nativeOnPrepared(IIII)V
.end method

.method private native nativeOnSizeChanged(IIII)V
.end method

.method private native nativeOnStopFullscreen(I)V
.end method

.method private native nativeOnTimeupdate(II)V
.end method

.method private native nativePrepareEnterFullscreen(I)V
.end method

.method private native nativePrepareExitFullscreen(I)V
.end method

.method private static native nativeSendSurfaceTexture(Landroid/graphics/SurfaceTexture;IIIII)Z
.end method

.method private sendTimeupdate()V
    .locals 3

    .prologue
    .line 742
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0x12c

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 743
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->getCurrentPosition()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 744
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 745
    return-void
.end method


# virtual methods
.method public dispatchOnEnded()V
    .locals 3

    .prologue
    .line 356
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xc9

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 357
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 358
    return-void
.end method

.method public dispatchOnPaused()V
    .locals 3

    .prologue
    .line 361
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xcb

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 362
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 363
    return-void
.end method

.method public dispatchOnPlaying()V
    .locals 3

    .prologue
    .line 366
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xce

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 367
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 368
    return-void
.end method

.method public dispatchOnRestoreState()V
    .locals 0

    .prologue
    .line 391
    return-void
.end method

.method public dispatchOnStopFullScreen()V
    .locals 0

    .prologue
    .line 394
    return-void
.end method

.method public dispatchOnStopFullscreen()V
    .locals 3

    .prologue
    .line 371
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xcc

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 372
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 373
    return-void
.end method

.method public enterFullscreen(Ljava/lang/String;FFFF)V
    .locals 7
    .parameter "url"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 856
    if-nez p1, :cond_0

    .line 861
    :goto_0
    return-void

    .line 858
    :cond_0
    const/16 v0, 0x70

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 859
    .local v6, message:Landroid/os/Message;
    new-instance v0, Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;-><init>(Ljava/lang/String;FFFF)V

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 860
    invoke-virtual {p0, v6}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public exitFullscreen(FFFF)V
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 864
    const/16 v0, 0x71

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 865
    .local v6, message:Landroid/os/Message;
    new-instance v0, Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;-><init>(Ljava/lang/String;FFFF)V

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 866
    invoke-virtual {p0, v6}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 867
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getHTML5VideoResource()Ljava/lang/String;
    .locals 2

    .prologue
    .line 967
    iget v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    invoke-direct {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->nativeGetMediaResourceUrl(I)Ljava/lang/String;

    move-result-object v0

    .line 969
    .local v0, mediaUrl:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 970
    const/4 v0, 0x0

    .line 971
    .end local v0           #mediaUrl:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getVideoLayerId()I
    .locals 1

    .prologue
    .line 940
    iget v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoLayerId:I

    return v0
.end method

.method getWebView()Landroid/webkit/WebViewClassic;
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 409
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 411
    :sswitch_0
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 412
    .local v10, url:Ljava/lang/String;
    iget v8, p1, Landroid/os/Message;->arg1:I

    .line 413
    .local v8, seekPosition:I
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-nez v2, :cond_1

    :goto_1
    iput-boolean v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mIsFullscreen:Z

    .line 414
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    invoke-virtual {v0, v10, v8}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->play(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 413
    goto :goto_1

    .line 418
    .end local v8           #seekPosition:I
    .end local v10           #url:Ljava/lang/String;
    :sswitch_1
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 419
    .restart local v10       #url:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    invoke-virtual {v0, v10}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->loadMetadata(Ljava/lang/String;)V

    goto :goto_0

    .line 423
    .end local v10           #url:Ljava/lang/String;
    :sswitch_2
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 424
    .restart local v10       #url:Ljava/lang/String;
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_2

    :goto_2
    iput-boolean v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mIsFullscreen:Z

    .line 425
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    invoke-virtual {v0, v10}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->load(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 424
    goto :goto_2

    .line 429
    .end local v10           #url:Ljava/lang/String;
    :sswitch_3
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    .line 430
    .local v9, time:Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mSeekPosition:I

    .line 431
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    iget v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mSeekPosition:I

    invoke-virtual {v0, v1}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->seek(I)V

    goto :goto_0

    .line 435
    .end local v9           #time:Ljava/lang/Integer;
    :sswitch_4
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->pause()V

    goto :goto_0

    .line 439
    :sswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_3

    .line 440
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    #setter for: Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z
    invoke-static {v0, v1}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$302(Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;Z)Z

    .line 441
    :cond_3
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->end()V

    goto :goto_0

    .line 444
    :sswitch_6
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v6

    .line 445
    .local v6, client:Landroid/webkit/WebChromeClient;
    if-eqz v6, :cond_4

    .line 446
    invoke-virtual {v6}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 449
    :cond_4
    const-string v0, "HTML5VideoViewProxy"

    const-string v1, "HTML5VideoViewProxy onError"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->suspend()V

    goto :goto_0

    .line 454
    .end local v6           #client:Landroid/webkit/WebChromeClient;
    :sswitch_7
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v6

    .line 455
    .restart local v6       #client:Landroid/webkit/WebChromeClient;
    if-eqz v6, :cond_0

    .line 456
    invoke-virtual {v6}, Landroid/webkit/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->doSetPoster(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 461
    .end local v6           #client:Landroid/webkit/WebChromeClient;
    :sswitch_8
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    invoke-direct {p0}, Landroid/webkit/HTML5VideoViewProxy;->sendTimeupdate()V

    goto/16 :goto_0

    .line 467
    :sswitch_9
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    #calls: Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setPlayerBuffering(Z)V
    invoke-static {v0, v1}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$400(Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;Z)V

    goto/16 :goto_0

    .line 471
    :sswitch_a
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    #calls: Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setPlayerBuffering(Z)V
    invoke-static {v1, v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$400(Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;Z)V

    goto/16 :goto_0

    .line 478
    :sswitch_b
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p0}, Landroid/webkit/WebViewClassic;->registerHTML5VideoViewProxy(Landroid/webkit/HTML5VideoViewProxy;)V

    goto/16 :goto_0

    .line 482
    :sswitch_c
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->suspend()V

    .line 483
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p0}, Landroid/webkit/WebViewClassic;->unregisterHTML5VideoViewProxy(Landroid/webkit/HTML5VideoViewProxy;)V

    goto/16 :goto_0

    .line 487
    :sswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v12

    .line 488
    .local v12, vol:F
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    invoke-virtual {v0, v12}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setVolume(F)V

    goto/16 :goto_0

    .line 492
    .end local v12           #vol:F
    :sswitch_e
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;

    .line 493
    .local v7, info:Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    invoke-virtual {v7}, Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;->getX()F

    move-result v2

    invoke-virtual {v7}, Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;->getY()F

    move-result v3

    invoke-virtual {v7}, Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;->getWidth()F

    move-result v4

    invoke-virtual {v7}, Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;->getHeight()F

    move-result v5

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->enterFullscreenVideo(Ljava/lang/String;FFFF)V

    goto/16 :goto_0

    .line 498
    .end local v7           #info:Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;
    :sswitch_f
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;

    .line 499
    .restart local v7       #info:Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    invoke-virtual {v7}, Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;->getX()F

    move-result v1

    invoke-virtual {v7}, Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;->getY()F

    move-result v2

    invoke-virtual {v7}, Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;->getWidth()F

    move-result v3

    invoke-virtual {v7}, Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;->getHeight()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->exitFullscreenVideo(FFFF)V

    goto/16 :goto_0

    .line 504
    .end local v7           #info:Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;
    :sswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 505
    .local v11, visible:Z
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    invoke-virtual {v0, v11}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setMediaIsVisible(Z)V

    goto/16 :goto_0

    .line 409
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_3
        0x66 -> :sswitch_4
        0x67 -> :sswitch_6
        0x68 -> :sswitch_7
        0x69 -> :sswitch_9
        0x6a -> :sswitch_a
        0x6b -> :sswitch_b
        0x6c -> :sswitch_c
        0x6d -> :sswitch_d
        0x6e -> :sswitch_2
        0x6f -> :sswitch_1
        0x70 -> :sswitch_e
        0x71 -> :sswitch_f
        0x72 -> :sswitch_10
        0xc9 -> :sswitch_5
        0x12c -> :sswitch_8
    .end sparse-switch
.end method

.method public isFullscreen()Z
    .locals 1

    .prologue
    .line 402
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mIsFullscreen:Z

    return v0
.end method

.method public isMediaVisible()Z
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isMediaVisible()Z

    move-result v0

    return v0
.end method

.method public loadMetadata(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 786
    if-nez p1, :cond_0

    .line 792
    :goto_0
    return-void

    .line 789
    :cond_0
    const/16 v1, 0x6f

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 790
    .local v0, message:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 791
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public loadPoster(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 831
    if-nez p1, :cond_0

    .line 832
    const/16 v1, 0x68

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 833
    .local v0, message:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 843
    .end local v0           #message:Landroid/os/Message;
    :goto_0
    return-void

    .line 837
    :cond_0
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    if-eqz v1, :cond_1

    .line 838
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->cancelAndReleaseQueue()V

    .line 841
    :cond_1
    new-instance v1, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    invoke-direct {v1, p1, p0}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;-><init>(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;)V

    iput-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    .line 842
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->start()V

    goto :goto_0
.end method

.method public loadVideo(Ljava/lang/String;Z)V
    .locals 2
    .parameter "url"
    .parameter "isFullscreen"

    .prologue
    .line 772
    if-nez p1, :cond_0

    .line 779
    :goto_0
    return-void

    .line 775
    :cond_0
    const/16 v1, 0x6e

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 776
    .local v0, message:Landroid/os/Message;
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :goto_1
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 777
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 778
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 776
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mp"

    .prologue
    .line 346
    const/16 v0, 0xc9

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 347
    return-void
.end method

.method public onEnterFullscreen()V
    .locals 1

    .prologue
    .line 944
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->onEnterFullscreen()V

    .line 945
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 351
    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 352
    const/4 v0, 0x0

    return v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .parameter "surfaceTexture"

    .prologue
    .line 388
    return-void
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 1008
    const/16 v0, 0x2bd

    if-ne p2, v0, :cond_1

    .line 1009
    const/16 v0, 0x69

    invoke-virtual {p0, v0, p2, p3}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 1013
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1010
    :cond_1
    const/16 v0, 0x2be

    if-ne p2, v0, :cond_0

    .line 1011
    const/16 v0, 0x6a

    invoke-virtual {p0, v0, p2, p3}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5
    .parameter "mp"

    .prologue
    .line 316
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->onPrepared()V

    .line 317
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v3, 0xc8

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 318
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 319
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "dur"

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string/jumbo v2, "width"

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string v2, "height"

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 323
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 324
    return-void
.end method

.method public onStopFullscreen()V
    .locals 1

    .prologue
    .line 948
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->onStopFullscreen()V

    .line 949
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnStopFullscreen()V

    .line 952
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mIsFullscreen:Z

    .line 953
    return-void
.end method

.method public onTimeupdate()V
    .locals 1

    .prologue
    .line 398
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 399
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 5
    .parameter "mp"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 328
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v3, 0xcd

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 329
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 330
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isPrepared()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 331
    const-string v2, "dur"

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :goto_0
    const-string/jumbo v2, "width"

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    const-string v2, "height"

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 337
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 338
    return-void

    .line 333
    :cond_0
    const-string v2, "dur"

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 808
    const/16 v1, 0x66

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 809
    .local v0, message:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 810
    return-void
.end method

.method public pauseAndDispatch()V
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->pause()V

    .line 918
    return-void
.end method

.method public play(Ljava/lang/String;IZ)V
    .locals 2
    .parameter "url"
    .parameter "position"
    .parameter "isFullscreen"

    .prologue
    .line 757
    if-nez p1, :cond_0

    .line 765
    :goto_0
    return-void

    .line 760
    :cond_0
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 761
    .local v0, message:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 762
    if-eqz p3, :cond_1

    const/4 v1, 0x1

    :goto_1
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 763
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 764
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 762
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public prepareExitFullscreen()V
    .locals 1

    .prologue
    .line 932
    iget v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    invoke-direct {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->nativePrepareExitFullscreen(I)V

    .line 933
    return-void
.end method

.method public seek(I)V
    .locals 2
    .parameter "time"

    .prologue
    .line 799
    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 800
    .local v0, message:Landroid/os/Message;
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 801
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 802
    return-void
.end method

.method public setBaseLayer(I)V
    .locals 1
    .parameter "layer"

    .prologue
    .line 907
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    invoke-virtual {v0, p1}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setBaseLayer(I)V

    .line 908
    return-void
.end method

.method public setVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 846
    const/16 v1, 0x72

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 847
    .local v0, message:Landroid/os/Message;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 848
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 849
    return-void
.end method

.method public setVolume(F)V
    .locals 2
    .parameter "volume"

    .prologue
    .line 960
    const/16 v1, 0x6d

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 961
    .local v0, message:Landroid/os/Message;
    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p1}, Ljava/lang/Float;-><init>(F)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 962
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 963
    return-void
.end method

.method public suspend()V
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->suspend()V

    .line 922
    return-void
.end method

.method public teardown()V
    .locals 2

    .prologue
    .line 818
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    if-eqz v1, :cond_0

    .line 819
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->cancelAndReleaseQueue()V

    .line 821
    :cond_0
    const/16 v1, 0x6c

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 822
    .local v0, message:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 823
    const/4 v1, 0x0

    iput v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    .line 824
    return-void
.end method

.method public updateSizeAndDuration(III)V
    .locals 4
    .parameter "width"
    .parameter "height"
    .parameter "duration"

    .prologue
    .line 376
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v3, 0xcd

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 377
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 378
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "dur"

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    const-string/jumbo v2, "width"

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const-string v2, "height"

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 382
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 383
    return-void
.end method

.method public updateVideoLayerPlayerState()V
    .locals 1

    .prologue
    .line 912
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->updateVideoLayerPlayerState()V

    .line 913
    return-void
.end method

.method public webkitEnterFullscreen()V
    .locals 1

    .prologue
    .line 927
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mIsFullscreen:Z

    .line 928
    iget v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    invoke-direct {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->nativePrepareEnterFullscreen(I)V

    .line 929
    return-void
.end method

.method public webkitExitFullscreen()V
    .locals 1

    .prologue
    .line 936
    invoke-static {}, Landroid/webkit/HTML5VideoFullscreen;->instance()Landroid/webkit/HTML5VideoFullscreen;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/HTML5VideoFullscreen;->webkitExitFullscreen(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 937
    return-void
.end method
