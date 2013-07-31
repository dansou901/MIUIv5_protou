.class Landroid/server/BluetoothA2dpService$1;
.super Landroid/content/BroadcastReceiver;
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
    .line 146
    iput-object p1, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, action:Ljava/lang/String;
    const-string v18, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/bluetooth/BluetoothDevice;

    .line 152
    .local v8, device:Landroid/bluetooth/BluetoothDevice;
    const-string v18, "android.bluetooth.adapter.action.STATE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 153
    const-string v18, "android.bluetooth.adapter.extra.STATE"

    const/high16 v19, -0x8000

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 155
    .local v16, state:I
    packed-switch v16, :pswitch_data_0

    .line 285
    .end local v16           #state:I
    :cond_0
    :goto_0
    return-void

    .line 157
    .restart local v16       #state:I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #calls: Landroid/server/BluetoothA2dpService;->onBluetoothEnable()V
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$000(Landroid/server/BluetoothA2dpService;)V

    goto :goto_0

    .line 160
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #calls: Landroid/server/BluetoothA2dpService;->onBluetoothDisable()V
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$100(Landroid/server/BluetoothA2dpService;)V

    goto :goto_0

    .line 163
    .end local v16           #state:I
    :cond_1
    const-string v18, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 164
    const-string v18, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v19, -0x8000

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 166
    .local v6, bondState:I
    packed-switch v6, :pswitch_data_1

    goto :goto_0

    .line 182
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v8, v1}, Landroid/server/BluetoothA2dpService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    .line 168
    :pswitch_3
    const/4 v14, 0x0

    .line 169
    .local v14, priority:I
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v3

    .line 170
    .local v3, BtClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v3, :cond_3

    .line 171
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v18

    const/16 v19, 0x100

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    .line 172
    const-string v18, "BluetoothA2dpService"

    const-string v19, "Remote device matches connectable priority"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/16 v14, 0x64

    .line 179
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v14}, Landroid/server/BluetoothA2dpService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    .line 177
    :cond_3
    const-string v18, "BluetoothA2dpService"

    const-string v19, "**** Failed to retrieve BtClass in bonded state ****"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 185
    .end local v3           #BtClass:Landroid/bluetooth/BluetoothClass;
    .end local v6           #bondState:I
    .end local v14           #priority:I
    :cond_4
    const-string v18, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 186
    const-string v18, "android.bluetooth.profile.extra.STATE"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 187
    .local v10, newState:I
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v10, v0, :cond_0

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/server/BluetoothA2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v18

    const/16 v19, 0x3e8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Landroid/server/BluetoothA2dpService;->isSinkDevice(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v0, v8}, Landroid/server/BluetoothA2dpService;->access$200(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$300(Landroid/server/BluetoothA2dpService;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeMessages(I)V

    .line 193
    const-string v18, "BluetoothA2dpService"

    const-string v19, "HFP/HSP is connected, send 6s delayed message for a2dp auto-connect"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$300(Landroid/server/BluetoothA2dpService;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 195
    .local v9, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$300(Landroid/server/BluetoothA2dpService;)Landroid/os/Handler;

    move-result-object v18

    const-wide/16 v19, 0x1770

    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    invoke-virtual {v0, v9, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 198
    .end local v9           #msg:Landroid/os/Message;
    .end local v10           #newState:I
    :cond_5
    const-string v18, "android.bluetooth.device.action.ACL_CONNECTED"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Landroid/server/BluetoothA2dpService;->isSinkDevice(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v0, v8}, Landroid/server/BluetoothA2dpService;->access$200(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Landroid/server/BluetoothA2dpService;->isAVRCPIndependent(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v0, v8}, Landroid/server/BluetoothA2dpService;->access$400(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #calls: Landroid/server/BluetoothA2dpService;->setAvrcpPassThroughInternal(Z)V
    invoke-static/range {v18 .. v19}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;Z)V

    goto/16 :goto_0

    .line 206
    :cond_6
    const-string v18, "android.bluetooth.device.action.ACL_DISCONNECTED"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 207
    monitor-enter p0

    .line 208
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$600(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$600(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 210
    .restart local v16       #state:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v16

    move/from16 v2, v19

    #calls: Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v8, v1, v2}, Landroid/server/BluetoothA2dpService;->access$700(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;II)V

    .line 212
    .end local v16           #state:I
    :cond_7
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v18

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v18

    .line 213
    :cond_8
    const-string v18, "android.media.VOLUME_CHANGED_ACTION"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 214
    const-string v18, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/16 v19, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 215
    .local v17, streamType:I
    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->getConnectedDevices()Ljava/util/List;

    move-result-object v15

    .line 218
    .local v15, sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v19, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    #calls: Landroid/server/BluetoothA2dpService;->isPhoneDocked(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v0, v1}, Landroid/server/BluetoothA2dpService;->access$800(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 219
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual/range {v18 .. v18}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 220
    .local v5, address:Ljava/lang/String;
    const-string v18, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 222
    .local v11, newVolLevel:I
    const-string v18, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 224
    .local v12, oldVolLevel:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$900(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothService;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 225
    .local v13, path:Ljava/lang/String;
    if-le v11, v12, :cond_9

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Landroid/server/BluetoothA2dpService;->avrcpVolumeUpNative(Ljava/lang/String;)Z
    invoke-static {v0, v13}, Landroid/server/BluetoothA2dpService;->access$1000(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 227
    :cond_9
    if-ge v11, v12, :cond_0

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Landroid/server/BluetoothA2dpService;->avrcpVolumeDownNative(Ljava/lang/String;)Z
    invoke-static {v0, v13}, Landroid/server/BluetoothA2dpService;->access$1100(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 232
    .end local v5           #address:Ljava/lang/String;
    .end local v11           #newVolLevel:I
    .end local v12           #oldVolLevel:I
    .end local v13           #path:Ljava/lang/String;
    .end local v15           #sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v17           #streamType:I
    :cond_a
    const-string v18, "android.intent.action.PHONE_STATE"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 234
    const-string/jumbo v18, "state"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 235
    .local v16, state:Ljava/lang/String;
    const-string v18, "RINGING"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_b

    const-string v18, "OFFHOOK"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 239
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$300(Landroid/server/BluetoothA2dpService;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeMessages(I)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #setter for: Landroid/server/BluetoothA2dpService;->isInCall:Z
    invoke-static/range {v18 .. v19}, Landroid/server/BluetoothA2dpService;->access$1202(Landroid/server/BluetoothA2dpService;Z)Z

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #calls: Landroid/server/BluetoothA2dpService;->setAvrcpPassThroughInternal(Z)V
    invoke-static/range {v18 .. v19}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;Z)V

    .line 242
    const-string v18, "BluetoothA2dpService"

    const-string/jumbo v19, "suspend A2dp mixer due to phone state exit normal"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$1300(Landroid/server/BluetoothA2dpService;)Landroid/media/AudioManager;

    move-result-object v18

    const-string v19, "A2dpSuspended=true"

    invoke-virtual/range {v18 .. v19}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 244
    :cond_c
    const-string v18, "IDLE"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #calls: Landroid/server/BluetoothA2dpService;->setAvrcpPassThroughInternal(Z)V
    invoke-static/range {v18 .. v19}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;Z)V

    .line 261
    const/16 v7, 0x7d0

    .line 262
    .local v7, delayTime:I
    sget-short v18, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v19, 0x1d

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_d

    sget-short v18, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v19, 0x1e

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    .line 264
    :cond_d
    const/16 v7, 0xfa0

    .line 269
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$300(Landroid/server/BluetoothA2dpService;)Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v19, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v19 .. v19}, Landroid/server/BluetoothA2dpService;->access$300(Landroid/server/BluetoothA2dpService;)Landroid/os/Handler;

    move-result-object v19

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    int-to-long v0, v7

    move-wide/from16 v20, v0

    invoke-virtual/range {v18 .. v21}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 272
    .end local v7           #delayTime:I
    .end local v16           #state:Ljava/lang/String;
    :cond_f
    const-string v18, "android.location.GPS_ENABLED_CHANGE"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const-string v19, "enabled"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    #setter for: Landroid/server/BluetoothA2dpService;->isNaviEn:Z
    invoke-static/range {v18 .. v19}, Landroid/server/BluetoothA2dpService;->access$1402(Landroid/server/BluetoothA2dpService;Z)Z

    .line 275
    const-string v18, "BluetoothA2dpService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "GPS enabled = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v20, v0

    #getter for: Landroid/server/BluetoothA2dpService;->isNaviEn:Z
    invoke-static/range {v20 .. v20}, Landroid/server/BluetoothA2dpService;->access$1400(Landroid/server/BluetoothA2dpService;)Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$600(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_0

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$300(Landroid/server/BluetoothA2dpService;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x9

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeMessages(I)V

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #getter for: Landroid/server/BluetoothA2dpService;->isNaviEn:Z
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$1400(Landroid/server/BluetoothA2dpService;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 279
    const-string v18, "BluetoothA2dpService"

    const-string v19, "Trigger AVDTP start for Navi!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$300(Landroid/server/BluetoothA2dpService;)Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v19, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v19 .. v19}, Landroid/server/BluetoothA2dpService;->access$300(Landroid/server/BluetoothA2dpService;)Landroid/os/Handler;

    move-result-object v19

    const/16 v20, 0x9

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    const-wide/16 v20, 0x1e

    invoke-virtual/range {v18 .. v21}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 166
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
