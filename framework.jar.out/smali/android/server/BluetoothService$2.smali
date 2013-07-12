.class Landroid/server/BluetoothService$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 2297
    iput-object p1, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2300
    if-nez p2, :cond_1

    .line 2423
    :cond_0
    :goto_0
    return-void

    .line 2302
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2303
    .local v0, action:Ljava/lang/String;
    const-string v9, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "com.htc.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2306
    :cond_2
    const-string v9, "BluetoothService"

    const-string v10, "Received BOOT_COMPLETED or ACTION_QUICKBOOT_POWERON message"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Landroid/server/BluetoothService;->access$300(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Landroid/server/BluetoothService;->access$300(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x64

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v11, 0x3e8

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2308
    :cond_3
    const-string v9, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2309
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 2312
    .local v7, resolver:Landroid/content/ContentResolver;
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v9}, Landroid/server/BluetoothService;->isAirplaneModeOn()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2313
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;
    invoke-static {v9}, Landroid/server/BluetoothService;->access$800(Landroid/server/BluetoothService;)Landroid/server/BluetoothAdapterStateMachine;

    move-result-object v9

    const/16 v10, 0x37

    invoke-virtual {v9, v10}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 2315
    :cond_4
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;
    invoke-static {v9}, Landroid/server/BluetoothService;->access$800(Landroid/server/BluetoothService;)Landroid/server/BluetoothAdapterStateMachine;

    move-result-object v9

    const/16 v10, 0x38

    invoke-virtual {v9, v10}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 2317
    .end local v7           #resolver:Landroid/content/ContentResolver;
    :cond_5
    const-string v9, "com.htc.admin.ALLOW_BT_CHANGE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 2318
    const-string v9, "com.htc.admin.extra.ALLOW_STATUS"

    const/4 v10, 0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 2319
    .local v4, estate:I
    const-string v9, "BluetoothService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Received INTENT_ALLOW_BT_CHANGE, estate = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2320
    if-nez v4, :cond_6

    .line 2321
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 2323
    .restart local v7       #resolver:Landroid/content/ContentResolver;
    const-string v9, "bluetooth_on"

    const/4 v10, 0x0

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-lez v9, :cond_0

    .line 2326
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/server/BluetoothService;->disable(Z)Z

    goto/16 :goto_0

    .line 2328
    .end local v7           #resolver:Landroid/content/ContentResolver;
    :cond_6
    const/4 v9, 0x1

    if-ne v4, v9, :cond_7

    .line 2329
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 2331
    .restart local v7       #resolver:Landroid/content/ContentResolver;
    const-string v9, "bluetooth_on"

    const/4 v10, 0x0

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-lez v9, :cond_0

    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v9}, Landroid/server/BluetoothService;->isAirplaneModeOn()Z

    move-result v9

    if-nez v9, :cond_0

    .line 2335
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/server/BluetoothService;->enable(ZZ)Z

    goto/16 :goto_0

    .line 2337
    .end local v7           #resolver:Landroid/content/ContentResolver;
    :cond_7
    const/4 v9, 0x2

    if-ne v4, v9, :cond_0

    goto/16 :goto_0

    .line 2340
    .end local v4           #estate:I
    :cond_8
    const-string v9, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 2341
    const-string v9, "android.intent.extra.DOCK_STATE"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 2343
    .local v8, state:I
    const-string v9, "BluetoothService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Received ACTION_DOCK_EVENT with State:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2344
    if-nez v8, :cond_9

    .line 2345
    const/4 v9, 0x0

    invoke-static {v9}, Landroid/server/BluetoothService;->access$902(Ljava/lang/String;)Ljava/lang/String;

    .line 2346
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v10, 0x0

    #setter for: Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;
    invoke-static {v9, v10}, Landroid/server/BluetoothService;->access$1002(Landroid/server/BluetoothService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 2348
    :cond_9
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Landroid/server/BluetoothService;->access$200(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "bluetooth_service_settings"

    iget-object v11, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v11}, Landroid/server/BluetoothService;->access$200(Landroid/server/BluetoothService;)Landroid/content/Context;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 2351
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dock_bluetooth_address"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/server/BluetoothService;->access$900()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2352
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 2354
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v8           #state:I
    :cond_a
    const-string v9, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 2355
    const-string v9, "BluetoothService"

    const-string v10, "Received ACTION_CONNECTION_ACCESS_REPLY"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2356
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mPbapConnectionAccessReplyReceived:Z
    invoke-static {v9}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 2357
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v10, 0x1

    #setter for: Landroid/server/BluetoothService;->mPbapConnectionAccessReplyReceived:Z
    invoke-static {v9, v10}, Landroid/server/BluetoothService;->access$402(Landroid/server/BluetoothService;Z)Z

    .line 2358
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Landroid/server/BluetoothService;->access$300(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x65

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 2359
    const-string v9, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    const/4 v10, 0x2

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2360
    .local v1, allow:I
    const-string v9, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 2361
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    const-string v9, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 2362
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/bluetooth/BluetoothDevice;->setTrust(Z)Z

    .line 2364
    :cond_b
    iget-object v10, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v9, 0x1

    if-ne v1, v9, :cond_c

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {v10, v2, v9}, Landroid/server/BluetoothService;->allowIncomingProfileConnect(Landroid/bluetooth/BluetoothDevice;Z)Z

    goto/16 :goto_0

    :cond_c
    const/4 v9, 0x0

    goto :goto_1

    .line 2365
    .end local v1           #allow:I
    .end local v2           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_d
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mProfileConnectionAccessReplyReceived:Z
    invoke-static {v9}, Landroid/server/BluetoothService;->access$500(Landroid/server/BluetoothService;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 2366
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v10, 0x1

    #setter for: Landroid/server/BluetoothService;->mProfileConnectionAccessReplyReceived:Z
    invoke-static {v9, v10}, Landroid/server/BluetoothService;->access$502(Landroid/server/BluetoothService;Z)Z

    .line 2367
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Landroid/server/BluetoothService;->access$300(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x66

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 2368
    const-string v9, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    const/4 v10, 0x2

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2369
    .restart local v1       #allow:I
    const-string v9, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 2371
    .restart local v2       #device:Landroid/bluetooth/BluetoothDevice;
    const/4 v9, 0x1

    if-ne v1, v9, :cond_e

    .line 2372
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/bluetooth/BluetoothDevice;->setTrust(Z)Z

    .line 2374
    :cond_e
    iget-object v10, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v9, 0x1

    if-ne v1, v9, :cond_f

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {v10, v2, v9}, Landroid/server/BluetoothService;->allowIncomingProfileConnect(Landroid/bluetooth/BluetoothDevice;Z)Z

    goto/16 :goto_0

    :cond_f
    const/4 v9, 0x0

    goto :goto_2

    .line 2376
    .end local v1           #allow:I
    .end local v2           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_10
    const-string v9, "android.bluetooth.device.action.PROFILE_DISCONNECTED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 2377
    const-string v9, "android.bluetooth.device.extra.PROFILE"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 2378
    .local v6, profile:I
    const-string v9, "BluetoothService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Received ACTION_PROFILE_DISCONNECTED, profile= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2380
    packed-switch v6, :pswitch_data_0

    .line 2395
    :goto_3
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mWaitingForHeadsetDisconnected:Z
    invoke-static {v9}, Landroid/server/BluetoothService;->access$1100(Landroid/server/BluetoothService;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mWaitingForA2dpDisconnected:Z
    invoke-static {v9}, Landroid/server/BluetoothService;->access$1200(Landroid/server/BluetoothService;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mWaitingForOpcDisconnected:Z
    invoke-static {v9}, Landroid/server/BluetoothService;->access$1300(Landroid/server/BluetoothService;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mWaitingForHidDisconnected:Z
    invoke-static {v9}, Landroid/server/BluetoothService;->access$1400(Landroid/server/BluetoothService;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 2399
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;
    invoke-static {v9}, Landroid/server/BluetoothService;->access$800(Landroid/server/BluetoothService;)Landroid/server/BluetoothAdapterStateMachine;

    move-result-object v9

    const/16 v10, 0x36

    new-instance v11, Ljava/lang/Boolean;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v9, v10, v11}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2382
    :pswitch_0
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v10, 0x0

    #setter for: Landroid/server/BluetoothService;->mWaitingForHeadsetDisconnected:Z
    invoke-static {v9, v10}, Landroid/server/BluetoothService;->access$1102(Landroid/server/BluetoothService;Z)Z

    goto :goto_3

    .line 2385
    :pswitch_1
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v10, 0x0

    #setter for: Landroid/server/BluetoothService;->mWaitingForA2dpDisconnected:Z
    invoke-static {v9, v10}, Landroid/server/BluetoothService;->access$1202(Landroid/server/BluetoothService;Z)Z

    goto :goto_3

    .line 2388
    :pswitch_2
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v10, 0x0

    #setter for: Landroid/server/BluetoothService;->mWaitingForOpcDisconnected:Z
    invoke-static {v9, v10}, Landroid/server/BluetoothService;->access$1302(Landroid/server/BluetoothService;Z)Z

    goto :goto_3

    .line 2391
    :pswitch_3
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v10, 0x0

    #setter for: Landroid/server/BluetoothService;->mWaitingForHidDisconnected:Z
    invoke-static {v9, v10}, Landroid/server/BluetoothService;->access$1402(Landroid/server/BluetoothService;Z)Z

    goto :goto_3

    .line 2401
    .end local v6           #profile:I
    :cond_11
    const-string v9, "android.intent.action.DISCOVERABLE_TIMEOUT"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 2403
    const-string v9, "BluetoothService"

    const-string v10, "Received ACTION_ALARM_DISCOVERABLE_TIMEOUT"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/16 v10, 0x15

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/server/BluetoothService;->setScanMode(II)Z

    goto/16 :goto_0

    .line 2406
    :cond_12
    const-string v9, "com.htc.MIRROR_DISPLAY_STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 2409
    const-string/jumbo v9, "mirror_display_status"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 2410
    .local v5, mirrorState:Z
    const/4 v9, 0x1

    if-ne v5, v9, :cond_0

    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v9}, Landroid/server/BluetoothService;->isDiscovering()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 2411
    const-string v9, "BluetoothService"

    const-string v10, "Wireless display activated, stop any progressing scan"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v9}, Landroid/server/BluetoothService;->cancelDiscovery()Z

    goto/16 :goto_0

    .line 2414
    .end local v5           #mirrorState:Z
    :cond_13
    const-string v9, "htc.intent.action.ACTION_WFD_SESSION"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2417
    const-string/jumbo v9, "state"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 2418
    .restart local v8       #state:I
    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v9}, Landroid/server/BluetoothService;->isDiscovering()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 2419
    const-string v9, "BluetoothService"

    const-string v10, "Miracast activated, stop any progressing scan"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v9}, Landroid/server/BluetoothService;->cancelDiscovery()Z

    goto/16 :goto_0

    .line 2380
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
