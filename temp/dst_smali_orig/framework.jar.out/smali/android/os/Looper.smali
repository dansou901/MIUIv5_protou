.class public Landroid/os/Looper;
.super Ljava/lang/Object;
.source "Looper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Looper$MessageHistoryList;,
        Landroid/os/Looper$MessageHistory;
    }
.end annotation


# static fields
.field private static IS_USERDEBUG:Z = false

.field static final STRICT_MODE_ALL:I = 0x3

.field static final STRICT_MODE_HTC_AND_GMS:I = 0x2

.field static final STRICT_MODE_HTC_ONLY:I = 0x1

.field static final STRICT_MODE_OFF:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Looper"

.field private static sMainLooper:Landroid/os/Looper;

.field static final sThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field

.field private static sWindowManager:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Landroid/view/IWindowManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final threadHandler:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLogging:Landroid/util/Printer;

.field private mMessages:Landroid/os/Looper$MessageHistoryList;

.field final mQueue:Landroid/os/MessageQueue;

.field volatile mRun:Z

.field final mThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/Looper;->IS_USERDEBUG:Z

    new-instance v0, Landroid/os/Looper$1;

    invoke-direct {v0}, Landroid/os/Looper$1;-><init>()V

    sput-object v0, Landroid/os/Looper;->sWindowManager:Landroid/util/Singleton;

    new-instance v0, Landroid/os/Looper$2;

    invoke-direct {v0}, Landroid/os/Looper$2;-><init>()V

    sput-object v0, Landroid/os/Looper;->threadHandler:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 3
    .parameter "quitAllowed"

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/os/Looper;->mMessages:Landroid/os/Looper$MessageHistoryList;

    new-instance v0, Landroid/os/MessageQueue;

    invoke-direct {v0, p1}, Landroid/os/MessageQueue;-><init>(Z)V

    iput-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/Looper;->mRun:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/os/Looper$MessageHistoryList;

    invoke-direct {v0, v2}, Landroid/os/Looper$MessageHistoryList;-><init>(Landroid/os/Looper$1;)V

    iput-object v0, p0, Landroid/os/Looper;->mMessages:Landroid/os/Looper$MessageHistoryList;

    :cond_0
    return-void
.end method

.method public static getMainLooper()Landroid/os/Looper;
    .locals 2

    .prologue
    const-class v1, Landroid/os/Looper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/os/Looper;->sMainLooper:Landroid/os/Looper;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static loop()V
    .locals 26

    .prologue
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v12

    .local v12, me:Landroid/os/Looper;
    if-nez v12, :cond_0

    new-instance v21, Ljava/lang/RuntimeException;

    const-string v22, "No Looper; Looper.prepare() wasn\'t called on this thread."

    invoke-direct/range {v21 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_0
    iget-object v0, v12, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    move-object/from16 v17, v0

    .local v17, queue:Landroid/os/MessageQueue;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, ident:J
    :goto_0
    invoke-virtual/range {v17 .. v17}, Landroid/os/MessageQueue;->next()Landroid/os/Message;

    move-result-object v13

    .local v13, msg:Landroid/os/Message;
    if-nez v13, :cond_1

    return-void

    :cond_1
    iget-object v11, v12, Landroid/os/Looper;->mLogging:Landroid/util/Printer;

    .local v11, logging:Landroid/util/Printer;
    if-eqz v11, :cond_2

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, ">>>>> Dispatching to "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v13, Landroid/os/Message;->target:Landroid/os/Handler;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v13, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v13, Landroid/os/Message;->what:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfilePerformance()I

    move-result v16

    .local v16, performanceFlag:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v19

    .local v19, startTime:J
    const/4 v5, 0x0

    .local v5, headMsg:Landroid/os/Looper$MessageHistory;
    if-lez v16, :cond_3

    iget-object v0, v12, Landroid/os/Looper;->mMessages:Landroid/os/Looper$MessageHistoryList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    iget-object v0, v12, Landroid/os/Looper;->mMessages:Landroid/os/Looper$MessageHistoryList;

    move-object/from16 v22, v0

    monitor-enter v22

    :try_start_0
    iget-object v0, v12, Landroid/os/Looper;->mMessages:Landroid/os/Looper$MessageHistoryList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-wide/from16 v1, v19

    invoke-virtual {v0, v13, v1, v2}, Landroid/os/Looper$MessageHistoryList;->add(Landroid/os/Message;J)Landroid/os/Looper$MessageHistory;

    move-result-object v5

    monitor-exit v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    iget-object v0, v13, Landroid/os/Message;->target:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    iget-object v0, v12, Landroid/os/Looper;->mMessages:Landroid/os/Looper$MessageHistoryList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .local v3, endTime:J
    sub-long v8, v3, v19

    .local v8, lastTime:J
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileUIMessageLimitation()I

    move-result v10

    .local v10, limitationTime:I
    const/16 v18, 0x0

    .local v18, showLog:Z
    sget-boolean v21, Landroid/os/Looper;->IS_USERDEBUG:Z

    if-eqz v21, :cond_4

    int-to-long v0, v10

    move-wide/from16 v21, v0

    cmp-long v21, v8, v21

    if-lez v21, :cond_4

    invoke-static {}, Lcom/htc/htcjavaflag/HtcUtility;->isTopApp()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-static {}, Landroid/os/Looper;->showMessageHandleViolation()V

    const/16 v18, 0x1

    :cond_4
    if-lez v16, :cond_6

    const-wide/16 v21, 0x3e8

    cmp-long v21, v8, v21

    if-lez v21, :cond_5

    invoke-static {}, Lcom/htc/htcjavaflag/HtcUtility;->isTopApp()Z

    move-result v21

    if-eqz v21, :cond_5

    const/16 v18, 0x1

    :cond_5
    iget-object v0, v12, Landroid/os/Looper;->mMessages:Landroid/os/Looper$MessageHistoryList;

    move-object/from16 v22, v0

    monitor-enter v22

    :try_start_1
    iput-wide v8, v5, Landroid/os/Looper$MessageHistory;->takenTime:J

    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_6
    if-eqz v18, :cond_7

    const-string v22, "Performance"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "More than "

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-wide/16 v24, 0x3e8

    cmp-long v21, v8, v24

    if-lez v21, :cond_a

    const-string v21, "1s"

    :goto_1
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, " to handle "

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v13, Landroid/os/Message;->target:Landroid/os/Handler;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, " "

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v13, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, ": "

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v13, Landroid/os/Message;->what:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, ", "

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, "ms, start="

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3           #endTime:J
    .end local v8           #lastTime:J
    .end local v10           #limitationTime:I
    .end local v18           #showLog:Z
    :cond_7
    if-eqz v11, :cond_8

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "<<<<< Finished to "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v13, Landroid/os/Message;->target:Landroid/os/Handler;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v13, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .local v14, newIdent:J
    cmp-long v21, v6, v14

    if-eqz v21, :cond_9

    const-string v21, "Looper"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Thread identity changed from 0x"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " to 0x"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v14, v15}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " while dispatching to "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v13, Landroid/os/Message;->target:Landroid/os/Handler;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v13, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " what="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v13, Landroid/os/Message;->what:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-virtual {v13}, Landroid/os/Message;->recycle()V

    goto/16 :goto_0

    .end local v14           #newIdent:J
    :catchall_0
    move-exception v21

    :try_start_2
    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v21

    .restart local v3       #endTime:J
    .restart local v8       #lastTime:J
    .restart local v10       #limitationTime:I
    .restart local v18       #showLog:Z
    :catchall_1
    move-exception v21

    :try_start_3
    monitor-exit v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v21

    :cond_a
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v24, "ms"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1
.end method

.method public static myLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    sget-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    return-object v0
.end method

.method public static myQueue()Landroid/os/MessageQueue;
    .locals 1

    .prologue
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v0, v0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    return-object v0
.end method

.method public static prepare()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/Looper;->prepare(Z)V

    return-void
.end method

.method private static prepare(Z)V
    .locals 2
    .parameter "quitAllowed"

    .prologue
    sget-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Only one Looper may be created per thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    new-instance v1, Landroid/os/Looper;

    invoke-direct {v1, p0}, Landroid/os/Looper;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static prepareMainLooper()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Looper;->prepare(Z)V

    const-class v1, Landroid/os/Looper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/os/Looper;->sMainLooper:Landroid/os/Looper;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "The main Looper has already been prepared."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    sput-object v0, Landroid/os/Looper;->sMainLooper:Landroid/os/Looper;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public static prepareWithMessageHistory()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/os/Looper;->prepare(Z)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, me:Landroid/os/Looper;
    iget-object v1, v0, Landroid/os/Looper;->mMessages:Landroid/os/Looper$MessageHistoryList;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Looper$MessageHistoryList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/os/Looper$MessageHistoryList;-><init>(Landroid/os/Looper$1;)V

    iput-object v1, v0, Landroid/os/Looper;->mMessages:Landroid/os/Looper$MessageHistoryList;

    :cond_0
    return-void
.end method

.method private static showMessageHandleViolation()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    sget-boolean v3, Landroid/os/Looper;->IS_USERDEBUG:Z

    if-nez v3, :cond_1

    .local v0, doFlashes:Z
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .end local v0           #doFlashes:Z
    :cond_1
    const-string v3, "persist.sys.strictmode.visual"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .restart local v0       #doFlashes:Z
    if-eqz v0, :cond_0

    const-string v3, "persist.sys.strictmode.profile"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .local v1, strictmodeProfile:I
    packed-switch v1, :pswitch_data_0

    :cond_2
    sget-object v3, Landroid/os/Looper;->sWindowManager:Landroid/util/Singleton;

    invoke-virtual {v3}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/IWindowManager;

    .local v2, windowManager:Landroid/view/IWindowManager;
    if-eqz v2, :cond_3

    const/4 v3, 0x1

    :try_start_0
    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->showStrictModeViolation(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    sget-object v3, Landroid/os/Looper;->threadHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    new-instance v4, Landroid/os/Looper$3;

    invoke-direct {v4, v2}, Landroid/os/Looper$3;-><init>(Landroid/view/IWindowManager;)V

    const-wide/16 v5, 0x32

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .end local v2           #windowManager:Landroid/view/IWindowManager;
    :pswitch_1
    invoke-static {}, Lcom/htc/htcjavaflag/HtcUtility;->isHtcApp()Z

    move-result v3

    if-eqz v3, :cond_0

    :pswitch_2
    invoke-static {}, Lcom/htc/htcjavaflag/HtcUtility;->isHtcApp()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/htc/htcjavaflag/HtcUtility;->isGmsApp()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .restart local v2       #windowManager:Landroid/view/IWindowManager;
    :catch_0
    move-exception v3

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 15
    .parameter "pw"
    .parameter "prefix"

    .prologue
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfilePerformance()I

    move-result v9

    if-lez v9, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Dump looper, process: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Process;->myProcessName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "===== Message History (Most recent to least recent) ====="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v9, p0, Landroid/os/Looper;->mMessages:Landroid/os/Looper$MessageHistoryList;

    if-eqz v9, :cond_2

    iget-object v10, p0, Landroid/os/Looper;->mMessages:Landroid/os/Looper$MessageHistoryList;

    monitor-enter v10

    :try_start_0
    iget-object v9, p0, Landroid/os/Looper;->mMessages:Landroid/os/Looper$MessageHistoryList;

    invoke-virtual {v9}, Landroid/os/Looper$MessageHistoryList;->size()I

    move-result v8

    .local v8, numOfSize:I
    :goto_0
    if-lez v8, :cond_1

    add-int/lit8 v8, v8, -0x1

    iget-object v9, p0, Landroid/os/Looper;->mMessages:Landroid/os/Looper$MessageHistoryList;

    invoke-virtual {v9, v8}, Landroid/os/Looper$MessageHistoryList;->get(I)Landroid/os/Looper$MessageHistory;

    move-result-object v1

    .local v1, history:Landroid/os/Looper$MessageHistory;
    iget-wide v11, v1, Landroid/os/Looper$MessageHistory;->takenTime:J

    const-wide/16 v13, -0x1

    cmp-long v9, v11, v13

    if-nez v9, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    iget-wide v13, v1, Landroid/os/Looper$MessageHistory;->startTime:J

    sub-long v2, v11, v13

    .local v2, lastTime:J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v1, Landroid/os/Looper$MessageHistory;->msg_target:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v1, Landroid/os/Looper$MessageHistory;->msg_callback:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ": "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v1, Landroid/os/Looper$MessageHistory;->msg_what:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "Unfinished("

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "ms), start="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v11, v1, Landroid/os/Looper$MessageHistory;->startTime:J

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_0

    .end local v1           #history:Landroid/os/Looper$MessageHistory;
    .end local v2           #lastTime:J
    .end local v8           #numOfSize:I
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .restart local v1       #history:Landroid/os/Looper$MessageHistory;
    .restart local v8       #numOfSize:I
    :cond_0
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v1, Landroid/os/Looper$MessageHistory;->msg_target:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v1, Landroid/os/Looper$MessageHistory;->msg_callback:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ": "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v1, Landroid/os/Looper$MessageHistory;->msg_what:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v11, v1, Landroid/os/Looper$MessageHistory;->takenTime:J

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "ms, start="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v11, v1, Landroid/os/Looper$MessageHistory;->startTime:J

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1           #history:Landroid/os/Looper$MessageHistory;
    :cond_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v8           #numOfSize:I
    :cond_2
    invoke-static/range {p1 .. p2}, Landroid/util/PrefixPrinter;->create(Landroid/util/Printer;Ljava/lang/String;)Landroid/util/Printer;

    move-result-object p1

    invoke-virtual {p0}, Landroid/os/Looper;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mRun="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Landroid/os/Looper;->mRun:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mThread="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mQueue="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    if-eqz v9, :cond_3

    iget-object v9, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    :goto_1
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v9, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    if-eqz v9, :cond_5

    iget-object v10, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    monitor-enter v10

    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .local v6, now:J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "now="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v9, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    iget-object v4, v9, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .local v4, msg:Landroid/os/Message;
    const/4 v5, 0x0

    .local v5, n:I
    :goto_2
    if-eqz v4, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  Message "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ": "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v11, 0x1

    invoke-virtual {v4, v6, v7, v11}, Landroid/os/Message;->toString(JZ)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    iget-object v4, v4, Landroid/os/Message;->next:Landroid/os/Message;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .end local v4           #msg:Landroid/os/Message;
    .end local v5           #n:I
    .end local v6           #now:J
    :cond_3
    const-string v9, "(null"

    goto :goto_1

    .restart local v4       #msg:Landroid/os/Message;
    .restart local v5       #n:I
    .restart local v6       #now:J
    :cond_4
    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "(Total messages: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ")"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    monitor-exit v10

    .end local v4           #msg:Landroid/os/Message;
    .end local v5           #n:I
    .end local v6           #now:J
    :cond_5
    return-void

    :catchall_1
    move-exception v9

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v9
.end method

.method public getQueue()Landroid/os/MessageQueue;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    return-object v0
.end method

.method public getThread()Ljava/lang/Thread;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public final postSyncBarrier()I
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/MessageQueue;->enqueueSyncBarrier(J)I

    move-result v0

    return v0
.end method

.method public quit()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0}, Landroid/os/MessageQueue;->quit()V

    return-void
.end method

.method public final removeSyncBarrier(I)V
    .locals 1
    .parameter "token"

    .prologue
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0, p1}, Landroid/os/MessageQueue;->removeSyncBarrier(I)V

    return-void
.end method

.method public setMessageLogging(Landroid/util/Printer;)V
    .locals 0
    .parameter "printer"

    .prologue
    iput-object p1, p0, Landroid/os/Looper;->mLogging:Landroid/util/Printer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Looper{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
