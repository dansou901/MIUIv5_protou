.class Lcom/htc/view/VolumePanel$4;
.super Landroid/content/BroadcastReceiver;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/view/VolumePanel;->listenToRingerMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/view/VolumePanel;


# direct methods
.method constructor <init>(Lcom/htc/view/VolumePanel;)V
    .locals 0
    .parameter

    .prologue
    .line 814
    iput-object p1, p0, Lcom/htc/view/VolumePanel$4;->this$0:Lcom/htc/view/VolumePanel;

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

    const/4 v3, 0x6

    .line 817
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 819
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 820
    invoke-static {}, Lcom/htc/view/VolumePanel;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 821
    const-string v1, "VolumePanel"

    const-string v2, "RINGER_MODE_CHANGED_ACTION"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :cond_0
    iget-object v1, p0, Lcom/htc/view/VolumePanel$4;->this$0:Lcom/htc/view/VolumePanel;

    invoke-virtual {v1, v3}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 823
    iget-object v1, p0, Lcom/htc/view/VolumePanel$4;->this$0:Lcom/htc/view/VolumePanel;

    iget-object v2, p0, Lcom/htc/view/VolumePanel$4;->this$0:Lcom/htc/view/VolumePanel;

    invoke-virtual {v2, v3}, Lcom/htc/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/view/VolumePanel;->sendMessage(Landroid/os/Message;)Z

    .line 832
    :cond_1
    :goto_0
    return-void

    .line 824
    :cond_2
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 825
    const-string v1, "VolumePanel"

    const-string v2, "ACTION_CONFIGURATION_CHANGED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    iget-object v1, p0, Lcom/htc/view/VolumePanel$4;->this$0:Lcom/htc/view/VolumePanel;

    invoke-virtual {v1, v4}, Lcom/htc/view/VolumePanel;->resetProgressBar(Landroid/content/Context;)V

    goto :goto_0

    .line 827
    :cond_3
    const-string v1, "com.htc.view.intent.action.debug_configuagechange"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 828
    const-string v1, "VolumePanel"

    const-string v2, "my ACTION_CONFIGURATION_CHANGED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    iget-object v1, p0, Lcom/htc/view/VolumePanel$4;->this$0:Lcom/htc/view/VolumePanel;

    invoke-virtual {v1, v4}, Lcom/htc/view/VolumePanel;->resetProgressBar(Landroid/content/Context;)V

    goto :goto_0
.end method
