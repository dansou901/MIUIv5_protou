.class Lcom/htc/server/HtcAppLifeCycleMonitor$HandlerNonUiCallback;
.super Ljava/lang/Object;
.source "HtcAppLifeCycleMonitor.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcAppLifeCycleMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandlerNonUiCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/HtcAppLifeCycleMonitor;


# direct methods
.method private constructor <init>(Lcom/htc/server/HtcAppLifeCycleMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/htc/server/HtcAppLifeCycleMonitor$HandlerNonUiCallback;->this$0:Lcom/htc/server/HtcAppLifeCycleMonitor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/server/HtcAppLifeCycleMonitor;Lcom/htc/server/HtcAppLifeCycleMonitor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/htc/server/HtcAppLifeCycleMonitor$HandlerNonUiCallback;-><init>(Lcom/htc/server/HtcAppLifeCycleMonitor;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    .line 193
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 223
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 195
    :pswitch_0
    iget-object v2, p0, Lcom/htc/server/HtcAppLifeCycleMonitor$HandlerNonUiCallback;->this$0:Lcom/htc/server/HtcAppLifeCycleMonitor;

    #calls: Lcom/htc/server/HtcAppLifeCycleMonitor;->initialBadAppList()V
    invoke-static {v2}, Lcom/htc/server/HtcAppLifeCycleMonitor;->access$200(Lcom/htc/server/HtcAppLifeCycleMonitor;)V

    goto :goto_0

    .line 198
    :pswitch_1
    const/4 v1, 0x0

    .line 200
    .local v1, processInfo:Landroid/os/Bundle;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Landroid/os/Bundle;

    if-eqz v2, :cond_1

    .line 201
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1           #processInfo:Landroid/os/Bundle;
    check-cast v1, Landroid/os/Bundle;

    .line 204
    .restart local v1       #processInfo:Landroid/os/Bundle;
    :cond_1
    iget-object v2, p0, Lcom/htc/server/HtcAppLifeCycleMonitor$HandlerNonUiCallback;->this$0:Lcom/htc/server/HtcAppLifeCycleMonitor;

    #calls: Lcom/htc/server/HtcAppLifeCycleMonitor;->updateRunningProcess(Landroid/os/Bundle;)V
    invoke-static {v2, v1}, Lcom/htc/server/HtcAppLifeCycleMonitor;->access$300(Lcom/htc/server/HtcAppLifeCycleMonitor;Landroid/os/Bundle;)V

    goto :goto_0

    .line 207
    .end local v1           #processInfo:Landroid/os/Bundle;
    :pswitch_2
    const/4 v0, 0x0

    .line 209
    .local v0, appListInfo:Landroid/os/Bundle;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Landroid/os/Bundle;

    if-eqz v2, :cond_2

    .line 210
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #appListInfo:Landroid/os/Bundle;
    check-cast v0, Landroid/os/Bundle;

    .line 213
    .restart local v0       #appListInfo:Landroid/os/Bundle;
    :cond_2
    if-eqz v0, :cond_0

    .line 214
    iget-object v2, p0, Lcom/htc/server/HtcAppLifeCycleMonitor$HandlerNonUiCallback;->this$0:Lcom/htc/server/HtcAppLifeCycleMonitor;

    const-string v3, "add_app_list"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "delete_app_list"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    #calls: Lcom/htc/server/HtcAppLifeCycleMonitor;->updateBadAppList(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    invoke-static {v2, v3, v4}, Lcom/htc/server/HtcAppLifeCycleMonitor;->access$400(Lcom/htc/server/HtcAppLifeCycleMonitor;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
