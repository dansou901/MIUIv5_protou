.class public abstract Landroid/content/AsyncQueryHandler;
.super Landroid/os/Handler;
.source "AsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/AsyncQueryHandler$WorkerHandler;,
        Landroid/content/AsyncQueryHandler$WorkerArgs;,
        Landroid/content/AsyncQueryHandler$TraceMapKey;
    }
.end annotation


# static fields
.field private static final EVENT_ARG_DELETE:I = 0x4

.field private static final EVENT_ARG_INSERT:I = 0x2

.field private static final EVENT_ARG_QUERY:I = 0x1

.field private static final EVENT_ARG_UPDATE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AsyncQuery"

.field private static final localLOGV:Z

.field private static final mTraceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/AsyncQueryHandler$TraceMapKey;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation
.end field

.field private static sLooper:Landroid/os/Looper;


# instance fields
.field final mResolver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkerThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Landroid/content/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/content/AsyncQueryHandler;->mTraceMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 3
    .parameter "cr"

    .prologue
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/content/AsyncQueryHandler;->mResolver:Ljava/lang/ref/WeakReference;

    const-class v2, Landroid/content/AsyncQueryHandler;

    monitor-enter v2

    :try_start_0
    sget-object v1, Landroid/content/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    if-nez v1, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AsyncQueryWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    sput-object v1, Landroid/content/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    .end local v0           #thread:Landroid/os/HandlerThread;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Landroid/content/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    invoke-virtual {p0, v1}, Landroid/content/AsyncQueryHandler;->createHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Landroid/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic access$000(Landroid/content/AsyncQueryHandler;Landroid/content/AsyncQueryHandler$WorkerArgs;)[Ljava/lang/StackTraceElement;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;->removeTraceMap(Landroid/content/AsyncQueryHandler$WorkerArgs;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    return-object v0
.end method

.method private removeTraceMap(I)V
    .locals 3
    .parameter "token"

    .prologue
    sget-object v2, Landroid/content/AsyncQueryHandler;->mTraceMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/AsyncQueryHandler$TraceMapKey;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AsyncQueryHandler$TraceMapKey;

    .local v1, tmKey:Landroid/content/AsyncQueryHandler$TraceMapKey;
    iget v2, v1, Landroid/content/AsyncQueryHandler$TraceMapKey;->token:I

    if-ne p1, v2, :cond_0

    sget-object v2, Landroid/content/AsyncQueryHandler;->mTraceMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v1           #tmKey:Landroid/content/AsyncQueryHandler$TraceMapKey;
    :cond_1
    return-void
.end method

.method private removeTraceMap(Landroid/content/AsyncQueryHandler$WorkerArgs;)[Ljava/lang/StackTraceElement;
    .locals 3
    .parameter "args"

    .prologue
    sget-object v2, Landroid/content/AsyncQueryHandler;->mTraceMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/AsyncQueryHandler$TraceMapKey;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AsyncQueryHandler$TraceMapKey;

    .local v1, tmKey:Landroid/content/AsyncQueryHandler$TraceMapKey;
    iget-object v2, v1, Landroid/content/AsyncQueryHandler$TraceMapKey;->args:Landroid/content/AsyncQueryHandler$WorkerArgs;

    if-ne p1, v2, :cond_0

    sget-object v2, Landroid/content/AsyncQueryHandler;->mTraceMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/StackTraceElement;

    .end local v1           #tmKey:Landroid/content/AsyncQueryHandler$TraceMapKey;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final cancelOperation(I)V
    .locals 2
    .parameter "token"

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileOpenCursor()Z

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;->removeTraceMap(I)V

    :cond_0
    iget-object v0, p0, Landroid/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .parameter "looper"

    .prologue
    new-instance v0, Landroid/content/AsyncQueryHandler$WorkerHandler;

    invoke-direct {v0, p0, p1}, Landroid/content/AsyncQueryHandler$WorkerHandler;-><init>(Landroid/content/AsyncQueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/AsyncQueryHandler$WorkerArgs;

    .local v0, args:Landroid/content/AsyncQueryHandler$WorkerArgs;
    iget v2, p1, Landroid/os/Message;->what:I

    .local v2, token:I
    iget v1, p1, Landroid/os/Message;->arg1:I

    .local v1, event:I
    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v3, 0x1

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileOpenCursor()Z

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;->removeTraceMap(Landroid/content/AsyncQueryHandler$WorkerArgs;)[Ljava/lang/StackTraceElement;

    :cond_0
    iget-object v4, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v3, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v3, Landroid/database/Cursor;

    invoke-virtual {p0, v2, v4, v3}, Landroid/content/AsyncQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    goto :goto_0

    :pswitch_1
    iget-object v4, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v3, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {p0, v2, v4, v3}, Landroid/content/AsyncQueryHandler;->onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_2
    iget-object v4, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v3, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v2, v4, v3}, Landroid/content/AsyncQueryHandler;->onUpdateComplete(ILjava/lang/Object;I)V

    goto :goto_0

    :pswitch_3
    iget-object v4, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v3, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v2, v4, v3}, Landroid/content/AsyncQueryHandler;->onDeleteComplete(ILjava/lang/Object;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"

    .prologue
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    return-void
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    return-void
.end method

.method protected final setDebugTrace(Landroid/database/Cursor;Landroid/content/AsyncQueryHandler$WorkerArgs;)V
    .locals 3
    .parameter "cursor"
    .parameter "args"

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileOpenCursor()Z

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;->removeTraceMap(Landroid/content/AsyncQueryHandler$WorkerArgs;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    .local v0, elem:[Ljava/lang/StackTraceElement;
    if-nez v0, :cond_1

    .end local v0           #elem:[Ljava/lang/StackTraceElement;
    .end local p1
    :cond_0
    :goto_0
    return-void

    .restart local v0       #elem:[Ljava/lang/StackTraceElement;
    .restart local p1
    :cond_1
    if-eqz p1, :cond_0

    instance-of v1, p1, Landroid/database/CursorWrapper;

    if-eqz v1, :cond_0

    check-cast p1, Landroid/database/CursorWrapper;

    .end local p1
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->setAsyncQueryStackTrace([Ljava/lang/StackTraceElement;)V

    goto :goto_0
.end method

.method public final startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    iget-object v2, p0, Landroid/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->arg1:I

    new-instance v0, Landroid/content/AsyncQueryHandler$WorkerArgs;

    invoke-direct {v0}, Landroid/content/AsyncQueryHandler$WorkerArgs;-><init>()V

    .local v0, args:Landroid/content/AsyncQueryHandler$WorkerArgs;
    iput-object p0, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    iput-object p3, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iput-object p2, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iput-object p4, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iput-object p5, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Landroid/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    iget-object v2, p0, Landroid/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->arg1:I

    new-instance v0, Landroid/content/AsyncQueryHandler$WorkerArgs;

    invoke-direct {v0}, Landroid/content/AsyncQueryHandler$WorkerArgs;-><init>()V

    .local v0, args:Landroid/content/AsyncQueryHandler$WorkerArgs;
    iput-object p0, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    iput-object p3, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iput-object p2, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iput-object p4, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Landroid/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "orderBy"

    .prologue
    const/4 v5, 0x1

    iget-object v4, p0, Landroid/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v4, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .local v2, msg:Landroid/os/Message;
    iput v5, v2, Landroid/os/Message;->arg1:I

    new-instance v0, Landroid/content/AsyncQueryHandler$WorkerArgs;

    invoke-direct {v0}, Landroid/content/AsyncQueryHandler$WorkerArgs;-><init>()V

    .local v0, args:Landroid/content/AsyncQueryHandler$WorkerArgs;
    iput-object p0, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    iput-object p3, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iput-object p4, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->projection:[Ljava/lang/String;

    iput-object p5, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iput-object p6, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    iput-object p7, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    iput-object p2, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileOpenCursor()Z

    move-result v4

    if-ne v5, v4, :cond_0

    new-instance v3, Landroid/content/AsyncQueryHandler$TraceMapKey;

    invoke-direct {v3, p0}, Landroid/content/AsyncQueryHandler$TraceMapKey;-><init>(Landroid/content/AsyncQueryHandler;)V

    .local v3, tmKey:Landroid/content/AsyncQueryHandler$TraceMapKey;
    iput p1, v3, Landroid/content/AsyncQueryHandler$TraceMapKey;->token:I

    iput-object v0, v3, Landroid/content/AsyncQueryHandler$TraceMapKey;->args:Landroid/content/AsyncQueryHandler$WorkerArgs;

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .local v1, elem:[Ljava/lang/StackTraceElement;
    sget-object v4, Landroid/content/AsyncQueryHandler;->mTraceMap:Ljava/util/Map;

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v1           #elem:[Ljava/lang/StackTraceElement;
    .end local v3           #tmKey:Landroid/content/AsyncQueryHandler$TraceMapKey;
    :cond_0
    iget-object v4, p0, Landroid/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    iget-object v2, p0, Landroid/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->arg1:I

    new-instance v0, Landroid/content/AsyncQueryHandler$WorkerArgs;

    invoke-direct {v0}, Landroid/content/AsyncQueryHandler$WorkerArgs;-><init>()V

    .local v0, args:Landroid/content/AsyncQueryHandler$WorkerArgs;
    iput-object p0, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    iput-object p3, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iput-object p2, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iput-object p4, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    iput-object p5, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iput-object p6, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Landroid/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
