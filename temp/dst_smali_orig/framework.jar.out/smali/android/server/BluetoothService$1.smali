.class Landroid/server/BluetoothService$1;
.super Landroid/os/Handler;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v6, v0}, Landroid/server/BluetoothService;->sendUuidIntent(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v6, v0}, Landroid/server/BluetoothService;->makeServiceChannelCallbacks(Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #address:Ljava/lang/String;
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .restart local v0       #address:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;
    invoke-static {v6}, Landroid/server/BluetoothService;->access$000(Landroid/server/BluetoothService;)Landroid/server/BluetoothBondState;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/server/BluetoothBondState;->getAttempt(Ljava/lang/String;)I

    move-result v1

    .local v1, attempt:I
    if-lez v1, :cond_1

    const/4 v6, 0x2

    if-gt v1, v6, :cond_1

    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;
    invoke-static {v6}, Landroid/server/BluetoothService;->access$000(Landroid/server/BluetoothService;)Landroid/server/BluetoothBondState;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/server/BluetoothBondState;->attempt(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v6, v0}, Landroid/server/BluetoothService;->createBond(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    if-lez v1, :cond_0

    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;
    invoke-static {v6}, Landroid/server/BluetoothService;->access$000(Landroid/server/BluetoothService;)Landroid/server/BluetoothBondState;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/server/BluetoothBondState;->clearPinAttempts(Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #address:Ljava/lang/String;
    .end local v1           #attempt:I
    :sswitch_2
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/util/Pair;

    .local v5, pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v7, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    #calls: Landroid/server/BluetoothService;->checkAndRemoveRecord(II)V
    invoke-static {v7, v8, v6}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;II)V

    goto :goto_0

    .end local v5           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :sswitch_3
    const-string v6, "BluetoothService"

    const-string v7, "Received BT_BOOTUP message"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/server/BluetoothService;->access$200(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "bluetooth_on"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .local v3, bluetoothOn:I
    if-lez v3, :cond_2

    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v6}, Landroid/server/BluetoothService;->isAirplaneModeOn()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v6, v8, v8}, Landroid/server/BluetoothService;->enable(ZZ)Z

    const-string v6, "BluetoothService"

    const-string v7, "Enable BT after bootup..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "service.brcm.bt.profiles_ready"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Landroid/server/BluetoothService;->access$300(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Landroid/server/BluetoothService;->access$300(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x68

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x61a8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_2
    const-string v6, "BluetoothService"

    const-string v7, "No need to turn BT during the phone rebooting"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "service.brcm.bt.profiles_ready"

    const-string v7, "1"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v3           #bluetoothOn:I
    :sswitch_4
    const-string v6, "BluetoothService"

    const-string v7, "Received MESSAGE_BT_PROFILES_STARTED_COMPLETED message"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "service.brcm.bt.profiles_ready"

    const-string v7, "1"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_5
    const-string v6, "BluetoothService"

    const-string v7, "MESSAGE_USER_TIMEOUT_PBAP"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #setter for: Landroid/server/BluetoothService;->mPbapConnectionAccessReplyReceived:Z
    invoke-static {v6, v8}, Landroid/server/BluetoothService;->access$402(Landroid/server/BluetoothService;Z)Z

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .local v2, b:Landroid/os/Bundle;
    const-string v6, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .local v4, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v6, v4, v9}, Landroid/server/BluetoothService;->allowIncomingProfileConnect(Landroid/bluetooth/BluetoothDevice;Z)Z

    goto/16 :goto_0

    .end local v2           #b:Landroid/os/Bundle;
    .end local v4           #device:Landroid/bluetooth/BluetoothDevice;
    :sswitch_6
    const-string v6, "BluetoothService"

    const-string v7, "MESSAGE_USER_TIMEOUT_PROFILE"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #setter for: Landroid/server/BluetoothService;->mProfileConnectionAccessReplyReceived:Z
    invoke-static {v6, v8}, Landroid/server/BluetoothService;->access$502(Landroid/server/BluetoothService;Z)Z

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .restart local v2       #b:Landroid/os/Bundle;
    const-string v6, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .restart local v4       #device:Landroid/bluetooth/BluetoothDevice;
    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v6, v4, v9}, Landroid/server/BluetoothService;->allowIncomingProfileConnect(Landroid/bluetooth/BluetoothDevice;Z)Z

    goto/16 :goto_0

    .end local v2           #b:Landroid/os/Bundle;
    .end local v4           #device:Landroid/bluetooth/BluetoothDevice;
    :sswitch_7
    const-string v6, "BluetoothService"

    const-string v7, "MESSAGE_BONDED"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .restart local v0       #address:Ljava/lang/String;
    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    const/16 v7, 0xc

    invoke-virtual {v6, v0, v7}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;I)Z

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x64 -> :sswitch_3
        0x65 -> :sswitch_5
        0x66 -> :sswitch_6
        0x67 -> :sswitch_7
        0x68 -> :sswitch_4
    .end sparse-switch
.end method
