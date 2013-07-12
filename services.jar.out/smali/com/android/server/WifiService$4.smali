.class Lcom/android/server/WifiService$4;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter

    .prologue
    .line 891
    iput-object p1, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 894
    const-string v1, "IMS_LOWSIGNAL_STATUS"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 895
    .local v0, lowSignal:Z
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiService onReceive lowSignal = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mLowSignal = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mLowSignal:Z
    invoke-static {v3}, Lcom/android/server/WifiService;->access$3600(Lcom/android/server/WifiService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mNotificationShown = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mNotificationShown:Z
    invoke-static {v3}, Lcom/android/server/WifiService;->access$3300(Lcom/android/server/WifiService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mLowSignal:Z
    invoke-static {v1}, Lcom/android/server/WifiService;->access$3600(Lcom/android/server/WifiService;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mNotificationShown:Z
    invoke-static {v1}, Lcom/android/server/WifiService;->access$3300(Lcom/android/server/WifiService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 898
    iget-object v1, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    const-wide/16 v2, 0x0

    #setter for: Lcom/android/server/WifiService;->mNotificationRepeatTime:J
    invoke-static {v1, v2, v3}, Lcom/android/server/WifiService;->access$3702(Lcom/android/server/WifiService;J)J

    .line 899
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mLowSignal:Z
    invoke-static {v1, v0}, Lcom/android/server/WifiService;->access$3602(Lcom/android/server/WifiService;Z)Z

    .line 900
    iget-object v1, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mNotificationShown:Z
    invoke-static {v1}, Lcom/android/server/WifiService;->access$3300(Lcom/android/server/WifiService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 901
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiService onReceive setNotificationVisible mLowSignalNWs = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mLowSignalNWs:I
    invoke-static {v3}, Lcom/android/server/WifiService;->access$3800(Lcom/android/server/WifiService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    iget-object v1, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mLowSignalNWs:I
    invoke-static {v3}, Lcom/android/server/WifiService;->access$3800(Lcom/android/server/WifiService;)I

    move-result v3

    #calls: Lcom/android/server/WifiService;->setNotificationVisible(ZIZI)V
    invoke-static {v1, v2, v3, v4, v4}, Lcom/android/server/WifiService;->access$3500(Lcom/android/server/WifiService;ZIZI)V

    .line 904
    :cond_1
    return-void
.end method
