.class Lcom/htc/server/ResetService$2;
.super Landroid/os/Handler;
.source "ResetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/ResetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/ResetService;


# direct methods
.method constructor <init>(Lcom/htc/server/ResetService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/htc/server/ResetService$2;->this$0:Lcom/htc/server/ResetService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    .local v0, type:I
    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/htc/server/ResetService$2;->this$0:Lcom/htc/server/ResetService;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/htc/server/ResetService$2;->this$0:Lcom/htc/server/ResetService;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_1
    iget-object v1, p0, Lcom/htc/server/ResetService$2;->this$0:Lcom/htc/server/ResetService;

    #getter for: Lcom/htc/server/ResetService;->mResetDongleCount:I
    invoke-static {v1}, Lcom/htc/server/ResetService;->access$200(Lcom/htc/server/ResetService;)I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "ResetService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resetting dongle when canceling...count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/server/ResetService$2;->this$0:Lcom/htc/server/ResetService;

    #getter for: Lcom/htc/server/ResetService;->mResetDongleCount:I
    invoke-static {v3}, Lcom/htc/server/ResetService;->access$200(Lcom/htc/server/ResetService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/htc/server/ResetService$2;->this$0:Lcom/htc/server/ResetService;

    #calls: Lcom/htc/server/ResetService;->requestResetOnDemand()V
    invoke-static {v1}, Lcom/htc/server/ResetService;->access$300(Lcom/htc/server/ResetService;)V

    const/4 v1, 0x1

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/server/ResetService$2;->sendEmptyMessageDelayed(IJ)Z

    iget-object v1, p0, Lcom/htc/server/ResetService$2;->this$0:Lcom/htc/server/ResetService;

    invoke-static {v1}, Lcom/htc/server/ResetService;->access$210(Lcom/htc/server/ResetService;)I

    iget-object v1, p0, Lcom/htc/server/ResetService$2;->this$0:Lcom/htc/server/ResetService;

    #setter for: Lcom/htc/server/ResetService;->mResetDongle:Z
    invoke-static {v1, v4}, Lcom/htc/server/ResetService;->access$402(Lcom/htc/server/ResetService;Z)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v4}, Lcom/htc/server/ResetService$2;->sendEmptyMessage(I)Z

    const-string v1, "ResetService"

    const-string v2, "Resetting dongle when canceling...Complete!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
