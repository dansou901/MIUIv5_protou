.class Lcom/android/server/am/TransferPipe;
.super Ljava/lang/Object;
.source "TransferPipe.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/TransferPipe$Caller;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DEFAULT_TIMEOUT:J = 0x1388L

.field static final TAG:Ljava/lang/String; = "TransferPipe"


# instance fields
.field mBufferPrefix:Ljava/lang/String;

.field mComplete:Z

.field mEndTime:J

.field mFailure:Ljava/lang/String;

.field final mFds:[Landroid/os/ParcelFileDescriptor;

.field mOutFd:Ljava/io/FileDescriptor;

.field final mThread:Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "TransferPipe"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/TransferPipe;->mThread:Ljava/lang/Thread;

    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method static go(Lcom/android/server/am/TransferPipe$Caller;Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .parameter "caller"
    .parameter "iface"
    .parameter "out"
    .parameter "prefix"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v5, 0x1388

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/android/server/am/TransferPipe;->go(Lcom/android/server/am/TransferPipe$Caller;Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;J)V

    return-void
.end method

.method static go(Lcom/android/server/am/TransferPipe$Caller;Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;J)V
    .locals 2
    .parameter "caller"
    .parameter "iface"
    .parameter "out"
    .parameter "prefix"
    .parameter "args"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    instance-of v1, v1, Landroid/os/Binder;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/am/TransferPipe$Caller;->go(Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/server/am/TransferPipe;

    invoke-direct {v0}, Lcom/android/server/am/TransferPipe;-><init>()V

    .local v0, tp:Lcom/android/server/am/TransferPipe;
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/am/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-interface {p0, p1, v1, p3, p4}, Lcom/android/server/am/TransferPipe$Caller;->go(Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, p2, p5, p6}, Lcom/android/server/am/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/am/TransferPipe;->kill()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/am/TransferPipe;->kill()V

    throw v1

    .end local v0           #tp:Lcom/android/server/am/TransferPipe;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static goDump(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 2
    .parameter "binder"
    .parameter "out"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x1388

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/server/am/TransferPipe;->goDump(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;J)V

    return-void
.end method

.method static goDump(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;J)V
    .locals 2
    .parameter "binder"
    .parameter "out"
    .parameter "args"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    instance-of v1, p0, Landroid/os/Binder;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/server/am/TransferPipe;

    invoke-direct {v0}, Lcom/android/server/am/TransferPipe;-><init>()V

    .local v0, tp:Lcom/android/server/am/TransferPipe;
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/am/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-interface {p0, v1, p2}, Landroid/os/IBinder;->dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/server/am/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/am/TransferPipe;->kill()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/am/TransferPipe;->kill()V

    throw v1

    .end local v0           #tp:Lcom/android/server/am/TransferPipe;
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method closeFd(I)V
    .locals 2
    .parameter "num"

    .prologue
    iget-object v0, p0, Lcom/android/server/am/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/android/server/am/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method getReadFd()Landroid/os/ParcelFileDescriptor;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/am/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method getWriteFd()Landroid/os/ParcelFileDescriptor;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/am/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method go(Ljava/io/FileDescriptor;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/TransferPipe;->go(Ljava/io/FileDescriptor;J)V

    return-void
.end method

.method go(Ljava/io/FileDescriptor;J)V
    .locals 6
    .parameter "out"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-object p1, p0, Lcom/android/server/am/TransferPipe;->mOutFd:Ljava/io/FileDescriptor;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    iput-wide v2, p0, Lcom/android/server/am/TransferPipe;->mEndTime:J

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/am/TransferPipe;->closeFd(I)V

    iget-object v2, p0, Lcom/android/server/am/TransferPipe;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/TransferPipe;->mFailure:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/am/TransferPipe;->mComplete:Z

    if-nez v2, :cond_1

    iget-wide v2, p0, Lcom/android/server/am/TransferPipe;->mEndTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v0, v2, v4

    .local v0, waitTime:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/TransferPipe;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Timeout"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0           #waitTime:J
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v2

    invoke-virtual {p0}, Lcom/android/server/am/TransferPipe;->kill()V

    throw v2

    .restart local v0       #waitTime:J
    :cond_0
    :try_start_3
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    .end local v0           #waitTime:J
    :cond_1
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/TransferPipe;->mFailure:Ljava/lang/String;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/io/IOException;

    iget-object v3, p0, Lcom/android/server/am/TransferPipe;->mFailure:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {p0}, Lcom/android/server/am/TransferPipe;->kill()V

    return-void
.end method

.method kill()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/TransferPipe;->closeFd(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/TransferPipe;->closeFd(I)V

    return-void
.end method

.method public run()V
    .locals 12

    .prologue
    const/16 v11, 0xa

    invoke-virtual {p0}, Lcom/android/server/am/TransferPipe;->getReadFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    .local v7, readFd:Landroid/os/ParcelFileDescriptor;
    if-nez v7, :cond_0

    monitor-enter p0

    :try_start_0
    const-string v10, "ReadFd is null"

    iput-object v10, p0, Lcom/android/server/am/TransferPipe;->mFailure:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    :goto_0
    return-void

    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    :cond_0
    const/16 v10, 0x400

    new-array v0, v10, [B

    .local v0, buffer:[B
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .local v3, fis:Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v10, p0, Lcom/android/server/am/TransferPipe;->mOutFd:Ljava/io/FileDescriptor;

    invoke-direct {v4, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .local v4, fos:Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .local v1, bufferPrefix:[B
    const/4 v6, 0x1

    .local v6, needPrefix:Z
    iget-object v10, p0, Lcom/android/server/am/TransferPipe;->mBufferPrefix:Ljava/lang/String;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/server/am/TransferPipe;->mBufferPrefix:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    .local v8, size:I
    if-lez v8, :cond_8

    if-nez v1, :cond_2

    const/4 v10, 0x0

    invoke-virtual {v4, v0, v10, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .end local v8           #size:I
    :catch_0
    move-exception v2

    .local v2, e:Ljava/io/IOException;
    monitor-enter p0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/am/TransferPipe;->mFailure:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v10

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v10

    .end local v1           #bufferPrefix:[B
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .end local v6           #needPrefix:Z
    :catch_1
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    const-string v10, "TransferPipe"

    const-string v11, "Unable to create input stream"

    invoke-static {v10, v11, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-enter p0

    :try_start_4
    const-string v10, "Unable to create input stream"

    iput-object v10, p0, Lcom/android/server/am/TransferPipe;->mFailure:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    goto :goto_0

    :catchall_2
    move-exception v10

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v10

    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #bufferPrefix:[B
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    .restart local v6       #needPrefix:Z
    .restart local v8       #size:I
    :cond_2
    const/4 v9, 0x0

    .local v9, start:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    if-ge v5, v8, :cond_7

    :try_start_5
    aget-byte v10, v0, v5

    if-eq v10, v11, :cond_6

    if-le v5, v9, :cond_3

    sub-int v10, v5, v9

    invoke-virtual {v4, v0, v9, v10}, Ljava/io/FileOutputStream;->write([BII)V

    :cond_3
    move v9, v5

    if-eqz v6, :cond_4

    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write([B)V

    const/4 v6, 0x0

    :cond_4
    add-int/lit8 v5, v5, 0x1

    if-ge v5, v8, :cond_5

    aget-byte v10, v0, v5

    if-ne v10, v11, :cond_4

    :cond_5
    if-ge v5, v8, :cond_6

    const/4 v6, 0x1

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    if-le v8, v9, :cond_1

    sub-int v10, v8, v9

    invoke-virtual {v4, v0, v9, v10}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .end local v5           #i:I
    .end local v9           #start:I
    :cond_8
    iget-object v10, p0, Lcom/android/server/am/TransferPipe;->mThread:Ljava/lang/Thread;

    invoke-virtual {v10}, Ljava/lang/Thread;->isInterrupted()Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-result v10

    if-eqz v10, :cond_9

    :cond_9
    monitor-enter p0

    const/4 v10, 0x1

    :try_start_6
    iput-boolean v10, p0, Lcom/android/server/am/TransferPipe;->mComplete:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    goto/16 :goto_0

    :catchall_3
    move-exception v10

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v10
.end method

.method setBufferPrefix(Ljava/lang/String;)V
    .locals 0
    .parameter "prefix"

    .prologue
    iput-object p1, p0, Lcom/android/server/am/TransferPipe;->mBufferPrefix:Ljava/lang/String;

    return-void
.end method
