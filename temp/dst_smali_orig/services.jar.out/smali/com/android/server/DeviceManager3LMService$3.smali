.class Lcom/android/server/DeviceManager3LMService$3;
.super Landroid/os/storage/StorageEventListener;
.source "DeviceManager3LMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceManager3LMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceManager3LMService;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceManager3LMService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/DeviceManager3LMService$3;->this$0:Lcom/android/server/DeviceManager3LMService;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v0

    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, sdPath:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "mounted"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/DeviceManager3LMService$3;->this$0:Lcom/android/server/DeviceManager3LMService;

    iget-object v6, v6, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "sd_encryption"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v3, :cond_3

    .local v3, isSDEncrypted:Z
    :goto_1
    if-eqz v3, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .local v1, identityToken:J
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_2

    const-string v5, "DeviceManager3LM"

    const-string v6, "SDCard Encrypted and Mount"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v5, p0, Lcom/android/server/DeviceManager3LMService$3;->this$0:Lcom/android/server/DeviceManager3LMService;

    #getter for: Lcom/android/server/DeviceManager3LMService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v5}, Lcom/android/server/DeviceManager3LMService;->access$100(Lcom/android/server/DeviceManager3LMService;)Landroid/app/NotificationManager;

    move-result-object v5

    const v6, 0x407005e

    invoke-virtual {v5, v6}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v5, p0, Lcom/android/server/DeviceManager3LMService$3;->this$0:Lcom/android/server/DeviceManager3LMService;

    #getter for: Lcom/android/server/DeviceManager3LMService;->mStorageManager:Landroid/os/storage/StorageManager;
    invoke-static {v5}, Lcom/android/server/DeviceManager3LMService;->access$200(Lcom/android/server/DeviceManager3LMService;)Landroid/os/storage/StorageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DeviceManager3LMService$3;->this$0:Lcom/android/server/DeviceManager3LMService;

    iget-object v6, v6, Lcom/android/server/DeviceManager3LMService;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v5, v6}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v1           #identityToken:J
    .end local v3           #isSDEncrypted:Z
    :cond_3
    move v3, v5

    goto :goto_1
.end method
