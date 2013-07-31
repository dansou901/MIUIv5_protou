.class public Lmiui/maml/RendererController;
.super Ljava/lang/Object;
.source "RendererController.java"

# interfaces
.implements Lmiui/maml/FramerateTokenList$FramerateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/RendererController$Listener;,
        Lmiui/maml/RendererController$IRenderable;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RendererController"

.field private static final MAX_MSG_COUNT:I = 0x5


# instance fields
.field private mCurFramerate:F

.field private mFrameTime:I

.field private mFramerateTokenList:Lmiui/maml/FramerateTokenList;

.field private mInited:Z

.field private mLastUpdateSystemTime:J

.field private mListener:Lmiui/maml/RendererController$Listener;

.field private mLock:Ljava/lang/Object;

.field private mMsgQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mPaused:Z

.field private mPendingRender:Z

.field private mRenderThread:Lmiui/maml/RenderThread;

.field private mSelfPaused:Z

.field private mShouldUpdate:Z

.field private mTouchX:F

.field private mTouchY:F


# direct methods
.method public constructor <init>(Lmiui/maml/RendererController$Listener;)V
    .locals 2
    .parameter "l"

    .prologue
    const/high16 v1, -0x4080

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lmiui/maml/FramerateTokenList;

    invoke-direct {v0}, Lmiui/maml/FramerateTokenList;-><init>()V

    iput-object v0, p0, Lmiui/maml/RendererController;->mFramerateTokenList:Lmiui/maml/FramerateTokenList;

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/RendererController;->mLock:Ljava/lang/Object;

    .line 56
    const v0, 0x7fffffff

    iput v0, p0, Lmiui/maml/RendererController;->mFrameTime:I

    .line 62
    iput v1, p0, Lmiui/maml/RendererController;->mTouchX:F

    .line 64
    iput v1, p0, Lmiui/maml/RendererController;->mTouchY:F

    .line 67
    invoke-virtual {p0, p1}, Lmiui/maml/RendererController;->setListener(Lmiui/maml/RendererController$Listener;)V

    .line 68
    new-instance v0, Lmiui/maml/FramerateTokenList;

    invoke-direct {v0, p0}, Lmiui/maml/FramerateTokenList;-><init>(Lmiui/maml/FramerateTokenList$FramerateChangeListener;)V

    iput-object v0, p0, Lmiui/maml/RendererController;->mFramerateTokenList:Lmiui/maml/FramerateTokenList;

    .line 69
    return-void
.end method


# virtual methods
.method public createToken(Ljava/lang/String;)Lmiui/maml/FramerateTokenList$FramerateToken;
    .locals 1
    .parameter "name"

    .prologue
    .line 88
    iget-object v0, p0, Lmiui/maml/RendererController;->mFramerateTokenList:Lmiui/maml/FramerateTokenList;

    invoke-virtual {v0, p1}, Lmiui/maml/FramerateTokenList;->createToken(Ljava/lang/String;)Lmiui/maml/FramerateTokenList$FramerateToken;

    move-result-object v0

    return-object v0
.end method

.method public doRender()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    if-eqz v0, :cond_0

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RendererController;->mPendingRender:Z

    .line 174
    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    invoke-interface {v0}, Lmiui/maml/RendererController$Listener;->doRender()V

    .line 176
    :cond_0
    return-void
.end method

.method public doneRender()V
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/RendererController;->mPendingRender:Z

    .line 241
    iget-object v0, p0, Lmiui/maml/RendererController;->mRenderThread:Lmiui/maml/RenderThread;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lmiui/maml/RendererController;->mRenderThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0}, Lmiui/maml/RenderThread;->signal()V

    .line 243
    :cond_0
    return-void
.end method

.method public declared-synchronized finish()V
    .locals 3

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lmiui/maml/RendererController;->mInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 114
    :goto_0
    monitor-exit p0

    return-void

    .line 105
    :cond_0
    :try_start_1
    iget-object v1, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 107
    :try_start_2
    iget-object v1, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    invoke-interface {v1}, Lmiui/maml/RendererController$Listener;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 113
    :cond_1
    :goto_1
    const/4 v1, 0x0

    :try_start_3
    iput-boolean v1, p0, Lmiui/maml/RendererController;->mInited:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    const-string v1, "RendererController"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getCurFramerate()F
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lmiui/maml/RendererController;->mCurFramerate:F

    return v0
.end method

.method public getFrameTime()I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lmiui/maml/RendererController;->mFrameTime:I

    return v0
.end method

.method public getFramerate()F
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lmiui/maml/RendererController;->mFramerateTokenList:Lmiui/maml/FramerateTokenList;

    invoke-virtual {v0}, Lmiui/maml/FramerateTokenList;->getFramerate()F

    move-result v0

    return v0
.end method

.method public getLastUpdateTime()J
    .locals 2

    .prologue
    .line 183
    iget-wide v0, p0, Lmiui/maml/RendererController;->mLastUpdateSystemTime:J

    return-wide v0
.end method

.method public declared-synchronized getMessage()Landroid/view/MotionEvent;
    .locals 1

    .prologue
    .line 280
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasInited()Z
    .locals 1

    .prologue
    .line 306
    iget-boolean v0, p0, Lmiui/maml/RendererController;->mInited:Z

    return v0
.end method

.method public declared-synchronized hasMessage()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 276
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init()V
    .locals 3

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lmiui/maml/RendererController;->mInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 129
    :goto_0
    monitor-exit p0

    return-void

    .line 120
    :cond_0
    :try_start_1
    iget-object v1, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 122
    :try_start_2
    iget-object v1, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    invoke-interface {v1}, Lmiui/maml/RendererController$Listener;->init()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 128
    :cond_1
    :goto_1
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lmiui/maml/RendererController;->mInited:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    const-string v1, "RendererController"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public isSelfPaused()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lmiui/maml/RendererController;->mSelfPaused:Z

    return v0
.end method

.method public onFrameRateChage(FF)V
    .locals 1
    .parameter "old"
    .parameter "cur"

    .prologue
    .line 301
    iget-object v0, p0, Lmiui/maml/RendererController;->mRenderThread:Lmiui/maml/RenderThread;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    .line 302
    iget-object v0, p0, Lmiui/maml/RendererController;->mRenderThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0}, Lmiui/maml/RenderThread;->signal()V

    .line 303
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 270
    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    invoke-interface {v0, p1}, Lmiui/maml/RendererController$Listener;->onTouch(Landroid/view/MotionEvent;)V

    .line 273
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 133
    iget-boolean v0, p0, Lmiui/maml/RendererController;->mInited:Z

    if-nez v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v1, p0, Lmiui/maml/RendererController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 137
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lmiui/maml/RendererController;->mPaused:Z

    .line 138
    iget-boolean v0, p0, Lmiui/maml/RendererController;->mSelfPaused:Z

    if-nez v0, :cond_1

    .line 139
    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    invoke-interface {v0}, Lmiui/maml/RendererController$Listener;->pause()V

    .line 143
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/RendererController;->mPendingRender:Z

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public pendingRender()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lmiui/maml/RendererController;->mPendingRender:Z

    return v0
.end method

.method public declared-synchronized postMessage(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 284
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    .line 287
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lmiui/maml/RendererController;->mTouchX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lmiui/maml/RendererController;->mTouchY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 288
    :cond_1
    iget-object v0, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 289
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lmiui/maml/RendererController;->mTouchX:F

    .line 290
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lmiui/maml/RendererController;->mTouchY:F

    .line 292
    :cond_2
    iget-object v0, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_3

    .line 293
    iget-object v0, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 295
    :cond_3
    iget-object v0, p0, Lmiui/maml/RendererController;->mRenderThread:Lmiui/maml/RenderThread;

    if-eqz v0, :cond_4

    .line 296
    iget-object v0, p0, Lmiui/maml/RendererController;->mRenderThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0}, Lmiui/maml/RenderThread;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    :cond_4
    monitor-exit p0

    return-void

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requestUpdate()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RendererController;->mShouldUpdate:Z

    .line 97
    iget-object v0, p0, Lmiui/maml/RendererController;->mRenderThread:Lmiui/maml/RenderThread;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lmiui/maml/RendererController;->mRenderThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0}, Lmiui/maml/RenderThread;->signal()V

    .line 99
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 149
    iget-boolean v0, p0, Lmiui/maml/RendererController;->mInited:Z

    if-nez v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v1, p0, Lmiui/maml/RendererController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 153
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lmiui/maml/RendererController;->mPaused:Z

    .line 154
    iget-boolean v0, p0, Lmiui/maml/RendererController;->mSelfPaused:Z

    if-nez v0, :cond_1

    .line 155
    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    invoke-interface {v0}, Lmiui/maml/RendererController$Listener;->resume()V

    .line 159
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    iput-boolean v2, p0, Lmiui/maml/RendererController;->mPendingRender:Z

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public selfPause()V
    .locals 2

    .prologue
    .line 191
    iget-boolean v0, p0, Lmiui/maml/RendererController;->mInited:Z

    if-nez v0, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-boolean v0, p0, Lmiui/maml/RendererController;->mSelfPaused:Z

    if-nez v0, :cond_0

    .line 196
    iget-object v1, p0, Lmiui/maml/RendererController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 197
    :try_start_0
    iget-boolean v0, p0, Lmiui/maml/RendererController;->mSelfPaused:Z

    if-eqz v0, :cond_2

    .line 198
    monitor-exit v1

    goto :goto_0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 199
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lmiui/maml/RendererController;->mSelfPaused:Z

    .line 200
    iget-boolean v0, p0, Lmiui/maml/RendererController;->mPaused:Z

    if-nez v0, :cond_3

    .line 201
    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    if-eqz v0, :cond_3

    .line 202
    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    invoke-interface {v0}, Lmiui/maml/RendererController$Listener;->pause()V

    .line 205
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/RendererController;->mPendingRender:Z

    goto :goto_0
.end method

.method public selfResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 210
    iget-boolean v0, p0, Lmiui/maml/RendererController;->mInited:Z

    if-nez v0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-boolean v0, p0, Lmiui/maml/RendererController;->mSelfPaused:Z

    if-eqz v0, :cond_0

    .line 215
    iget-object v1, p0, Lmiui/maml/RendererController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 216
    :try_start_0
    iget-boolean v0, p0, Lmiui/maml/RendererController;->mSelfPaused:Z

    if-nez v0, :cond_2

    .line 217
    monitor-exit v1

    goto :goto_0

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 218
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lmiui/maml/RendererController;->mSelfPaused:Z

    .line 219
    iget-boolean v0, p0, Lmiui/maml/RendererController;->mPaused:Z

    if-nez v0, :cond_3

    .line 220
    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    if-eqz v0, :cond_3

    .line 221
    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    invoke-interface {v0}, Lmiui/maml/RendererController$Listener;->resume()V

    .line 224
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    iget-object v0, p0, Lmiui/maml/RendererController;->mRenderThread:Lmiui/maml/RenderThread;

    if-eqz v0, :cond_4

    .line 227
    iget-object v0, p0, Lmiui/maml/RendererController;->mRenderThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0}, Lmiui/maml/RenderThread;->signal()V

    .line 230
    iget-object v0, p0, Lmiui/maml/RendererController;->mRenderThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0, v2}, Lmiui/maml/RenderThread;->setPaused(Z)V

    .line 232
    :cond_4
    iput-boolean v2, p0, Lmiui/maml/RendererController;->mPendingRender:Z

    goto :goto_0
.end method

.method public setCurFramerate(F)V
    .locals 0
    .parameter "f"

    .prologue
    .line 84
    iput p1, p0, Lmiui/maml/RendererController;->mCurFramerate:F

    .line 85
    return-void
.end method

.method public setFrameTime(I)V
    .locals 0
    .parameter "frameTime"

    .prologue
    .line 250
    iput p1, p0, Lmiui/maml/RendererController;->mFrameTime:I

    .line 251
    return-void
.end method

.method public setLastUpdateTime(J)V
    .locals 0
    .parameter "t"

    .prologue
    .line 187
    iput-wide p1, p0, Lmiui/maml/RendererController;->mLastUpdateSystemTime:J

    .line 188
    return-void
.end method

.method public setListener(Lmiui/maml/RendererController$Listener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 72
    iput-object p1, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    .line 73
    return-void
.end method

.method public setRenderThread(Lmiui/maml/RenderThread;)V
    .locals 0
    .parameter "renderThread"

    .prologue
    .line 246
    iput-object p1, p0, Lmiui/maml/RendererController;->mRenderThread:Lmiui/maml/RenderThread;

    .line 247
    return-void
.end method

.method public shouldUpdate()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lmiui/maml/RendererController;->mShouldUpdate:Z

    return v0
.end method

.method public tick(J)V
    .locals 3
    .parameter "currentTime"

    .prologue
    .line 258
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/maml/RendererController;->mShouldUpdate:Z

    .line 259
    iget-object v1, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    if-eqz v1, :cond_0

    .line 261
    :try_start_0
    iget-object v1, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    invoke-interface {v1, p1, p2}, Lmiui/maml/RendererController$Listener;->tick(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 264
    const-string v1, "RendererController"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateFramerate(J)J
    .locals 2
    .parameter "time"

    .prologue
    .line 165
    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    invoke-interface {v0, p1, p2}, Lmiui/maml/RendererController$Listener;->updateFramerate(J)J

    move-result-wide v0

    .line 168
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method
