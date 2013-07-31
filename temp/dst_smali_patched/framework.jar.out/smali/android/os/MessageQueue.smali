.class public Landroid/os/MessageQueue;
.super Ljava/lang/Object;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MessageQueue$TicketAuthenticator;,
        Landroid/os/MessageQueue$IdleHandler;
    }
.end annotation


# instance fields
.field private customAuth:Landroid/os/MessageQueue$TicketAuthenticator;

.field private defaultAuth:Landroid/os/MessageQueue$TicketAuthenticator;

.field private expressNo:J

.field private logLevel:I

.field private mBlocked:Z

.field private final mIdleHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/MessageQueue$IdleHandler;",
            ">;"
        }
    .end annotation
.end field

.field mMessages:Landroid/os/Message;

.field private mNextBarrierToken:I

.field private mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

.field private mPtr:I

.field private final mQuitAllowed:Z

.field private mQuiting:Z


# direct methods
.method constructor <init>(Z)V
    .locals 3
    .parameter "quitAllowed"

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    const-string v2, "MessageQueue"

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    iput v0, p0, Landroid/os/MessageQueue;->logLevel:I

    new-instance v0, Landroid/os/MessageQueue$1;

    invoke-direct {v0, p0}, Landroid/os/MessageQueue$1;-><init>(Landroid/os/MessageQueue;)V

    iput-object v0, p0, Landroid/os/MessageQueue;->defaultAuth:Landroid/os/MessageQueue$TicketAuthenticator;

    iput-boolean p1, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    invoke-direct {p0}, Landroid/os/MessageQueue;->nativeInit()V

    return-void

    :cond_0
    const-string v0, "MessageQueue"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private describeMessage(Landroid/os/Message;)Ljava/lang/String;
    .locals 3
    .parameter "msg"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", when="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p1, Landroid/os/Message;->when:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", arg1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", obj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVIP(Landroid/os/Message;Z)Z
    .locals 7
    .parameter "msg"
    .parameter "debugEnabled"

    .prologue
    iget-object v3, p0, Landroid/os/MessageQueue;->defaultAuth:Landroid/os/MessageQueue$TicketAuthenticator;

    invoke-interface {v3, p1, p2}, Landroid/os/MessageQueue$TicketAuthenticator;->isVIP(Landroid/os/Message;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v3, p0, Landroid/os/MessageQueue;->customAuth:Landroid/os/MessageQueue$TicketAuthenticator;

    if-eqz v3, :cond_3

    const-wide/16 v1, 0x0

    .local v1, startToCustomEval:J
    if-eqz p2, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    :cond_2
    iget-object v3, p0, Landroid/os/MessageQueue;->customAuth:Landroid/os/MessageQueue$TicketAuthenticator;

    invoke-interface {v3, p1, p2}, Landroid/os/MessageQueue$TicketAuthenticator;->isVIP(Landroid/os/Message;Z)Z

    move-result v0

    .local v0, ret:Z
    if-eqz p2, :cond_0

    const-string v3, "MessageQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] CUSTOM EFFORT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/os/MessageQueue;->customAuth:Landroid/os/MessageQueue$TicketAuthenticator;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #ret:Z
    .end local v1           #startToCustomEval:J
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeDestroy()V
.end method

.method private native nativeInit()V
.end method

.method private native nativePollOnce(II)V
.end method

.method private native nativeWake(I)V
.end method


# virtual methods
.method public final addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 2
    .parameter "handler"

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t add a null IdleHandler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final enqueueMessage(Landroid/os/Message;J)Z
    .locals 13
    .parameter "msg"
    .parameter "when"

    .prologue
    invoke-virtual {p1}, Landroid/os/Message;->isInUse()Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v9, Landroid/util/AndroidRuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " This message is already in use."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_0
    iget-object v9, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v9, :cond_1

    new-instance v9, Landroid/util/AndroidRuntimeException;

    const-string v10, "Message must have a target."

    invoke-direct {v9, v10}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-boolean v9, p0, Landroid/os/MessageQueue;->mQuiting:Z

    if-eqz v9, :cond_2

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " sending message to a Handler on a dead thread"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .local v2, e:Ljava/lang/RuntimeException;
    const-string v9, "MessageQueue"

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v9, 0x0

    monitor-exit p0

    .end local v2           #e:Ljava/lang/RuntimeException;
    :goto_0
    return v9

    :cond_2
    iput-wide p2, p1, Landroid/os/Message;->when:J

    iget-object v6, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .local v6, p:Landroid/os/Message;
    if-eqz v6, :cond_3

    const-wide/16 v9, 0x0

    cmp-long v9, p2, v9

    if-eqz v9, :cond_3

    iget-wide v9, v6, Landroid/os/Message;->when:J

    cmp-long v9, p2, v9

    if-gez v9, :cond_4

    :cond_3
    iput-object v6, p1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object p1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-boolean v3, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .local v3, needWake:Z
    :goto_1
    iget v9, p0, Landroid/os/MessageQueue;->logLevel:I

    const/4 v10, 0x2

    if-gt v9, v10, :cond_11

    const-string v9, "MessageQueue"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] ----- START ----- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .local v8, x:Landroid/os/Message;
    :goto_2
    if-eqz v8, :cond_10

    const-string v9, "MessageQueue"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]     "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0, v8}, Landroid/os/MessageQueue;->describeMessage(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v8, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_2

    .end local v3           #needWake:Z
    .end local v8           #x:Landroid/os/Message;
    :cond_4
    iget-boolean v9, p0, Landroid/os/MessageQueue;->mBlocked:Z

    if-eqz v9, :cond_7

    iget-object v9, v6, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v9, :cond_7

    invoke-virtual {p1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v3, 0x1

    .restart local v3       #needWake:Z
    :goto_3
    const-wide/16 v4, 0x0

    .local v4, now:J
    const/4 v0, 0x0

    .local v0, acc:Z
    iget-wide v9, p1, Landroid/os/Message;->expressNo:J

    iget-wide v11, p0, Landroid/os/MessageQueue;->expressNo:J

    cmp-long v9, v9, v11

    if-lez v9, :cond_5

    iget-wide v9, p1, Landroid/os/Message;->expressNo:J

    iput-wide v9, p0, Landroid/os/MessageQueue;->expressNo:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v9, p0, Landroid/os/MessageQueue;->expressNo:J

    cmp-long v9, v4, v9

    if-gez v9, :cond_8

    const/4 v0, 0x1

    :cond_5
    :goto_4
    if-eqz v0, :cond_c

    iget v9, p0, Landroid/os/MessageQueue;->logLevel:I

    const/4 v10, 0x3

    if-gt v9, v10, :cond_9

    const/4 v1, 0x1

    .local v1, debugEnabled:Z
    :goto_5
    invoke-direct {p0, p1, v1}, Landroid/os/MessageQueue;->isVIP(Landroid/os/Message;Z)Z

    move-result v9

    if-eqz v9, :cond_a

    iget-wide v9, p0, Landroid/os/MessageQueue;->expressNo:J

    iput-wide v9, p1, Landroid/os/Message;->expressNo:J

    if-eqz v1, :cond_6

    const-string v9, "MessageQueue"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] INSERT "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->describeMessage(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_6
    if-eqz v6, :cond_b

    invoke-direct {p0, v6, v1}, Landroid/os/MessageQueue;->isVIP(Landroid/os/Message;Z)Z

    move-result v9

    if-eqz v9, :cond_b

    move-object v7, v6

    .local v7, prev:Landroid/os/Message;
    iget-object v6, v6, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_6

    .end local v0           #acc:Z
    .end local v1           #debugEnabled:Z
    .end local v3           #needWake:Z
    .end local v4           #now:J
    .end local v7           #prev:Landroid/os/Message;
    :cond_7
    const/4 v3, 0x0

    goto :goto_3

    .restart local v0       #acc:Z
    .restart local v3       #needWake:Z
    .restart local v4       #now:J
    :cond_8
    const/4 v0, 0x0

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    goto :goto_5

    .restart local v1       #debugEnabled:Z
    :cond_a
    const-wide/16 v9, -0x1

    iput-wide v9, p1, Landroid/os/Message;->expressNo:J

    if-eqz v1, :cond_6

    const-string v9, "MessageQueue"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] APPEND "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->describeMessage(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .end local v0           #acc:Z
    .end local v1           #debugEnabled:Z
    .end local v3           #needWake:Z
    .end local v4           #now:J
    .end local v6           #p:Landroid/os/Message;
    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .restart local v0       #acc:Z
    .restart local v1       #debugEnabled:Z
    .restart local v3       #needWake:Z
    .restart local v4       #now:J
    .restart local v6       #p:Landroid/os/Message;
    :cond_b
    if-eqz v1, :cond_c

    :try_start_1
    const-string v9, "MessageQueue"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] EFFORT "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v4

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ms."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #debugEnabled:Z
    :cond_c
    :goto_7
    move-object v7, v6

    .restart local v7       #prev:Landroid/os/Message;
    iget-object v6, v6, Landroid/os/Message;->next:Landroid/os/Message;

    if-eqz v6, :cond_d

    iget-wide v9, v6, Landroid/os/Message;->when:J

    cmp-long v9, p2, v9

    if-gez v9, :cond_e

    :cond_d
    if-eqz v0, :cond_f

    if-nez v7, :cond_f

    iput-object v6, p1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object p1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-boolean v3, p0, Landroid/os/MessageQueue;->mBlocked:Z

    goto/16 :goto_1

    :cond_e
    if-eqz v3, :cond_c

    invoke-virtual {v6}, Landroid/os/Message;->isAsynchronous()Z

    move-result v9

    if-eqz v9, :cond_c

    const/4 v3, 0x0

    goto :goto_7

    :cond_f
    iput-object v6, p1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object p1, v7, Landroid/os/Message;->next:Landroid/os/Message;

    goto/16 :goto_1

    .end local v0           #acc:Z
    .end local v4           #now:J
    .end local v7           #prev:Landroid/os/Message;
    .restart local v8       #x:Landroid/os/Message;
    :cond_10
    const-string v9, "MessageQueue"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] ----- END ----- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v8           #x:Landroid/os/Message;
    :cond_11
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_12

    iget v9, p0, Landroid/os/MessageQueue;->mPtr:I

    invoke-direct {p0, v9}, Landroid/os/MessageQueue;->nativeWake(I)V

    :cond_12
    const/4 v9, 0x1

    goto/16 :goto_0
.end method

.method final enqueueSyncBarrier(J)I
    .locals 6
    .parameter "when"

    .prologue
    monitor-enter p0

    :try_start_0
    iget v3, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    .local v3, token:I
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->arg1:I

    const/4 v2, 0x0

    .local v2, prev:Landroid/os/Message;
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .local v1, p:Landroid/os/Message;
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-eqz v4, :cond_0

    :goto_0
    if-eqz v1, :cond_0

    iget-wide v4, v1, Landroid/os/Message;->when:J

    cmp-long v4, v4, p1

    if-gtz v4, :cond_0

    move-object v2, v1

    iget-object v1, v1, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    iput-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    :goto_1
    monitor-exit p0

    return v3

    :cond_1
    iput-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    goto :goto_1

    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #p:Landroid/os/Message;
    .end local v2           #prev:Landroid/os/Message;
    .end local v3           #token:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    :try_start_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->nativeDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method final hasMessages(Landroid/os/Handler;ILjava/lang/Object;)Z
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "object"

    .prologue
    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .local v0, p:Landroid/os/Message;
    :goto_1
    if-eqz v0, :cond_3

    iget-object v2, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_2

    iget v2, v0, Landroid/os/Message;->what:I

    if-ne v2, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_2

    :cond_1
    const/4 v1, 0x1

    monitor-exit p0

    goto :goto_0

    .end local v0           #p:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0       #p:Landroid/os/Message;
    :cond_2
    :try_start_1
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method final hasMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z
    .locals 3
    .parameter "h"
    .parameter "r"
    .parameter "object"

    .prologue
    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .local v0, p:Landroid/os/Message;
    :goto_1
    if-eqz v0, :cond_3

    iget-object v2, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_2

    iget-object v2, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v2, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_2

    :cond_1
    const/4 v1, 0x1

    monitor-exit p0

    goto :goto_0

    .end local v0           #p:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0       #p:Landroid/os/Message;
    :cond_2
    :try_start_1
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method final next()Landroid/os/Message;
    .locals 14

    .prologue
    const/4 v7, -0x1

    .local v7, pendingIdleHandlerCount:I
    const/4 v4, 0x0

    .local v4, nextPollTimeoutMillis:I
    :goto_0
    if-eqz v4, :cond_0

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    :cond_0
    iget v10, p0, Landroid/os/MessageQueue;->mPtr:I

    invoke-direct {p0, v10, v4}, Landroid/os/MessageQueue;->nativePollOnce(II)V

    monitor-enter p0

    :try_start_0
    iget-boolean v10, p0, Landroid/os/MessageQueue;->mQuiting:Z

    if-eqz v10, :cond_1

    const/4 v3, 0x0

    monitor-exit p0

    :goto_1
    return-object v3

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .local v5, now:J
    const/4 v8, 0x0

    .local v8, prevMsg:Landroid/os/Message;
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .local v3, msg:Landroid/os/Message;
    if-eqz v3, :cond_3

    iget-object v10, v3, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v10, :cond_3

    :cond_2
    move-object v8, v3

    iget-object v3, v3, Landroid/os/Message;->next:Landroid/os/Message;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/os/Message;->isAsynchronous()Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_3
    if-eqz v3, :cond_8

    iget-wide v10, v3, Landroid/os/Message;->when:J

    cmp-long v10, v5, v10

    if-gez v10, :cond_6

    iget-wide v10, v3, Landroid/os/Message;->when:J

    sub-long/2addr v10, v5

    const-wide/32 v12, 0x7fffffff

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v4, v10

    :goto_2
    if-gez v7, :cond_5

    iget-object v10, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v10, :cond_4

    iget-object v10, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-wide v10, v10, Landroid/os/Message;->when:J

    cmp-long v10, v5, v10

    if-gez v10, :cond_5

    :cond_4
    iget-object v10, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    :cond_5
    if-gtz v7, :cond_9

    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/os/MessageQueue;->mBlocked:Z

    monitor-exit p0

    goto :goto_0

    .end local v3           #msg:Landroid/os/Message;
    .end local v5           #now:J
    .end local v8           #prevMsg:Landroid/os/Message;
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .restart local v3       #msg:Landroid/os/Message;
    .restart local v5       #now:J
    .restart local v8       #prevMsg:Landroid/os/Message;
    :cond_6
    const/4 v10, 0x0

    :try_start_1
    iput-boolean v10, p0, Landroid/os/MessageQueue;->mBlocked:Z

    if-eqz v8, :cond_7

    iget-object v10, v3, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v10, v8, Landroid/os/Message;->next:Landroid/os/Message;

    :goto_3
    const/4 v10, 0x0

    iput-object v10, v3, Landroid/os/Message;->next:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->markInUse()V

    monitor-exit p0

    goto :goto_1

    :cond_7
    iget-object v10, v3, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v10, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    goto :goto_3

    :cond_8
    const/4 v4, -0x1

    goto :goto_2

    :cond_9
    iget-object v10, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    if-nez v10, :cond_a

    const/4 v10, 0x4

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    new-array v10, v10, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v10, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    :cond_a
    iget-object v10, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    iget-object v11, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v10, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    if-ge v0, v7, :cond_c

    iget-object v10, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    aget-object v1, v10, v0

    .local v1, idler:Landroid/os/MessageQueue$IdleHandler;
    iget-object v10, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    const/4 v11, 0x0

    aput-object v11, v10, v0

    const/4 v2, 0x0

    .local v2, keep:Z
    :try_start_2
    invoke-interface {v1}, Landroid/os/MessageQueue$IdleHandler;->queueIdle()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    :goto_5
    if-nez v2, :cond_b

    monitor-enter p0

    :try_start_3
    iget-object v10, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :catch_0
    move-exception v9

    .local v9, t:Ljava/lang/Throwable;
    const-string v10, "MessageQueue"

    const-string v11, "IdleHandler threw exception"

    invoke-static {v10, v11, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .end local v9           #t:Ljava/lang/Throwable;
    :catchall_1
    move-exception v10

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v10

    .end local v1           #idler:Landroid/os/MessageQueue$IdleHandler;
    .end local v2           #keep:Z
    :cond_c
    const/4 v7, 0x0

    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method final quit()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread not allowed to quit."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuiting:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/MessageQueue;->mQuiting:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Landroid/os/MessageQueue;->mPtr:I

    invoke-direct {p0, v0}, Landroid/os/MessageQueue;->nativeWake(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public registerCustomAuthenticator(Landroid/os/MessageQueue$TicketAuthenticator;)V
    .locals 0
    .parameter "t"

    .prologue
    iput-object p1, p0, Landroid/os/MessageQueue;->customAuth:Landroid/os/MessageQueue$TicketAuthenticator;

    return-void
.end method

.method final removeCallbacksAndMessages(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 4
    .parameter "h"
    .parameter "object"

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .local v2, p:Landroid/os/Message;
    :goto_1
    if-eqz v2, :cond_2

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_2

    if-eqz p2, :cond_1

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p2, :cond_2

    :cond_1
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .local v0, n:Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    move-object v2, v0

    goto :goto_1

    .end local v0           #n:Landroid/os/Message;
    :cond_2
    :goto_2
    if-eqz v2, :cond_5

    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .restart local v0       #n:Landroid/os/Message;
    if-eqz v0, :cond_4

    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_4

    if-eqz p2, :cond_3

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p2, :cond_4

    :cond_3
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .local v1, nn:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_2

    .end local v0           #n:Landroid/os/Message;
    .end local v1           #nn:Landroid/os/Message;
    .end local v2           #p:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #n:Landroid/os/Message;
    .restart local v2       #p:Landroid/os/Message;
    :cond_4
    move-object v2, v0

    goto :goto_2

    .end local v0           #n:Landroid/os/Message;
    :cond_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1
    .parameter "handler"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final removeMessages(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .parameter "h"
    .parameter "what"
    .parameter "object"

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .local v2, p:Landroid/os/Message;
    :goto_1
    if-eqz v2, :cond_2

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_2

    iget v3, v2, Landroid/os/Message;->what:I

    if-ne v3, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_2

    :cond_1
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .local v0, n:Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    move-object v2, v0

    goto :goto_1

    .end local v0           #n:Landroid/os/Message;
    :cond_2
    :goto_2
    if-eqz v2, :cond_5

    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .restart local v0       #n:Landroid/os/Message;
    if-eqz v0, :cond_4

    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_4

    iget v3, v0, Landroid/os/Message;->what:I

    if-ne v3, p2, :cond_4

    if-eqz p3, :cond_3

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_4

    :cond_3
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .local v1, nn:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_2

    .end local v0           #n:Landroid/os/Message;
    .end local v1           #nn:Landroid/os/Message;
    .end local v2           #p:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #n:Landroid/os/Message;
    .restart local v2       #p:Landroid/os/Message;
    :cond_4
    move-object v2, v0

    goto :goto_2

    .end local v0           #n:Landroid/os/Message;
    :cond_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method final removeMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 4
    .parameter "h"
    .parameter "r"
    .parameter "object"

    .prologue
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .local v2, p:Landroid/os/Message;
    :goto_1
    if-eqz v2, :cond_3

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_3

    iget-object v3, v2, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v3, p2, :cond_3

    if-eqz p3, :cond_2

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_3

    :cond_2
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .local v0, n:Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    move-object v2, v0

    goto :goto_1

    .end local v0           #n:Landroid/os/Message;
    :cond_3
    :goto_2
    if-eqz v2, :cond_6

    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .restart local v0       #n:Landroid/os/Message;
    if-eqz v0, :cond_5

    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_5

    iget-object v3, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v3, p2, :cond_5

    if-eqz p3, :cond_4

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_5

    :cond_4
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .local v1, nn:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_2

    .end local v0           #n:Landroid/os/Message;
    .end local v1           #nn:Landroid/os/Message;
    .end local v2           #p:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #n:Landroid/os/Message;
    .restart local v2       #p:Landroid/os/Message;
    :cond_5
    move-object v2, v0

    goto :goto_2

    .end local v0           #n:Landroid/os/Message;
    :cond_6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method final removeSyncBarrier(I)V
    .locals 5
    .parameter "token"

    .prologue
    monitor-enter p0

    const/4 v2, 0x0

    .local v2, prev:Landroid/os/Message;
    :try_start_0
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .local v1, p:Landroid/os/Message;
    :goto_0
    if-eqz v1, :cond_1

    iget-object v3, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v3, :cond_0

    iget v3, v1, Landroid/os/Message;->arg1:I

    if-eq v3, p1, :cond_1

    :cond_0
    move-object v2, v1

    iget-object v1, v1, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "The specified message queue synchronization  barrier token has not been posted or has already been removed."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v1           #p:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #p:Landroid/os/Message;
    :cond_2
    if-eqz v2, :cond_4

    :try_start_1
    iget-object v3, v1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v3, v2, Landroid/os/Message;->next:Landroid/os/Message;

    const/4 v0, 0x0

    .local v0, needWake:Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    iget v3, p0, Landroid/os/MessageQueue;->mPtr:I

    invoke-direct {p0, v3}, Landroid/os/MessageQueue;->nativeWake(I)V

    :cond_3
    return-void

    .end local v0           #needWake:Z
    :cond_4
    :try_start_2
    iget-object v3, v1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-object v3, v3, Landroid/os/Message;->target:Landroid/os/Handler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_6

    :cond_5
    const/4 v0, 0x1

    .restart local v0       #needWake:Z
    :goto_2
    goto :goto_1

    .end local v0           #needWake:Z
    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method