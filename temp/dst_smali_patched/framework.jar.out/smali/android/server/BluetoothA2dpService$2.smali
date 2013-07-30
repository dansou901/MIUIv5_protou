.class Landroid/server/BluetoothA2dpService$2;
.super Landroid/os/Handler;
.source "BluetoothA2dpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothA2dpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothA2dpService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothA2dpService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v5, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v5}, Landroid/server/BluetoothA2dpService;->access$900(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothService;

    move-result-object v5

    invoke-virtual {v5}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-virtual {v5, v1}, Landroid/server/BluetoothA2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    const/16 v6, 0x3e8

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const/4 v6, 0x4

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    invoke-virtual {v5, v6}, Landroid/server/BluetoothA2dpService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Auto-connecting A2DP to sink "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v5}, Landroid/server/BluetoothA2dpService;->access$1600(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-virtual {v5, v1}, Landroid/server/BluetoothA2dpService;->connectSinkInternal(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    :pswitch_2
    const-string v5, "BluetoothA2dpService"

    const-string v6, "RESUME_PHONE_STATE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #calls: Landroid/server/BluetoothA2dpService;->setAvrcpPassThroughInternal(Z)V
    invoke-static {v5, v8}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;Z)V

    iget-object v5, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v5}, Landroid/server/BluetoothA2dpService;->access$1300(Landroid/server/BluetoothA2dpService;)Landroid/media/AudioManager;

    move-result-object v5

    const-string v6, "A2dpSuspended=false"

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #setter for: Landroid/server/BluetoothA2dpService;->isInCall:Z
    invoke-static {v5, v7}, Landroid/server/BluetoothA2dpService;->access$1202(Landroid/server/BluetoothA2dpService;Z)Z

    iget-object v5, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_1

    invoke-virtual {v5, v6}, Landroid/server/BluetoothA2dpService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v4

    .local v4, sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .local v3, sink:Landroid/bluetooth/BluetoothDevice;
    const-string v5, "590Plantronics"

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "Jabra Halo"

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_2
    const-string v5, "BluetoothA2dpService"

    const-string v6, "Send mute tone to trigger AVDTP start"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Landroid/server/BluetoothA2dpService$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    invoke-virtual {p0, v5, v6, v7}, Landroid/server/BluetoothA2dpService$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #sink:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :pswitch_3
    iget-object v5, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v5}, Landroid/server/BluetoothA2dpService;->access$1300(Landroid/server/BluetoothA2dpService;)Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5, v7, v6}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    goto/16 :goto_0

    :pswitch_4
    const-string v5, "BluetoothA2dpService"

    const-string v6, "RESUME_AVRCP"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #calls: Landroid/server/BluetoothA2dpService;->setAvrcpPassThroughInternal(Z)V
    invoke-static {v5, v8}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;Z)V

    goto/16 :goto_0

    :pswitch_5
    const-string v5, "BluetoothA2dpService"

    const-string v6, "RESUME_MIXER"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->isInCall:Z
    invoke-static {v5}, Landroid/server/BluetoothA2dpService;->access$1200(Landroid/server/BluetoothA2dpService;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v5}, Landroid/server/BluetoothA2dpService;->access$1300(Landroid/server/BluetoothA2dpService;)Landroid/media/AudioManager;

    move-result-object v5

    const-string v6, "A2dpSuspended=false"

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    const-string v5, "BluetoothA2dpService"

    const-string v6, "SUSPEND_MIXER"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v5}, Landroid/server/BluetoothA2dpService;->access$1300(Landroid/server/BluetoothA2dpService;)Landroid/media/AudioManager;

    move-result-object v5

    const-string v6, "A2dpSuspended=true"

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v5, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-virtual {v5}, Landroid/server/BluetoothA2dpService;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .local v0, connectedSinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->isNaviEn:Z
    invoke-static {v5}, Landroid/server/BluetoothA2dpService;->access$1400(Landroid/server/BluetoothA2dpService;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->isInCall:Z
    invoke-static {v5}, Landroid/server/BluetoothA2dpService;->access$1200(Landroid/server/BluetoothA2dpService;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v5}, Landroid/server/BluetoothA2dpService;->access$1300(Landroid/server/BluetoothA2dpService;)Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5, v7, v6}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    :cond_3
    const/16 v5, 0x9

    invoke-virtual {p0, v5}, Landroid/server/BluetoothA2dpService$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x9c4

    invoke-virtual {p0, v5, v6, v7}, Landroid/server/BluetoothA2dpService$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_4
    const-string v5, "BluetoothA2dpService"

    const-string v6, "Exit NAVI_KP_AV_ON"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data
.end method
