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
    .line 1397
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1397
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .parameter "content"
    .parameter "intent"

    .prologue
    .line 1399
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1400
    .local v1, action:Ljava/lang/String;
    const-string v12, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1401
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;
    invoke-static {v12}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    .line 1402
    :try_start_0
    const-string v12, "connected"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 1403
    .local v10, usbConnected:Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const-string v14, "rndis"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    #setter for: Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z
    invoke-static {v12, v14}, Lcom/android/server/connectivity/Tethering;->access$202(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1406
    const/4 v12, 0x4

    new-array v6, v12, [Ljava/lang/Object;

    .line 1407
    .local v6, mParams:[Ljava/lang/Object;
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z
    invoke-static {v14}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v6, v12

    .line 1408
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mUsbConnected:Z
    invoke-static {v14}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v6, v12

    .line 1409
    const/4 v12, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z
    invoke-static {v14}, Lcom/android/server/connectivity/Tethering;->access$400(Lcom/android/server/connectivity/Tethering;)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v6, v12

    .line 1410
    const/4 v12, 0x3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mBooted:Z
    invoke-static {v14}, Lcom/android/server/connectivity/Tethering;->access$500(Lcom/android/server/connectivity/Tethering;)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v6, v12

    .line 1411
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/16 v14, 0x11

    #calls: Lcom/android/server/connectivity/Tethering;->addToHtcTetherHistory(I[Ljava/lang/Object;)V
    invoke-static {v12, v14, v6}, Lcom/android/server/connectivity/Tethering;->access$600(Lcom/android/server/connectivity/Tethering;I[Ljava/lang/Object;)V

    .line 1415
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mUsbConnected:Z
    invoke-static {v12}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;)Z

    move-result v12

    if-eq v12, v10, :cond_0

    .line 1416
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #setter for: Lcom/android/server/connectivity/Tethering;->mUsbConnected:Z
    invoke-static {v12, v10}, Lcom/android/server/connectivity/Tethering;->access$302(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1417
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mUsbConnected:Z
    invoke-static {v14}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;)Z

    move-result v14

    #calls: Lcom/android/server/connectivity/Tethering;->enableUsbIfaces(Z)V
    invoke-static {v12, v14}, Lcom/android/server/connectivity/Tethering;->access$700(Lcom/android/server/connectivity/Tethering;Z)V

    .line 1422
    :cond_0
    const-string v12, "Tethering"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "got USB_STATE change: usbConnected="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", mRndisEnabled="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z
    invoke-static {v15}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", mUsbTetherRequested="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z
    invoke-static {v15}, Lcom/android/server/connectivity/Tethering;->access$400(Lcom/android/server/connectivity/Tethering;)Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    if-eqz v10, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z
    invoke-static {v12}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Z

    move-result v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z
    invoke-static {v12}, Lcom/android/server/connectivity/Tethering;->access$400(Lcom/android/server/connectivity/Tethering;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1428
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v14, 0x1

    #calls: Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)V
    invoke-static {v12, v14}, Lcom/android/server/connectivity/Tethering;->access$800(Lcom/android/server/connectivity/Tethering;Z)V

    .line 1431
    :cond_1
    if-nez v10, :cond_2

    .line 1433
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v14, 0x0

    #setter for: Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z
    invoke-static {v12, v14}, Lcom/android/server/connectivity/Tethering;->access$402(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1437
    :cond_2
    monitor-exit v13

    .line 1570
    .end local v6           #mParams:[Ljava/lang/Object;
    .end local v10           #usbConnected:Z
    :cond_3
    :goto_0
    return-void

    .line 1437
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 1452
    :cond_4
    const-string v12, "android.net.hotspot.ASSOCLIST"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1453
    const-string v12, "Tethering"

    const-string v13, ">>>>>>receive ASSOC_LIST_CHANGE_ACTION<<<<<<"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/server/connectivity/Tethering;->access$900(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v12

    const-string v13, "wifi"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiManager;

    .line 1458
    .local v11, wifimanager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getWifidisplayApEnabled()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1459
    const-string v12, "Tethering"

    const-string v13, "WifiDisplay, disable ThertingNotification: "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V
    invoke-static {v12}, Lcom/android/server/connectivity/Tethering;->access$1000(Lcom/android/server/connectivity/Tethering;)V

    .line 1466
    :cond_5
    const/4 v12, 0x1

    new-array v6, v12, [Ljava/lang/Object;

    .line 1467
    .restart local v6       #mParams:[Ljava/lang/Object;
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mHotspotIconShown:Z
    invoke-static {v13}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v6, v12

    .line 1468
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/16 v13, 0xb

    #calls: Lcom/android/server/connectivity/Tethering;->addToHtcTetherHistory(I[Ljava/lang/Object;)V
    invoke-static {v12, v13, v6}, Lcom/android/server/connectivity/Tethering;->access$600(Lcom/android/server/connectivity/Tethering;I[Ljava/lang/Object;)V

    .line 1472
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mHotspotIconShown:Z
    invoke-static {v12}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;)Z

    move-result v12

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;
    invoke-static {v12}, Lcom/android/server/connectivity/Tethering;->access$1200(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 1473
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;
    invoke-static {v13}, Lcom/android/server/connectivity/Tethering;->access$1200(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v13

    iget v13, v13, Landroid/app/Notification;->icon:I

    #calls: Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V
    invoke-static {v12, v13}, Lcom/android/server/connectivity/Tethering;->access$1300(Lcom/android/server/connectivity/Tethering;I)V

    goto :goto_0

    .line 1478
    .end local v6           #mParams:[Ljava/lang/Object;
    .end local v11           #wifimanager:Landroid/net/wifi/WifiManager;
    :cond_6
    const-string v12, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 1479
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v13, 0x1

    #setter for: Lcom/android/server/connectivity/Tethering;->mBooted:Z
    invoke-static {v12, v13}, Lcom/android/server/connectivity/Tethering;->access$502(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1482
    const/4 v12, 0x2

    new-array v6, v12, [Ljava/lang/Object;

    .line 1483
    .restart local v6       #mParams:[Ljava/lang/Object;
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mHotspotIconShown:Z
    invoke-static {v13}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v6, v12

    .line 1484
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPendingTetherStateChangeIntent:Landroid/content/Intent;
    invoke-static {v12}, Lcom/android/server/connectivity/Tethering;->access$1400(Lcom/android/server/connectivity/Tethering;)Landroid/content/Intent;

    move-result-object v12

    if-eqz v12, :cond_a

    const/4 v12, 0x1

    :goto_1
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v6, v13

    .line 1485
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/16 v13, 0xc

    #calls: Lcom/android/server/connectivity/Tethering;->addToHtcTetherHistory(I[Ljava/lang/Object;)V
    invoke-static {v12, v13, v6}, Lcom/android/server/connectivity/Tethering;->access$600(Lcom/android/server/connectivity/Tethering;I[Ljava/lang/Object;)V

    .line 1489
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPendingTetherStateChangeIntent:Landroid/content/Intent;
    invoke-static {v12}, Lcom/android/server/connectivity/Tethering;->access$1400(Lcom/android/server/connectivity/Tethering;)Landroid/content/Intent;

    move-result-object v12

    if-eqz v12, :cond_7

    .line 1490
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPendingTetherStateChangeIntent:Landroid/content/Intent;
    invoke-static {v12}, Lcom/android/server/connectivity/Tethering;->access$1400(Lcom/android/server/connectivity/Tethering;)Landroid/content/Intent;

    move-result-object v12

    const-string v13, "availableArray"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1492
    .local v3, availableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPendingTetherStateChangeIntent:Landroid/content/Intent;
    invoke-static {v12}, Lcom/android/server/connectivity/Tethering;->access$1400(Lcom/android/server/connectivity/Tethering;)Landroid/content/Intent;

    move-result-object v12

    const-string v13, "activeArray"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1494
    .local v2, activeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPendingTetherStateChangeIntent:Landroid/content/Intent;
    invoke-static {v12}, Lcom/android/server/connectivity/Tethering;->access$1400(Lcom/android/server/connectivity/Tethering;)Landroid/content/Intent;

    move-result-object v12

    const-string v13, "erroredArray"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1497
    .local v4, erroredList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/server/connectivity/Tethering;->access$900(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPendingTetherStateChangeIntent:Landroid/content/Intent;
    invoke-static {v13}, Lcom/android/server/connectivity/Tethering;->access$1400(Lcom/android/server/connectivity/Tethering;)Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1498
    const-string v12, "Tethering"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "postpone sendTetherStateChangedBroadcast after boot completed"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v13, 0x0

    #setter for: Lcom/android/server/connectivity/Tethering;->mPendingTetherStateChangeIntent:Landroid/content/Intent;
    invoke-static {v12, v13}, Lcom/android/server/connectivity/Tethering;->access$1402(Lcom/android/server/connectivity/Tethering;Landroid/content/Intent;)Landroid/content/Intent;

    .line 1502
    .end local v2           #activeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #availableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #erroredList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mHotspotIconShown:Z
    invoke-static {v12}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;)Z

    move-result v12

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPendingNotiIcon:I
    invoke-static {v12}, Lcom/android/server/connectivity/Tethering;->access$1500(Lcom/android/server/connectivity/Tethering;)I

    move-result v12

    if-eqz v12, :cond_8

    .line 1503
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPendingNotiIcon:I
    invoke-static {v13}, Lcom/android/server/connectivity/Tethering;->access$1500(Lcom/android/server/connectivity/Tethering;)I

    move-result v13

    #calls: Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V
    invoke-static {v12, v13}, Lcom/android/server/connectivity/Tethering;->access$1300(Lcom/android/server/connectivity/Tethering;I)V

    .line 1505
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mBtIconShown:Z
    invoke-static {v12}, Lcom/android/server/connectivity/Tethering;->access$1600(Lcom/android/server/connectivity/Tethering;)Z

    move-result v12

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mBtPendingNotiIcon:I
    invoke-static {v12}, Lcom/android/server/connectivity/Tethering;->access$1700(Lcom/android/server/connectivity/Tethering;)I

    move-result v12

    if-eqz v12, :cond_9

    .line 1506
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mBtPendingNotiIcon:I
    invoke-static {v13}, Lcom/android/server/connectivity/Tethering;->access$1700(Lcom/android/server/connectivity/Tethering;)I

    move-result v13

    #calls: Lcom/android/server/connectivity/Tethering;->showBtTetheredNotification(I)V
    invoke-static {v12, v13}, Lcom/android/server/connectivity/Tethering;->access$1800(Lcom/android/server/connectivity/Tethering;I)V

    .line 1508
    :cond_9
    const-string v12, "Tethering"

    const-string v13, "onReceive Intent.ACTION_BOOT_COMPLETE"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1484
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 1526
    .end local v6           #mParams:[Ljava/lang/Object;
    :cond_b
    sget-boolean v12, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v12, :cond_c

    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v13, 0x2

    if-ne v12, v13, :cond_c

    const-string v12, "com.android.internal.telephony.periodic_entitlement_check"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 1529
    sget-object v12, Lcom/android/server/connectivity/Tethering;->INTENT_ENTITLEMENT_RECHECK_IFACE:Ljava/lang/String;

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1530
    .local v5, lanIf:I
    const-string v12, "Tethering"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "@@@ lanIf = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPermittedTetherLock:Ljava/lang/Object;
    invoke-static {v12}, Lcom/android/server/connectivity/Tethering;->access$1900(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    .line 1532
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I
    invoke-static {v12}, Lcom/android/server/connectivity/Tethering;->access$2000(Lcom/android/server/connectivity/Tethering;)[I

    move-result-object v12

    const/4 v14, 0x3

    aput v14, v12, v5

    .line 1533
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1534
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v13, 0x0

    const/4 v14, 0x1

    new-instance v15, Ljava/lang/Integer;

    add-int/lit8 v16, v5, 0x10

    invoke-direct/range {v15 .. v16}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/server/connectivity/Tethering;->htcRequestPermittedTether(Ljava/lang/Boolean;ZLjava/lang/Object;)I

    .line 1535
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const-wide/32 v13, 0x5265c00

    #calls: Lcom/android/server/connectivity/Tethering;->scheduleEntitlementCheckExpiredAlarm(JI)V
    invoke-static {v12, v13, v14, v5}, Lcom/android/server/connectivity/Tethering;->access$2100(Lcom/android/server/connectivity/Tethering;JI)V

    goto/16 :goto_0

    .line 1533
    :catchall_1
    move-exception v12

    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v12

    .line 1536
    .end local v5           #lanIf:I
    :cond_c
    const-string v12, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 1537
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v0, p2

    #calls: Lcom/android/server/connectivity/Tethering;->htc_customization_PhoneTypeChange(Landroid/content/Intent;)V
    invoke-static {v12, v0}, Lcom/android/server/connectivity/Tethering;->access$2200(Lcom/android/server/connectivity/Tethering;Landroid/content/Intent;)V

    .line 1538
    const-string v12, "Tethering"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Intent- TelephonyIntents.ACTION_RADIO_TECHNOLOGY_CHANGED recieve mPhoneType= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPhoneType:I
    invoke-static {v14}, Lcom/android/server/connectivity/Tethering;->access$2300(Lcom/android/server/connectivity/Tethering;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1543
    :cond_d
    const-string v12, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 1544
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->bIsPhoneTypeNotSet:Z
    invoke-static {v12}, Lcom/android/server/connectivity/Tethering;->access$2400(Lcom/android/server/connectivity/Tethering;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1545
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/server/connectivity/Tethering;->access$900(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v12

    const-string v13, "phone"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 1546
    .local v7, mTelephonyManager:Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v13

    #setter for: Lcom/android/server/connectivity/Tethering;->mPhoneType:I
    invoke-static {v12, v13}, Lcom/android/server/connectivity/Tethering;->access$2302(Lcom/android/server/connectivity/Tethering;I)I

    .line 1547
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v12}, Lcom/android/server/connectivity/Tethering;->updateMobileApnType()V

    .line 1548
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v13, 0x0

    #setter for: Lcom/android/server/connectivity/Tethering;->bIsPhoneTypeNotSet:Z
    invoke-static {v12, v13}, Lcom/android/server/connectivity/Tethering;->access$2402(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1549
    const-string v12, "Tethering"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Intent- HtcWrapTelephonyIntents.ACTION_SERVICE_STATE_CHANGED receive mPhoneType= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPhoneType:I
    invoke-static {v14}, Lcom/android/server/connectivity/Tethering;->access$2300(Lcom/android/server/connectivity/Tethering;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1551
    .end local v7           #mTelephonyManager:Landroid/telephony/TelephonyManager;
    :cond_e
    const-string v12, "android.net.wifi.WIFIDISPLAY_AP_STATE_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 1552
    const-string v12, "wifi_state"

    const/16 v13, 0xb

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 1553
    .local v8, state:I
    const/16 v12, 0xd

    if-ne v8, v12, :cond_10

    const/4 v9, 0x1

    .line 1555
    .local v9, status:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mWifiConcurrent:Z
    invoke-static {v12}, Lcom/android/server/connectivity/Tethering;->access$2500(Lcom/android/server/connectivity/Tethering;)Z

    move-result v12

    if-eq v12, v9, :cond_3

    .line 1556
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2600()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2700()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Wifi AP status changed = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #setter for: Lcom/android/server/connectivity/Tethering;->mWifiConcurrent:Z
    invoke-static {v12, v9}, Lcom/android/server/connectivity/Tethering;->access$2502(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1558
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v12}, Lcom/android/server/connectivity/Tethering;->updateMobileApnType()V

    goto/16 :goto_0

    .line 1553
    .end local v9           #status:Z
    :cond_10
    const/4 v9, 0x0

    goto :goto_2

    .line 1560
    .end local v8           #state:I
    :cond_11
    const-string v12, "com.htc.MIRROR_DISPLAY_STATE_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1561
    const-string v12, "mirror_display_status"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 1563
    .restart local v9       #status:Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mMediaLinkStatus:Z
    invoke-static {v12}, Lcom/android/server/connectivity/Tethering;->access$2800(Lcom/android/server/connectivity/Tethering;)Z

    move-result v12

    if-eq v12, v9, :cond_3

    .line 1564
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2600()Z

    move-result v12

    if-eqz v12, :cond_12

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2700()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Media link status changed = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    :cond_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #setter for: Lcom/android/server/connectivity/Tethering;->mMediaLinkStatus:Z
    invoke-static {v12, v9}, Lcom/android/server/connectivity/Tethering;->access$2802(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1566
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v12}, Lcom/android/server/connectivity/Tethering;->updateMobileApnType()V

    goto/16 :goto_0
.end method
