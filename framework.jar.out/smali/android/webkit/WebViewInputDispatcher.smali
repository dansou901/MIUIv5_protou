.class final Landroid/webkit/WebViewInputDispatcher;
.super Ljava/lang/Object;
.source "WebViewInputDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewInputDispatcher$1;,
        Landroid/webkit/WebViewInputDispatcher$TouchStream;,
        Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;,
        Landroid/webkit/WebViewInputDispatcher$DispatchEvent;,
        Landroid/webkit/WebViewInputDispatcher$WebKitHandler;,
        Landroid/webkit/WebViewInputDispatcher$UiHandler;,
        Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;,
        Landroid/webkit/WebViewInputDispatcher$UiCallbacks;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEBUG:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DOUBLE_TAP_TIMEOUT:I = 0x0

.field private static final ENABLE_EVENT_BATCHING:Z = false

.field public static final EVENT_TYPE_CLICK:I = 0x4

.field public static final EVENT_TYPE_DOUBLE_TAP:I = 0x5

.field public static final EVENT_TYPE_HIT_TEST:I = 0x6

.field public static final EVENT_TYPE_HOVER:I = 0x1

.field public static final EVENT_TYPE_LONG_PRESS:I = 0x3

.field public static final EVENT_TYPE_SCROLL:I = 0x2

.field public static final EVENT_TYPE_TOUCH:I = 0x0

.field public static final FLAG_PRIVATE:I = 0x1

.field public static final FLAG_WEBKIT_IN_PROGRESS:I = 0x2

.field public static final FLAG_WEBKIT_TIMEOUT:I = 0x4

.field public static final FLAG_WEBKIT_TRANSFORMED_EVENT:I = 0x8

#the value of this static final field might be set in the static constructor
.field private static final LONG_PRESS_TIMEOUT:I = 0x0

.field private static final MAX_DISPATCH_EVENT_POOL_SIZE:I = 0xa

#the value of this static final field might be set in the static constructor
.field private static final PRESSED_STATE_DURATION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WebViewInputDispatcher"

#the value of this static final field might be set in the static constructor
.field private static final TAP_TIMEOUT:I = 0x0

.field private static final WEBKIT_TIMEOUT_MILLIS:J = 0xc8L

.field private static final WEBVIEW_TOUCH_SLOP:I = 0x8

.field static final blacklist:[Ljava/lang/String;


# instance fields
.field byPassMoveEvent:Z

.field private mDispatchEventPool:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

.field private mDispatchEventPoolSize:I

.field private mDoubleTapSlopSquared:F

.field private mInitialDownX:F

.field private mInitialDownY:F

.field private mIsDoubleTapCandidate:Z

.field private mIsTapCandidate:Z

.field private final mLock:Ljava/lang/Object;

.field private mPostClickScheduled:Z

.field private mPostDoNotSendTouchEventsToWebKitUntilNextGesture:Z

.field private mPostHideTapHighlightScheduled:Z

.field private mPostLastWebKitScale:F

.field private mPostLastWebKitXOffset:I

.field private mPostLastWebKitYOffset:I

.field private mPostLongPressScheduled:Z

.field private mPostSendTouchEventsToWebKit:Z

.field private mPostShowTapHighlightScheduled:Z

.field private final mPostTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

.field private mTouchSlopSquared:F

.field private final mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

.field private final mUiDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

.field private mUiDispatchScheduled:Z

.field private final mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

.field private final mUiTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

.field private final mWebKitCallbacks:Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;

.field private final mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

.field private mWebKitDispatchScheduled:Z

.field private final mWebKitHandler:Landroid/webkit/WebViewInputDispatcher$WebKitHandler;

.field private mWebKitTimeoutScheduled:Z

.field private mWebKitTimeoutTime:J

.field private final mWebKitTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 78
    const-class v0, Landroid/webkit/WebViewInputDispatcher;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/webkit/WebViewInputDispatcher;->$assertionsDisabled:Z

    .line 140
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroid/webkit/WebViewInputDispatcher;->TAP_TIMEOUT:I

    .line 141
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sget v2, Landroid/webkit/WebViewInputDispatcher;->TAP_TIMEOUT:I

    add-int/2addr v0, v2

    sput v0, Landroid/webkit/WebViewInputDispatcher;->LONG_PRESS_TIMEOUT:I

    .line 143
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Landroid/webkit/WebViewInputDispatcher;->DOUBLE_TAP_TIMEOUT:I

    .line 144
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v0

    sput v0, Landroid/webkit/WebViewInputDispatcher;->PRESSED_STATE_DURATION:I

    .line 615
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Landroid/webkit/WebViewInputDispatcher;->blacklist:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v1

    .line 78
    goto :goto_0
.end method

.method public constructor <init>(Landroid/webkit/WebViewInputDispatcher$UiCallbacks;Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;)V
    .locals 3
    .parameter "uiCallbacks"
    .parameter "webKitCallbacks"

    .prologue
    const/4 v2, 0x0

    .line 243
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    .line 102
    new-instance v1, Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-direct {v1, v2}, Landroid/webkit/WebViewInputDispatcher$TouchStream;-><init>(Landroid/webkit/WebViewInputDispatcher$1;)V

    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mPostTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    .line 122
    new-instance v1, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    invoke-direct {v1, v2}, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;-><init>(Landroid/webkit/WebViewInputDispatcher$1;)V

    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    .line 123
    new-instance v1, Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-direct {v1, v2}, Landroid/webkit/WebViewInputDispatcher$TouchStream;-><init>(Landroid/webkit/WebViewInputDispatcher$1;)V

    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    .line 131
    new-instance v1, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    invoke-direct {v1, v2}, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;-><init>(Landroid/webkit/WebViewInputDispatcher$1;)V

    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mUiDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    .line 132
    new-instance v1, Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-direct {v1, v2}, Landroid/webkit/WebViewInputDispatcher$TouchStream;-><init>(Landroid/webkit/WebViewInputDispatcher$1;)V

    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mUiTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    .line 614
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/WebViewInputDispatcher;->byPassMoveEvent:Z

    .line 244
    iput-object p1, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    .line 245
    new-instance v1, Landroid/webkit/WebViewInputDispatcher$UiHandler;

    invoke-interface {p1}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->getUiLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/webkit/WebViewInputDispatcher$UiHandler;-><init>(Landroid/webkit/WebViewInputDispatcher;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    .line 247
    iput-object p2, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitCallbacks:Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;

    .line 248
    new-instance v1, Landroid/webkit/WebViewInputDispatcher$WebKitHandler;

    invoke-interface {p2}, Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;->getWebKitLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/webkit/WebViewInputDispatcher$WebKitHandler;-><init>(Landroid/webkit/WebViewInputDispatcher;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitHandler:Landroid/webkit/WebViewInputDispatcher$WebKitHandler;

    .line 250
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v1}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 251
    .local v0, config:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/webkit/WebViewInputDispatcher;->mDoubleTapSlopSquared:F

    .line 252
    iget v1, p0, Landroid/webkit/WebViewInputDispatcher;->mDoubleTapSlopSquared:F

    iget v2, p0, Landroid/webkit/WebViewInputDispatcher;->mDoubleTapSlopSquared:F

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebViewInputDispatcher;->mDoubleTapSlopSquared:F

    .line 258
    const/high16 v1, 0x4100

    iput v1, p0, Landroid/webkit/WebViewInputDispatcher;->mTouchSlopSquared:F

    .line 260
    iget v1, p0, Landroid/webkit/WebViewInputDispatcher;->mTouchSlopSquared:F

    iget v2, p0, Landroid/webkit/WebViewInputDispatcher;->mTouchSlopSquared:F

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebViewInputDispatcher;->mTouchSlopSquared:F

    .line 261
    return-void
.end method

.method static synthetic access$300(Landroid/webkit/WebViewInputDispatcher;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->dispatchUiEvents(Z)V

    return-void
.end method

.method static synthetic access$400(Landroid/webkit/WebViewInputDispatcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->handleWebKitTimeout()V

    return-void
.end method

.method static synthetic access$500(Landroid/webkit/WebViewInputDispatcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->postLongPress()V

    return-void
.end method

.method static synthetic access$600(Landroid/webkit/WebViewInputDispatcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->postClick()V

    return-void
.end method

.method static synthetic access$700(Landroid/webkit/WebViewInputDispatcher;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->postShowTapHighlight(Z)V

    return-void
.end method

.method static synthetic access$800(Landroid/webkit/WebViewInputDispatcher;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->dispatchWebKitEvents(Z)V

    return-void
.end method

.method private batchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Z
    .locals 1
    .parameter "in"
    .parameter "tail"

    .prologue
    .line 1045
    const/4 v0, 0x0

    return v0
.end method

.method private checkForDoubleTapOnDownLocked(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 503
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mIsDoubleTapCandidate:Z

    .line 504
    iget-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mPostClickScheduled:Z

    if-nez v2, :cond_1

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    iget v2, p0, Landroid/webkit/WebViewInputDispatcher;->mInitialDownX:F

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    sub-int v0, v2, v3

    .line 508
    .local v0, deltaX:I
    iget v2, p0, Landroid/webkit/WebViewInputDispatcher;->mInitialDownY:F

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    sub-int v1, v2, v3

    .line 509
    .local v1, deltaY:I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Landroid/webkit/WebViewInputDispatcher;->mDoubleTapSlopSquared:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 510
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleClickLocked()V

    .line 511
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mIsDoubleTapCandidate:Z

    goto :goto_0
.end method

.method private checkForSlopLocked(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 541
    iget-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mIsTapCandidate:Z

    if-nez v2, :cond_1

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    iget v2, p0, Landroid/webkit/WebViewInputDispatcher;->mInitialDownX:F

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    sub-int v0, v2, v3

    .line 545
    .local v0, deltaX:I
    iget v2, p0, Landroid/webkit/WebViewInputDispatcher;->mInitialDownY:F

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    sub-int v1, v2, v3

    .line 546
    .local v1, deltaY:I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Landroid/webkit/WebViewInputDispatcher;->mTouchSlopSquared:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 547
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleLongPressLocked()V

    .line 548
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mIsTapCandidate:Z

    .line 549
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->hideTapCandidateLocked()V

    goto :goto_0
.end method

.method private copyDispatchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    .locals 3
    .parameter "d"

    .prologue
    .line 1075
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->obtainUninitializedDispatchEventLocked()Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v0

    .line 1076
    .local v0, copy:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    iget-object v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    .line 1077
    iget-object v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    .line 1079
    :cond_0
    iget v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    iput v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    .line 1080
    iget v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    iput v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 1081
    iget-wide v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    iput-wide v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    .line 1082
    iget v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    iput v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    .line 1083
    iget v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    iput v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    .line 1084
    iget v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    iput v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    .line 1085
    iget-object v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    iput-object v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 1086
    return-object v0
.end method

.method private dispatchUiEvent(Landroid/view/MotionEvent;II)V
    .locals 1
    .parameter "event"
    .parameter "eventType"
    .parameter "flags"

    .prologue
    .line 910
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->dispatchUiEvent(Landroid/view/MotionEvent;II)V

    .line 911
    return-void
.end method

.method private dispatchUiEvents(Z)V
    .locals 7
    .parameter "calledFromHandler"

    .prologue
    .line 857
    :cond_0
    :goto_0
    iget-object v5, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 858
    :try_start_0
    iget-object v4, p0, Landroid/webkit/WebViewInputDispatcher;->mUiDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v4}, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->dequeue()Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v0

    .line 859
    .local v0, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    if-nez v0, :cond_2

    .line 860
    iget-boolean v4, p0, Landroid/webkit/WebViewInputDispatcher;->mUiDispatchScheduled:Z

    if-eqz v4, :cond_1

    .line 861
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/webkit/WebViewInputDispatcher;->mUiDispatchScheduled:Z

    .line 862
    if-nez p1, :cond_1

    .line 863
    iget-object v4, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->removeMessages(I)V

    .line 866
    :cond_1
    monitor-exit v5

    return-void

    .line 869
    :cond_2
    iget-object v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    .line 870
    .local v1, event:Landroid/view/MotionEvent;
    if-eqz v1, :cond_3

    iget v4, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_3

    .line 871
    const/high16 v4, 0x3f80

    iget v6, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    div-float/2addr v4, v6

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->scale(F)V

    .line 872
    iget v4, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    neg-int v4, v4

    int-to-float v4, v4

    iget v6, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v1, v4, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 873
    iget v4, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    and-int/lit8 v4, v4, -0x9

    iput v4, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 876
    :cond_3
    iget v2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    .line 877
    .local v2, eventType:I
    if-nez v2, :cond_4

    .line 878
    iget-object v4, p0, Landroid/webkit/WebViewInputDispatcher;->mUiTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v4, v1}, Landroid/webkit/WebViewInputDispatcher$TouchStream;->update(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 884
    :cond_4
    iget v3, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 886
    .local v3, flags:I
    iget-object v4, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-ne v1, v4, :cond_5

    .line 887
    const/4 v4, 0x0

    iput-object v4, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    .line 889
    :cond_5
    invoke-direct {p0, v0}, Landroid/webkit/WebViewInputDispatcher;->recycleDispatchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 891
    const/4 v4, 0x4

    if-ne v2, v4, :cond_6

    .line 892
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->scheduleHideTapHighlightLocked()V

    .line 894
    :cond_6
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 897
    if-eqz v1, :cond_0

    .line 898
    invoke-direct {p0, v1, v2, v3}, Landroid/webkit/WebViewInputDispatcher;->dispatchUiEvent(Landroid/view/MotionEvent;II)V

    .line 899
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 894
    .end local v0           #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    .end local v1           #event:Landroid/view/MotionEvent;
    .end local v2           #eventType:I
    .end local v3           #flags:I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private dispatchWebKitEvent(Landroid/view/MotionEvent;II)Z
    .locals 2
    .parameter "event"
    .parameter "eventType"
    .parameter "flags"

    .prologue
    .line 738
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitCallbacks:Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;

    invoke-interface {v1, p0, p1, p2, p3}, Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;->dispatchWebKitEvent(Landroid/webkit/WebViewInputDispatcher;Landroid/view/MotionEvent;II)Z

    move-result v0

    .line 743
    .local v0, preventDefault:Z
    return v0
.end method

.method private dispatchWebKitEvents(Z)V
    .locals 12
    .parameter "calledFromHandler"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 636
    :goto_0
    iget-object v9, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 638
    :try_start_0
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->drainStaleWebKitEventsLocked()V

    .line 640
    iget-object v10, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v0, v10, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 641
    .local v0, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    if-nez v0, :cond_1

    .line 642
    iget-boolean v7, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchScheduled:Z

    if-eqz v7, :cond_0

    .line 643
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchScheduled:Z

    .line 644
    if-nez p1, :cond_0

    .line 645
    iget-object v7, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitHandler:Landroid/webkit/WebViewInputDispatcher$WebKitHandler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/webkit/WebViewInputDispatcher$WebKitHandler;->removeMessages(I)V

    .line 649
    :cond_0
    monitor-exit v9

    return-void

    .line 652
    :cond_1
    iget-object v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    .line 653
    .local v1, event:Landroid/view/MotionEvent;
    if-eqz v1, :cond_2

    .line 654
    iget v10, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    int-to-float v10, v10

    iget v11, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    int-to-float v11, v11

    invoke-virtual {v1, v10, v11}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 655
    iget v10, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->scale(F)V

    .line 656
    iget v10, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    or-int/lit8 v10, v10, 0x8

    iput v10, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 659
    :cond_2
    iget v2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    .line 660
    .local v2, eventType:I
    if-nez v2, :cond_3

    .line 661
    iget-object v10, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v10, v1}, Landroid/webkit/WebViewInputDispatcher$TouchStream;->update(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 667
    :cond_3
    iget v10, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    or-int/lit8 v10, v10, 0x2

    iput v10, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 668
    iget v3, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 669
    .local v3, flags:I
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 673
    if-nez v1, :cond_8

    .line 674
    const/4 v5, 0x0

    .line 680
    .local v5, preventDefault:Z
    :goto_1
    iget-object v9, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v9}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->isShowMagnifying()Z

    move-result v9

    if-nez v9, :cond_4

    .line 681
    iget-boolean v9, p0, Landroid/webkit/WebViewInputDispatcher;->byPassMoveEvent:Z

    if-eqz v9, :cond_4

    if-eqz v5, :cond_4

    .line 682
    invoke-direct {p0, v0}, Landroid/webkit/WebViewInputDispatcher;->isMoveEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Z

    move-result v4

    .line 685
    .local v4, overridePreventDefault:Z
    if-eqz v4, :cond_4

    .line 686
    const/4 v5, 0x0

    .line 691
    .end local v4           #overridePreventDefault:Z
    :cond_4
    iget-object v9, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 692
    :try_start_1
    iget v3, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 693
    and-int/lit8 v10, v3, -0x3

    iput v10, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 694
    iget-object v10, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eq v1, v10, :cond_9

    move v6, v7

    .line 696
    .local v6, recycleEvent:Z
    :goto_2
    and-int/lit8 v10, v3, 0x4

    if-eqz v10, :cond_a

    .line 698
    invoke-direct {p0, v0}, Landroid/webkit/WebViewInputDispatcher;->recycleDispatchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 721
    :cond_5
    :goto_3
    if-eqz v1, :cond_6

    if-eqz v6, :cond_6

    .line 722
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 725
    :cond_6
    const/4 v10, 0x4

    if-ne v2, v10, :cond_7

    .line 726
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->scheduleHideTapHighlightLocked()V

    .line 728
    :cond_7
    monitor-exit v9

    goto/16 :goto_0

    .end local v6           #recycleEvent:Z
    :catchall_0
    move-exception v7

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 669
    .end local v0           #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    .end local v1           #event:Landroid/view/MotionEvent;
    .end local v2           #eventType:I
    .end local v3           #flags:I
    .end local v5           #preventDefault:Z
    :catchall_1
    move-exception v7

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v7

    .line 676
    .restart local v0       #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    .restart local v1       #event:Landroid/view/MotionEvent;
    .restart local v2       #eventType:I
    .restart local v3       #flags:I
    :cond_8
    invoke-direct {p0, v1, v2, v3}, Landroid/webkit/WebViewInputDispatcher;->dispatchWebKitEvent(Landroid/view/MotionEvent;II)Z

    move-result v5

    .restart local v5       #preventDefault:Z
    goto :goto_1

    :cond_9
    move v6, v8

    .line 694
    goto :goto_2

    .line 701
    .restart local v6       #recycleEvent:Z
    :cond_a
    :try_start_3
    sget-boolean v10, Landroid/webkit/WebViewInputDispatcher;->$assertionsDisabled:Z

    if-nez v10, :cond_b

    iget-object v10, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v10, v10, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    if-eq v10, v0, :cond_b

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 702
    :cond_b
    iget-object v10, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v10}, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->dequeue()Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 704
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->updateWebKitTimeoutLocked()V

    .line 706
    and-int/lit8 v10, v3, 0x1

    if-eqz v10, :cond_c

    .line 708
    invoke-direct {p0, v0}, Landroid/webkit/WebViewInputDispatcher;->recycleDispatchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    goto :goto_3

    .line 709
    :cond_c
    if-eqz v5, :cond_d

    .line 711
    iget v10, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    if-nez v10, :cond_5

    .line 712
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->enqueueUiCancelTouchEventIfNeededLocked()V

    .line 713
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleLongPressLocked()V

    goto :goto_3

    .line 717
    :cond_d
    invoke-direct {p0, v0}, Landroid/webkit/WebViewInputDispatcher;->enqueueUiEventUnbatchedLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3
.end method

.method private drainStaleWebKitEventsLocked()V
    .locals 3

    .prologue
    .line 752
    iget-object v2, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v0, v2, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 755
    .local v0, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Landroid/webkit/WebViewInputDispatcher;->isMoveEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    invoke-direct {p0, v2}, Landroid/webkit/WebViewInputDispatcher;->isMoveEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 756
    iget-object v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 757
    .local v1, next:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v0}, Landroid/webkit/WebViewInputDispatcher;->skipWebKitEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 758
    move-object v0, v1

    .line 759
    goto :goto_0

    .line 760
    .end local v1           #next:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    iput-object v0, v2, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 761
    return-void
.end method

.method private enqueueDoubleTapLocked(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    .line 526
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 527
    .local v1, eventToEnqueue:Landroid/view/MotionEvent;
    const/4 v2, 0x5

    const/4 v3, 0x0

    iget v4, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitXOffset:I

    iget v5, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitYOffset:I

    iget v6, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitScale:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v7

    .line 529
    .local v7, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v7}, Landroid/webkit/WebViewInputDispatcher;->enqueueEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 530
    return-void
.end method

.method private enqueueEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 914
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->shouldSkipWebKit(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 915
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->enqueueWebKitEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 919
    :goto_0
    return-void

    .line 917
    :cond_0
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->enqueueUiEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    goto :goto_0
.end method

.method private enqueueHitTestLocked(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    .line 533
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v0}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->clearPreviousHitTest()V

    .line 534
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 535
    .local v1, eventToEnqueue:Landroid/view/MotionEvent;
    const/4 v2, 0x6

    const/4 v3, 0x0

    iget v4, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitXOffset:I

    iget v5, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitYOffset:I

    iget v6, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitScale:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v7

    .line 537
    .local v7, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v7}, Landroid/webkit/WebViewInputDispatcher;->enqueueEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 538
    return-void
.end method

.method private enqueueUiCancelTouchEventIfNeededLocked()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1006
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v0}, Landroid/webkit/WebViewInputDispatcher$TouchStream;->isCancelNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v0}, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1007
    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/high16 v6, 0x3f80

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v7

    .line 1009
    .local v7, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v7}, Landroid/webkit/WebViewInputDispatcher;->enqueueUiEventUnbatchedLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 1011
    .end local v7           #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :cond_1
    return-void
.end method

.method private enqueueUiEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 1014
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v0, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mTail:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebViewInputDispatcher;->batchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1018
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->recycleDispatchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 1022
    :goto_0
    return-void

    .line 1020
    :cond_0
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->enqueueUiEventUnbatchedLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    goto :goto_0
.end method

.method private enqueueUiEventUnbatchedLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 1028
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->enqueue(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 1029
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->scheduleUiDispatchLocked()V

    .line 1030
    return-void
.end method

.method private enqueueWebKitCancelTouchEventIfNeededLocked()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 948
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v0}, Landroid/webkit/WebViewInputDispatcher$TouchStream;->isCancelNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v0}, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 949
    :cond_0
    const/4 v1, 0x0

    const/high16 v6, 0x3f80

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v7

    .line 951
    .local v7, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v7}, Landroid/webkit/WebViewInputDispatcher;->enqueueWebKitEventUnbatchedLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 952
    iput-boolean v3, p0, Landroid/webkit/WebViewInputDispatcher;->mPostDoNotSendTouchEventsToWebKitUntilNextGesture:Z

    .line 954
    .end local v7           #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :cond_1
    return-void
.end method

.method private enqueueWebKitEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 957
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v0, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mTail:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebViewInputDispatcher;->batchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 961
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->recycleDispatchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 965
    :goto_0
    return-void

    .line 963
    :cond_0
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->enqueueWebKitEventUnbatchedLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    goto :goto_0
.end method

.method private enqueueWebKitEventUnbatchedLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 971
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->enqueue(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 972
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->scheduleWebKitDispatchLocked()V

    .line 973
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->updateWebKitTimeoutLocked()V

    .line 974
    return-void
.end method

.method private extendWebkitTimeoutLocked(J)V
    .locals 6
    .parameter "time"

    .prologue
    .line 1392
    iget-object v2, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v0, v2, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 1393
    .local v0, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    if-eqz v0, :cond_0

    .line 1394
    iget-wide v2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    add-long/2addr v2, p1

    iput-wide v2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    .line 1395
    iget-object v2, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v3, 0x2

    iget-wide v4, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 1396
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTimeoutScheduled:Z

    .line 1397
    iget-wide v2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    iput-wide v2, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTimeoutTime:J

    .line 1401
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 1402
    iget-object v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 1403
    .local v1, next:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    if-eqz v1, :cond_1

    .line 1404
    iget-wide v2, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    add-long/2addr v2, p1

    iput-wide v2, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    .line 1406
    :cond_1
    move-object v0, v1

    .line 1407
    goto :goto_0

    .line 1408
    .end local v1           #next:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :cond_2
    return-void
.end method

.method private handleWebKitTimeout()V
    .locals 8

    .prologue
    .line 771
    iget-object v5, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 772
    :try_start_0
    iget-boolean v4, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTimeoutScheduled:Z

    if-nez v4, :cond_0

    .line 773
    monitor-exit v5

    .line 828
    :goto_0
    return-void

    .line 775
    :cond_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTimeoutScheduled:Z

    .line 782
    iget-object v4, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v2, v4, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 783
    .local v2, head:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    iget-boolean v4, p0, Landroid/webkit/WebViewInputDispatcher;->mIsTapCandidate:Z

    if-eqz v4, :cond_4

    .line 784
    const/4 v0, 0x0

    .line 785
    .local v0, containHitTestorClick:Z
    move-object v1, v2

    .line 786
    .local v1, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :goto_1
    if-eqz v1, :cond_2

    .line 787
    iget v4, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    const/4 v6, 0x4

    if-eq v4, v6, :cond_1

    iget v4, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    const/4 v6, 0x6

    if-ne v4, v6, :cond_3

    .line 788
    :cond_1
    const/4 v0, 0x1

    .line 793
    :cond_2
    iget-boolean v4, p0, Landroid/webkit/WebViewInputDispatcher;->mIsTapCandidate:Z

    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    .line 794
    const-wide/16 v6, 0xc8

    invoke-direct {p0, v6, v7}, Landroid/webkit/WebViewInputDispatcher;->extendWebkitTimeoutLocked(J)V

    .line 795
    monitor-exit v5

    goto :goto_0

    .line 827
    .end local v0           #containHitTestorClick:Z
    .end local v1           #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    .end local v2           #head:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 791
    .restart local v0       #containHitTestorClick:Z
    .restart local v1       #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    .restart local v2       #head:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :cond_3
    :try_start_1
    iget-object v1, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    goto :goto_1

    .line 802
    .end local v0           #containHitTestorClick:Z
    .end local v1           #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :cond_4
    iget-object v4, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v4}, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->dequeueList()Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v1

    .line 806
    .restart local v1       #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    iget v4, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    .line 807
    iget v4, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 808
    iget v4, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_6

    .line 809
    iget-object v1, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 817
    :cond_5
    :goto_2
    if-eqz v1, :cond_7

    .line 818
    iget-object v3, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 819
    .local v3, next:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v1}, Landroid/webkit/WebViewInputDispatcher;->skipWebKitEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 820
    move-object v1, v3

    .line 821
    goto :goto_2

    .line 811
    .end local v3           #next:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :cond_6
    invoke-direct {p0, v1}, Landroid/webkit/WebViewInputDispatcher;->copyDispatchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v1

    .line 812
    iget v4, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    and-int/lit8 v4, v4, -0x3

    iput v4, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    goto :goto_2

    .line 826
    :cond_7
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->enqueueWebKitCancelTouchEventIfNeededLocked()V

    .line 827
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private hideTapCandidateLocked()V
    .locals 2

    .prologue
    .line 409
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleHideTapHighlightLocked()V

    .line 410
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleShowTapHighlightLocked()V

    .line 411
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->showTapHighlight(Z)V

    .line 412
    return-void
.end method

.method private isClickCandidateLocked(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 516
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-ne v4, v2, :cond_0

    iget-boolean v4, p0, Landroid/webkit/WebViewInputDispatcher;->mIsTapCandidate:Z

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    .line 522
    :cond_1
    :goto_0
    return v2

    .line 521
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 522
    .local v0, downDuration:J
    sget v4, Landroid/webkit/WebViewInputDispatcher;->LONG_PRESS_TIMEOUT:I

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-ltz v4, :cond_1

    move v2, v3

    goto :goto_0
.end method

.method private isMoveEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Z
    .locals 2
    .parameter "d"

    .prologue
    .line 747
    iget-object v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    .locals 5
    .parameter "event"
    .parameter "eventType"
    .parameter "flags"
    .parameter "webKitXOffset"
    .parameter "webKitYOffset"
    .parameter "webKitScale"

    .prologue
    .line 1060
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->obtainUninitializedDispatchEventLocked()Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v0

    .line 1061
    .local v0, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    iput-object p1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    .line 1062
    iput p2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    .line 1063
    iput p3, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 1064
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0xc8

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    .line 1065
    iput p4, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    .line 1066
    iput p5, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    .line 1067
    iput p6, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    .line 1071
    return-object v0
.end method

.method private obtainUninitializedDispatchEventLocked()Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1090
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mDispatchEventPool:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 1091
    .local v0, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    if-eqz v0, :cond_0

    .line 1092
    iget v1, p0, Landroid/webkit/WebViewInputDispatcher;->mDispatchEventPoolSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/webkit/WebViewInputDispatcher;->mDispatchEventPoolSize:I

    .line 1093
    iget-object v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mDispatchEventPool:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 1094
    iput-object v2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 1098
    :goto_0
    return-object v0

    .line 1096
    :cond_0
    new-instance v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .end local v0           #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {v0, v2}, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;-><init>(Landroid/webkit/WebViewInputDispatcher$1;)V

    .restart local v0       #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    goto :goto_0
.end method

.method private postClick()V
    .locals 10

    .prologue
    .line 479
    iget-object v9, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 480
    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostClickScheduled:Z

    if-nez v0, :cond_0

    .line 481
    monitor-exit v9

    .line 500
    :goto_0
    return-void

    .line 483
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostClickScheduled:Z

    .line 485
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v0}, Landroid/webkit/WebViewInputDispatcher$TouchStream;->getLastEvent()Landroid/view/MotionEvent;

    move-result-object v8

    .line 486
    .local v8, event:Landroid/view/MotionEvent;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 487
    :cond_1
    monitor-exit v9

    goto :goto_0

    .line 499
    .end local v8           #event:Landroid/view/MotionEvent;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 490
    .restart local v8       #event:Landroid/view/MotionEvent;
    :cond_2
    :try_start_1
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->showTapCandidateLocked()V

    .line 491
    invoke-static {v8}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 492
    .local v1, eventToEnqueue:Landroid/view/MotionEvent;
    const/4 v2, 0x4

    const/4 v3, 0x0

    iget v4, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitXOffset:I

    iget v5, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitYOffset:I

    iget v6, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitScale:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v7

    .line 494
    .local v7, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v7}, Landroid/webkit/WebViewInputDispatcher;->enqueueEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 497
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v0}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->checkHyperlinkClicked()V

    .line 499
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private postLongPress()V
    .locals 10

    .prologue
    .line 379
    iget-object v9, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 380
    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLongPressScheduled:Z

    if-nez v0, :cond_0

    .line 381
    monitor-exit v9

    .line 406
    :goto_0
    return-void

    .line 383
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLongPressScheduled:Z

    .line 385
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v0}, Landroid/webkit/WebViewInputDispatcher$TouchStream;->getLastEvent()Landroid/view/MotionEvent;

    move-result-object v8

    .line 386
    .local v8, event:Landroid/view/MotionEvent;
    if-nez v8, :cond_1

    .line 387
    monitor-exit v9

    goto :goto_0

    .line 405
    .end local v8           #event:Landroid/view/MotionEvent;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 390
    .restart local v8       #event:Landroid/view/MotionEvent;
    :cond_1
    :try_start_1
    invoke-virtual {v8}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 397
    :pswitch_0
    monitor-exit v9

    goto :goto_0

    .line 400
    :pswitch_1
    invoke-static {v8}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 401
    .local v1, eventToEnqueue:Landroid/view/MotionEvent;
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 402
    const/4 v2, 0x3

    const/4 v3, 0x0

    iget v4, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitXOffset:I

    iget v5, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitYOffset:I

    iget v6, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitScale:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v7

    .line 404
    .local v7, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v7}, Landroid/webkit/WebViewInputDispatcher;->enqueueEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 405
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 390
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private postShowTapHighlight(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 449
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 450
    if-eqz p1, :cond_1

    .line 451
    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostShowTapHighlightScheduled:Z

    if-nez v0, :cond_0

    .line 452
    monitor-exit v1

    .line 463
    :goto_0
    return-void

    .line 454
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostShowTapHighlightScheduled:Z

    .line 461
    :goto_1
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->showTapHighlight(Z)V

    .line 462
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 456
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostHideTapHighlightScheduled:Z

    if-nez v0, :cond_2

    .line 457
    monitor-exit v1

    goto :goto_0

    .line 459
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostHideTapHighlightScheduled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private recycleDispatchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 1102
    iget-object v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 1103
    iget-object v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1104
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    .line 1107
    :cond_0
    iget v0, p0, Landroid/webkit/WebViewInputDispatcher;->mDispatchEventPoolSize:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 1108
    iget v0, p0, Landroid/webkit/WebViewInputDispatcher;->mDispatchEventPoolSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkit/WebViewInputDispatcher;->mDispatchEventPoolSize:I

    .line 1109
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mDispatchEventPool:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    iput-object v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 1110
    iput-object p1, p0, Landroid/webkit/WebViewInputDispatcher;->mDispatchEventPool:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 1112
    :cond_1
    return-void
.end method

.method private scheduleClickLocked()V
    .locals 4

    .prologue
    .line 466
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleClickLocked()V

    .line 467
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostClickScheduled:Z

    .line 468
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x4

    sget v2, Landroid/webkit/WebViewInputDispatcher;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 469
    return-void
.end method

.method private scheduleHideTapHighlightLocked()V
    .locals 4

    .prologue
    .line 435
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleHideTapHighlightLocked()V

    .line 436
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostHideTapHighlightScheduled:Z

    .line 437
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x6

    sget v2, Landroid/webkit/WebViewInputDispatcher;->PRESSED_STATE_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 439
    return-void
.end method

.method private scheduleLongPressLocked()V
    .locals 4

    .prologue
    .line 365
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleLongPressLocked()V

    .line 366
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLongPressScheduled:Z

    .line 367
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x3

    sget v2, Landroid/webkit/WebViewInputDispatcher;->LONG_PRESS_TIMEOUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 369
    return-void
.end method

.method private scheduleShowTapHighlightLocked()V
    .locals 4

    .prologue
    .line 421
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleShowTapHighlightLocked()V

    .line 422
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostShowTapHighlightScheduled:Z

    .line 423
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x5

    sget v2, Landroid/webkit/WebViewInputDispatcher;->TAP_TIMEOUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 425
    return-void
.end method

.method private scheduleUiDispatchLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1033
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiDispatchScheduled:Z

    if-nez v0, :cond_0

    .line 1037
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1039
    iput-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mUiDispatchScheduled:Z

    .line 1041
    :cond_0
    return-void
.end method

.method private scheduleWebKitDispatchLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 977
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchScheduled:Z

    if-nez v0, :cond_0

    .line 981
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitHandler:Landroid/webkit/WebViewInputDispatcher$WebKitHandler;

    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitHandler:Landroid/webkit/WebViewInputDispatcher$WebKitHandler;

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewInputDispatcher$WebKitHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewInputDispatcher$WebKitHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 983
    iput-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchScheduled:Z

    .line 985
    :cond_0
    return-void
.end method

.method private shouldSkipWebKit(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Z
    .locals 4
    .parameter "d"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 922
    iget v2, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 942
    :cond_0
    :goto_0
    :pswitch_1
    return v0

    .line 935
    :pswitch_2
    iget-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mIsTapCandidate:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 937
    goto :goto_0

    .line 939
    :cond_1
    iget-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mPostSendTouchEventsToWebKit:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mPostDoNotSendTouchEventsToWebKitUntilNextGesture:Z

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 922
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showTapCandidateLocked()V
    .locals 2

    .prologue
    .line 415
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleHideTapHighlightLocked()V

    .line 416
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleShowTapHighlightLocked()V

    .line 417
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->showTapHighlight(Z)V

    .line 418
    return-void
.end method

.method private skipWebKitEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 831
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 832
    iget v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 833
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->recycleDispatchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 838
    :goto_0
    return-void

    .line 835
    :cond_0
    iget v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 836
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->enqueueUiEventUnbatchedLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    goto :goto_0
.end method

.method private unscheduleClickLocked()V
    .locals 2

    .prologue
    .line 472
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostClickScheduled:Z

    if-eqz v0, :cond_0

    .line 473
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostClickScheduled:Z

    .line 474
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->removeMessages(I)V

    .line 476
    :cond_0
    return-void
.end method

.method private unscheduleHideTapHighlightLocked()V
    .locals 2

    .prologue
    .line 442
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostHideTapHighlightScheduled:Z

    if-eqz v0, :cond_0

    .line 443
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostHideTapHighlightScheduled:Z

    .line 444
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->removeMessages(I)V

    .line 446
    :cond_0
    return-void
.end method

.method private unscheduleLongPressLocked()V
    .locals 2

    .prologue
    .line 372
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLongPressScheduled:Z

    if-eqz v0, :cond_0

    .line 373
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLongPressScheduled:Z

    .line 374
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->removeMessages(I)V

    .line 376
    :cond_0
    return-void
.end method

.method private unscheduleShowTapHighlightLocked()V
    .locals 2

    .prologue
    .line 428
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostShowTapHighlightScheduled:Z

    if-eqz v0, :cond_0

    .line 429
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostShowTapHighlightScheduled:Z

    .line 430
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->removeMessages(I)V

    .line 432
    :cond_0
    return-void
.end method

.method private updateStateTrackersLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "d"
    .parameter "event"

    .prologue
    const/4 v1, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 554
    iget v2, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    iput v2, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitXOffset:I

    .line 555
    iget v2, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    iput v2, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitYOffset:I

    .line 556
    iget v2, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    iput v2, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitScale:F

    .line 557
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 558
    .local v0, action:I
    :goto_0
    iget v2, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    if-eqz v2, :cond_2

    .line 597
    :cond_0
    :goto_1
    return-void

    .end local v0           #action:I
    :cond_1
    move v0, v1

    .line 557
    goto :goto_0

    .line 562
    .restart local v0       #action:I
    :cond_2
    if-eq v0, v1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v3, :cond_4

    .line 564
    :cond_3
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleLongPressLocked()V

    .line 565
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleClickLocked()V

    .line 566
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->hideTapCandidateLocked()V

    .line 567
    iput-boolean v4, p0, Landroid/webkit/WebViewInputDispatcher;->mIsDoubleTapCandidate:Z

    .line 568
    iput-boolean v4, p0, Landroid/webkit/WebViewInputDispatcher;->mIsTapCandidate:Z

    .line 569
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->hideTapCandidateLocked()V

    goto :goto_1

    .line 570
    :cond_4
    if-nez v0, :cond_6

    .line 571
    invoke-direct {p0, p2}, Landroid/webkit/WebViewInputDispatcher;->checkForDoubleTapOnDownLocked(Landroid/view/MotionEvent;)V

    .line 572
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->scheduleLongPressLocked()V

    .line 573
    iput-boolean v3, p0, Landroid/webkit/WebViewInputDispatcher;->mIsTapCandidate:Z

    .line 574
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Landroid/webkit/WebViewInputDispatcher;->mInitialDownX:F

    .line 575
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Landroid/webkit/WebViewInputDispatcher;->mInitialDownY:F

    .line 576
    invoke-direct {p0, p2}, Landroid/webkit/WebViewInputDispatcher;->enqueueHitTestLocked(Landroid/view/MotionEvent;)V

    .line 577
    iget-boolean v1, p0, Landroid/webkit/WebViewInputDispatcher;->mIsDoubleTapCandidate:Z

    if-eqz v1, :cond_5

    .line 578
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->hideTapCandidateLocked()V

    goto :goto_1

    .line 580
    :cond_5
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->scheduleShowTapHighlightLocked()V

    goto :goto_1

    .line 582
    :cond_6
    if-ne v0, v3, :cond_9

    .line 583
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleLongPressLocked()V

    .line 584
    invoke-direct {p0, p2}, Landroid/webkit/WebViewInputDispatcher;->isClickCandidateLocked(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 585
    iget-boolean v1, p0, Landroid/webkit/WebViewInputDispatcher;->mIsDoubleTapCandidate:Z

    if-eqz v1, :cond_7

    .line 586
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->hideTapCandidateLocked()V

    .line 587
    invoke-direct {p0, p2}, Landroid/webkit/WebViewInputDispatcher;->enqueueDoubleTapLocked(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 589
    :cond_7
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->scheduleClickLocked()V

    goto :goto_1

    .line 592
    :cond_8
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->hideTapCandidateLocked()V

    goto :goto_1

    .line 594
    :cond_9
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 595
    invoke-direct {p0, p2}, Landroid/webkit/WebViewInputDispatcher;->checkForSlopLocked(Landroid/view/MotionEvent;)V

    goto :goto_1
.end method

.method private updateWebKitTimeoutLocked()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 988
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v0, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 989
    .local v0, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTimeoutScheduled:Z

    if-eqz v1, :cond_1

    iget-wide v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTimeoutTime:J

    iget-wide v3, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 1001
    :cond_0
    :goto_0
    return-void

    .line 992
    :cond_1
    iget-boolean v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTimeoutScheduled:Z

    if-eqz v1, :cond_2

    .line 993
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    invoke-virtual {v1, v5}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->removeMessages(I)V

    .line 994
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTimeoutScheduled:Z

    .line 996
    :cond_2
    if-eqz v0, :cond_0

    .line 997
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    iget-wide v2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    invoke-virtual {v1, v5, v2, v3}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 998
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTimeoutScheduled:Z

    .line 999
    iget-wide v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    iput-wide v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTimeoutTime:J

    goto :goto_0
.end method


# virtual methods
.method public dispatchUiEvents()V
    .locals 1

    .prologue
    .line 849
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkit/WebViewInputDispatcher;->dispatchUiEvents(Z)V

    .line 850
    return-void
.end method

.method public dispatchWebKitEvents()V
    .locals 1

    .prologue
    .line 608
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkit/WebViewInputDispatcher;->dispatchWebKitEvents(Z)V

    .line 609
    return-void
.end method

.method onPageStarted(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 618
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebViewInputDispatcher;->byPassMoveEvent:Z

    .line 619
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Landroid/webkit/WebViewInputDispatcher;->blacklist:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 620
    sget-object v1, Landroid/webkit/WebViewInputDispatcher;->blacklist:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 621
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/WebViewInputDispatcher;->byPassMoveEvent:Z

    .line 625
    :cond_0
    return-void

    .line 619
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public postPointerEvent(Landroid/view/MotionEvent;IIF)Z
    .locals 11
    .parameter "event"
    .parameter "webKitXOffset"
    .parameter "webKitYOffset"
    .parameter "webKitScale"

    .prologue
    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 295
    if-nez p1, :cond_0

    .line 296
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "event cannot be null"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    .line 305
    .local v7, action:I
    packed-switch v7, :pswitch_data_0

    .line 361
    :goto_0
    :pswitch_0
    return v0

    .line 312
    :pswitch_1
    const/4 v2, 0x0

    .line 326
    .local v2, eventType:I
    :goto_1
    iget-object v10, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 328
    move-object v1, p1

    .line 329
    .local v1, eventToEnqueue:Landroid/view/MotionEvent;
    if-nez v2, :cond_2

    .line 330
    :try_start_0
    iget-object v3, p0, Landroid/webkit/WebViewInputDispatcher;->mPostTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v3, p1}, Landroid/webkit/WebViewInputDispatcher$TouchStream;->update(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 331
    if-nez v1, :cond_1

    .line 335
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleLongPressLocked()V

    .line 336
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleClickLocked()V

    .line 337
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->hideTapCandidateLocked()V

    .line 338
    monitor-exit v10

    goto :goto_0

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 315
    .end local v1           #eventToEnqueue:Landroid/view/MotionEvent;
    .end local v2           #eventType:I
    :pswitch_2
    const/4 v2, 0x2

    .line 316
    .restart local v2       #eventType:I
    goto :goto_1

    .line 320
    .end local v2           #eventType:I
    :pswitch_3
    const/4 v2, 0x1

    .line 321
    .restart local v2       #eventType:I
    goto :goto_1

    .line 341
    .restart local v1       #eventToEnqueue:Landroid/view/MotionEvent;
    :cond_1
    if-nez v7, :cond_2

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostSendTouchEventsToWebKit:Z

    if-eqz v0, :cond_2

    .line 342
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v0, v1}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostDoNotSendTouchEventsToWebKitUntilNextGesture:Z

    .line 352
    :cond_2
    :goto_2
    if-ne v1, p1, :cond_3

    .line 353
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v1

    .line 356
    :cond_3
    const/4 v3, 0x0

    move-object v0, p0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v8

    .line 358
    .local v8, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v8, p1}, Landroid/webkit/WebViewInputDispatcher;->updateStateTrackersLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;Landroid/view/MotionEvent;)V

    .line 359
    invoke-direct {p0, v8}, Landroid/webkit/WebViewInputDispatcher;->enqueueEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 360
    monitor-exit v10

    move v0, v9

    .line 361
    goto :goto_0

    .line 344
    .end local v8           #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :cond_4
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostDoNotSendTouchEventsToWebKitUntilNextGesture:Z

    if-eqz v0, :cond_2

    .line 346
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostDoNotSendTouchEventsToWebKitUntilNextGesture:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 305
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public setWebKitWantsTouchEvents(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 273
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 274
    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostSendTouchEventsToWebKit:Z

    if-eq v0, p1, :cond_1

    .line 275
    if-nez p1, :cond_0

    .line 276
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->enqueueWebKitCancelTouchEventIfNeededLocked()V

    .line 278
    :cond_0
    iput-boolean p1, p0, Landroid/webkit/WebViewInputDispatcher;->mPostSendTouchEventsToWebKit:Z

    .line 280
    :cond_1
    monitor-exit v1

    .line 281
    return-void

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public skipWebkitForRemainingTouchStream()V
    .locals 0

    .prologue
    .line 766
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->handleWebKitTimeout()V

    .line 767
    return-void
.end method
