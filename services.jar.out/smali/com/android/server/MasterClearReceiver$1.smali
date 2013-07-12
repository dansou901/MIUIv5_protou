.class Lcom/android/server/MasterClearReceiver$1;
.super Ljava/lang/Thread;
.source "MasterClearReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MasterClearReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MasterClearReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/MasterClearReceiver;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    iput-object p3, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 54
    :try_start_0
    invoke-static {}, Lcom/android/server/MasterClearReceiver;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    const-string v1, "MasterClear"

    const-string v2, "Deleting data to keep other FUSE storage data!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v1, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/RecoverySystem;->rebootDeleteUserData(Landroid/content/Context;)V

    .line 62
    :goto_0
    const-string v1, "MasterClear"

    const-string v2, "Still running after master clear?!"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :goto_1
    return-void

    .line 58
    :cond_0
    const-string v1, "MasterClear"

    const-string v2, "Wiping data to clear FUSE storage!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v1, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Ljava/io/IOException;
    const-string v1, "MasterClear"

    const-string v2, "Can\'t perform master clear/factory reset"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
