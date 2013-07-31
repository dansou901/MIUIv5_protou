.class Lcom/miui/server/MiuiUsbService$MdbRestoreManager;
.super Lcom/miui/server/MiuiUsbService$UsbManagerConnect;
.source "MiuiUsbService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/MiuiUsbService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MdbRestoreManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/MiuiUsbService$MdbRestoreManager$MdbRestoreManagerHandler;
    }
.end annotation


# instance fields
.field private final MDBD_SOCKET:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field final synthetic this$0:Lcom/miui/server/MiuiUsbService;


# direct methods
.method public constructor <init>(Lcom/miui/server/MiuiUsbService;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    iput-object p1, p0, Lcom/miui/server/MiuiUsbService$MdbRestoreManager;->this$0:Lcom/miui/server/MiuiUsbService;

    invoke-direct {p0, p1}, Lcom/miui/server/MiuiUsbService$UsbManagerConnect;-><init>(Lcom/miui/server/MiuiUsbService;)V

    const-string v0, "mdbd"

    iput-object v0, p0, Lcom/miui/server/MiuiUsbService$MdbRestoreManager;->MDBD_SOCKET:Ljava/lang/String;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MdbRestoreManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/server/MiuiUsbService$MdbRestoreManager;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/miui/server/MiuiUsbService$MdbRestoreManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/miui/server/MiuiUsbService$MdbRestoreManager$MdbRestoreManagerHandler;

    iget-object v1, p0, Lcom/miui/server/MiuiUsbService$MdbRestoreManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/server/MiuiUsbService$MdbRestoreManager$MdbRestoreManagerHandler;-><init>(Lcom/miui/server/MiuiUsbService$MdbRestoreManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/server/MiuiUsbService$MdbRestoreManager;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/miui/server/MiuiUsbService$MdbRestoreManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$300(Lcom/miui/server/MiuiUsbService$MdbRestoreManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/miui/server/MiuiUsbService$MdbRestoreManager;->showConfirmationUI()V

    return-void
.end method

.method private showConfirmationUI()V
    .locals 4

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, dialogIntent:Landroid/content/Intent;
    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.usb.MdbRestoreUI"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/miui/server/MiuiUsbService$MdbRestoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "MiuiUsbService"

    const-string v3, "unable to start UsbDebuggingActivity"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public accpetMdbRestore()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/miui/server/MiuiUsbService$MdbRestoreManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public cancelMdbRestore()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/miui/server/MiuiUsbService$MdbRestoreManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "fd"
    .parameter "pw"

    .prologue
    const-string v0, "  Mdb Restore State:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Connected to mdbd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/server/MiuiUsbService$MdbRestoreManager;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected listenToSocket()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x1000

    :try_start_0
    new-array v1, v7, [B

    .local v1, buffer:[B
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v7, "mdbd"

    sget-object v8, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v7, v8}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .local v0, address:Landroid/net/LocalSocketAddress;
    const/4 v4, 0x0

    .local v4, inputStream:Ljava/io/InputStream;
    new-instance v7, Landroid/net/LocalSocket;

    invoke-direct {v7}, Landroid/net/LocalSocket;-><init>()V

    iput-object v7, p0, Lcom/miui/server/MiuiUsbService$MdbRestoreManager;->mSocket:Landroid/net/LocalSocket;

    iget-object v7, p0, Lcom/miui/server/MiuiUsbService$MdbRestoreManager;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v7, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    const-string v7, "MiuiUsbService"

    const-string v8, "connected to mdbd"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/miui/server/MiuiUsbService$MdbRestoreManager;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v7}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/server/MiuiUsbService$MdbRestoreManager;->mOutputStream:Ljava/io/OutputStream;

    iget-object v7, p0, Lcom/miui/server/MiuiUsbService$MdbRestoreManager;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v7}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    :goto_0
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, count:I
    if-gtz v2, :cond_0

    const-string v7, "MiuiUsbService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "got "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " reading"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Lcom/miui/server/MiuiUsbService$MdbRestoreManager;->closeSocket()V

    return-void

    :cond_0
    :try_start_1
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([B)V

    .local v6, rev:Ljava/lang/String;
    if-eqz v6, :cond_1

    const-string v7, "START"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/miui/server/MiuiUsbService$MdbRestoreManager;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .local v5, msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/miui/server/MiuiUsbService$MdbRestoreManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local v0           #address:Landroid/net/LocalSocketAddress;
    .end local v1           #buffer:[B
    .end local v2           #count:I
    .end local v4           #inputStream:Ljava/io/InputStream;
    .end local v5           #msg:Landroid/os/Message;
    .end local v6           #rev:Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, ex:Ljava/io/IOException;
    :try_start_2
    const-string v7, "MiuiUsbService"

    const-string v8, "Communication error: "

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v3           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    invoke-virtual {p0}, Lcom/miui/server/MiuiUsbService$MdbRestoreManager;->closeSocket()V

    throw v7

    .restart local v0       #address:Landroid/net/LocalSocketAddress;
    .restart local v1       #buffer:[B
    .restart local v2       #count:I
    .restart local v4       #inputStream:Ljava/io/InputStream;
    .restart local v6       #rev:Ljava/lang/String;
    :cond_1
    :try_start_3
    const-string v7, "MiuiUsbService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wrong message: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x5

    invoke-direct {v9, v1, v10, v11}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method public run()V
    .locals 3

    .prologue
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/server/MiuiUsbService$MdbRestoreManager;->listenToSocket()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method
