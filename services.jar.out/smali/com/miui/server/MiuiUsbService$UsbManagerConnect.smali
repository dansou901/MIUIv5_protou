.class abstract Lcom/miui/server/MiuiUsbService$UsbManagerConnect;
.super Ljava/lang/Object;
.source "MiuiUsbService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/MiuiUsbService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "UsbManagerConnect"
.end annotation


# static fields
.field static final BUFFER_SIZE:I = 0x1000


# instance fields
.field mOutputStream:Ljava/io/OutputStream;

.field mSocket:Landroid/net/LocalSocket;

.field final synthetic this$0:Lcom/miui/server/MiuiUsbService;


# direct methods
.method constructor <init>(Lcom/miui/server/MiuiUsbService;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/miui/server/MiuiUsbService$UsbManagerConnect;->this$0:Lcom/miui/server/MiuiUsbService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized closeSocket()V
    .locals 4

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/miui/server/MiuiUsbService$UsbManagerConnect;->mOutputStream:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 128
    :try_start_1
    iget-object v1, p0, Lcom/miui/server/MiuiUsbService$UsbManagerConnect;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 134
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/miui/server/MiuiUsbService$UsbManagerConnect;->mSocket:Landroid/net/LocalSocket;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    .line 136
    :try_start_3
    iget-object v1, p0, Lcom/miui/server/MiuiUsbService$UsbManagerConnect;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 141
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, ex:Ljava/io/IOException;
    :try_start_4
    const-string v1, "MiuiUsbService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed closing output stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 126
    .end local v0           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 137
    :catch_1
    move-exception v0

    .line 138
    .restart local v0       #ex:Ljava/io/IOException;
    :try_start_5
    const-string v1, "MiuiUsbService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed closing socket: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method abstract listenToSocket()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method sendResponse(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 144
    iget-object v1, p0, Lcom/miui/server/MiuiUsbService$UsbManagerConnect;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/miui/server/MiuiUsbService$UsbManagerConnect;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, ex:Ljava/io/IOException;
    const-string v1, "MiuiUsbService"

    const-string v2, "Failed to write response:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
