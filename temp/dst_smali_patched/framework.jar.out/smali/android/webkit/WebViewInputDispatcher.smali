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

.field static final blacklist:[Ljava/lang/String;


# instance fields
.field byPassMoveEvent:Z

.field private mDispatchEventPool:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

.field private mDispatchEventPoolSize:I

.field private mDoubleTapSlopSquared:F

.field mHaltClickForPreventDefault:Z

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

    const-class v0, Landroid/webkit/WebViewInputDispatcher;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/webkit/WebViewInputDispatcher;->$assertionsDisabled:Z

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroid/webkit/WebViewInputDispatcher;->TAP_TIMEOUT:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sget v2, Landroid/webkit/WebViewInputDispatcher;->TAP_TIMEOUT:I

    add-int/2addr v0, v2

    sput v0, Landroid/webkit/WebViewInputDispatcher;->LONG_PRESS_TIMEOUT:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Landroid/webkit/WebViewInputDispatcher;->DOUBLE_TAP_TIMEOUT:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v0

    sput v0, Landroid/webkit/WebViewInputDispatcher;->PRESSED_STATE_DURATION:I

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Landroid/webkit/WebViewInputDispatcher;->blacklist:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/webkit/WebViewInputDispatcher$UiCallbacks;Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;)V
    .locals 4
    .parameter "uiCallbacks"
    .parameter "webKitCallbacks"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    new-instance v1, Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-direct {v1, v2}, Landroid/webkit/WebViewInputDispatcher$TouchStream;-><init>(Landroid/webkit/WebViewInputDispatcher$1;)V

    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mPostTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    new-instance v1, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    invoke-direct {v1, v2}, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;-><init>(Landroid/webkit/WebViewInputDispatcher$1;)V

    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    new-instance v1, Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-direct {v1, v2}, Landroid/webkit/WebViewInputDispatcher$TouchStream;-><init>(Landroid/webkit/WebViewInputDispatcher$1;)V

    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    new-instance v1, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    invoke-direct {v1, v2}, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;-><init>(Landroid/webkit/WebViewInputDispatcher$1;)V

    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mUiDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    new-instance v1, Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-direct {v1, v2}, Landroid/webkit/WebViewInputDispatcher$TouchStream;-><init>(Landroid/webkit/WebViewInputDispatcher$1;)V

    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mUiTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    iput-boolean v3, p0, Landroid/webkit/WebViewInputDispatcher;->byPassMoveEvent:Z

    iput-boolean v3, p0, Landroid/webkit/WebViewInputDispatcher;->mHaltClickForPreventDefault:Z

    iput-object p1, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    new-instance v1, Landroid/webkit/WebViewInputDispatcher$UiHandler;

    invoke-interface {p1}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->getUiLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/webkit/WebViewInputDispatcher$UiHandler;-><init>(Landroid/webkit/WebViewInputDispatcher;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    iput-object p2, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitCallbacks:Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;

    new-instance v1, Landroid/webkit/WebViewInputDispatcher$WebKitHandler;

    invoke-interface {p2}, Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;->getWebKitLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/webkit/WebViewInputDispatcher$WebKitHandler;-><init>(Landroid/webkit/WebViewInputDispatcher;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitHandler:Landroid/webkit/WebViewInputDispatcher$WebKitHandler;

    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v1}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .local v0, config:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/webkit/WebViewInputDispatcher;->mDoubleTapSlopSquared:F

    iget v1, p0, Landroid/webkit/WebViewInputDispatcher;->mDoubleTapSlopSquared:F

    iget v2, p0, Landroid/webkit/WebViewInputDispatcher;->mDoubleTapSlopSquared:F

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebViewInputDispatcher;->mDoubleTapSlopSquared:F

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/webkit/WebViewInputDispatcher;->mTouchSlopSquared:F

    iget v1, p0, Landroid/webkit/WebViewInputDispatcher;->mTouchSlopSquared:F

    iget v2, p0, Landroid/webkit/WebViewInputDispatcher;->mTouchSlopSquared:F

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebViewInputDispatcher;->mTouchSlopSquared:F

    return-void
.end method

.method static synthetic access$1000(Landroid/webkit/WebViewInputDispatcher;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->dispatchWebKitEvents(Z)V

    return-void
.end method

.method static synthetic access$300(Landroid/webkit/WebViewInputDispatcher;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->dispatchUiEvents(Z)V

    return-void
.end method

.method static synthetic access$400(Landroid/webkit/WebViewInputDispatcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->handleWebKitTimeout()V

    return-void
.end method

.method static synthetic access$500(Landroid/webkit/WebViewInputDispatcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->postLongPress()V

    return-void
.end method

.method static synthetic access$600(Landroid/webkit/WebViewInputDispatcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->postClick()V

    return-void
.end method

.method static synthetic access$700(Landroid/webkit/WebViewInputDispatcher;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->postShowTapHighlight(Z)V

    return-void
.end method

.method static synthetic access$800(Landroid/webkit/WebViewInputDispatcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostShowTapHighlightScheduled:Z

    return v0
.end method

.method static synthetic access$900(Landroid/webkit/WebViewInputDispatcher;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->scheduleHideTapHighlightLocked(I)V

    return-void
.end method

.method private batchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Z
    .locals 1
    .parameter "in"
    .parameter "tail"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method private checkForDoubleTapOnDownLocked(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mIsDoubleTapCandidate:Z

    iget-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mPostClickScheduled:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Landroid/webkit/WebViewInputDispatcher;->mInitialDownX:F

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    sub-int v0, v2, v3

    .local v0, deltaX:I
    iget v2, p0, Landroid/webkit/WebViewInputDispatcher;->mInitialDownY:F

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    sub-int v1, v2, v3

    .local v1, deltaY:I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Landroid/webkit/WebViewInputDispatcher;->mDoubleTapSlopSquared:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleClickLocked()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mIsDoubleTapCandidate:Z

    goto :goto_0
.end method

.method private checkForSlopLocked(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x3

    iget-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mIsTapCandidate:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Landroid/webkit/WebViewInputDispatcher;->mInitialDownX:F

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    sub-int v0, v2, v3

    .local v0, deltaX:I
    iget v2, p0, Landroid/webkit/WebViewInputDispatcher;->mInitialDownY:F

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    sub-int v1, v2, v3

    .local v1, deltaY:I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Landroid/webkit/WebViewInputDispatcher;->mTouchSlopSquared:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-static {v4}, Landroid/webkit/WebViewPerfUtil;->getCnt(I)I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v2, v4}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->acquireWebViewPerfWakeLock(I)V

    :cond_2
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleLongPressLocked()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mIsTapCandidate:Z

    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->hideTapCandidateLocked()V

    goto :goto_0
.end method

.method private copyDispatchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    .locals 3
    .parameter "d"

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->obtainUninitializedDispatchEventLocked()Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v0

    .local v0, copy:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    iget-object v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    :cond_0
    iget v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    iput v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    iget v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    iput v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    iget-wide v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    iput-wide v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    iget v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    iput v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    iget v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    iput v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    iget v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    iput v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    iget-object v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    iput-object v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    return-object v0
.end method

.method private dispatchUiEvent(Landroid/view/MotionEvent;II)V
    .locals 1
    .parameter "event"
    .parameter "eventType"
    .parameter "flags"

    .prologue
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->dispatchUiEvent(Landroid/view/MotionEvent;II)V

    return-void
.end method

.method private dispatchUiEvents(Z)V
    .locals 9
    .parameter "calledFromHandler"

    .prologue
    const/4 v8, 0x1

    :cond_0
    :goto_0
    iget-object v6, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Landroid/webkit/WebViewInputDispatcher;->mUiDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v5}, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->dequeue()Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v1

    .local v1, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    if-nez v1, :cond_2

    iget-boolean v5, p0, Landroid/webkit/WebViewInputDispatcher;->mUiDispatchScheduled:Z

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/webkit/WebViewInputDispatcher;->mUiDispatchScheduled:Z

    if-nez p1, :cond_1

    iget-object v5, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->removeMessages(I)V

    :cond_1
    monitor-exit v6

    return-void

    :cond_2
    iget-object v2, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    .local v2, event:Landroid/view/MotionEvent;
    if-eqz v2, :cond_3

    iget v5, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_3

    const/high16 v5, 0x3f80

    iget v7, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    div-float/2addr v5, v7

    invoke-virtual {v2, v5}, Landroid/view/MotionEvent;->scale(F)V

    iget v5, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    neg-int v5, v5

    int-to-float v5, v5

    iget v7, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v2, v5, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget v5, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    and-int/lit8 v5, v5, -0x9

    iput v5, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    :cond_3
    iget v3, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    .local v3, eventType:I
    if-nez v3, :cond_4

    iget-object v5, p0, Landroid/webkit/WebViewInputDispatcher;->mUiTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v5, v2}, Landroid/webkit/WebViewInputDispatcher$TouchStream;->update(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    if-eqz v1, :cond_4

    iget-object v5, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v5, :cond_4

    if-nez v2, :cond_4

    iget-object v5, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .local v0, act:I
    if-ne v0, v8, :cond_4

    iget-object v5, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    const/4 v7, 0x3

    invoke-interface {v5, v7}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->releaseWebViewPerfWakeLock(I)V

    .end local v0           #act:I
    :cond_4
    iget v4, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .local v4, flags:I
    iget-object v5, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-ne v2, v5, :cond_5

    const/4 v5, 0x0

    iput-object v5, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    :cond_5
    invoke-direct {p0, v1}, Landroid/webkit/WebViewInputDispatcher;->recycleDispatchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    const/4 v5, 0x4

    if-ne v3, v5, :cond_6

    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->scheduleHideTapHighlightLocked()V

    :cond_6
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    invoke-direct {p0, v2, v3, v4}, Landroid/webkit/WebViewInputDispatcher;->dispatchUiEvent(Landroid/view/MotionEvent;II)V

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .end local v1           #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    .end local v2           #event:Landroid/view/MotionEvent;
    .end local v3           #eventType:I
    .end local v4           #flags:I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method private dispatchWebKitEvent(Landroid/view/MotionEvent;II)Z
    .locals 2
    .parameter "event"
    .parameter "eventType"
    .parameter "flags"

    .prologue
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitCallbacks:Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;

    invoke-interface {v1, p0, p1, p2, p3}, Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;->dispatchWebKitEvent(Landroid/webkit/WebViewInputDispatcher;Landroid/view/MotionEvent;II)Z

    move-result v0

    .local v0, preventDefault:Z
    return v0
.end method

.method private dispatchWebKitEvents(Z)V
    .locals 13
    .parameter "calledFromHandler"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    :goto_0
    iget-object v10, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->drainStaleWebKitEventsLocked()V

    iget-object v11, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v1, v11, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .local v1, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    if-nez v1, :cond_1

    iget-boolean v8, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchScheduled:Z

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchScheduled:Z

    if-nez p1, :cond_0

    iget-object v8, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitHandler:Landroid/webkit/WebViewInputDispatcher$WebKitHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/webkit/WebViewInputDispatcher$WebKitHandler;->removeMessages(I)V

    :cond_0
    monitor-exit v10

    return-void

    :cond_1
    iget-object v2, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    .local v2, event:Landroid/view/MotionEvent;
    if-eqz v2, :cond_2

    iget v11, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    int-to-float v11, v11

    iget v12, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    int-to-float v12, v12

    invoke-virtual {v2, v11, v12}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget v11, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    invoke-virtual {v2, v11}, Landroid/view/MotionEvent;->scale(F)V

    iget v11, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    or-int/lit8 v11, v11, 0x8

    iput v11, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    :cond_2
    iget v3, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    .local v3, eventType:I
    if-nez v3, :cond_3

    iget-object v11, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v11, v2}, Landroid/webkit/WebViewInputDispatcher$TouchStream;->update(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    :cond_3
    iget v11, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    or-int/lit8 v11, v11, 0x2

    iput v11, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    iget v4, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .local v4, flags:I
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_8

    const/4 v6, 0x0

    .local v6, preventDefault:Z
    :goto_1
    iget-object v10, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v10}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->isShowMagnifying()Z

    move-result v10

    if-nez v10, :cond_4

    iget-boolean v10, p0, Landroid/webkit/WebViewInputDispatcher;->byPassMoveEvent:Z

    if-eqz v10, :cond_4

    if-eqz v6, :cond_4

    invoke-direct {p0, v1}, Landroid/webkit/WebViewInputDispatcher;->isMoveEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Z

    move-result v5

    .local v5, overridePreventDefault:Z
    if-eqz v5, :cond_4

    const/4 v6, 0x0

    .end local v5           #overridePreventDefault:Z
    :cond_4
    iget-object v10, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_1
    iget v4, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    and-int/lit8 v11, v4, -0x3

    iput v11, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    iget-object v11, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eq v2, v11, :cond_9

    move v7, v8

    .local v7, recycleEvent:Z
    :goto_2
    and-int/lit8 v11, v4, 0x4

    if-eqz v11, :cond_a

    invoke-direct {p0, v1}, Landroid/webkit/WebViewInputDispatcher;->recycleDispatchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    if-eqz v7, :cond_6

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    :cond_6
    const/4 v11, 0x4

    if-ne v3, v11, :cond_7

    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->scheduleHideTapHighlightLocked()V

    :cond_7
    monitor-exit v10

    goto/16 :goto_0

    .end local v7           #recycleEvent:Z
    :catchall_0
    move-exception v8

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .end local v1           #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    .end local v2           #event:Landroid/view/MotionEvent;
    .end local v3           #eventType:I
    .end local v4           #flags:I
    .end local v6           #preventDefault:Z
    :catchall_1
    move-exception v8

    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v8

    .restart local v1       #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    .restart local v2       #event:Landroid/view/MotionEvent;
    .restart local v3       #eventType:I
    .restart local v4       #flags:I
    :cond_8
    invoke-direct {p0, v2, v3, v4}, Landroid/webkit/WebViewInputDispatcher;->dispatchWebKitEvent(Landroid/view/MotionEvent;II)Z

    move-result v6

    .restart local v6       #preventDefault:Z
    goto :goto_1

    :cond_9
    move v7, v9

    goto :goto_2

    .restart local v7       #recycleEvent:Z
    :cond_a
    :try_start_3
    sget-boolean v11, Landroid/webkit/WebViewInputDispatcher;->$assertionsDisabled:Z

    if-nez v11, :cond_b

    iget-object v11, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v11, v11, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    if-eq v11, v1, :cond_b

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    :cond_b
    iget-object v11, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v11}, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->dequeue()Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->updateWebKitTimeoutLocked()V

    and-int/lit8 v11, v4, 0x1

    if-eqz v11, :cond_c

    invoke-direct {p0, v1}, Landroid/webkit/WebViewInputDispatcher;->recycleDispatchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    goto :goto_3

    :cond_c
    if-eqz v6, :cond_f

    iget v11, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    if-nez v11, :cond_5

    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->enqueueUiCancelTouchEventIfNeededLocked()V

    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleLongPressLocked()V

    if-eqz v1, :cond_5

    iget-object v11, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v11, :cond_5

    iget-object v11, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v11}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .local v0, act:I
    if-ne v0, v8, :cond_d

    iget-object v11, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    const/4 v12, 0x3

    invoke-interface {v11, v12}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->releaseWebViewPerfWakeLock(I)V

    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/webkit/WebViewInputDispatcher;->mHaltClickForPreventDefault:Z

    goto :goto_3

    :cond_d
    if-nez v0, :cond_e

    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleClickLocked()V

    const/16 v11, 0x64

    invoke-direct {p0, v11}, Landroid/webkit/WebViewInputDispatcher;->scheduleHideTapHighlightCheckLocked(I)V

    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/webkit/WebViewInputDispatcher;->mHaltClickForPreventDefault:Z

    goto :goto_3

    :cond_e
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/webkit/WebViewInputDispatcher;->mHaltClickForPreventDefault:Z

    goto :goto_3

    .end local v0           #act:I
    :cond_f
    invoke-direct {p0, v1}, Landroid/webkit/WebViewInputDispatcher;->enqueueUiEventUnbatchedLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3
.end method

.method private drainStaleWebKitEventsLocked()V
    .locals 3

    .prologue
    iget-object v2, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v0, v2, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

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

    iget-object v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .local v1, next:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v0}, Landroid/webkit/WebViewInputDispatcher;->skipWebKitEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    move-object v0, v1

    goto :goto_0

    .end local v1           #next:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    iput-object v0, v2, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    return-void
.end method

.method private enqueueDoubleTapLocked(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .local v1, eventToEnqueue:Landroid/view/MotionEvent;
    const/4 v2, 0x5

    const/4 v3, 0x0

    iget v4, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitXOffset:I

    iget v5, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitYOffset:I

    iget v6, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitScale:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v7

    .local v7, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v7}, Landroid/webkit/WebViewInputDispatcher;->enqueueEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    return-void
.end method

.method private enqueueEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V
    .locals 1
    .parameter "d"

    .prologue
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->shouldSkipWebKit(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->enqueueWebKitEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->enqueueUiEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    goto :goto_0
.end method

.method private enqueueHitTestLocked(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v0}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->clearPreviousHitTest()V

    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .local v1, eventToEnqueue:Landroid/view/MotionEvent;
    const/4 v2, 0x6

    const/4 v3, 0x0

    iget v4, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitXOffset:I

    iget v5, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitYOffset:I

    iget v6, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitScale:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v7

    .local v7, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v7}, Landroid/webkit/WebViewInputDispatcher;->enqueueEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    return-void
.end method

.method private enqueueUiCancelTouchEventIfNeededLocked()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v0}, Landroid/webkit/WebViewInputDispatcher$TouchStream;->isCancelNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v0}, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/high16 v6, 0x3f80

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v7

    .local v7, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v7}, Landroid/webkit/WebViewInputDispatcher;->enqueueUiEventUnbatchedLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .end local v7           #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :cond_1
    return-void
.end method

.method private enqueueUiEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V
    .locals 1
    .parameter "d"

    .prologue
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v0, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mTail:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebViewInputDispatcher;->batchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->recycleDispatchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->enqueueUiEventUnbatchedLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    goto :goto_0
.end method

.method private enqueueUiEventUnbatchedLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V
    .locals 1
    .parameter "d"

    .prologue
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->enqueue(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->scheduleUiDispatchLocked()V

    return-void
.end method

.method private enqueueWebKitCancelTouchEventIfNeededLocked()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v0}, Landroid/webkit/WebViewInputDispatcher$TouchStream;->isCancelNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v0}, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x0

    const/high16 v6, 0x3f80

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v7

    .local v7, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v7}, Landroid/webkit/WebViewInputDispatcher;->enqueueWebKitEventUnbatchedLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    iput-boolean v3, p0, Landroid/webkit/WebViewInputDispatcher;->mPostDoNotSendTouchEventsToWebKitUntilNextGesture:Z

    .end local v7           #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :cond_1
    return-void
.end method

.method private enqueueWebKitEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V
    .locals 1
    .parameter "d"

    .prologue
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v0, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mTail:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebViewInputDispatcher;->batchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->recycleDispatchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->enqueueWebKitEventUnbatchedLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    goto :goto_0
.end method

.method private enqueueWebKitEventUnbatchedLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V
    .locals 1
    .parameter "d"

    .prologue
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->enqueue(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->scheduleWebKitDispatchLocked()V

    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->updateWebKitTimeoutLocked()V

    return-void
.end method

.method private extendWebkitTimeoutLocked(J)V
    .locals 6
    .parameter "time"

    .prologue
    iget-object v2, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v0, v2, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .local v0, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    if-eqz v0, :cond_0

    iget-wide v2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    add-long/2addr v2, p1

    iput-wide v2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    iget-object v2, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v3, 0x2

    iget-wide v4, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->sendEmptyMessageAtTime(IJ)Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTimeoutScheduled:Z

    iget-wide v2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    iput-wide v2, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTimeoutTime:J

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .local v1, next:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    if-eqz v1, :cond_1

    iget-wide v2, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    add-long/2addr v2, p1

    iput-wide v2, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    :cond_1
    move-object v0, v1

    goto :goto_0

    .end local v1           #next:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :cond_2
    return-void
.end method

.method private handleWebKitTimeout()V
    .locals 8

    .prologue
    iget-object v5, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-boolean v4, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTimeoutScheduled:Z

    if-nez v4, :cond_0

    monitor-exit v5

    :goto_0
    return-void

    :cond_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTimeoutScheduled:Z

    iget-object v4, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v2, v4, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .local v2, head:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    iget-boolean v4, p0, Landroid/webkit/WebViewInputDispatcher;->mIsTapCandidate:Z

    if-eqz v4, :cond_4

    const/4 v0, 0x0

    .local v0, containHitTestorClick:Z
    move-object v1, v2

    .local v1, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :goto_1
    if-eqz v1, :cond_2

    iget v4, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    const/4 v6, 0x4

    if-eq v4, v6, :cond_1

    iget v4, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    const/4 v6, 0x6

    if-ne v4, v6, :cond_3

    :cond_1
    const/4 v0, 0x1

    :cond_2
    iget-boolean v4, p0, Landroid/webkit/WebViewInputDispatcher;->mIsTapCandidate:Z

    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    const-wide/16 v6, 0xc8

    invoke-direct {p0, v6, v7}, Landroid/webkit/WebViewInputDispatcher;->extendWebkitTimeoutLocked(J)V

    monitor-exit v5

    goto :goto_0

    .end local v0           #containHitTestorClick:Z
    .end local v1           #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    .end local v2           #head:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0       #containHitTestorClick:Z
    .restart local v1       #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    .restart local v2       #head:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :cond_3
    :try_start_1
    iget-object v1, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    goto :goto_1

    .end local v0           #containHitTestorClick:Z
    .end local v1           #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :cond_4
    iget-object v4, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v4}, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->dequeueList()Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v1

    .restart local v1       #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    iget v4, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    iget v4, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    iget v4, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_6

    iget-object v1, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    :cond_5
    :goto_2
    if-eqz v1, :cond_7

    iget-object v3, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .local v3, next:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v1}, Landroid/webkit/WebViewInputDispatcher;->skipWebKitEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    move-object v1, v3

    goto :goto_2

    .end local v3           #next:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :cond_6
    invoke-direct {p0, v1}, Landroid/webkit/WebViewInputDispatcher;->copyDispatchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v1

    iget v4, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    and-int/lit8 v4, v4, -0x3

    iput v4, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    goto :goto_2

    :cond_7
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->enqueueWebKitCancelTouchEventIfNeededLocked()V

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private hideTapCandidateLocked()V
    .locals 2

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleHideTapHighlightLocked()V

    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleShowTapHighlightLocked()V

    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->showTapHighlight(Z)V

    return-void
.end method

.method private isClickCandidateLocked(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-ne v4, v2, :cond_0

    iget-boolean v4, p0, Landroid/webkit/WebViewInputDispatcher;->mIsTapCandidate:Z

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    sub-long v0, v4, v6

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
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->obtainUninitializedDispatchEventLocked()Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v0

    .local v0, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    iput-object p1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    iput p2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    iput p3, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0xc8

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    iput p4, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    iput p5, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    iput p6, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    return-object v0
.end method

.method private obtainUninitializedDispatchEventLocked()Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mDispatchEventPool:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .local v0, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    if-eqz v0, :cond_0

    iget v1, p0, Landroid/webkit/WebViewInputDispatcher;->mDispatchEventPoolSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/webkit/WebViewInputDispatcher;->mDispatchEventPoolSize:I

    iget-object v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mDispatchEventPool:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    iput-object v2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    :goto_0
    return-object v0

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
    iget-object v9, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostClickScheduled:Z

    if-nez v0, :cond_0

    monitor-exit v9

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostClickScheduled:Z

    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v0}, Landroid/webkit/WebViewInputDispatcher$TouchStream;->getLastEvent()Landroid/view/MotionEvent;

    move-result-object v8

    .local v8, event:Landroid/view/MotionEvent;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    :cond_1
    monitor-exit v9

    goto :goto_0

    .end local v8           #event:Landroid/view/MotionEvent;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .restart local v8       #event:Landroid/view/MotionEvent;
    :cond_2
    :try_start_1
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->showTapCandidateLocked()V

    invoke-static {v8}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .local v1, eventToEnqueue:Landroid/view/MotionEvent;
    const/4 v2, 0x4

    const/4 v3, 0x0

    iget v4, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitXOffset:I

    iget v5, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitYOffset:I

    iget v6, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitScale:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v7

    .local v7, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v7}, Landroid/webkit/WebViewInputDispatcher;->enqueueEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v0}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->checkHyperlinkClicked()V

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private postLongPress()V
    .locals 10

    .prologue
    iget-object v9, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLongPressScheduled:Z

    if-nez v0, :cond_0

    monitor-exit v9

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLongPressScheduled:Z

    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v0}, Landroid/webkit/WebViewInputDispatcher$TouchStream;->getLastEvent()Landroid/view/MotionEvent;

    move-result-object v8

    .local v8, event:Landroid/view/MotionEvent;
    if-nez v8, :cond_1

    monitor-exit v9

    goto :goto_0

    .end local v8           #event:Landroid/view/MotionEvent;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .restart local v8       #event:Landroid/view/MotionEvent;
    :cond_1
    :try_start_1
    invoke-virtual {v8}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    monitor-exit v9

    goto :goto_0

    :pswitch_1
    invoke-static {v8}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .local v1, eventToEnqueue:Landroid/view/MotionEvent;
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    iget v4, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitXOffset:I

    iget v5, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitYOffset:I

    iget v6, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitScale:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v7

    .local v7, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v7}, Landroid/webkit/WebViewInputDispatcher;->enqueueEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

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
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_1

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostShowTapHighlightScheduled:Z

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostShowTapHighlightScheduled:Z

    :goto_1
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->showTapHighlight(Z)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostHideTapHighlightScheduled:Z

    if-nez v0, :cond_2

    monitor-exit v1

    goto :goto_0

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
    iget-object v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    :cond_0
    iget v0, p0, Landroid/webkit/WebViewInputDispatcher;->mDispatchEventPoolSize:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    iget v0, p0, Landroid/webkit/WebViewInputDispatcher;->mDispatchEventPoolSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkit/WebViewInputDispatcher;->mDispatchEventPoolSize:I

    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mDispatchEventPool:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    iput-object v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    iput-object p1, p0, Landroid/webkit/WebViewInputDispatcher;->mDispatchEventPool:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    :cond_1
    return-void
.end method

.method private scheduleClickLocked()V
    .locals 4

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleClickLocked()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostClickScheduled:Z

    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x4

    sget v2, Landroid/webkit/WebViewInputDispatcher;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private scheduleHideTapHighlightCheckLocked()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkit/WebViewInputDispatcher;->scheduleHideTapHighlightCheckLocked(I)V

    return-void
.end method

.method private scheduleHideTapHighlightCheckLocked(I)V
    .locals 4
    .parameter "delay"

    .prologue
    const/4 v3, 0x7

    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    invoke-virtual {v0, v3}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    invoke-virtual {v0, v3}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    int-to-long v1, p1

    invoke-virtual {v0, v3, v1, v2}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private scheduleHideTapHighlightLocked()V
    .locals 4

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleHideTapHighlightLocked()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostHideTapHighlightScheduled:Z

    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x6

    sget v2, Landroid/webkit/WebViewInputDispatcher;->PRESSED_STATE_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private scheduleHideTapHighlightLocked(I)V
    .locals 4
    .parameter "delay"

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleHideTapHighlightLocked()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostHideTapHighlightScheduled:Z

    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x6

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private scheduleLongPressLocked()V
    .locals 4

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleLongPressLocked()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLongPressScheduled:Z

    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x3

    sget v2, Landroid/webkit/WebViewInputDispatcher;->LONG_PRESS_TIMEOUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private scheduleShowTapHighlightLocked()V
    .locals 4

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleShowTapHighlightLocked()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostShowTapHighlightScheduled:Z

    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x5

    sget v2, Landroid/webkit/WebViewInputDispatcher;->TAP_TIMEOUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private scheduleUiDispatchLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiDispatchScheduled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    iput-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mUiDispatchScheduled:Z

    :cond_0
    return-void
.end method

.method private scheduleWebKitDispatchLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchScheduled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitHandler:Landroid/webkit/WebViewInputDispatcher$WebKitHandler;

    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitHandler:Landroid/webkit/WebViewInputDispatcher$WebKitHandler;

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewInputDispatcher$WebKitHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewInputDispatcher$WebKitHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    iput-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchScheduled:Z

    :cond_0
    return-void
.end method

.method private shouldSkipWebKit(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Z
    .locals 4
    .parameter "d"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    :cond_0
    :goto_0
    :pswitch_1
    return v0

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

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mPostSendTouchEventsToWebKit:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mPostDoNotSendTouchEventsToWebKitUntilNextGesture:Z

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

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
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleHideTapHighlightLocked()V

    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleShowTapHighlightLocked()V

    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->showTapHighlight(Z)V

    return-void
.end method

.method private skipWebKitEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V
    .locals 1
    .parameter "d"

    .prologue
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    iget v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->recycleDispatchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->enqueueUiEventUnbatchedLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    goto :goto_0
.end method

.method private unscheduleClickLocked()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostClickScheduled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostClickScheduled:Z

    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private unscheduleHideTapHighlightLocked()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostHideTapHighlightScheduled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostHideTapHighlightScheduled:Z

    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private unscheduleLongPressLocked()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLongPressScheduled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLongPressScheduled:Z

    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private unscheduleShowTapHighlightLocked()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostShowTapHighlightScheduled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostShowTapHighlightScheduled:Z

    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private updateStateTrackersLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "d"
    .parameter "event"

    .prologue
    const/4 v1, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v2, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    iput v2, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitXOffset:I

    iget v2, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    iput v2, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitYOffset:I

    iget v2, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    iput v2, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitScale:F

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .local v0, action:I
    :goto_0
    iget v2, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    if-eqz v2, :cond_2

    :cond_0
    :goto_1
    return-void

    .end local v0           #action:I
    :cond_1
    move v0, v1

    goto :goto_0

    .restart local v0       #action:I
    :cond_2
    if-eq v0, v1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v4, :cond_4

    :cond_3
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleLongPressLocked()V

    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleClickLocked()V

    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->hideTapCandidateLocked()V

    iput-boolean v3, p0, Landroid/webkit/WebViewInputDispatcher;->mIsDoubleTapCandidate:Z

    iput-boolean v3, p0, Landroid/webkit/WebViewInputDispatcher;->mIsTapCandidate:Z

    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->hideTapCandidateLocked()V

    goto :goto_1

    :cond_4
    if-nez v0, :cond_6

    invoke-direct {p0, p2}, Landroid/webkit/WebViewInputDispatcher;->checkForDoubleTapOnDownLocked(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->scheduleLongPressLocked()V

    iput-boolean v4, p0, Landroid/webkit/WebViewInputDispatcher;->mIsTapCandidate:Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Landroid/webkit/WebViewInputDispatcher;->mInitialDownX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Landroid/webkit/WebViewInputDispatcher;->mInitialDownY:F

    invoke-direct {p0, p2}, Landroid/webkit/WebViewInputDispatcher;->enqueueHitTestLocked(Landroid/view/MotionEvent;)V

    iget-boolean v1, p0, Landroid/webkit/WebViewInputDispatcher;->mIsDoubleTapCandidate:Z

    if-eqz v1, :cond_5

    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->hideTapCandidateLocked()V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->scheduleShowTapHighlightLocked()V

    goto :goto_1

    :cond_6
    if-ne v0, v4, :cond_a

    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleLongPressLocked()V

    invoke-direct {p0, p2}, Landroid/webkit/WebViewInputDispatcher;->isClickCandidateLocked(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Landroid/webkit/WebViewInputDispatcher;->mIsDoubleTapCandidate:Z

    if-eqz v1, :cond_7

    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->hideTapCandidateLocked()V

    invoke-direct {p0, p2}, Landroid/webkit/WebViewInputDispatcher;->enqueueDoubleTapLocked(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_7
    iget-boolean v1, p0, Landroid/webkit/WebViewInputDispatcher;->mHaltClickForPreventDefault:Z

    if-nez v1, :cond_8

    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->scheduleClickLocked()V

    :goto_2
    iput-boolean v3, p0, Landroid/webkit/WebViewInputDispatcher;->mHaltClickForPreventDefault:Z

    goto :goto_1

    :cond_8
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->scheduleHideTapHighlightCheckLocked()V

    goto :goto_2

    :cond_9
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->hideTapCandidateLocked()V

    goto :goto_1

    :cond_a
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p2}, Landroid/webkit/WebViewInputDispatcher;->checkForSlopLocked(Landroid/view/MotionEvent;)V

    goto :goto_1
.end method

.method private updateWebKitTimeoutLocked()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v0, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .local v0, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTimeoutScheduled:Z

    if-eqz v1, :cond_1

    iget-wide v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTimeoutTime:J

    iget-wide v3, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTimeoutScheduled:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    invoke-virtual {v1, v5}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->removeMessages(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTimeoutScheduled:Z

    :cond_2
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    iget-wide v2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    invoke-virtual {v1, v5, v2, v3}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->sendEmptyMessageAtTime(IJ)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTimeoutScheduled:Z

    iget-wide v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    iput-wide v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTimeoutTime:J

    goto :goto_0
.end method


# virtual methods
.method public dispatchUiEvents()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkit/WebViewInputDispatcher;->dispatchUiEvents(Z)V

    return-void
.end method

.method public dispatchWebKitEvents()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkit/WebViewInputDispatcher;->dispatchWebKitEvents(Z)V

    return-void
.end method

.method onPageStarted(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebViewInputDispatcher;->byPassMoveEvent:Z

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Landroid/webkit/WebViewInputDispatcher;->blacklist:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Landroid/webkit/WebViewInputDispatcher;->blacklist:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/WebViewInputDispatcher;->byPassMoveEvent:Z

    :cond_0
    return-void

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

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "event cannot be null"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    .local v7, action:I
    packed-switch v7, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v2, 0x0

    .local v2, eventType:I
    :goto_1
    iget-object v10, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v10

    move-object v1, p1

    .local v1, eventToEnqueue:Landroid/view/MotionEvent;
    if-nez v2, :cond_2

    :try_start_0
    iget-object v3, p0, Landroid/webkit/WebViewInputDispatcher;->mPostTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v3, p1}, Landroid/webkit/WebViewInputDispatcher$TouchStream;->update(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleLongPressLocked()V

    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleClickLocked()V

    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->hideTapCandidateLocked()V

    monitor-exit v10

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .end local v1           #eventToEnqueue:Landroid/view/MotionEvent;
    .end local v2           #eventType:I
    :pswitch_2
    const/4 v2, 0x2

    .restart local v2       #eventType:I
    goto :goto_1

    .end local v2           #eventType:I
    :pswitch_3
    const/4 v2, 0x1

    .restart local v2       #eventType:I
    goto :goto_1

    .restart local v1       #eventToEnqueue:Landroid/view/MotionEvent;
    :cond_1
    if-nez v7, :cond_2

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostSendTouchEventsToWebKit:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v0, v1}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostDoNotSendTouchEventsToWebKitUntilNextGesture:Z

    :cond_2
    :goto_2
    if-ne v1, p1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v1

    :cond_3
    const/4 v3, 0x0

    move-object v0, p0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v8

    .local v8, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v8, p1}, Landroid/webkit/WebViewInputDispatcher;->updateStateTrackersLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;Landroid/view/MotionEvent;)V

    invoke-direct {p0, v8}, Landroid/webkit/WebViewInputDispatcher;->enqueueEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    monitor-exit v10

    move v0, v9

    goto :goto_0

    .end local v8           #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :cond_4
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostDoNotSendTouchEventsToWebKitUntilNextGesture:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostDoNotSendTouchEventsToWebKitUntilNextGesture:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

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
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostSendTouchEventsToWebKit:Z

    if-eq v0, p1, :cond_1

    if-nez p1, :cond_0

    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->enqueueWebKitCancelTouchEventIfNeededLocked()V

    :cond_0
    iput-boolean p1, p0, Landroid/webkit/WebViewInputDispatcher;->mPostSendTouchEventsToWebKit:Z

    :cond_1
    monitor-exit v1

    return-void

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
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->handleWebKitTimeout()V

    return-void
.end method
