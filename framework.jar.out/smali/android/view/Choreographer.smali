.class public final Landroid/view/Choreographer;
.super Ljava/lang/Object;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Choreographer$CallbackQueue;,
        Landroid/view/Choreographer$CallbackRecord;,
        Landroid/view/Choreographer$FrameDisplayEventReceiver;,
        Landroid/view/Choreographer$FrameHandler;,
        Landroid/view/Choreographer$FrameCallback;
    }
.end annotation


# static fields
.field public static final CALLBACK_ANIMATION:I = 0x1

.field public static final CALLBACK_INPUT:I = 0x0

.field private static final CALLBACK_LAST:I = 0x2

.field public static final CALLBACK_TRAVERSAL:I = 0x2

.field private static final DEBUG:Z = false

.field private static final DEFAULT_FRAME_DELAY:J = 0xaL

.field private static final FRAME_CALLBACK_TOKEN:Ljava/lang/Object; = null

.field private static final MSG_DO_FRAME:I = 0x0

.field private static final MSG_DO_SCHEDULE_CALLBACK:I = 0x2

.field private static final MSG_DO_SCHEDULE_VSYNC:I = 0x1

.field private static final NANOS_PER_MS:J = 0xf4240L

#the value of this static final field might be set in the static constructor
.field private static final SKIPPED_FRAME_WARNING_LIMIT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Choreographer"

.field private static final USE_FRAME_TIME:Z

.field private static final USE_VSYNC:Z

.field private static volatile sFrameDelay:J

.field private static final sThreadInstance:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/view/Choreographer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

.field private final mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

.field private mCallbacksRunning:Z

.field private final mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

.field private mFrameIntervalNanos:J

.field private mFrameScheduled:Z

.field private final mHandler:Landroid/view/Choreographer$FrameHandler;

.field private mLastFrameTimeNanos:J

.field private final mLock:Ljava/lang/Object;

.field private final mLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 84
    const-wide/16 v0, 0xa

    sput-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    .line 87
    new-instance v0, Landroid/view/Choreographer$1;

    invoke-direct {v0}, Landroid/view/Choreographer$1;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    .line 100
    const-string v0, "debug.choreographer.vsync"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/Choreographer;->USE_VSYNC:Z

    .line 104
    const-string v0, "debug.choreographer.frametime"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/Choreographer;->USE_FRAME_TIME:Z

    .line 109
    const-string v0, "debug.choreographer.skipwarning"

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/view/Choreographer;->SKIPPED_FRAME_WARNING_LIMIT:I

    .line 119
    new-instance v0, Landroid/view/Choreographer$2;

    invoke-direct {v0}, Landroid/view/Choreographer$2;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 5
    .parameter "looper"

    .prologue
    const/4 v2, 0x0

    .line 163
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    .line 164
    iput-object p1, p0, Landroid/view/Choreographer;->mLooper:Landroid/os/Looper;

    .line 165
    new-instance v1, Landroid/view/Choreographer$FrameHandler;

    invoke-direct {v1, p0, p1}, Landroid/view/Choreographer$FrameHandler;-><init>(Landroid/view/Choreographer;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    .line 166
    sget-boolean v1, Landroid/view/Choreographer;->USE_VSYNC:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-direct {v1, p0, p1}, Landroid/view/Choreographer$FrameDisplayEventReceiver;-><init>(Landroid/view/Choreographer;Landroid/os/Looper;)V

    :goto_0
    iput-object v1, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    .line 167
    const-wide/high16 v3, -0x8000

    iput-wide v3, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    .line 168
    const v1, 0x4e6e6b28

    new-instance v3, Landroid/view/Display;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v2}, Landroid/view/Display;-><init>(ILandroid/view/CompatibilityInfoHolder;)V

    invoke-virtual {v3}, Landroid/view/Display;->getRefreshRate()F

    move-result v3

    div-float/2addr v1, v3

    float-to-long v3, v1

    iput-wide v3, p0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    .line 171
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/view/Choreographer$CallbackQueue;

    iput-object v1, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    .line 172
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 173
    iget-object v1, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    new-instance v3, Landroid/view/Choreographer$CallbackQueue;

    invoke-direct {v3, p0, v2}, Landroid/view/Choreographer$CallbackQueue;-><init>(Landroid/view/Choreographer;Landroid/view/Choreographer$1;)V

    aput-object v3, v1, v0

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    :cond_0
    move-object v1, v2

    .line 166
    goto :goto_0

    .line 175
    .restart local v0       #i:I
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Landroid/view/Choreographer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/view/Choreographer;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$300(Landroid/view/Choreographer;)Landroid/view/Choreographer$FrameHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Landroid/view/Choreographer;JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/Choreographer;->obtainCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Landroid/view/Choreographer;Landroid/view/Choreographer$CallbackRecord;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    return-void
.end method

.method public static getFrameDelay()J
    .locals 2

    .prologue
    .line 204
    sget-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    return-wide v0
.end method

.method public static getInstance()Landroid/view/Choreographer;
    .locals 1

    .prologue
    .line 185
    sget-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer;

    return-object v0
.end method

.method private isRunningOnLooperThreadLocked()Z
    .locals 2

    .prologue
    .line 598
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/view/Choreographer;->mLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private obtainCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;
    .locals 3
    .parameter "dueTime"
    .parameter "action"
    .parameter "token"

    .prologue
    const/4 v2, 0x0

    .line 602
    iget-object v0, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    .line 603
    .local v0, callback:Landroid/view/Choreographer$CallbackRecord;
    if-nez v0, :cond_0

    .line 604
    new-instance v0, Landroid/view/Choreographer$CallbackRecord;

    .end local v0           #callback:Landroid/view/Choreographer$CallbackRecord;
    invoke-direct {v0, v2}, Landroid/view/Choreographer$CallbackRecord;-><init>(Landroid/view/Choreographer$1;)V

    .line 609
    .restart local v0       #callback:Landroid/view/Choreographer$CallbackRecord;
    :goto_0
    iput-wide p1, v0, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    .line 610
    iput-object p3, v0, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    .line 611
    iput-object p4, v0, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    .line 612
    return-object v0

    .line 606
    :cond_0
    iget-object v1, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    iput-object v1, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    .line 607
    iput-object v2, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    goto :goto_0
.end method

.method private postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V
    .locals 8
    .parameter "callbackType"
    .parameter "action"
    .parameter "token"
    .parameter "delayMillis"

    .prologue
    .line 304
    iget-object v6, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 305
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 306
    .local v3, now:J
    add-long v0, v3, p4

    .line 307
    .local v0, dueTime:J
    iget-object v5, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v5, v5, p1

    invoke-virtual {v5, v0, v1, p2, p3}, Landroid/view/Choreographer$CallbackQueue;->addCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 309
    cmp-long v5, v0, v3

    if-gtz v5, :cond_0

    .line 310
    invoke-direct {p0, v3, v4}, Landroid/view/Choreographer;->scheduleFrameLocked(J)V

    .line 317
    :goto_0
    monitor-exit v6

    .line 318
    return-void

    .line 312
    :cond_0
    iget-object v5, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v7, 0x2

    invoke-virtual {v5, v7, p2}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 313
    .local v2, msg:Landroid/os/Message;
    iput p1, v2, Landroid/os/Message;->arg1:I

    .line 314
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 315
    iget-object v5, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v5, v2, v0, v1}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0

    .line 317
    .end local v0           #dueTime:J
    .end local v2           #msg:Landroid/os/Message;
    .end local v3           #now:J
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V
    .locals 1
    .parameter "callback"

    .prologue
    const/4 v0, 0x0

    .line 616
    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    .line 617
    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    .line 618
    iget-object v0, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 619
    iput-object p1, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    .line 620
    return-void
.end method

.method private removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .parameter "callbackType"
    .parameter "action"
    .parameter "token"

    .prologue
    .line 347
    iget-object v1, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 348
    :try_start_0
    iget-object v0, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Landroid/view/Choreographer$CallbackQueue;->removeCallbacksLocked(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 349
    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    .line 350
    iget-object v0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p2}, Landroid/view/Choreographer$FrameHandler;->removeMessages(ILjava/lang/Object;)V

    .line 352
    :cond_0
    monitor-exit v1

    .line 353
    return-void

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private scheduleFrameLocked(J)V
    .locals 8
    .parameter "now"

    .prologue
    const/4 v7, 0x1

    .line 455
    iget-boolean v3, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-nez v3, :cond_0

    .line 456
    iput-boolean v7, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    .line 457
    sget-boolean v3, Landroid/view/Choreographer;->USE_VSYNC:Z

    if-eqz v3, :cond_2

    .line 465
    invoke-direct {p0}, Landroid/view/Choreographer;->isRunningOnLooperThreadLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 466
    invoke-direct {p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    iget-object v3, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v3, v7}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 469
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0, v7}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 470
    iget-object v3, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v3, v0}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    .line 473
    .end local v0           #msg:Landroid/os/Message;
    :cond_2
    iget-wide v3, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    sget-wide v5, Landroid/view/Choreographer;->sFrameDelay:J

    add-long/2addr v3, v5

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 478
    .local v1, nextFrameTime:J
    iget-object v3, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 479
    .restart local v0       #msg:Landroid/os/Message;
    invoke-virtual {v0, v7}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 480
    iget-object v3, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v3, v0, v1, v2}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private scheduleVsyncLocked()V
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-virtual {v0}, Landroid/view/Choreographer$FrameDisplayEventReceiver;->scheduleVsync()V

    .line 595
    return-void
.end method

.method public static setFrameDelay(J)V
    .locals 0
    .parameter "frameDelay"

    .prologue
    .line 223
    sput-wide p0, Landroid/view/Choreographer;->sFrameDelay:J

    .line 224
    return-void
.end method

.method public static subtractFrameDelay(J)J
    .locals 4
    .parameter "delayMillis"

    .prologue
    .line 249
    sget-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    .line 250
    .local v0, frameDelay:J
    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2

    :cond_0
    sub-long v2, p0, v0

    goto :goto_0
.end method


# virtual methods
.method doCallbacks(IJ)V
    .locals 8
    .parameter "callbackType"
    .parameter "frameTimeNanos"

    .prologue
    .line 542
    iget-object v6, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 546
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 547
    .local v3, now:J
    iget-object v5, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v5, v5, p1

    invoke-virtual {v5, v3, v4}, Landroid/view/Choreographer$CallbackQueue;->extractDueCallbacksLocked(J)Landroid/view/Choreographer$CallbackRecord;

    move-result-object v1

    .line 548
    .local v1, callbacks:Landroid/view/Choreographer$CallbackRecord;
    if-nez v1, :cond_0

    .line 549
    monitor-exit v6

    .line 572
    :goto_0
    return-void

    .line 551
    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/view/Choreographer;->mCallbacksRunning:Z

    .line 552
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    move-object v0, v1

    .local v0, c:Landroid/view/Choreographer$CallbackRecord;
    :goto_1
    if-eqz v0, :cond_2

    .line 560
    :try_start_1
    invoke-virtual {v0, p2, p3}, Landroid/view/Choreographer$CallbackRecord;->run(J)V

    .line 554
    iget-object v0, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 552
    .end local v0           #c:Landroid/view/Choreographer$CallbackRecord;
    .end local v1           #callbacks:Landroid/view/Choreographer$CallbackRecord;
    .end local v3           #now:J
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 563
    .restart local v0       #c:Landroid/view/Choreographer$CallbackRecord;
    .restart local v1       #callbacks:Landroid/view/Choreographer$CallbackRecord;
    .restart local v3       #now:J
    :catchall_1
    move-exception v5

    iget-object v6, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 564
    const/4 v7, 0x0

    :try_start_3
    iput-boolean v7, p0, Landroid/view/Choreographer;->mCallbacksRunning:Z

    .line 566
    :cond_1
    iget-object v2, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 567
    .local v2, next:Landroid/view/Choreographer$CallbackRecord;
    invoke-direct {p0, v1}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    .line 568
    move-object v1, v2

    .line 569
    if-nez v1, :cond_1

    .line 570
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 563
    throw v5

    .line 570
    .end local v2           #next:Landroid/view/Choreographer$CallbackRecord;
    :catchall_2
    move-exception v5

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v5

    .line 563
    :cond_2
    iget-object v6, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 564
    const/4 v5, 0x0

    :try_start_5
    iput-boolean v5, p0, Landroid/view/Choreographer;->mCallbacksRunning:Z

    .line 566
    :cond_3
    iget-object v2, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 567
    .restart local v2       #next:Landroid/view/Choreographer$CallbackRecord;
    invoke-direct {p0, v1}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    .line 568
    move-object v1, v2

    .line 569
    if-nez v1, :cond_3

    .line 570
    monitor-exit v6

    goto :goto_0

    .end local v2           #next:Landroid/view/Choreographer$CallbackRecord;
    :catchall_3
    move-exception v5

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v5
.end method

.method doFrame(JI)V
    .locals 24
    .parameter "frameTimeNanos"
    .parameter "frame"

    .prologue
    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 488
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/Choreographer;->mFrameScheduled:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 489
    monitor-exit v21

    .line 538
    :goto_0
    return-void

    .line 492
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 493
    .local v10, startNanos:J
    sub-long v4, v10, p1

    .line 494
    .local v4, jitterNanos:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    move-wide/from16 v22, v0

    cmp-long v20, v4, v22

    if-ltz v20, :cond_2

    .line 495
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    move-wide/from16 v22, v0

    div-long v8, v4, v22

    .line 496
    .local v8, skippedFrames:J
    sget v20, Landroid/view/Choreographer;->SKIPPED_FRAME_WARNING_LIMIT:I

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v22, v0

    cmp-long v20, v8, v22

    if-ltz v20, :cond_1

    .line 497
    const-string v20, "Choreographer"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Skipped "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " frames!  "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "The application may be doing too much work on its main thread."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    move-wide/from16 v22, v0

    rem-long v6, v4, v22

    .line 508
    .local v6, lastFrameOffset:J
    sub-long p1, v10, v6

    .line 511
    .end local v6           #lastFrameOffset:J
    .end local v8           #skippedFrames:J
    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    move-wide/from16 v22, v0

    cmp-long v20, p1, v22

    if-gez v20, :cond_3

    .line 516
    invoke-direct/range {p0 .. p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    .line 517
    monitor-exit v21

    goto :goto_0

    .line 522
    .end local v4           #jitterNanos:J
    .end local v10           #startNanos:J
    :catchall_0
    move-exception v20

    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v20

    .line 520
    .restart local v4       #jitterNanos:J
    .restart local v10       #startNanos:J
    :cond_3
    const/16 v20, 0x0

    :try_start_1
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/Choreographer;->mFrameScheduled:Z

    .line 521
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    .line 522
    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 524
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    .line 525
    .local v16, tempS:J
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-wide/from16 v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    .line 526
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 527
    .local v14, tempC:J
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-wide/from16 v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    .line 528
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 529
    .local v12, tempA:J
    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-wide/from16 v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    .line 530
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    .line 538
    .local v18, tempT:J
    goto/16 :goto_0
.end method

.method doScheduleCallback(I)V
    .locals 4
    .parameter "callbackType"

    .prologue
    .line 583
    iget-object v3, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 584
    :try_start_0
    iget-boolean v2, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-nez v2, :cond_0

    .line 585
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 586
    .local v0, now:J
    iget-object v2, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0, v1}, Landroid/view/Choreographer$CallbackQueue;->hasDueCallbacksLocked(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 587
    invoke-direct {p0, v0, v1}, Landroid/view/Choreographer;->scheduleFrameLocked(J)V

    .line 590
    .end local v0           #now:J
    :cond_0
    monitor-exit v3

    .line 591
    return-void

    .line 590
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method doScheduleVsync()V
    .locals 2

    .prologue
    .line 575
    iget-object v1, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 576
    :try_start_0
    iget-boolean v0, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-eqz v0, :cond_0

    .line 577
    invoke-direct {p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    .line 579
    :cond_0
    monitor-exit v1

    .line 580
    return-void

    .line 579
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFrameTime()J
    .locals 4

    .prologue
    .line 433
    invoke-virtual {p0}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getFrameTimeNanos()J
    .locals 3

    .prologue
    .line 445
    iget-object v2, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 446
    :try_start_0
    iget-boolean v0, p0, Landroid/view/Choreographer;->mCallbacksRunning:Z

    if-nez v0, :cond_0

    .line 447
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method must only be called as part of a callback while a frame is in progress."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 450
    :cond_0
    :try_start_1
    sget-boolean v0, Landroid/view/Choreographer;->USE_FRAME_TIME:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    :goto_0
    monitor-exit v2

    return-wide v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0
.end method

.method public postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V
    .locals 6
    .parameter "callbackType"
    .parameter "action"
    .parameter "token"

    .prologue
    .line 267
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    .line 268
    return-void
.end method

.method public postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V
    .locals 2
    .parameter "callbackType"
    .parameter "action"
    .parameter "token"
    .parameter "delayMillis"

    .prologue
    .line 286
    if-nez p2, :cond_0

    .line 287
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "action must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_0
    if-ltz p1, :cond_1

    const/4 v0, 0x2

    if-le p1, v0, :cond_2

    .line 290
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callbackType is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_2
    invoke-direct/range {p0 .. p5}, Landroid/view/Choreographer;->postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V

    .line 294
    return-void
.end method

.method public postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 367
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    .line 368
    return-void
.end method

.method public postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V
    .locals 6
    .parameter "callback"
    .parameter "delayMillis"

    .prologue
    .line 383
    if-nez p1, :cond_0

    .line 384
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_0
    const/4 v1, 0x1

    sget-object v3, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V

    .line 389
    return-void
.end method

.method public removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V
    .locals 2
    .parameter "callbackType"
    .parameter "action"
    .parameter "token"

    .prologue
    .line 334
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 335
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callbackType is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroid/view/Choreographer;->removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 339
    return-void
.end method

.method public removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 400
    if-nez p1, :cond_0

    .line 401
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_0
    const/4 v0, 0x1

    sget-object v1, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    invoke-direct {p0, v0, p1, v1}, Landroid/view/Choreographer;->removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 405
    return-void
.end method
