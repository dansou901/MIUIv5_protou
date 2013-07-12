.class Landroid/webkit/ZoomManager;
.super Ljava/lang/Object;
.source "ZoomManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/ZoomManager$1;,
        Landroid/webkit/ZoomManager$PostScale;,
        Landroid/webkit/ZoomManager$ScaleDetectorListener;,
        Landroid/webkit/ZoomManager$FocusMovementQueue;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field protected static DEFAULT_MAX_ZOOM_SCALE_FACTOR:F = 0.0f

.field protected static final DEFAULT_MIN_ZOOM_SCALE_FACTOR:F = 0.25f

.field static final LOGTAG:Ljava/lang/String; = "webviewZoom"

.field private static MINIMUM_SCALE_INCREMENT:F = 0.0f

.field private static MINIMUM_SCALE_WITHOUT_JITTER:F = 0.0f

.field private static MIN_DOUBLE_TAP_SCALE_INCREMENT:F = 0.0f

.field private static final ZOOM_ANIMATION_LENGTH:I = 0xfa

.field public static screenHeight:I

.field public static screenWidth:I

.field public static useFeedback:Z


# instance fields
.field public isFirstPinch:Z

.field public isFirstTap:Z

.field public isPinching:Z

.field private mActualScale:F

.field private mAllowPanAndScale:Z

.field private mAnchorX:I

.field private mAnchorY:I

.field private final mCallbackProxy:Landroid/webkit/CallbackProxy;

.field private mCustomizeMaxZoomScale:F

.field private mCustomizeMinZoomScale:F

.field private mDefaultMaxZoomScale:F

.field private mDefaultMinZoomScale:F

.field private mDefaultScale:F

.field private mDisplayDensity:F

.field private mDoubleTapZoomFactor:F

.field private mEmbeddedZoomControl:Landroid/webkit/ZoomControlEmbedded;

.field private mExternalZoomControl:Landroid/webkit/ZoomControlExternal;

.field private mFocusMovementQueue:Landroid/webkit/ZoomManager$FocusMovementQueue;

.field private mFocusX:F

.field private mFocusY:F

.field private mHardwareAccelerated:Z

.field private mInHWAcceleratedZoom:Z

.field private mInZoomOverview:Z

.field private mInitialScale:F

.field private mInitialScrollX:I

.field private mInitialScrollY:I

.field private mInitialZoomOverview:Z

.field private mInvActualScale:F

.field private mInvDefaultScale:F

.field private mInvFinalZoomScale:F

.field private mInvInitialZoomScale:F

.field private mInvZoomOverviewWidth:F

.field private mIsFixedZoomAnimation:Z

.field private mLastCheckMemoryTime:D

.field private mMaxZoomScale:F

.field private mMinZoomScale:F

.field private mMinZoomScaleFixed:Z

.field private mNeedAccelerateReflow:Z

.field private mNeedSendViewSizeChange:Z

.field mOOBFixX:F

.field mOOBFixY:F

.field private mOnSizeChangedScaleTask:Landroid/webkit/ZoomManager$PostScale;

.field private mPinchToZoomAnimating:Z

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mSupportMultiTouch:Z

.field private mTextWrapScale:F

.field private mUseHtcZoom:Z

.field private final mWebView:Landroid/webkit/WebViewClassic;

.field private mZoomCenterX:F

.field private mZoomCenterY:F

.field private mZoomOverviewWidth:I

.field private mZoomScale:F

.field private mZoomStart:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const v2, 0x3be56042

    const/4 v1, 0x0

    .line 54
    const-class v0, Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/webkit/ZoomManager;->$assertionsDisabled:Z

    .line 71
    const/high16 v0, 0x4080

    sput v0, Landroid/webkit/ZoomManager;->DEFAULT_MAX_ZOOM_SCALE_FACTOR:F

    .line 173
    const/high16 v0, 0x3f00

    sput v0, Landroid/webkit/ZoomManager;->MIN_DOUBLE_TAP_SCALE_INCREMENT:F

    .line 185
    sput v2, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    .line 191
    sput v2, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_WITHOUT_JITTER:F

    .line 223
    sput-boolean v1, Landroid/webkit/ZoomManager;->useFeedback:Z

    .line 224
    sput v1, Landroid/webkit/ZoomManager;->screenWidth:I

    .line 225
    sput v1, Landroid/webkit/ZoomManager;->screenHeight:I

    return-void

    :cond_0
    move v0, v1

    .line 54
    goto :goto_0
.end method

.method public constructor <init>(Landroid/webkit/WebViewClassic;Landroid/webkit/CallbackProxy;)V
    .locals 4
    .parameter "webView"
    .parameter "callbackProxy"

    .prologue
    const/4 v3, 0x0

    const/high16 v2, -0x4080

    const/4 v1, 0x0

    .line 239
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    .line 95
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    .line 105
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    .line 167
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/webkit/ZoomManager;->mDoubleTapZoomFactor:F

    .line 218
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z

    .line 220
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->isPinching:Z

    .line 221
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->isFirstPinch:Z

    .line 222
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->isFirstTap:Z

    .line 229
    iput v2, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    .line 230
    iput v2, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    .line 233
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mHardwareAccelerated:Z

    .line 234
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mInHWAcceleratedZoom:Z

    .line 479
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mNeedAccelerateReflow:Z

    .line 480
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mNeedSendViewSizeChange:Z

    .line 481
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mIsFixedZoomAnimation:Z

    .line 570
    iput v3, p0, Landroid/webkit/ZoomManager;->mOOBFixX:F

    .line 571
    iput v3, p0, Landroid/webkit/ZoomManager;->mOOBFixY:F

    .line 1588
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mUseHtcZoom:Z

    .line 1605
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/webkit/ZoomManager;->mLastCheckMemoryTime:D

    .line 240
    iput-object p1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    .line 241
    iput-object p2, p0, Landroid/webkit/ZoomManager;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    .line 248
    const/16 v0, 0x3d4

    invoke-direct {p0, v0}, Landroid/webkit/ZoomManager;->setZoomOverviewWidth(I)V

    .line 250
    new-instance v0, Landroid/webkit/ZoomManager$FocusMovementQueue;

    invoke-direct {v0, p0}, Landroid/webkit/ZoomManager$FocusMovementQueue;-><init>(Landroid/webkit/ZoomManager;)V

    iput-object v0, p0, Landroid/webkit/ZoomManager;->mFocusMovementQueue:Landroid/webkit/ZoomManager$FocusMovementQueue;

    .line 253
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->isHtcApplication()Z

    move-result v0

    iput-boolean v0, p0, Landroid/webkit/ZoomManager;->mUseHtcZoom:Z

    .line 254
    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mUseHtcZoom:Z

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->getLoadWithOverviewMode()Z

    move-result v0

    iput-boolean v0, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    .line 257
    :cond_0
    return-void
.end method

.method static synthetic access$102(Landroid/webkit/ZoomManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    return p1
.end method

.method static synthetic access$1100(Landroid/webkit/ZoomManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z

    return v0
.end method

.method static synthetic access$1102(Landroid/webkit/ZoomManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z

    return p1
.end method

.method static synthetic access$1200()F
    .locals 1

    .prologue
    .line 54
    sget v0, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_WITHOUT_JITTER:F

    return v0
.end method

.method static synthetic access$1302(Landroid/webkit/ZoomManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    return p1
.end method

.method static synthetic access$1400(Landroid/webkit/ZoomManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    return v0
.end method

.method static synthetic access$1502(Landroid/webkit/ZoomManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    return p1
.end method

.method static synthetic access$1600(Landroid/webkit/ZoomManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    return v0
.end method

.method static synthetic access$1700(Landroid/webkit/ZoomManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    return v0
.end method

.method static synthetic access$1802(Landroid/webkit/ZoomManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Landroid/webkit/ZoomManager;->mNeedAccelerateReflow:Z

    return p1
.end method

.method static synthetic access$1900(Landroid/webkit/ZoomManager;FZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/ZoomManager;->setZoomScale(FZZ)V

    return-void
.end method

.method static synthetic access$200(Landroid/webkit/ZoomManager;)Landroid/webkit/ZoomManager$FocusMovementQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mFocusMovementQueue:Landroid/webkit/ZoomManager$FocusMovementQueue;

    return-object v0
.end method

.method static synthetic access$400(Landroid/webkit/ZoomManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Landroid/webkit/ZoomManager;->mFocusX:F

    return v0
.end method

.method static synthetic access$402(Landroid/webkit/ZoomManager;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Landroid/webkit/ZoomManager;->mFocusX:F

    return p1
.end method

.method static synthetic access$500(Landroid/webkit/ZoomManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Landroid/webkit/ZoomManager;->mFocusY:F

    return v0
.end method

.method static synthetic access$502(Landroid/webkit/ZoomManager;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Landroid/webkit/ZoomManager;->mFocusY:F

    return p1
.end method

.method static synthetic access$600(Landroid/webkit/ZoomManager;)Landroid/webkit/WebViewClassic;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    return-object v0
.end method

.method static synthetic access$700(Landroid/webkit/ZoomManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    return v0
.end method

.method static synthetic access$800(Landroid/webkit/ZoomManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mUseHtcZoom:Z

    return v0
.end method

.method public static final exceedsMinScaleIncrement(FF)Z
    .locals 2
    .parameter "scaleA"
    .parameter "scaleB"

    .prologue
    .line 441
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCurrentZoomControl()Landroid/webkit/ZoomControlBase;
    .locals 2

    .prologue
    .line 1511
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->supportZoom()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1512
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->getBuiltInZoomControls()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1513
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mEmbeddedZoomControl:Landroid/webkit/ZoomControlEmbedded;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->getDisplayZoomControls()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1515
    new-instance v0, Landroid/webkit/ZoomControlEmbedded;

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-direct {v0, p0, v1}, Landroid/webkit/ZoomControlEmbedded;-><init>(Landroid/webkit/ZoomManager;Landroid/webkit/WebViewClassic;)V

    iput-object v0, p0, Landroid/webkit/ZoomManager;->mEmbeddedZoomControl:Landroid/webkit/ZoomControlEmbedded;

    .line 1517
    :cond_0
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mEmbeddedZoomControl:Landroid/webkit/ZoomControlEmbedded;

    .line 1525
    :goto_0
    return-object v0

    .line 1519
    :cond_1
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mExternalZoomControl:Landroid/webkit/ZoomControlExternal;

    if-nez v0, :cond_2

    .line 1520
    new-instance v0, Landroid/webkit/ZoomControlExternal;

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-direct {v0, v1}, Landroid/webkit/ZoomControlExternal;-><init>(Landroid/webkit/WebViewClassic;)V

    iput-object v0, p0, Landroid/webkit/ZoomManager;->mExternalZoomControl:Landroid/webkit/ZoomControlExternal;

    .line 1522
    :cond_2
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mExternalZoomControl:Landroid/webkit/ZoomControlExternal;

    goto :goto_0

    .line 1525
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setDefaultZoomScale(F)V
    .locals 11
    .parameter "defaultScale"

    .prologue
    const/high16 v10, -0x4080

    const-wide/16 v8, 0x0

    .line 306
    iget v2, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    .line 308
    .local v2, originalDefault:F
    const/4 v4, 0x0

    .line 309
    .local v4, useCustomScale:Z
    iget-object v5, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/webkit/WebViewClassic;->useCustomScale:Z

    .line 310
    move v0, p1

    .line 311
    .local v0, customScale:F
    iget-object v5, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, url:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 313
    const-string v5, "https://settings.adobe.com/flashplayer/mobile/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 314
    const/4 v4, 0x1

    .line 315
    sget v5, Landroid/webkit/ZoomManager;->screenWidth:I

    sget v6, Landroid/webkit/ZoomManager;->screenHeight:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 316
    .local v1, minDimension:I
    const/16 v5, 0x258

    if-ge v1, v5, :cond_4

    .line 317
    const v0, 0x3f933333

    .line 321
    :goto_0
    iget-object v5, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/webkit/WebViewClassic;->useCustomScale:Z

    .line 322
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "webviewZoom"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "use custom scale of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from default scale="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    .end local v1           #minDimension:I
    :cond_0
    if-eqz v4, :cond_6

    iput v0, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    .line 329
    :goto_1
    const/high16 v5, 0x3f80

    div-float/2addr v5, p1

    iput v5, p0, Landroid/webkit/ZoomManager;->mInvDefaultScale:F

    .line 330
    sget v5, Landroid/webkit/ZoomManager;->DEFAULT_MAX_ZOOM_SCALE_FACTOR:F

    mul-float/2addr v5, p1

    iput v5, p0, Landroid/webkit/ZoomManager;->mDefaultMaxZoomScale:F

    .line 331
    const/high16 v5, 0x3e80

    mul-float/2addr v5, p1

    iput v5, p0, Landroid/webkit/ZoomManager;->mDefaultMinZoomScale:F

    .line 332
    float-to-double v5, v2

    cmpl-double v5, v5, v8

    if-lez v5, :cond_7

    iget v5, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    float-to-double v5, v5

    cmpl-double v5, v5, v8

    if-lez v5, :cond_7

    .line 334
    div-float v5, p1, v2

    iget v6, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    mul-float/2addr v5, v6

    iput v5, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    .line 338
    :goto_2
    float-to-double v5, v2

    cmpl-double v5, v5, v8

    if-lez v5, :cond_8

    iget v5, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    float-to-double v5, v5

    cmpl-double v5, v5, v8

    if-lez v5, :cond_8

    .line 340
    div-float v5, p1, v2

    iget v6, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    mul-float/2addr v5, v6

    iput v5, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 344
    :goto_3
    iget v5, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    iget v6, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    invoke-static {v5, v6}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v5

    if-nez v5, :cond_1

    .line 345
    iget v5, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    iput v5, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    .line 349
    :cond_1
    iget v5, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    cmpl-float v5, v5, v10

    if-eqz v5, :cond_2

    iget v5, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    iput v5, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    .line 350
    :cond_2
    iget v5, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    cmpl-float v5, v5, v10

    if-eqz v5, :cond_3

    iget v5, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    iput v5, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 352
    :cond_3
    return-void

    .line 318
    .restart local v1       #minDimension:I
    :cond_4
    const/16 v5, 0x3e8

    if-le v1, v5, :cond_5

    .line 319
    const/high16 v0, 0x4020

    goto/16 :goto_0

    .line 320
    :cond_5
    const/high16 v0, 0x3fc0

    goto/16 :goto_0

    .line 328
    .end local v1           #minDimension:I
    :cond_6
    iput p1, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    goto :goto_1

    .line 336
    :cond_7
    iget v5, p0, Landroid/webkit/ZoomManager;->mDefaultMaxZoomScale:F

    iput v5, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    goto :goto_2

    .line 342
    :cond_8
    iget v5, p0, Landroid/webkit/ZoomManager;->mDefaultMinZoomScale:F

    iput v5, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    goto :goto_3
.end method

.method private setZoomOverviewWidth(I)V
    .locals 2
    .parameter "width"

    .prologue
    .line 862
    if-nez p1, :cond_0

    .line 863
    const/16 v0, 0x3d4

    iput v0, p0, Landroid/webkit/ZoomManager;->mZoomOverviewWidth:I

    .line 867
    :goto_0
    const/high16 v0, 0x3f80

    int-to-float v1, p1

    div-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/ZoomManager;->mInvZoomOverviewWidth:F

    .line 868
    return-void

    .line 865
    :cond_0
    iput p1, p0, Landroid/webkit/ZoomManager;->mZoomOverviewWidth:I

    goto :goto_0
.end method

.method private setZoomScale(FZZ)V
    .locals 15
    .parameter "scale"
    .parameter "reflowText"
    .parameter "force"

    .prologue
    .line 687
    iget v11, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    cmpg-float v11, p1, v11

    if-gez v11, :cond_7

    const/4 v1, 0x1

    .line 688
    .local v1, isScaleLessThanMinZoom:Z
    :goto_0
    invoke-virtual/range {p0 .. p1}, Landroid/webkit/ZoomManager;->computeScaleWithLimits(F)F

    move-result p1

    .line 691
    if-eqz v1, :cond_8

    iget v11, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    iget v12, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    cmpg-float v11, v11, v12

    if-gez v11, :cond_8

    .line 692
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    .line 698
    :goto_1
    iget-boolean v11, p0, Landroid/webkit/ZoomManager;->mUseHtcZoom:Z

    if-eqz v11, :cond_a

    if-eqz p2, :cond_a

    .line 699
    move/from16 v0, p1

    iput v0, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 706
    :cond_0
    :goto_2
    iget v11, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    cmpl-float v11, p1, v11

    if-nez v11, :cond_1

    if-eqz p3, :cond_6

    .line 707
    :cond_1
    iget v3, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    .line 708
    .local v3, oldScale:F
    iget v2, p0, Landroid/webkit/ZoomManager;->mInvActualScale:F

    .line 710
    .local v2, oldInvScale:F
    iget v11, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    cmpl-float v11, p1, v11

    if-eqz v11, :cond_2

    iget-boolean v11, p0, Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z

    if-nez v11, :cond_2

    .line 711
    iget-object v11, p0, Landroid/webkit/ZoomManager;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    iget v12, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    move/from16 v0, p1

    invoke-virtual {v11, v12, v0}, Landroid/webkit/CallbackProxy;->onScaleChanged(FF)V

    .line 714
    :cond_2
    move/from16 v0, p1

    iput v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    .line 715
    const/high16 v11, 0x3f80

    div-float v11, v11, p1

    iput v11, p0, Landroid/webkit/ZoomManager;->mInvActualScale:F

    .line 717
    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkit/WebViewClassic;->drawHistory()Z

    move-result v11

    if-nez v11, :cond_3

    iget-boolean v11, p0, Landroid/webkit/ZoomManager;->mInHWAcceleratedZoom:Z

    if-nez v11, :cond_3

    .line 725
    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v4

    .line 726
    .local v4, oldX:I
    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v5

    .line 727
    .local v5, oldY:I
    mul-float v6, p1, v2

    .line 728
    .local v6, ratio:F
    int-to-float v11, v4

    mul-float/2addr v11, v6

    const/high16 v12, 0x3f80

    sub-float v12, v6, v12

    iget v13, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    mul-float/2addr v12, v13

    add-float v9, v11, v12

    .line 729
    .local v9, sx:F
    int-to-float v11, v5

    mul-float/2addr v11, v6

    const/high16 v12, 0x3f80

    sub-float v12, v6, v12

    iget v13, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    iget-object v14, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v14}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v13, v14

    mul-float/2addr v12, v13

    add-float v10, v11, v12

    .line 733
    .local v10, sy:F
    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v11, v11, Landroid/webkit/WebViewClassic;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v11}, Landroid/webkit/ViewManager;->scaleAll()V

    .line 737
    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/webkit/WebViewClassic;->pinLocX(I)I

    move-result v7

    .line 738
    .local v7, scrollX:I
    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/webkit/WebViewClassic;->pinLocY(I)I

    move-result v8

    .line 739
    .local v8, scrollY:I
    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v11, v7, v8}, Landroid/webkit/WebViewClassic;->updateScrollCoordinates(II)Z

    move-result v11

    if-nez v11, :cond_3

    .line 743
    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkit/WebViewClassic;->sendOurVisibleRect()Landroid/graphics/Rect;

    .line 749
    .end local v4           #oldX:I
    .end local v5           #oldY:I
    .end local v6           #ratio:F
    .end local v7           #scrollX:I
    .end local v8           #scrollY:I
    .end local v9           #sx:F
    .end local v10           #sy:F
    :cond_3
    sget-boolean v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v11, :cond_4

    sget-boolean v11, Landroid/webkit/WebViewClassic;->useAutoPerf:Z

    if-eqz v11, :cond_5

    .line 750
    :cond_4
    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    const/4 v12, 0x1

    iput-boolean v12, v11, Landroid/webkit/WebViewClassic;->isAfterSizeChanged:Z

    .line 752
    :cond_5
    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/webkit/WebViewClassic;->sendViewSizeZoom(Z)Z

    .line 754
    .end local v2           #oldInvScale:F
    .end local v3           #oldScale:F
    :cond_6
    return-void

    .line 687
    .end local v1           #isScaleLessThanMinZoom:Z
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 694
    .restart local v1       #isScaleLessThanMinZoom:Z
    :cond_8
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v11

    move/from16 v0, p1

    invoke-static {v0, v11}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v11

    if-nez v11, :cond_9

    const/4 v11, 0x1

    :goto_3
    iput-boolean v11, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    goto/16 :goto_1

    :cond_9
    const/4 v11, 0x0

    goto :goto_3

    .line 702
    :cond_a
    if-eqz p2, :cond_0

    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v11

    invoke-virtual {v11}, Landroid/webkit/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v11

    if-nez v11, :cond_0

    .line 703
    move/from16 v0, p1

    iput v0, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    goto/16 :goto_2
.end method

.method private setupZoomOverviewWidth(Landroid/webkit/WebViewCore$DrawData;I)Z
    .locals 4
    .parameter "drawData"
    .parameter "viewWidth"

    .prologue
    .line 1395
    iget-object v2, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v1

    .line 1396
    .local v1, settings:Landroid/webkit/WebSettings;
    iget v0, p0, Landroid/webkit/ZoomManager;->mZoomOverviewWidth:I

    .line 1397
    .local v0, newZoomOverviewWidth:I
    invoke-virtual {v1}, Landroid/webkit/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1398
    iget-object v2, p1, Landroid/webkit/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-lez v2, :cond_0

    .line 1401
    sget v2, Landroid/webkit/WebViewClassic;->sMaxViewportWidth:I

    iget-object v3, p1, Landroid/webkit/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1408
    :cond_0
    :goto_0
    iget v2, p0, Landroid/webkit/ZoomManager;->mZoomOverviewWidth:I

    if-eq v0, v2, :cond_2

    .line 1409
    invoke-direct {p0, v0}, Landroid/webkit/ZoomManager;->setZoomOverviewWidth(I)V

    .line 1410
    const/4 v2, 0x1

    .line 1412
    :goto_1
    return v2

    .line 1406
    :cond_1
    int-to-float v2, p2

    iget v3, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 1412
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private zoom(F)Z
    .locals 4
    .parameter "zoomMultiplier"

    .prologue
    const/4 v0, 0x0

    const/high16 v2, 0x3f00

    .line 466
    iput-boolean v0, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    .line 468
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->switchOutDrawHistory()V

    .line 470
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    .line 471
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getViewHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    .line 472
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    iget v2, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    .line 473
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    iget v2, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    .line 474
    iget v1, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    mul-float/2addr v1, p1

    iget-object v2, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Landroid/webkit/ZoomManager;->startZoomAnimation(FZ)Z

    move-result v0

    return v0
.end method

.method private zoomToOverview()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 884
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v2, :cond_0

    sget-boolean v2, Landroid/webkit/WebViewClassic;->useAutoPerf:Z

    if-eqz v2, :cond_1

    .line 885
    :cond_0
    const-string v2, "AutoTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[AutoProf](301) [OTHER][WEBVIEW][DOUBLETAP_ZOOM_OUT][START] scale="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/webkit/ZoomManager;->mZoomScale:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :cond_1
    iget-object v2, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v0

    .line 890
    .local v0, scrollY:I
    iget-object v2, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 891
    iget-object v2, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewClassic;->updateScrollCoordinates(II)Z

    .line 893
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v2

    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-virtual {p0, v2, v1}, Landroid/webkit/ZoomManager;->startZoomAnimation(FZ)Z

    .line 895
    return-void
.end method

.method private zoomToReadingLevel()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 899
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v5, :cond_0

    sget-boolean v5, Landroid/webkit/WebViewClassic;->useAutoPerf:Z

    if-eqz v5, :cond_1

    .line 900
    :cond_0
    const-string v5, "AutoTest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[AutoProf](301) [OTHER][WEBVIEW][DOUBLETAP_ZOOM_IN][START] scale="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/webkit/ZoomManager;->mZoomScale:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v1

    .line 921
    .local v1, readingScale:F
    iget-object v5, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getFocusNodeBlock()Landroid/graphics/Rect;

    move-result-object v2

    .line 922
    .local v2, rect:Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 923
    iget v0, v2, Landroid/graphics/Rect;->left:I

    .line 925
    .local v0, left:I
    iget-object v7, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    const/4 v5, 0x5

    if-ge v0, v5, :cond_4

    move v5, v6

    :goto_0
    invoke-virtual {v7, v5}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v5

    iget-object v7, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v7

    sub-int v3, v5, v7

    .line 929
    .local v3, viewLeft:I
    if-lez v3, :cond_5

    .line 930
    int-to-float v5, v3

    mul-float/2addr v5, v1

    iget v7, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    sub-float v7, v1, v7

    div-float/2addr v5, v7

    iput v5, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    .line 936
    :goto_1
    iget-object v5, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->isHitOnTextNode()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 937
    iget-object v5, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    iget v7, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v7}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v5

    iget-object v7, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v7

    sub-int v4, v5, v7

    .line 938
    .local v4, viewTop:I
    int-to-float v5, v4

    iput v5, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    .line 942
    .end local v0           #left:I
    .end local v3           #viewLeft:I
    .end local v4           #viewTop:I
    :cond_2
    iget-object v5, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v6, 0x1

    :cond_3
    invoke-virtual {p0, v1, v6}, Landroid/webkit/ZoomManager;->startZoomAnimation(FZ)Z

    .line 944
    return-void

    .line 925
    .restart local v0       #left:I
    :cond_4
    add-int/lit8 v5, v0, -0x5

    goto :goto_0

    .line 932
    .restart local v3       #viewLeft:I
    :cond_5
    iget-object v5, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v5, v3, v6}, Landroid/webkit/WebView;->scrollBy(II)V

    .line 933
    const/4 v5, 0x0

    iput v5, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    goto :goto_1
.end method


# virtual methods
.method public animateZoom(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    .line 587
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    .line 588
    iget v9, p0, Landroid/webkit/ZoomManager;->mZoomScale:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_1

    .line 589
    const-string/jumbo v9, "webviewZoom"

    const-string v10, "A WebView is attempting to perform a fixed length zoom animation when no zoom is in progress"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/webkit/ZoomManager;->mInHWAcceleratedZoom:Z

    .line 654
    :cond_0
    :goto_0
    return-void

    .line 597
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-wide v11, p0, Landroid/webkit/ZoomManager;->mZoomStart:J

    sub-long/2addr v9, v11

    long-to-int v2, v9

    .line 598
    .local v2, interval:I
    const/high16 v3, 0x3f80

    .line 599
    .local v3, ratio:F
    const/16 v9, 0xfa

    if-ge v2, v9, :cond_3

    .line 600
    int-to-float v9, v2

    const/high16 v10, 0x437a

    div-float v3, v9, v10

    .line 601
    const/high16 v9, 0x3f80

    iget v10, p0, Landroid/webkit/ZoomManager;->mInvInitialZoomScale:F

    iget v11, p0, Landroid/webkit/ZoomManager;->mInvFinalZoomScale:F

    iget v12, p0, Landroid/webkit/ZoomManager;->mInvInitialZoomScale:F

    sub-float/2addr v11, v12

    mul-float/2addr v11, v3

    add-float/2addr v10, v11

    div-float v8, v9, v10

    .line 603
    .local v8, zoomScale:F
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 611
    :goto_1
    iget v9, p0, Landroid/webkit/ZoomManager;->mOOBFixX:F

    mul-float v0, v9, v3

    .line 612
    .local v0, fixX:F
    iget v9, p0, Landroid/webkit/ZoomManager;->mOOBFixY:F

    mul-float v1, v9, v3

    .line 616
    .local v1, fixY:F
    iget v9, p0, Landroid/webkit/ZoomManager;->mInvInitialZoomScale:F

    mul-float v4, v8, v9

    .line 617
    .local v4, scale:F
    iget v9, p0, Landroid/webkit/ZoomManager;->mInitialScrollX:I

    int-to-float v9, v9

    iget v10, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    add-float/2addr v9, v10

    mul-float/2addr v9, v4

    iget v10, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    add-float/2addr v10, v0

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 618
    .local v6, tx:I
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v9

    iget-object v10, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic;->getContentWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v6, v9, v10}, Landroid/webkit/WebViewClassic;->pinLoc(III)I

    move-result v9

    neg-int v9, v9

    iget-object v10, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v10

    add-int v6, v9, v10

    .line 620
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v5

    .line 621
    .local v5, titleHeight:I
    iget v9, p0, Landroid/webkit/ZoomManager;->mInitialScrollY:I

    int-to-float v9, v9

    iget v10, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    add-float/2addr v9, v10

    int-to-float v10, v5

    sub-float/2addr v9, v10

    mul-float/2addr v9, v4

    iget v10, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    int-to-float v11, v5

    sub-float/2addr v10, v11

    add-float/2addr v10, v1

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 624
    .local v7, ty:I
    if-gt v7, v5, :cond_4

    const/4 v9, 0x0

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    :goto_2
    neg-int v9, v9

    iget-object v10, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v10

    add-int v7, v9, v10

    .line 628
    iget-boolean v9, p0, Landroid/webkit/ZoomManager;->mHardwareAccelerated:Z

    if-eqz v9, :cond_5

    .line 629
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v10, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v10

    sub-int/2addr v10, v6

    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v11

    sub-int/2addr v11, v7

    invoke-virtual {v9, v10, v11}, Landroid/webkit/WebViewClassic;->updateScrollCoordinates(II)Z

    .line 632
    int-to-float v9, v6

    int-to-float v10, v7

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 633
    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Landroid/webkit/ZoomManager;->setZoomScale(FZ)V

    .line 635
    iget v9, p0, Landroid/webkit/ZoomManager;->mZoomScale:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_0

    .line 637
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/webkit/ZoomManager;->mInHWAcceleratedZoom:Z

    .line 643
    iget-boolean v9, p0, Landroid/webkit/ZoomManager;->mIsFixedZoomAnimation:Z

    if-nez v9, :cond_2

    .line 645
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/webkit/WebViewClassic;->sendViewSizeZoom(Z)Z

    .line 647
    :cond_2
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/webkit/ZoomManager;->mIsFixedZoomAnimation:Z

    goto/16 :goto_0

    .line 605
    .end local v0           #fixX:F
    .end local v1           #fixY:F
    .end local v4           #scale:F
    .end local v5           #titleHeight:I
    .end local v6           #tx:I
    .end local v7           #ty:I
    .end local v8           #zoomScale:F
    :cond_3
    iget v8, p0, Landroid/webkit/ZoomManager;->mZoomScale:F

    .line 607
    .restart local v8       #zoomScale:F
    const/4 v9, 0x0

    iput v9, p0, Landroid/webkit/ZoomManager;->mZoomScale:F

    .line 608
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->onFixedLengthZoomAnimationEnd()V

    goto/16 :goto_1

    .line 624
    .restart local v0       #fixX:F
    .restart local v1       #fixY:F
    .restart local v4       #scale:F
    .restart local v5       #titleHeight:I
    .restart local v6       #tx:I
    .restart local v7       #ty:I
    :cond_4
    sub-int v9, v7, v5

    iget-object v10, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic;->getViewHeight()I

    move-result v10

    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkit/WebViewClassic;->getContentHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v8

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-static {v9, v10, v11}, Landroid/webkit/WebViewClassic;->pinLoc(III)I

    move-result v9

    add-int/2addr v9, v5

    goto :goto_2

    .line 651
    :cond_5
    int-to-float v9, v6

    int-to-float v10, v7

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 652
    invoke-virtual {p1, v8, v8}, Landroid/graphics/Canvas;->scale(FF)V

    goto/16 :goto_0
.end method

.method public final canZoomIn()Z
    .locals 2

    .prologue
    .line 449
    iget v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    iget v1, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    sub-float/2addr v0, v1

    sget v1, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final canZoomOut()Z
    .locals 2

    .prologue
    .line 453
    iget v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    iget v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    sub-float/2addr v0, v1

    sget v1, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method checkMemory()V
    .locals 6

    .prologue
    .line 1607
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-double v0, v2

    .line 1609
    .local v0, currentTime:D
    iget-wide v2, p0, Landroid/webkit/ZoomManager;->mLastCheckMemoryTime:D

    sub-double v2, v0, v2

    const-wide v4, 0x40b3880000000000L

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 1610
    iput-wide v0, p0, Landroid/webkit/ZoomManager;->mLastCheckMemoryTime:D

    .line 1611
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/webkit/WebViewClassic;->nativeOnTrimMemory(I)V

    .line 1612
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_0

    .line 1613
    const-string/jumbo v2, "webviewZoom"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkMemory() nativeOnTrimMemory duration="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v4, v4

    sub-double/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    :cond_0
    return-void
.end method

.method public final clearDocumentAnchor()V
    .locals 1

    .prologue
    .line 411
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    iput v0, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    .line 412
    return-void
.end method

.method final computeReadingLevelScale(F)F
    .locals 2
    .parameter "scale"

    .prologue
    .line 386
    iget v0, p0, Landroid/webkit/ZoomManager;->mDisplayDensity:F

    iget v1, p0, Landroid/webkit/ZoomManager;->mDoubleTapZoomFactor:F

    mul-float/2addr v0, v1

    sget v1, Landroid/webkit/ZoomManager;->MIN_DOUBLE_TAP_SCALE_INCREMENT:F

    add-float/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public final computeScaleWithLimits(F)F
    .locals 1
    .parameter "scale"

    .prologue
    .line 424
    iget v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 425
    iget p1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 429
    :cond_0
    :goto_0
    return p1

    .line 426
    :cond_1
    iget v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 427
    iget p1, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    goto :goto_0
.end method

.method public dismissZoomPicker()V
    .locals 1

    .prologue
    .line 1536
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->getCurrentZoomControl()Landroid/webkit/ZoomControlBase;

    move-result-object v0

    .line 1537
    .local v0, control:Landroid/webkit/ZoomControlBase;
    if-eqz v0, :cond_0

    .line 1538
    invoke-interface {v0}, Landroid/webkit/ZoomControlBase;->hide()V

    .line 1540
    :cond_0
    return-void
.end method

.method public final getDefaultMaxZoomScale()F
    .locals 1

    .prologue
    .line 395
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultMaxZoomScale:F

    return v0
.end method

.method public final getDefaultMinZoomScale()F
    .locals 1

    .prologue
    .line 399
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultMinZoomScale:F

    return v0
.end method

.method public final getDefaultScale()F
    .locals 1

    .prologue
    .line 375
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    return v0
.end method

.method public getDefaultTextWrapScale()F
    .locals 2

    .prologue
    .line 1599
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    .line 1600
    .local v0, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->getLoadWithOverviewMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1601
    const/high16 v1, 0x3f00

    .line 1602
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    goto :goto_0
.end method

.method public final getDocumentAnchorX()I
    .locals 1

    .prologue
    .line 403
    iget v0, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    return v0
.end method

.method public final getDocumentAnchorY()I
    .locals 1

    .prologue
    .line 407
    iget v0, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    return v0
.end method

.method public getExternalZoomPicker()Landroid/view/View;
    .locals 2

    .prologue
    .line 1567
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->getCurrentZoomControl()Landroid/webkit/ZoomControlBase;

    move-result-object v0

    .line 1568
    .local v0, control:Landroid/webkit/ZoomControlBase;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mExternalZoomControl:Landroid/webkit/ZoomControlExternal;

    if-ne v0, v1, :cond_0

    .line 1569
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mExternalZoomControl:Landroid/webkit/ZoomControlExternal;

    invoke-virtual {v1}, Landroid/webkit/ZoomControlExternal;->getControls()Landroid/webkit/ZoomControlExternal$ExtendedZoomControls;

    move-result-object v1

    .line 1571
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getInvDefaultScale()F
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Landroid/webkit/ZoomManager;->mInvDefaultScale:F

    return v0
.end method

.method public final getInvScale()F
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Landroid/webkit/ZoomManager;->mInvActualScale:F

    return v0
.end method

.method public final getMaxZoomScale()F
    .locals 1

    .prologue
    .line 367
    iget v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    return v0
.end method

.method public final getMinZoomScale()F
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    return v0
.end method

.method public final getReadingLevelScale()F
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/ZoomManager;->computeReadingLevelScale(F)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/ZoomManager;->computeScaleWithLimits(F)F

    move-result v0

    return v0
.end method

.method public final getScale()F
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    return v0
.end method

.method public getScaleGestureDetector()Landroid/view/ScaleGestureDetector;
    .locals 1

    .prologue
    .line 1002
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    return-object v0
.end method

.method public final getTextWrapScale()F
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    return v0
.end method

.method getZoomOverviewScale()F
    .locals 3

    .prologue
    .line 873
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/webkit/ZoomManager;->mInvZoomOverviewWidth:F

    mul-float v0, v1, v2

    .line 874
    .local v0, overviewScale:F
    iget v1, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    const/high16 v2, -0x4080

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .end local v0           #overviewScale:F
    :goto_0
    return v0

    .restart local v0       #overviewScale:F
    :cond_0
    iget v1, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0
.end method

.method getZoomScale()F
    .locals 1

    .prologue
    .line 1595
    iget v0, p0, Landroid/webkit/ZoomManager;->mZoomScale:F

    return v0
.end method

.method public handleDoubleTap(FF)V
    .locals 10
    .parameter "lastTouchX"
    .parameter "lastTouchY"

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 783
    iput-boolean v0, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    .line 784
    iget-object v5, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v3

    .line 785
    .local v3, settings:Landroid/webkit/WebSettingsClassic;
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->isDoubleTapEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 859
    :goto_0
    return-void

    .line 789
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/webkit/ZoomManager;->setZoomCenter(FF)V

    .line 790
    iget-object v5, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    float-to-int v6, p1

    iget-object v7, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v5

    iput v5, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    .line 791
    iget-object v5, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    float-to-int v6, p2

    iget-object v7, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v5

    iput v5, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    .line 792
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettingsClassic;->setDoubleTapToastCount(I)V

    .line 795
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->dismissZoomPicker()V

    .line 798
    invoke-virtual {v3}, Landroid/webkit/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 799
    iget v5, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 803
    .local v1, newTextWrapScale:F
    :goto_1
    iget v5, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    iget v6, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    invoke-static {v5, v6}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v5

    if-nez v5, :cond_1

    move v0, v4

    .line 804
    .local v0, firstTimeReflow:Z
    :cond_1
    if-nez v0, :cond_2

    iget-boolean v5, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    if-eqz v5, :cond_3

    .line 807
    :cond_2
    iput v1, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 810
    :cond_3
    iget-boolean v5, p0, Landroid/webkit/ZoomManager;->mUseHtcZoom:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 811
    iget-object v5, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->hasPendingScroll()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 812
    iget-object v5, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->cancelShowedRect()V

    .line 813
    iget-object v5, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v5

    const/16 v6, 0x124

    invoke-virtual {v5, v6}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 814
    iget-object v5, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v5

    const/16 v6, 0x123

    invoke-virtual {v5, v6}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 828
    :cond_4
    :goto_2
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v5, :cond_5

    sget-boolean v5, Landroid/webkit/WebViewClassic;->useAutoPerf:Z

    if-eqz v5, :cond_6

    .line 829
    :cond_5
    iput-boolean v4, p0, Landroid/webkit/ZoomManager;->isFirstTap:Z

    .line 830
    const-string v5, "AutoTest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[AutoProf](301) [OTHER][WEBVIEW][DOUBLETAP_FEEDBACK][START] scale="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :cond_6
    iget-boolean v5, p0, Landroid/webkit/ZoomManager;->mUseHtcZoom:Z

    if-eqz v5, :cond_c

    .line 835
    iget-boolean v4, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    if-nez v4, :cond_7

    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v4

    iget v5, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3fc999999999999aL

    cmpg-double v4, v4, v6

    if-gez v4, :cond_b

    .line 836
    :cond_7
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->zoomToReadingLevel()V

    goto/16 :goto_0

    .line 801
    .end local v0           #firstTimeReflow:Z
    .end local v1           #newTextWrapScale:F
    :cond_8
    iget v1, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    .restart local v1       #newTextWrapScale:F
    goto/16 :goto_1

    .line 816
    .restart local v0       #firstTimeReflow:Z
    :cond_9
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->isInZoomOverview()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 817
    iget-object v5, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getFocusNodeBlock()Landroid/graphics/Rect;

    move-result-object v2

    .line 818
    .local v2, rect:Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->isHitOnTextNode()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 819
    iget v5, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v5, v5, 0x5

    iput v5, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    .line 820
    iget v5, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v5, v5, 0x5

    iput v5, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    .line 824
    .end local v2           #rect:Landroid/graphics/Rect;
    :cond_a
    iget-object v5, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v5

    const/16 v6, 0x122

    new-instance v7, Landroid/graphics/Point;

    iget v8, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    iget v9, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    invoke-direct {v7, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v5, v6, v7}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 838
    :cond_b
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->zoomToOverview()V

    goto/16 :goto_0

    .line 842
    :cond_c
    invoke-virtual {v3}, Landroid/webkit/WebSettingsClassic;->isNarrowColumnLayout()Z

    move-result v5

    if-eqz v5, :cond_d

    iget v5, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    invoke-static {v5, v1}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v5

    if-eqz v5, :cond_d

    if-nez v0, :cond_d

    iget-boolean v5, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    if-nez v5, :cond_d

    .line 847
    iput v1, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 848
    invoke-virtual {p0, v4}, Landroid/webkit/ZoomManager;->refreshZoomScale(Z)V

    goto/16 :goto_0

    .line 849
    :cond_d
    iget-boolean v5, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    if-nez v5, :cond_f

    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v5

    invoke-virtual {p0, v5}, Landroid/webkit/ZoomManager;->willScaleTriggerZoom(F)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 851
    iget v5, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_e

    .line 852
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v5

    iput v5, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 853
    invoke-virtual {p0, v4}, Landroid/webkit/ZoomManager;->refreshZoomScale(Z)V

    .line 855
    :cond_e
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->zoomToOverview()V

    goto/16 :goto_0

    .line 857
    :cond_f
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->zoomToReadingLevel()V

    goto/16 :goto_0
.end method

.method public init(F)V
    .locals 1
    .parameter "density"

    .prologue
    .line 267
    sget-boolean v0, Landroid/webkit/ZoomManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 269
    :cond_0
    iput p1, p0, Landroid/webkit/ZoomManager;->mDisplayDensity:F

    .line 270
    invoke-direct {p0, p1}, Landroid/webkit/ZoomManager;->setDefaultZoomScale(F)V

    .line 271
    iput p1, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    .line 272
    const/high16 v0, 0x3f80

    div-float/2addr v0, p1

    iput v0, p0, Landroid/webkit/ZoomManager;->mInvActualScale:F

    .line 274
    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mUseHtcZoom:Z

    if-eqz v0, :cond_1

    .line 275
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getDefaultTextWrapScale()F

    move-result v0

    iput v0, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 279
    :goto_0
    return-void

    .line 278
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v0

    iput v0, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    goto :goto_0
.end method

.method public invokeZoomPicker()V
    .locals 1

    .prologue
    .line 1529
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->getCurrentZoomControl()Landroid/webkit/ZoomControlBase;

    move-result-object v0

    .line 1530
    .local v0, control:Landroid/webkit/ZoomControlBase;
    if-eqz v0, :cond_0

    .line 1531
    invoke-interface {v0}, Landroid/webkit/ZoomControlBase;->show()V

    .line 1533
    :cond_0
    return-void
.end method

.method public isDoubleTapEnabled()Z
    .locals 2

    .prologue
    .line 757
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    .line 758
    .local v0, settings:Landroid/webkit/WebSettings;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->isPureZoomMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFixedLengthAnimationInProgress()Z
    .locals 2

    .prologue
    .line 661
    iget v0, p0, Landroid/webkit/ZoomManager;->mZoomScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mInHWAcceleratedZoom:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInZoomOverview()Z
    .locals 1

    .prologue
    .line 879
    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    return v0
.end method

.method public isPreventingWebkitUpdates()Z
    .locals 1

    .prologue
    .line 998
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->isZoomAnimating()Z

    move-result v0

    return v0
.end method

.method public isPreventingWebkitUpdatesForDoubleTap()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 977
    iget-boolean v1, p0, Landroid/webkit/ZoomManager;->mNeedSendViewSizeChange:Z

    if-eqz v1, :cond_0

    .line 978
    iput-boolean v0, p0, Landroid/webkit/ZoomManager;->mNeedSendViewSizeChange:Z

    .line 981
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->isZoomAnimating()Z

    move-result v0

    goto :goto_0
.end method

.method public final isScaleOverLimits(F)Z
    .locals 1
    .parameter "scale"

    .prologue
    .line 433
    iget v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZoomAnimating()Z
    .locals 1

    .prologue
    .line 657
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->isFixedLengthAnimationInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZoomPickerVisible()Z
    .locals 2

    .prologue
    .line 1543
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->getCurrentZoomControl()Landroid/webkit/ZoomControlBase;

    move-result-object v0

    .line 1544
    .local v0, control:Landroid/webkit/ZoomControlBase;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/webkit/ZoomControlBase;->isVisible()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isZoomScaleFixed()Z
    .locals 2

    .prologue
    .line 437
    iget v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    iget v1, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keepZoomPickerVisible()V
    .locals 2

    .prologue
    .line 1560
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->getCurrentZoomControl()Landroid/webkit/ZoomControlBase;

    move-result-object v0

    .line 1561
    .local v0, control:Landroid/webkit/ZoomControlBase;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mExternalZoomControl:Landroid/webkit/ZoomControlExternal;

    if-ne v0, v1, :cond_0

    .line 1562
    invoke-interface {v0}, Landroid/webkit/ZoomControlBase;->show()V

    .line 1564
    :cond_0
    return-void
.end method

.method needAccelerateReflow()Z
    .locals 1

    .prologue
    .line 484
    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mNeedAccelerateReflow:Z

    return v0
.end method

.method public onFirstLayout(Landroid/webkit/WebViewCore$DrawData;)V
    .locals 10
    .parameter "drawData"

    .prologue
    const/high16 v9, -0x4080

    const/4 v8, 0x0

    .line 1424
    sget-boolean v6, Landroid/webkit/ZoomManager;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    if-nez p1, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1425
    :cond_0
    sget-boolean v6, Landroid/webkit/ZoomManager;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    iget-object v6, p1, Landroid/webkit/WebViewCore$DrawData;->mViewState:Landroid/webkit/WebViewCore$ViewState;

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1426
    :cond_1
    sget-boolean v6, Landroid/webkit/ZoomManager;->$assertionsDisabled:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v6

    if-nez v6, :cond_2

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1428
    :cond_2
    iget-object v5, p1, Landroid/webkit/WebViewCore$DrawData;->mViewState:Landroid/webkit/WebViewCore$ViewState;

    .line 1429
    .local v5, viewState:Landroid/webkit/WebViewCore$ViewState;
    iget-object v4, p1, Landroid/webkit/WebViewCore$DrawData;->mViewSize:Landroid/graphics/Point;

    .line 1430
    .local v4, viewSize:Landroid/graphics/Point;
    iget v6, v4, Landroid/graphics/Point;->x:I

    iget v7, p1, Landroid/webkit/WebViewCore$DrawData;->mMinPrefWidth:I

    invoke-virtual {p0, v5, v6, v7}, Landroid/webkit/ZoomManager;->updateZoomRange(Landroid/webkit/WebViewCore$ViewState;II)V

    .line 1431
    iget-object v6, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v6

    invoke-direct {p0, p1, v6}, Landroid/webkit/ZoomManager;->setupZoomOverviewWidth(Landroid/webkit/WebViewCore$DrawData;I)Z

    .line 1432
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v0

    .line 1433
    .local v0, overviewScale:F
    iget-object v6, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v3

    .line 1434
    .local v3, settings:Landroid/webkit/WebSettingsClassic;
    iget-boolean v6, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    if-eqz v6, :cond_3

    invoke-virtual {v3}, Landroid/webkit/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1435
    :cond_3
    iget v6, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_a

    iget v6, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    :goto_0
    iput v6, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1437
    iget v6, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    iget v7, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    .line 1440
    iget v6, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    cmpl-float v6, v6, v9

    if-eqz v6, :cond_4

    iget v6, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    iput v6, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    .line 1441
    :cond_4
    iget v6, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    cmpl-float v6, v6, v9

    if-eqz v6, :cond_5

    iget v6, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    iput v6, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1445
    :cond_5
    iget-object v6, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->drawHistory()Z

    move-result v6

    if-nez v6, :cond_9

    .line 1447
    iget v6, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_b

    .line 1448
    iget v2, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    .line 1476
    .local v2, scale:F
    :cond_6
    :goto_1
    const/4 v1, 0x0

    .line 1477
    .local v1, reflowText:Z
    iget-boolean v6, v5, Landroid/webkit/WebViewCore$ViewState;->mIsRestored:Z

    if-nez v6, :cond_8

    .line 1478
    invoke-virtual {v3}, Landroid/webkit/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1480
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1481
    iget v6, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 1483
    :cond_7
    iget v6, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    invoke-static {v6, v2}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v1

    .line 1485
    :cond_8
    invoke-virtual {v3}, Landroid/webkit/WebSettingsClassic;->getLoadWithOverviewMode()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-static {v2, v0}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v6

    if-nez v6, :cond_14

    const/4 v6, 0x1

    :goto_2
    iput-boolean v6, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    .line 1487
    invoke-virtual {p0, v2, v1}, Landroid/webkit/ZoomManager;->setZoomScale(FZ)V

    .line 1490
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->updateZoomPicker()V

    .line 1492
    .end local v1           #reflowText:Z
    .end local v2           #scale:F
    :cond_9
    return-void

    :cond_a
    move v6, v0

    .line 1435
    goto :goto_0

    .line 1449
    :cond_b
    iget-boolean v6, v5, Landroid/webkit/WebViewCore$ViewState;->mIsRestored:Z

    if-nez v6, :cond_c

    iget v6, v5, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_10

    .line 1450
    :cond_c
    iget v6, v5, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_d

    iget v2, v5, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    .line 1453
    .restart local v2       #scale:F
    :goto_3
    iget v6, v5, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_e

    iget v6, v5, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    :goto_4
    iput v6, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    goto :goto_1

    .end local v2           #scale:F
    :cond_d
    move v2, v0

    .line 1450
    goto :goto_3

    .line 1453
    .restart local v2       #scale:F
    :cond_e
    iget-boolean v6, p0, Landroid/webkit/ZoomManager;->mUseHtcZoom:Z

    if-eqz v6, :cond_f

    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getDefaultTextWrapScale()F

    move-result v6

    goto :goto_4

    :cond_f
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v6

    goto :goto_4

    .line 1459
    .end local v2           #scale:F
    :cond_10
    move v2, v0

    .line 1460
    .restart local v2       #scale:F
    invoke-virtual {v3}, Landroid/webkit/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual {v3}, Landroid/webkit/WebSettingsClassic;->getLoadWithOverviewMode()Z

    move-result v6

    if-nez v6, :cond_12

    .line 1462
    :cond_11
    iget v6, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1464
    :cond_12
    invoke-virtual {v3}, Landroid/webkit/WebSettingsClassic;->isNarrowColumnLayout()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v3}, Landroid/webkit/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1469
    iget-boolean v6, p0, Landroid/webkit/ZoomManager;->mUseHtcZoom:Z

    if-eqz v6, :cond_13

    .line 1470
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getDefaultTextWrapScale()F

    move-result v6

    iput v6, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    goto/16 :goto_1

    .line 1473
    :cond_13
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v6

    iput v6, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    goto/16 :goto_1

    .line 1485
    .restart local v1       #reflowText:Z
    :cond_14
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public onNewPicture(Landroid/webkit/WebViewCore$DrawData;)Z
    .locals 12
    .parameter "drawData"

    .prologue
    const/high16 v11, -0x4080

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1328
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v5

    .line 1329
    .local v5, viewWidth:I
    invoke-direct {p0, p1, v5}, Landroid/webkit/ZoomManager;->setupZoomOverviewWidth(Landroid/webkit/WebViewCore$DrawData;I)Z

    move-result v6

    .line 1330
    .local v6, zoomOverviewWidthChanged:Z
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v1

    .line 1331
    .local v1, newZoomOverviewScale:F
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v4

    .line 1332
    .local v4, settings:Landroid/webkit/WebSettingsClassic;
    if-eqz v6, :cond_2

    invoke-virtual {v4}, Landroid/webkit/WebSettingsClassic;->isNarrowColumnLayout()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v4}, Landroid/webkit/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-boolean v9, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    if-nez v9, :cond_0

    iget-boolean v9, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    if-eqz v9, :cond_2

    .line 1337
    :cond_0
    iget v9, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    iget v10, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    invoke-static {v9, v10}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v9

    if-nez v9, :cond_1

    iget v9, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    invoke-static {v1, v9}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1340
    :cond_1
    iget-boolean v9, p0, Landroid/webkit/ZoomManager;->mUseHtcZoom:Z

    if-eqz v9, :cond_a

    .line 1341
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getDefaultTextWrapScale()F

    move-result v9

    iput v9, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 1350
    :cond_2
    :goto_0
    iget-boolean v9, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    if-eqz v9, :cond_3

    invoke-virtual {v4}, Landroid/webkit/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1351
    :cond_3
    iput v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1352
    iget v9, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    iget v10, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    .line 1355
    iget v9, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    cmpl-float v9, v9, v11

    if-eqz v9, :cond_4

    iget v9, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    iput v9, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    .line 1356
    :cond_4
    iget v9, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    cmpl-float v9, v9, v11

    if-eqz v9, :cond_5

    iget v9, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    iput v9, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1361
    :cond_5
    iget v9, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    invoke-static {v1, v9}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v2

    .line 1363
    .local v2, scaleHasDiff:Z
    iget v9, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    sub-float v9, v1, v9

    sget v10, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_c

    move v3, v7

    .line 1367
    .local v3, scaleLessThanOverview:Z
    :goto_1
    iget-boolean v9, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    if-eqz v9, :cond_d

    iget v9, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    invoke-static {v1, v9}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v9

    if-nez v9, :cond_d

    move v0, v7

    .line 1369
    .local v0, mobileSiteInOverview:Z
    :goto_2
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->drawHistory()Z

    move-result v9

    if-nez v9, :cond_f

    if-eqz v3, :cond_6

    invoke-virtual {v4}, Landroid/webkit/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v9

    if-nez v9, :cond_8

    :cond_6
    iget-boolean v9, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    if-nez v9, :cond_7

    if-eqz v0, :cond_f

    :cond_7
    if-eqz v2, :cond_f

    if-eqz v6, :cond_f

    .line 1373
    :cond_8
    iput-boolean v8, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    .line 1374
    iget v9, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    invoke-virtual {p0, v9}, Landroid/webkit/ZoomManager;->willScaleTriggerZoom(F)Z

    move-result v9

    if-nez v9, :cond_e

    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v9

    if-nez v9, :cond_e

    :goto_3
    invoke-virtual {p0, v1, v7}, Landroid/webkit/ZoomManager;->setZoomScale(FZ)V

    .line 1379
    :goto_4
    iget-boolean v7, p1, Landroid/webkit/WebViewCore$DrawData;->mFirstLayoutForNonStandardLoad:Z

    if-eqz v7, :cond_9

    invoke-virtual {v4}, Landroid/webkit/WebSettingsClassic;->getLoadWithOverviewMode()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1382
    iget-boolean v7, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    iput-boolean v7, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    .line 1385
    :cond_9
    return v2

    .line 1344
    .end local v0           #mobileSiteInOverview:Z
    .end local v2           #scaleHasDiff:Z
    .end local v3           #scaleLessThanOverview:Z
    :cond_a
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v9

    iput v9, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    goto/16 :goto_0

    .line 1346
    :cond_b
    iput v1, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    goto/16 :goto_0

    .restart local v2       #scaleHasDiff:Z
    :cond_c
    move v3, v8

    .line 1363
    goto :goto_1

    .restart local v3       #scaleLessThanOverview:Z
    :cond_d
    move v0, v8

    .line 1367
    goto :goto_2

    .restart local v0       #mobileSiteInOverview:Z
    :cond_e
    move v7, v8

    .line 1374
    goto :goto_3

    .line 1377
    :cond_f
    if-nez v2, :cond_10

    :goto_5
    iput-boolean v7, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    goto :goto_4

    :cond_10
    move v7, v8

    goto :goto_5
.end method

.method onPageFinished(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 1584
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    .line 1585
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 8
    .parameter "w"
    .parameter "h"
    .parameter "ow"
    .parameter "oh"

    .prologue
    const/4 v7, 0x0

    const/high16 v6, -0x4080

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1204
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->isFixedLengthAnimationInProgress()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1205
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getVisibleTitleHeight()I

    move-result v0

    .line 1206
    .local v0, visibleTitleHeight:I
    iput v7, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    .line 1207
    int-to-float v1, v0

    iput v1, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    .line 1208
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v4, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    .line 1209
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v4, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v1, v4}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    .line 1213
    .end local v0           #visibleTitleHeight:I
    :cond_0
    iget-boolean v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    if-nez v1, :cond_3

    .line 1218
    const/high16 v4, 0x3f80

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->drawHistory()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getHistoryPictureWidth()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    div-float v1, v5, v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1222
    iget v1, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    cmpl-float v1, v1, v7

    if-lez v1, :cond_1

    iget v1, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    iget v4, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    .line 1223
    iget v1, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    iput v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1226
    :cond_1
    iget v1, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    iput v1, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    .line 1227
    :cond_2
    iget v1, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    iput v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1231
    :cond_3
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->dismissZoomPicker()V

    .line 1243
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mOnSizeChangedScaleTask:Landroid/webkit/ZoomManager$PostScale;

    if-nez v1, :cond_7

    .line 1244
    new-instance v4, Landroid/webkit/ZoomManager$PostScale;

    if-eq p1, p3, :cond_5

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    iget-boolean v5, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    if-ge p1, p3, :cond_6

    :goto_2
    invoke-direct {v4, p0, v1, v5, v2}, Landroid/webkit/ZoomManager$PostScale;-><init>(Landroid/webkit/ZoomManager;ZZZ)V

    iput-object v4, p0, Landroid/webkit/ZoomManager;->mOnSizeChangedScaleTask:Landroid/webkit/ZoomManager$PostScale;

    .line 1249
    :goto_3
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v1, v1, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/webkit/ZoomManager;->mOnSizeChangedScaleTask:Landroid/webkit/ZoomManager$PostScale;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 1250
    return-void

    .line 1218
    :cond_4
    iget v1, p0, Landroid/webkit/ZoomManager;->mZoomOverviewWidth:I

    goto :goto_0

    :cond_5
    move v1, v3

    .line 1244
    goto :goto_1

    :cond_6
    move v2, v3

    goto :goto_2

    .line 1246
    :cond_7
    iget-object v4, p0, Landroid/webkit/ZoomManager;->mOnSizeChangedScaleTask:Landroid/webkit/ZoomManager$PostScale;

    if-eq p1, p3, :cond_8

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_4
    iget-boolean v5, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    if-ge p1, p3, :cond_9

    :goto_5
    invoke-virtual {v4, v1, v5, v2}, Landroid/webkit/ZoomManager$PostScale;->init(ZZZ)V

    .line 1247
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v1, v1, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/webkit/ZoomManager;->mOnSizeChangedScaleTask:Landroid/webkit/ZoomManager$PostScale;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_8
    move v1, v3

    .line 1246
    goto :goto_4

    :cond_9
    move v2, v3

    goto :goto_5
.end method

.method public recoveryDefaultZoomLowerBound()V
    .locals 3

    .prologue
    const/high16 v2, -0x4080

    .line 1646
    const-string/jumbo v0, "webviewZoom"

    const-string v1, "[ZoomManager.RecoveryDefaultZoomLowerBound] >>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    iget v0, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 1652
    :goto_0
    return-void

    .line 1650
    :cond_0
    iput v2, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    .line 1651
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultMinZoomScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    goto :goto_0
.end method

.method public recoveryDefaultZoomUpperBound()V
    .locals 3

    .prologue
    const/high16 v2, -0x4080

    .line 1637
    const-string/jumbo v0, "webviewZoom"

    const-string v1, "[ZoomManager.RecoveryDefaultZoomUpperBound] >>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    iget v0, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 1643
    :goto_0
    return-void

    .line 1641
    :cond_0
    iput v2, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    .line 1642
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultMaxZoomScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    goto :goto_0
.end method

.method public refreshZoomScale(Z)V
    .locals 2
    .parameter "reflowText"

    .prologue
    .line 679
    iget v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Landroid/webkit/ZoomManager;->setZoomScale(FZZ)V

    .line 680
    return-void
.end method

.method public restoreZoomState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "b"

    .prologue
    const/high16 v1, 0x3f80

    .line 1504
    const-string/jumbo v0, "scale"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    .line 1505
    iget v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    div-float v0, v1, v0

    iput v0, p0, Landroid/webkit/ZoomManager;->mInvActualScale:F

    .line 1506
    const-string/jumbo v0, "textwrapScale"

    iget v1, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 1507
    const-string/jumbo v0, "overview"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    .line 1508
    return-void
.end method

.method public saveZoomState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "b"

    .prologue
    .line 1495
    const-string/jumbo v0, "scale"

    iget v1, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1496
    const-string/jumbo v0, "textwrapScale"

    iget v1, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1497
    const-string/jumbo v0, "overview"

    iget-boolean v1, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1498
    return-void
.end method

.method public setHardwareAccelerated()V
    .locals 1

    .prologue
    .line 1576
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/ZoomManager;->mHardwareAccelerated:Z

    .line 1577
    return-void
.end method

.method public final setInitialScaleInPercent(I)V
    .locals 2
    .parameter "scaleInPercent"

    .prologue
    .line 420
    int-to-float v0, p1

    const v1, 0x3c23d70a

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    .line 421
    return-void
.end method

.method setNeedAccelerateReflow(Z)V
    .locals 0
    .parameter "n"

    .prologue
    .line 488
    iput-boolean p1, p0, Landroid/webkit/ZoomManager;->mNeedAccelerateReflow:Z

    .line 489
    return-void
.end method

.method public final setZoomCenter(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 415
    iput p1, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    .line 416
    iput p2, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    .line 417
    return-void
.end method

.method public setZoomLowerBound(F)V
    .locals 3
    .parameter "fLower"

    .prologue
    .line 1628
    const-string/jumbo v0, "webviewZoom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ZoomManager.setZoomLowerBound] >> fLower = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    iget v0, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    iget v1, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    mul-float/2addr v1, p1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 1634
    :goto_0
    return-void

    .line 1632
    :cond_0
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    .line 1633
    iget v0, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    goto :goto_0
.end method

.method public setZoomScale(FZ)V
    .locals 1
    .parameter "scale"
    .parameter "reflowText"

    .prologue
    .line 683
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/ZoomManager;->setZoomScale(FZZ)V

    .line 684
    return-void
.end method

.method public setZoomUpperBound(F)V
    .locals 3
    .parameter "fUpper"

    .prologue
    .line 1619
    const-string/jumbo v0, "webviewZoom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ZoomManager.setZoomUpperBound] >> fUpper = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    iget v0, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    iget v1, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    mul-float/2addr v1, p1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 1625
    :goto_0
    return-void

    .line 1623
    :cond_0
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    .line 1624
    iget v0, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    goto :goto_0
.end method

.method public startZoomAnimation(FZ)Z
    .locals 13
    .parameter "scale"
    .parameter "reflowText"

    .prologue
    .line 498
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    .line 499
    iget v5, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    .line 500
    .local v5, oldScale:F
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v9

    iput v9, p0, Landroid/webkit/ZoomManager;->mInitialScrollX:I

    .line 501
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v9

    iput v9, p0, Landroid/webkit/ZoomManager;->mInitialScrollY:I

    .line 504
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v9

    invoke-static {p1, v9}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v9

    if-nez v9, :cond_0

    .line 505
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result p1

    .line 510
    :cond_0
    iget-boolean v9, p0, Landroid/webkit/ZoomManager;->mUseHtcZoom:Z

    if-eqz v9, :cond_1

    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v9, v9, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v10, 0x123

    invoke-virtual {v9, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 511
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/webkit/WebViewPerfUtil;->acquireWebViewPerfWakeLock(Landroid/webkit/WebView;I)V

    .line 512
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v9, v9, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v10, 0x123

    const-wide/16 v11, 0x3e8

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 514
    :cond_1
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->isInBrowserApp()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/WebSettingsClassic;->isNarrowColumnLayout()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 515
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/webkit/ZoomManager;->mNeedAccelerateReflow:Z

    .line 516
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/webkit/ZoomManager;->mNeedSendViewSizeChange:Z

    .line 517
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/webkit/ZoomManager;->mIsFixedZoomAnimation:Z

    .line 521
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/webkit/ZoomManager;->setZoomScale(FZ)V

    .line 523
    iget v9, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    cmpl-float v9, v5, v9

    if-eqz v9, :cond_9

    .line 524
    iget-boolean v9, p0, Landroid/webkit/ZoomManager;->mHardwareAccelerated:Z

    if-eqz v9, :cond_3

    .line 525
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/webkit/ZoomManager;->mInHWAcceleratedZoom:Z

    .line 528
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iput-wide v9, p0, Landroid/webkit/ZoomManager;->mZoomStart:J

    .line 529
    const/high16 v9, 0x3f80

    div-float/2addr v9, v5

    iput v9, p0, Landroid/webkit/ZoomManager;->mInvInitialZoomScale:F

    .line 530
    const/high16 v9, 0x3f80

    iget v10, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    div-float/2addr v9, v10

    iput v9, p0, Landroid/webkit/ZoomManager;->mInvFinalZoomScale:F

    .line 531
    iget v9, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    iput v9, p0, Landroid/webkit/ZoomManager;->mZoomScale:F

    .line 533
    iget v9, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    cmpg-float v9, v9, v5

    if-gez v9, :cond_8

    .line 534
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v6

    .line 535
    .local v6, titleHeight:I
    iget v9, p0, Landroid/webkit/ZoomManager;->mInvInitialZoomScale:F

    iget v10, p0, Landroid/webkit/ZoomManager;->mInvFinalZoomScale:F

    div-float v2, v9, v10

    .line 536
    .local v2, finalScale:F
    iget v9, p0, Landroid/webkit/ZoomManager;->mInitialScrollX:I

    int-to-float v9, v9

    iget v10, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    add-float/2addr v9, v10

    mul-float/2addr v9, v2

    iget v10, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v3, v9

    .line 537
    .local v3, finalScrollX:F
    iget v9, p0, Landroid/webkit/ZoomManager;->mInitialScrollY:I

    int-to-float v9, v9

    iget v10, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    add-float/2addr v9, v10

    int-to-float v10, v6

    sub-float/2addr v9, v10

    mul-float/2addr v9, v2

    iget v10, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    int-to-float v11, v6

    sub-float/2addr v10, v11

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v4, v9

    .line 540
    .local v4, finalScrollY:F
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getContentWidth()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Landroid/webkit/ZoomManager;->mInvFinalZoomScale:F

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 541
    .local v0, docMaxX:I
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v7

    .line 542
    .local v7, viewMaxX:I
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getContentHeight()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Landroid/webkit/ZoomManager;->mInvFinalZoomScale:F

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 543
    .local v1, docMaxY:I
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getViewHeight()I

    move-result v8

    .line 545
    .local v8, viewMaxY:I
    const/4 v9, 0x0

    cmpg-float v9, v3, v9

    if-gez v9, :cond_4

    .line 546
    iput v3, p0, Landroid/webkit/ZoomManager;->mOOBFixX:F

    .line 552
    :goto_0
    const/4 v9, 0x0

    cmpg-float v9, v4, v9

    if-gez v9, :cond_6

    .line 553
    iput v4, p0, Landroid/webkit/ZoomManager;->mOOBFixY:F

    .line 563
    .end local v0           #docMaxX:I
    .end local v1           #docMaxY:I
    .end local v2           #finalScale:F
    .end local v3           #finalScrollX:F
    .end local v4           #finalScrollY:F
    .end local v6           #titleHeight:I
    .end local v7           #viewMaxX:I
    .end local v8           #viewMaxY:I
    :goto_1
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->onFixedLengthZoomAnimationStart()V

    .line 564
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 565
    const/4 v9, 0x1

    .line 567
    :goto_2
    return v9

    .line 547
    .restart local v0       #docMaxX:I
    .restart local v1       #docMaxY:I
    .restart local v2       #finalScale:F
    .restart local v3       #finalScrollX:F
    .restart local v4       #finalScrollY:F
    .restart local v6       #titleHeight:I
    .restart local v7       #viewMaxX:I
    .restart local v8       #viewMaxY:I
    :cond_4
    int-to-float v9, v7

    add-float/2addr v9, v3

    int-to-float v10, v0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_5

    .line 548
    int-to-float v9, v7

    add-float/2addr v9, v3

    int-to-float v10, v0

    sub-float/2addr v9, v10

    iput v9, p0, Landroid/webkit/ZoomManager;->mOOBFixX:F

    goto :goto_0

    .line 550
    :cond_5
    const/4 v9, 0x0

    iput v9, p0, Landroid/webkit/ZoomManager;->mOOBFixX:F

    goto :goto_0

    .line 554
    :cond_6
    int-to-float v9, v6

    sub-float v9, v4, v9

    int-to-float v10, v8

    add-float/2addr v9, v10

    int-to-float v10, v1

    cmpl-float v9, v9, v10

    if-lez v9, :cond_7

    .line 555
    int-to-float v9, v6

    sub-float v9, v4, v9

    int-to-float v10, v8

    add-float/2addr v9, v10

    int-to-float v10, v1

    sub-float/2addr v9, v10

    iput v9, p0, Landroid/webkit/ZoomManager;->mOOBFixY:F

    goto :goto_1

    .line 557
    :cond_7
    const/4 v9, 0x0

    iput v9, p0, Landroid/webkit/ZoomManager;->mOOBFixY:F

    goto :goto_1

    .line 559
    .end local v0           #docMaxX:I
    .end local v1           #docMaxY:I
    .end local v2           #finalScale:F
    .end local v3           #finalScrollX:F
    .end local v4           #finalScrollY:F
    .end local v6           #titleHeight:I
    .end local v7           #viewMaxX:I
    .end local v8           #viewMaxY:I
    :cond_8
    const/4 v9, 0x0

    iput v9, p0, Landroid/webkit/ZoomManager;->mOOBFixX:F

    .line 560
    const/4 v9, 0x0

    iput v9, p0, Landroid/webkit/ZoomManager;->mOOBFixY:F

    goto :goto_1

    .line 567
    :cond_9
    const/4 v9, 0x0

    goto :goto_2
.end method

.method public supportsMultiTouchZoom()Z
    .locals 1

    .prologue
    .line 968
    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mSupportMultiTouch:Z

    return v0
.end method

.method public supportsPanDuringZoom()Z
    .locals 1

    .prologue
    .line 972
    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mAllowPanAndScale:Z

    return v0
.end method

.method public updateDefaultZoomDensity(F)V
    .locals 6
    .parameter "density"

    .prologue
    .line 291
    sget-boolean v2, Landroid/webkit/ZoomManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 293
    :cond_0
    iget v2, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget v3, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 295
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    .line 297
    .local v0, originalDefault:F
    iput p1, p0, Landroid/webkit/ZoomManager;->mDisplayDensity:F

    .line 298
    invoke-direct {p0, p1}, Landroid/webkit/ZoomManager;->setDefaultZoomScale(F)V

    .line 299
    float-to-double v2, v0

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    div-float v1, p1, v0

    .line 301
    .local v1, scaleChange:F
    :goto_0
    iget v2, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    mul-float/2addr v2, v1

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/webkit/ZoomManager;->setZoomScale(FZ)V

    .line 303
    .end local v0           #originalDefault:F
    .end local v1           #scaleChange:F
    :cond_1
    return-void

    .line 299
    .restart local v0       #originalDefault:F
    :cond_2
    const/high16 v1, 0x3f80

    goto :goto_0
.end method

.method public updateDoubleTapZoom(I)V
    .locals 5
    .parameter "doubleTapZoom"

    .prologue
    const/4 v2, 0x1

    .line 665
    iget v3, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    iget v4, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    sub-float/2addr v3, v4

    const v4, 0x3dcccccd

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    move v1, v2

    .line 666
    .local v1, zoomIn:Z
    :goto_0
    int-to-float v3, p1

    const/high16 v4, 0x42c8

    div-float/2addr v3, v4

    iput v3, p0, Landroid/webkit/ZoomManager;->mDoubleTapZoomFactor:F

    .line 668
    iget-boolean v3, p0, Landroid/webkit/ZoomManager;->mUseHtcZoom:Z

    if-eqz v3, :cond_1

    .line 669
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getDefaultTextWrapScale()F

    move-result v3

    iput v3, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 673
    :goto_1
    if-eqz v1, :cond_2

    iget v0, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 675
    .local v0, newScale:F
    :goto_2
    invoke-direct {p0, v0, v2, v2}, Landroid/webkit/ZoomManager;->setZoomScale(FZZ)V

    .line 676
    return-void

    .line 665
    .end local v0           #newScale:F
    .end local v1           #zoomIn:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 672
    .restart local v1       #zoomIn:Z
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v3

    iput v3, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    goto :goto_1

    .line 673
    :cond_2
    iget v3, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    iget v4, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_2
.end method

.method public updateMultiTouchSupport(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 948
    sget-boolean v2, Landroid/webkit/ZoomManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 950
    :cond_0
    iget-object v2, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v1

    .line 951
    .local v1, settings:Landroid/webkit/WebSettings;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 952
    .local v0, pm:Landroid/content/pm/PackageManager;
    const-string v2, "android.hardware.touchscreen.multitouch"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "android.hardware.faketouch.multitouch.distinct"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_1
    invoke-virtual {v1}, Landroid/webkit/WebSettingsClassic;->supportZoom()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Landroid/webkit/WebSettingsClassic;->getBuiltInZoomControls()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Landroid/webkit/ZoomManager;->mSupportMultiTouch:Z

    .line 956
    const-string v2, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.hardware.faketouch.multitouch.distinct"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v4, v3

    :cond_3
    iput-boolean v4, p0, Landroid/webkit/ZoomManager;->mAllowPanAndScale:Z

    .line 960
    iget-boolean v2, p0, Landroid/webkit/ZoomManager;->mSupportMultiTouch:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/webkit/ZoomManager;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-nez v2, :cond_6

    .line 961
    new-instance v2, Landroid/view/ScaleGestureDetector;

    new-instance v3, Landroid/webkit/ZoomManager$ScaleDetectorListener;

    invoke-direct {v3, p0, v5}, Landroid/webkit/ZoomManager$ScaleDetectorListener;-><init>(Landroid/webkit/ZoomManager;Landroid/webkit/ZoomManager$1;)V

    invoke-direct {v2, p1, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v2, p0, Landroid/webkit/ZoomManager;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 965
    :cond_4
    :goto_1
    return-void

    :cond_5
    move v2, v4

    .line 952
    goto :goto_0

    .line 962
    :cond_6
    iget-boolean v2, p0, Landroid/webkit/ZoomManager;->mSupportMultiTouch:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/webkit/ZoomManager;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v2, :cond_4

    .line 963
    iput-object v5, p0, Landroid/webkit/ZoomManager;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    goto :goto_1
.end method

.method public updateZoomPicker()V
    .locals 1

    .prologue
    .line 1548
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->getCurrentZoomControl()Landroid/webkit/ZoomControlBase;

    move-result-object v0

    .line 1549
    .local v0, control:Landroid/webkit/ZoomControlBase;
    if-eqz v0, :cond_0

    .line 1550
    invoke-interface {v0}, Landroid/webkit/ZoomControlBase;->update()V

    .line 1552
    :cond_0
    return-void
.end method

.method public updateZoomRange(Landroid/webkit/WebViewCore$ViewState;II)V
    .locals 5
    .parameter "viewState"
    .parameter "viewWidth"
    .parameter "minPrefWidth"

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/high16 v3, -0x4080

    const/4 v2, 0x0

    .line 1293
    iget v0, p1, Landroid/webkit/WebViewCore$ViewState;->mMinScale:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_4

    .line 1294
    iget-boolean v0, p1, Landroid/webkit/WebViewCore$ViewState;->mMobileSite:Z

    if-eqz v0, :cond_3

    .line 1295
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-le p3, v0, :cond_2

    .line 1296
    int-to-float v0, p2

    int-to-float v1, p3

    div-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1297
    iput-boolean v2, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    .line 1310
    :goto_0
    iget v0, p1, Landroid/webkit/WebViewCore$ViewState;->mMaxScale:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_5

    .line 1311
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultMaxZoomScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    .line 1316
    :goto_1
    iget v0, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    .line 1317
    :cond_0
    iget v0, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1319
    :cond_1
    return-void

    .line 1299
    :cond_2
    iget v0, p1, Landroid/webkit/WebViewCore$ViewState;->mDefaultScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1300
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    goto :goto_0

    .line 1303
    :cond_3
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultMinZoomScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1304
    iput-boolean v2, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    goto :goto_0

    .line 1307
    :cond_4
    iget v0, p1, Landroid/webkit/WebViewCore$ViewState;->mMinScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1308
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    goto :goto_0

    .line 1313
    :cond_5
    iget v0, p1, Landroid/webkit/WebViewCore$ViewState;->mMaxScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    goto :goto_1
.end method

.method useHtcZoom()Z
    .locals 1

    .prologue
    .line 1591
    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mUseHtcZoom:Z

    return v0
.end method

.method public willScaleTriggerZoom(F)Z
    .locals 1
    .parameter "scale"

    .prologue
    .line 445
    iget v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    invoke-static {p1, v0}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v0

    return v0
.end method

.method public zoomIn()Z
    .locals 1

    .prologue
    .line 457
    const/high16 v0, 0x3fa0

    invoke-direct {p0, v0}, Landroid/webkit/ZoomManager;->zoom(F)Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    .prologue
    .line 461
    const v0, 0x3f4ccccd

    invoke-direct {p0, v0}, Landroid/webkit/ZoomManager;->zoom(F)Z

    move-result v0

    return v0
.end method
