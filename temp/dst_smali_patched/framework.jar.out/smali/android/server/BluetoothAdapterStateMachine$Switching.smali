.class Landroid/server/BluetoothAdapterStateMachine$Switching;
.super Lcom/android/internal/util/State;
.source "BluetoothAdapterStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothAdapterStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Switching"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothAdapterStateMachine;


# direct methods
.method private constructor <init>(Landroid/server/BluetoothAdapterStateMachine;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/server/BluetoothAdapterStateMachine;Landroid/server/BluetoothAdapterStateMachine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/server/BluetoothAdapterStateMachine$Switching;-><init>(Landroid/server/BluetoothAdapterStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    .prologue
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .parameter "message"

    .prologue
    const/16 v7, 0x6a

    const/16 v6, 0xb

    const/4 v2, 0x0

    const/16 v5, 0x66

    const/4 v4, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Switching process message: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/server/BluetoothAdapterStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$600(Ljava/lang/String;)V

    const/4 v0, 0x1

    .local v0, retValue:Z
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    move v0, v2

    .end local v0           #retValue:Z
    :cond_0
    :goto_0
    return v0

    .restart local v0       #retValue:Z
    :sswitch_0
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v2, 0x69

    #calls: Landroid/server/BluetoothAdapterStateMachine;->removeMessages(I)V
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$4500(Landroid/server/BluetoothAdapterStateMachine;I)V

    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mPublicState:I
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$3700(Landroid/server/BluetoothAdapterStateMachine;)I

    move-result v1

    if-ne v1, v6, :cond_0

    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$1600(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/server/BluetoothService;->setPairable()V

    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$1600(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/server/BluetoothService;->initBluetoothAfterTurningOn()V

    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothOn:Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;
    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$4600(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;

    move-result-object v2

    #calls: Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$4700(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v2, 0xc

    #calls: Landroid/server/BluetoothAdapterStateMachine;->broadcastState(I)V
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$700(Landroid/server/BluetoothAdapterStateMachine;I)V

    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$1600(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/server/BluetoothService;->runBluetooth()V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->removeMessages(I)V
    invoke-static {v1, v7}, Landroid/server/BluetoothAdapterStateMachine;->access$4800(Landroid/server/BluetoothAdapterStateMachine;I)V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mPublicState:I
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$3700(Landroid/server/BluetoothAdapterStateMachine;)I

    move-result v1

    const/16 v3, 0xd

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$1600(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/server/BluetoothService;->switchConnectable(Z)V

    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mHotOff:Landroid/server/BluetoothAdapterStateMachine$HotOff;
    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$2700(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$HotOff;

    move-result-object v2

    #calls: Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$4900(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$1600(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/server/BluetoothService;->finishDisable()V

    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$1600(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/server/BluetoothService;->cleanupAfterFinishDisable()V

    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v2, v5}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    #calls: Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$5000(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    invoke-static {}, Landroid/server/BluetoothAdapterStateMachine;->access$2100()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$1600(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/server/BluetoothService;->isAirplaneModeOn()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v2, v4}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    #calls: Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$5100(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/4 v2, 0x1

    #setter for: Landroid/server/BluetoothAdapterStateMachine;->mDelayBroadcastStateOff:Z
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$2902(Landroid/server/BluetoothAdapterStateMachine;Z)Z

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mPublicState:I
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$3700(Landroid/server/BluetoothAdapterStateMachine;)I

    move-result v1

    if-eq v1, v6, :cond_0

    invoke-static {}, Landroid/server/BluetoothAdapterStateMachine;->access$2100()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/4 v2, 0x0

    #calls: Landroid/server/BluetoothAdapterStateMachine;->recoverStateMachine(ILjava/lang/Object;)V
    invoke-static {v1, v4, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$4300(Landroid/server/BluetoothAdapterStateMachine;ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/4 v2, 0x0

    #calls: Landroid/server/BluetoothAdapterStateMachine;->recoverStateMachine(ILjava/lang/Object;)V
    invoke-static {v1, v5, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$4300(Landroid/server/BluetoothAdapterStateMachine;ILjava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_2
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v3, 0x67

    #calls: Landroid/server/BluetoothAdapterStateMachine;->removeMessages(I)V
    invoke-static {v1, v3}, Landroid/server/BluetoothAdapterStateMachine;->access$5200(Landroid/server/BluetoothAdapterStateMachine;I)V

    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$1600(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/server/BluetoothService;->switchConnectable(Z)V

    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v7, v2, v3}, Landroid/server/BluetoothAdapterStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v2, 0x34

    invoke-virtual {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    const-string v1, "BluetoothAdapterStateMachine"

    const-string v2, "Devices failed to disconnect, reseting..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v2, v5}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    #calls: Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$5300(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    invoke-static {}, Landroid/server/BluetoothAdapterStateMachine;->access$2100()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v2, v4}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    #calls: Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$5400(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "BluetoothAdapterStateMachine"

    const-string v2, "BluetoothService.switchConnectable(true) timed out."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mHotOff:Landroid/server/BluetoothAdapterStateMachine$HotOff;
    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$2700(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$HotOff;

    move-result-object v2

    #calls: Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$5500(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->finishSwitchingOff()V
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$5600(Landroid/server/BluetoothAdapterStateMachine;)V

    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v2, v5}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    #calls: Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$5700(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    invoke-static {}, Landroid/server/BluetoothAdapterStateMachine;->access$2100()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v2, v4}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    #calls: Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$5800(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mHotOff:Landroid/server/BluetoothAdapterStateMachine$HotOff;
    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$2700(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$HotOff;

    move-result-object v2

    #calls: Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$5900(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->finishSwitchingOff()V
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$5600(Landroid/server/BluetoothAdapterStateMachine;)V

    const-string v1, "BluetoothAdapterStateMachine"

    const-string v2, "Devices failed to power down, reseting..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v2, v5}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    #calls: Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$6000(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    invoke-static {}, Landroid/server/BluetoothAdapterStateMachine;->access$2100()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v2, v4}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    #calls: Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$6100(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/server/BluetoothAdapterStateMachine;->access$6200(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_6
        0x3 -> :sswitch_6
        0x4 -> :sswitch_6
        0x34 -> :sswitch_2
        0x35 -> :sswitch_0
        0x36 -> :sswitch_1
        0x37 -> :sswitch_6
        0x38 -> :sswitch_6
        0x67 -> :sswitch_3
        0x69 -> :sswitch_4
        0x6a -> :sswitch_5
    .end sparse-switch
.end method
