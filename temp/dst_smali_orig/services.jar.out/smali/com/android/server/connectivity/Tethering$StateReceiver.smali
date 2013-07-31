.class Lcom/android/server/connectivity/Tethering$StateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .parameter "content"
    .parameter "intent"

    .prologue
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .local v1, action:Ljava/lang/String;
    const-string v11, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    :try_start_0
    const-string v11, "connected"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .local v9, usbConnected:Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const-string v13, "rndis"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    #setter for: Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z
    invoke-static {v11, v13}, Lcom/android/server/connectivity/Tethering;->access$202(Lcom/android/server/connectivity/Tethering;Z)Z

    const/4 v11, 0x4

    new-array v6, v11, [Ljava/lang/Object;

    .local v6, mParams:[Ljava/lang/Object;
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z
    invoke-static {v13}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v6, v11

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mUsbConnected:Z
    invoke-static {v13}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v6, v11

    const/4 v11, 0x2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z
    invoke-static {v13}, Lcom/android/server/connectivity/Tethering;->access$400(Lcom/android/server/connectivity/Tethering;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v6, v11

    const/4 v11, 0x3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mBooted:Z
    invoke-static {v13}, Lcom/android/server/connectivity/Tethering;->access$500(Lcom/android/server/connectivity/Tethering;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v6, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/16 v13, 0x11

    #calls: Lcom/android/server/connectivity/Tethering;->addToHtcTetherHistory(I[Ljava/lang/Object;)V
    invoke-static {v11, v13, v6}, Lcom/android/server/connectivity/Tethering;->access$600(Lcom/android/server/connectivity/Tethering;I[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mUsbConnected:Z
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;)Z

    move-result v11

    if-eq v11, v9, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #setter for: Lcom/android/server/connectivity/Tethering;->mUsbConnected:Z
    invoke-static {v11, v9}, Lcom/android/server/connectivity/Tethering;->access$302(Lcom/android/server/connectivity/Tethering;Z)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mUsbConnected:Z
    invoke-static {v13}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;)Z

    move-result v13

    #calls: Lcom/android/server/connectivity/Tethering;->enableUsbIfaces(Z)V
    invoke-static {v11, v13}, Lcom/android/server/connectivity/Tethering;->access$700(Lcom/android/server/connectivity/Tethering;Z)V

    :cond_0
    const-string v11, "Tethering"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "got USB_STATE change: usbConnected="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", mRndisEnabled="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z
    invoke-static {v14}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", mUsbTetherRequested="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z
    invoke-static {v14}, Lcom/android/server/connectivity/Tethering;->access$400(Lcom/android/server/connectivity/Tethering;)Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$400(Lcom/android/server/connectivity/Tethering;)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v13, 0x1

    #calls: Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)V
    invoke-static {v11, v13}, Lcom/android/server/connectivity/Tethering;->access$800(Lcom/android/server/connectivity/Tethering;Z)V

    :cond_1
    if-nez v9, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v13, 0x0

    #setter for: Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z
    invoke-static {v11, v13}, Lcom/android/server/connectivity/Tethering;->access$402(Lcom/android/server/connectivity/Tethering;Z)Z

    :cond_2
    monitor-exit v12

    .end local v6           #mParams:[Ljava/lang/Object;
    .end local v9           #usbConnected:Z
    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    :cond_4
    const-string v11, "android.net.hotspot.ASSOCLIST"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, "Tethering"

    const-string v12, ">>>>>>receive ASSOC_LIST_CHANGE_ACTION<<<<<<"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$900(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v11

    const-string v12, "wifi"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiManager;

    .local v10, wifimanager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getWifidisplayApEnabled()Z

    move-result v11

    if-eqz v11, :cond_5

    const-string v11, "Tethering"

    const-string v12, "WifiDisplay, disable ThertingNotification: "

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$1000(Lcom/android/server/connectivity/Tethering;)V

    :cond_5
    const/4 v11, 0x1

    new-array v6, v11, [Ljava/lang/Object;

    .restart local v6       #mParams:[Ljava/lang/Object;
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mHotspotIconShown:Z
    invoke-static {v12}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v6, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/16 v12, 0xb

    #calls: Lcom/android/server/connectivity/Tethering;->addToHtcTetherHistory(I[Ljava/lang/Object;)V
    invoke-static {v11, v12, v6}, Lcom/android/server/connectivity/Tethering;->access$600(Lcom/android/server/connectivity/Tethering;I[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mHotspotIconShown:Z
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;)Z

    move-result v11

    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$1200(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v11

    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;
    invoke-static {v12}, Lcom/android/server/connectivity/Tethering;->access$1200(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v12

    iget v12, v12, Landroid/app/Notification;->icon:I

    #calls: Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V
    invoke-static {v11, v12}, Lcom/android/server/connectivity/Tethering;->access$1300(Lcom/android/server/connectivity/Tethering;I)V

    goto :goto_0

    .end local v6           #mParams:[Ljava/lang/Object;
    .end local v10           #wifimanager:Landroid/net/wifi/WifiManager;
    :cond_6
    const-string v11, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v12, 0x1

    #setter for: Lcom/android/server/connectivity/Tethering;->mBooted:Z
    invoke-static {v11, v12}, Lcom/android/server/connectivity/Tethering;->access$502(Lcom/android/server/connectivity/Tethering;Z)Z

    const/4 v11, 0x2

    new-array v6, v11, [Ljava/lang/Object;

    .restart local v6       #mParams:[Ljava/lang/Object;
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mHotspotIconShown:Z
    invoke-static {v12}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v6, v11

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPendingTetherStateChangeIntent:Landroid/content/Intent;
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$1400(Lcom/android/server/connectivity/Tethering;)Landroid/content/Intent;

    move-result-object v11

    if-eqz v11, :cond_9

    const/4 v11, 0x1

    :goto_1
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v6, v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/16 v12, 0xc

    #calls: Lcom/android/server/connectivity/Tethering;->addToHtcTetherHistory(I[Ljava/lang/Object;)V
    invoke-static {v11, v12, v6}, Lcom/android/server/connectivity/Tethering;->access$600(Lcom/android/server/connectivity/Tethering;I[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPendingTetherStateChangeIntent:Landroid/content/Intent;
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$1400(Lcom/android/server/connectivity/Tethering;)Landroid/content/Intent;

    move-result-object v11

    if-eqz v11, :cond_7

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPendingTetherStateChangeIntent:Landroid/content/Intent;
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$1400(Lcom/android/server/connectivity/Tethering;)Landroid/content/Intent;

    move-result-object v11

    const-string v12, "availableArray"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .local v3, availableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPendingTetherStateChangeIntent:Landroid/content/Intent;
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$1400(Lcom/android/server/connectivity/Tethering;)Landroid/content/Intent;

    move-result-object v11

    const-string v12, "activeArray"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .local v2, activeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPendingTetherStateChangeIntent:Landroid/content/Intent;
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$1400(Lcom/android/server/connectivity/Tethering;)Landroid/content/Intent;

    move-result-object v11

    const-string v12, "erroredArray"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .local v4, erroredList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$900(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPendingTetherStateChangeIntent:Landroid/content/Intent;
    invoke-static {v12}, Lcom/android/server/connectivity/Tethering;->access$1400(Lcom/android/server/connectivity/Tethering;)Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    const-string v11, "Tethering"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "postpone sendTetherStateChangedBroadcast after boot completed"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v12, 0x0

    #setter for: Lcom/android/server/connectivity/Tethering;->mPendingTetherStateChangeIntent:Landroid/content/Intent;
    invoke-static {v11, v12}, Lcom/android/server/connectivity/Tethering;->access$1402(Lcom/android/server/connectivity/Tethering;Landroid/content/Intent;)Landroid/content/Intent;

    .end local v2           #activeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #availableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #erroredList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mHotspotIconShown:Z
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;)Z

    move-result v11

    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPendingNotiIcon:I
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$1500(Lcom/android/server/connectivity/Tethering;)I

    move-result v11

    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPendingNotiIcon:I
    invoke-static {v12}, Lcom/android/server/connectivity/Tethering;->access$1500(Lcom/android/server/connectivity/Tethering;)I

    move-result v12

    #calls: Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V
    invoke-static {v11, v12}, Lcom/android/server/connectivity/Tethering;->access$1300(Lcom/android/server/connectivity/Tethering;I)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mBtIconShown:Z
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$1600(Lcom/android/server/connectivity/Tethering;)Z

    move-result v11

    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mBtPendingNotiIcon:I
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$1700(Lcom/android/server/connectivity/Tethering;)I

    move-result v11

    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mBtPendingNotiIcon:I
    invoke-static {v12}, Lcom/android/server/connectivity/Tethering;->access$1700(Lcom/android/server/connectivity/Tethering;)I

    move-result v12

    #calls: Lcom/android/server/connectivity/Tethering;->showBtTetheredNotification(I)V
    invoke-static {v11, v12}, Lcom/android/server/connectivity/Tethering;->access$1800(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_0

    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_1

    .end local v6           #mParams:[Ljava/lang/Object;
    :cond_a
    sget-boolean v11, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v11, :cond_b

    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v12, 0x2

    if-ne v11, v12, :cond_b

    const-string v11, "com.android.internal.telephony.periodic_entitlement_check"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    sget-object v11, Lcom/android/server/connectivity/Tethering;->INTENT_ENTITLEMENT_RECHECK_IFACE:Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .local v5, lanIf:I
    const-string v11, "Tethering"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "@@@ lanIf = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPermittedTetherLock:Ljava/lang/Object;
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$1900(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$2000(Lcom/android/server/connectivity/Tethering;)[I

    move-result-object v11

    const/4 v13, 0x3

    aput v13, v11, v5

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v12, 0x0

    const/4 v13, 0x1

    new-instance v14, Ljava/lang/Integer;

    add-int/lit8 v15, v5, 0x10

    invoke-direct {v14, v15}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/server/connectivity/Tethering;->htcRequestPermittedTether(Ljava/lang/Boolean;ZLjava/lang/Object;)I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const-wide/32 v12, 0x5265c00

    #calls: Lcom/android/server/connectivity/Tethering;->scheduleEntitlementCheckExpiredAlarm(JI)V
    invoke-static {v11, v12, v13, v5}, Lcom/android/server/connectivity/Tethering;->access$2100(Lcom/android/server/connectivity/Tethering;JI)V

    goto/16 :goto_0

    :catchall_1
    move-exception v11

    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v11

    .end local v5           #lanIf:I
    :cond_b
    const-string v11, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v0, p2

    #calls: Lcom/android/server/connectivity/Tethering;->htc_customization_PhoneTypeChange(Landroid/content/Intent;)V
    invoke-static {v11, v0}, Lcom/android/server/connectivity/Tethering;->access$2200(Lcom/android/server/connectivity/Tethering;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_c
    const-string v11, "android.net.wifi.WIFIDISPLAY_AP_STATE_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    const-string v11, "wifi_state"

    const/16 v12, 0xb

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .local v7, state:I
    const/16 v11, 0xd

    if-ne v7, v11, :cond_e

    const/4 v8, 0x1

    .local v8, status:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mWifiConcurrent:Z
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$2300(Lcom/android/server/connectivity/Tethering;)Z

    move-result v11

    if-eq v11, v8, :cond_3

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2400()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2500()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Wifi AP status changed = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #setter for: Lcom/android/server/connectivity/Tethering;->mWifiConcurrent:Z
    invoke-static {v11, v8}, Lcom/android/server/connectivity/Tethering;->access$2302(Lcom/android/server/connectivity/Tethering;Z)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v11}, Lcom/android/server/connectivity/Tethering;->updateMobileApnType()V

    goto/16 :goto_0

    .end local v8           #status:Z
    :cond_e
    const/4 v8, 0x0

    goto :goto_2

    .end local v7           #state:I
    :cond_f
    const-string v11, "com.htc.MIRROR_DISPLAY_STATE_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "mirror_display_status"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .restart local v8       #status:Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mMediaLinkStatus:Z
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$2600(Lcom/android/server/connectivity/Tethering;)Z

    move-result v11

    if-eq v11, v8, :cond_3

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2400()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2500()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Media link status changed = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #setter for: Lcom/android/server/connectivity/Tethering;->mMediaLinkStatus:Z
    invoke-static {v11, v8}, Lcom/android/server/connectivity/Tethering;->access$2602(Lcom/android/server/connectivity/Tethering;Z)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v11}, Lcom/android/server/connectivity/Tethering;->updateMobileApnType()V

    goto/16 :goto_0
.end method
