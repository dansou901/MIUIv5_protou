.class final Lcom/htc/server/WirelessDisplayService$H;
.super Landroid/os/Handler;
.source "WirelessDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WirelessDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WirelessDisplayService;


# direct methods
.method constructor <init>(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter

    .prologue
    .line 738
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 739
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 72
    .parameter "msg"

    .prologue
    .line 743
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v65, v0

    .line 744
    .local v65, type:I
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 745
    .local v10, arg1:I
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg2:I

    .line 746
    .local v11, arg2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v49

    .line 748
    .local v49, previousState:I
    sparse-switch v65, :sswitch_data_0

    .line 1836
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 750
    :sswitch_0
    const-string v67, "WirelessDisplayService"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "HANDLE_CHANGE_STATE previousState = "

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, v68

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v68

    const-string v69, ", state="

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, v68

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v68

    const-string v69, " err="

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, v68

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    move/from16 v0, v49

    if-eq v10, v0, :cond_0

    .line 754
    const/16 v67, 0x8

    move/from16 v0, v49

    move/from16 v1, v67

    if-ne v0, v1, :cond_1

    const/16 v67, 0x1

    move/from16 v0, v67

    if-ne v10, v0, :cond_1

    .line 756
    const-string v67, "WirelessDisplayService"

    const-string v68, "[WFDERR][2] Wait 90000 secs and dongle not found."

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$102(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 759
    :cond_1
    const/16 v67, 0x1

    move/from16 v0, v67

    if-ne v10, v0, :cond_2

    .line 761
    const/16 v67, 0x33

    const/16 v68, 0x35

    move-object/from16 v0, p0

    move/from16 v1, v67

    move/from16 v2, v68

    invoke-virtual {v0, v1, v2, v11}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v32

    .line 762
    .local v32, msg2:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 767
    .end local v32           #msg2:Landroid/os/Message;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static {v0, v10, v11}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    goto :goto_0

    .line 770
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiScanCount:I
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$300(Lcom/htc/server/WirelessDisplayService;)I

    move-result v67

    if-lez v67, :cond_4

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$310(Lcom/htc/server/WirelessDisplayService;)I

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v67

    if-nez v67, :cond_3

    .line 773
    const-string v67, "WirelessDisplayService"

    const-string v68, "wifi scan fail!"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :cond_3
    const/16 v67, 0x11

    const/16 v68, 0x0

    const/16 v69, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v67

    move/from16 v2, v68

    move/from16 v3, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v41

    .line 775
    .local v41, msgWifiScan:Landroid/os/Message;
    const-wide/16 v67, 0x1770

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-wide/from16 v2, v67

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 777
    .end local v41           #msgWifiScan:Landroid/os/Message;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x3

    #setter for: Lcom/htc/server/WirelessDisplayService;->mWifiScanCount:I
    invoke-static/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$302(Lcom/htc/server/WirelessDisplayService;I)I

    goto/16 :goto_0

    .line 781
    :sswitch_2
    new-instance v48, Landroid/content/Intent;

    const-string v67, "com.htc.intent.action.WIRELESS_NOTIFY_MIRROR_CONNECTED_SWITCH"

    move-object/from16 v0, v48

    move-object/from16 v1, v67

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 782
    .local v48, notifyUserSwitch:Landroid/content/Intent;
    const-string v67, "visible"

    const/16 v68, 0x0

    move-object/from16 v0, v48

    move-object/from16 v1, v67

    move/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 784
    const-string v67, "WirelessDisplayService"

    const-string v68, "Disable INTENT_WIRELESS_NOTIFY_MIRROR_CONNECTED_SWITCH"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 787
    .end local v48           #notifyUserSwitch:Landroid/content/Intent;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v66

    .line 788
    .local v66, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v66, :cond_0

    .line 791
    invoke-virtual/range {v66 .. v66}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v23

    .line 792
    .local v23, ipAddress:I
    move/from16 v61, v23

    .line 793
    .local v61, temp:I
    const-string v67, "%d.%d.%d.%d"

    const/16 v68, 0x4

    move/from16 v0, v68

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v68, v0

    const/16 v69, 0x0

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v70, v0

    invoke-static/range {v70 .. v70}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    aput-object v70, v68, v69

    const/16 v69, 0x1

    shr-int/lit8 v70, v23, 0x8

    move/from16 v0, v70

    and-int/lit16 v0, v0, 0xff

    move/from16 v70, v0

    invoke-static/range {v70 .. v70}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    aput-object v70, v68, v69

    const/16 v69, 0x2

    shr-int/lit8 v70, v23, 0x10

    move/from16 v0, v70

    and-int/lit16 v0, v0, 0xff

    move/from16 v70, v0

    invoke-static/range {v70 .. v70}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    aput-object v70, v68, v69

    const/16 v69, 0x3

    shr-int/lit8 v70, v23, 0x18

    move/from16 v0, v70

    and-int/lit16 v0, v0, 0xff

    move/from16 v70, v0

    invoke-static/range {v70 .. v70}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    aput-object v70, v68, v69

    invoke-static/range {v67 .. v68}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    .line 798
    .local v24, ipStr:Ljava/lang/String;
    const-string v67, "WirelessDisplayService"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "HANDLE_GET_DEVICE_IP:"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    const-string v69, "  "

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, v68

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Ljava/util/regex/Pattern;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v28

    .line 800
    .local v28, matcher2:Ljava/util/regex/Matcher;
    invoke-virtual/range {v28 .. v28}, Ljava/util/regex/Matcher;->find()Z

    move-result v67

    if-eqz v67, :cond_8

    invoke-virtual/range {v28 .. v28}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v67

    const-string v68, "0.0.0.0"

    invoke-virtual/range {v67 .. v68}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v67

    if-nez v67, :cond_8

    .line 801
    const-string v67, "WirelessDisplayService"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "Got the IP address"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v28 .. v28}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v69

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    if-nez v67, :cond_7

    .line 803
    new-instance v67, Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    const-string v70, "3655"

    invoke-direct/range {v67 .. v70}, Lcom/htc/server/WirelessDisplayService$WivuThread;-><init>(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$702(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 804
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService$WivuThread;->wivuInit()I

    move-result v67

    const/16 v68, -0x1

    move/from16 v0, v67

    move/from16 v1, v68

    if-ne v0, v1, :cond_6

    .line 805
    const-string v67, "WirelessDisplayService"

    const-string v68, "Something Wrong with netHD initialization Delete mWivuThread"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    const/16 v67, 0x0

    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$702(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 829
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    #setter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$1102(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 809
    :cond_6
    const-string v67, "WirelessDisplayService"

    const-string v68, "HANDLE_GET_DEVICE_IP: REQ_SET_MCAST_ROUTE, clearOldRoute = false"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 811
    .local v12, bundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v67

    const/16 v68, 0x1f

    const/16 v69, 0x191

    const/16 v70, -0x1

    invoke-virtual/range {v67 .. v70}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v55

    .line 812
    .local v55, setif:Landroid/os/Message;
    const-string v67, "interfaceRoute"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    move-object/from16 v0, v55

    invoke-virtual {v0, v12}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 814
    invoke-virtual/range {v55 .. v55}, Landroid/os/Message;->sendToTarget()V

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1000(Lcom/htc/server/WirelessDisplayService;)Landroid/os/PowerManager;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v67

    if-nez v67, :cond_5

    .line 816
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v67

    const/16 v68, 0x1f

    const/16 v69, 0x28

    const/16 v70, -0x1

    invoke-virtual/range {v67 .. v70}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v42

    .line 817
    .local v42, msg_leave:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 822
    .end local v12           #bundle:Landroid/os/Bundle;
    .end local v42           #msg_leave:Landroid/os/Message;
    .end local v55           #setif:Landroid/os/Message;
    :cond_7
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    const/16 v69, 0x0

    invoke-virtual/range {v67 .. v69}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestSetMCastRoute(Ljava/lang/String;Z)I

    .line 823
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService$WivuThread;->changeInterface(Ljava/lang/String;)V

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1000(Lcom/htc/server/WirelessDisplayService;)Landroid/os/PowerManager;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v67

    if-nez v67, :cond_5

    .line 825
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v67

    const/16 v68, 0x1f

    const/16 v69, 0x28

    const/16 v70, -0x1

    invoke-virtual/range {v67 .. v70}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v42

    .line 826
    .restart local v42       #msg_leave:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 830
    .end local v42           #msg_leave:Landroid/os/Message;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    if-eqz v67, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_0

    .line 831
    const/16 v67, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    .line 832
    .local v21, getIp:Landroid/os/Message;
    const-wide/16 v67, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, v67

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 838
    .end local v21           #getIp:Landroid/os/Message;
    .end local v23           #ipAddress:I
    .end local v24           #ipStr:Ljava/lang/String;
    .end local v28           #matcher2:Ljava/util/regex/Matcher;
    .end local v61           #temp:I
    .end local v66           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :sswitch_4
    const-string v67, "WirelessDisplayService"

    const-string v68, "HANDLE_STOP_DIS"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    const/16 v67, 0x1f

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1200(Lcom/htc/server/WirelessDisplayService;)Landroid/net/ConnectivityManager;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 842
    .local v5, activeNetwork:Landroid/net/NetworkInfo;
    if-eqz v5, :cond_d

    .line 843
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v67

    const/16 v68, 0x1

    move/from16 v0, v67

    move/from16 v1, v68

    if-ne v0, v1, :cond_b

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->setInterface(Ljava/lang/String;)V

    .line 845
    const-string v67, "WirelessDisplayService"

    const-string v68, "Wifi Connected, don\'t exit netHDencode"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :goto_2
    const/16 v67, 0x33

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 859
    const/16 v67, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 860
    const/16 v67, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 861
    const/16 v67, 0x1

    const/16 v68, 0x1

    const/16 v69, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v67

    move/from16 v2, v68

    move/from16 v3, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v35

    .line 862
    .local v35, msgChangeState:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1300(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    if-eqz v67, :cond_9

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$1300(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    #setter for: Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;
    invoke-static/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$1402(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 867
    const-string v67, "persist.sys.wfd.lastdongle"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$1400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    invoke-static/range {v67 .. v68}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$1302(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->clearDongleCache()Z
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v67

    if-eqz v67, :cond_a

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->notifyWHDMI()V
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1600(Lcom/htc/server/WirelessDisplayService;)V

    .line 874
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Ljava/util/List;

    move-result-object v67

    invoke-interface/range {v67 .. v67}, Ljava/util/List;->clear()V

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v67

    const/16 v68, 0x0

    invoke-virtual/range {v67 .. v68}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mExceptions:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v67

    const/16 v68, 0x49

    invoke-virtual/range {v67 .. v68}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v67

    const/16 v68, 0x0

    invoke-virtual/range {v67 .. v68}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    #setter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$1102(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 847
    .end local v35           #msgChangeState:Landroid/os/Message;
    :cond_b
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    if-eqz v67, :cond_c

    .line 848
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService$WivuThread;->stopThread()V

    .line 850
    :cond_c
    const/16 v67, 0x0

    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$702(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;

    goto/16 :goto_2

    .line 853
    :cond_d
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    if-eqz v67, :cond_e

    .line 854
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService$WivuThread;->stopThread()V

    .line 856
    :cond_e
    const/16 v67, 0x0

    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$702(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;

    goto/16 :goto_2

    .line 881
    .end local v5           #activeNetwork:Landroid/net/NetworkInfo;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->saveLimitedApInfo()V
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$2100(Lcom/htc/server/WirelessDisplayService;)V

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    invoke-virtual/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->mirrorModeStartStop(Z)Z

    .line 883
    new-instance v48, Landroid/content/Intent;

    const-string v67, "com.htc.intent.action.WIRELESS_NOTIFY_MIRROR_CONNECTED_SWITCH"

    move-object/from16 v0, v48

    move-object/from16 v1, v67

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 884
    .restart local v48       #notifyUserSwitch:Landroid/content/Intent;
    const-string v67, "visible"

    const/16 v68, 0x1

    move-object/from16 v0, v48

    move-object/from16 v1, v67

    move/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 886
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v67

    const/16 v68, 0xde

    const/16 v69, 0x0

    const/16 v70, 0x0

    invoke-virtual/range {v67 .. v70}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v18

    .line 887
    .local v18, disableSwitchMsg:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v67

    const/16 v68, 0xde

    invoke-virtual/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 888
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v67

    const-wide/16 v68, 0x1388

    move-object/from16 v0, v67

    move-object/from16 v1, v18

    move-wide/from16 v2, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 890
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v67

    const/16 v68, 0x6f

    const/16 v69, 0x1

    const/16 v70, 0x0

    invoke-virtual/range {v67 .. v70}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v29

    .line 891
    .local v29, mirrorMsg:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v67

    const/16 v68, 0x6f

    invoke-virtual/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 892
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v67

    const-wide/16 v68, 0x13ba

    move-object/from16 v0, v67

    move-object/from16 v1, v29

    move-wide/from16 v2, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 898
    .end local v18           #disableSwitchMsg:Landroid/os/Message;
    .end local v29           #mirrorMsg:Landroid/os/Message;
    .end local v48           #notifyUserSwitch:Landroid/content/Intent;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$2200(Lcom/htc/server/WirelessDisplayService;)Landroid/media/AudioManager;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v67

    if-eqz v67, :cond_f

    .line 899
    const-string v67, "WirelessDisplayService"

    const-string v68, "HANDLE_TIMEOUT_STOP, But Music Keep Playing, Wait 2 min later"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v67

    const/16 v68, 0x4

    invoke-virtual/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v39

    .line 901
    .local v39, msgTimeOut:Landroid/os/Message;
    const-wide/32 v67, 0x1d4c0

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-wide/from16 v2, v67

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 903
    .end local v39           #msgTimeOut:Landroid/os/Message;
    :cond_f
    const-string v67, "WirelessDisplayService"

    const-string v68, "HANDLE_TIMEOUT_STOP"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    const/16 v67, 0x1f

    const/16 v68, 0x21

    const/16 v69, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v67

    move/from16 v2, v68

    move/from16 v3, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v63

    .line 905
    .local v63, timeOutStop:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 910
    .end local v63           #timeOutStop:Landroid/os/Message;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->fallBackFromAppPause()V
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$2300(Lcom/htc/server/WirelessDisplayService;)V

    goto/16 :goto_0

    .line 913
    :sswitch_8
    const-string v67, "WirelessDisplayService"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "HANDLE_STOP_TRANSMIT: transmit:"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, v68

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    if-eqz v67, :cond_0

    .line 915
    const/16 v67, 0x1

    move/from16 v0, v67

    if-ne v10, v0, :cond_10

    .line 916
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    const/16 v68, 0x1

    invoke-virtual/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService$WivuThread;->setTransmit(Z)V

    goto/16 :goto_0

    .line 918
    :cond_10
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    const/16 v68, 0x0

    invoke-virtual/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService$WivuThread;->setTransmit(Z)V

    goto/16 :goto_0

    .line 922
    :sswitch_9
    const-string v67, "WirelessDisplayService"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "HANDLE_TURN_OFF_CONCURRENT_HOTSPOT, getWifidisplayApEnabled: "

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Landroid/net/wifi/WifiManager;->getWifidisplayApEnabled()Z

    move-result v69

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v68

    const-string v69, "Mirror State: "

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, v68

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    const/16 v67, 0x1

    move/from16 v0, v49

    move/from16 v1, v67

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Landroid/net/wifi/WifiManager;->getWifidisplayApEnabled()Z

    move-result v67

    if-eqz v67, :cond_0

    .line 924
    new-instance v67, Lcom/htc/server/WirelessDisplayService$H$1;

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService$H$1;-><init>(Lcom/htc/server/WirelessDisplayService$H;)V

    invoke-virtual/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService$H$1;->start()V

    goto/16 :goto_0

    .line 939
    :sswitch_a
    const-string v67, "WirelessDisplayService"

    const-string v68, "HANDLE_WIFI_DIS"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->stopWivuDiscovery()V

    goto/16 :goto_0

    .line 943
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$2500(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v67

    if-nez v67, :cond_0

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v68

    new-instance v69, Landroid/content/Intent;

    const-string v70, "com.htc.wfdservice.IWfdService"

    invoke-direct/range {v69 .. v70}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigConnection:Landroid/content/ServiceConnection;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$2600(Lcom/htc/server/WirelessDisplayService;)Landroid/content/ServiceConnection;

    move-result-object v70

    const/16 v71, 0x1

    invoke-virtual/range {v68 .. v71}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v68

    #setter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$2502(Lcom/htc/server/WirelessDisplayService;Z)Z

    .line 946
    const-string v67, "WirelessDisplayService"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "Bind WHDMI WfdService = "

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2500(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v69

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 950
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$2500(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v67

    if-eqz v67, :cond_11

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigConnection:Landroid/content/ServiceConnection;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$2600(Lcom/htc/server/WirelessDisplayService;)Landroid/content/ServiceConnection;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$2502(Lcom/htc/server/WirelessDisplayService;Z)Z

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;
    invoke-static/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$2702(Lcom/htc/server/WirelessDisplayService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 954
    const-string v67, "WirelessDisplayService"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "Unbind WfdService = "

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2500(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v69

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :cond_11
    const/16 v67, 0x13

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 957
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2800()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v67

    const/16 v68, 0x1

    invoke-virtual/range {v67 .. v68}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 960
    :sswitch_d
    const-string v67, "WirelessDisplayService"

    const-string v68, "HANDLE_RESET_WDS_USABLE_FLAG"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    const/16 v67, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 965
    :sswitch_e
    const-string v67, "WirelessDisplayService"

    const-string v68, "HANDLE_RESET_FINGERGESTURE_FLAG"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const-string v68, "HANDLE_RESET_FINGERGESTURE_FLAG"

    const/16 v69, 0x0

    #calls: Lcom/htc/server/WirelessDisplayService;->addToHtcWDSrvHistory(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static/range {v67 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2900(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x1

    invoke-virtual/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->setFingerGestureEnable(Z)V

    goto/16 :goto_0

    .line 970
    :sswitch_f
    move v13, v10

    .line 971
    .local v13, configState:I
    const/16 v67, 0x3

    move/from16 v0, v67

    if-eq v10, v0, :cond_12

    const/16 v67, 0x4

    move/from16 v0, v67

    if-ne v10, v0, :cond_17

    .line 972
    :cond_12
    const-string v67, "WirelessDisplayService"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "receiver WfdServices Call back, "

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, v68

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    new-instance v30, Landroid/content/Intent;

    const-string v67, "com.htc.intent.action.WIRELESS_DISPLAY_MIRROR_RESULT"

    move-object/from16 v0, v30

    move-object/from16 v1, v67

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 974
    .local v30, mirrorResultIntent:Landroid/content/Intent;
    const/16 v67, 0x3

    move/from16 v0, v67

    if-ne v10, v0, :cond_16

    .line 975
    const-string v67, "RESULT"

    const-string v68, "SUCCESS"

    move-object/from16 v0, v30

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 980
    :cond_13
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->getCurrentDongle()Lcom/htc/service/DongleInfo;

    move-result-object v14

    .line 982
    .local v14, currentDongle:Lcom/htc/service/DongleInfo;
    const/16 v67, 0x4

    move/from16 v0, v67

    if-eq v10, v0, :cond_14

    if-eqz v14, :cond_15

    iget v0, v14, Lcom/htc/service/DongleInfo;->status:I

    move/from16 v67, v0

    const/16 v68, 0x2

    move/from16 v0, v67

    move/from16 v1, v68

    if-eq v0, v1, :cond_15

    .line 983
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 985
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->binder_finishService()V
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$3000(Lcom/htc/server/WirelessDisplayService;)V

    goto/16 :goto_0

    .line 976
    .end local v14           #currentDongle:Lcom/htc/service/DongleInfo;
    :cond_16
    const/16 v67, 0x4

    move/from16 v0, v67

    if-ne v10, v0, :cond_13

    .line 977
    const-string v67, "RESULT"

    const-string v68, "FAIL"

    move-object/from16 v0, v30

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    invoke-virtual/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->mirrorModeStartStop(Z)Z

    goto :goto_3

    .line 986
    .end local v30           #mirrorResultIntent:Landroid/content/Intent;
    :cond_17
    const/16 v67, 0x5

    move/from16 v0, v67

    if-ne v10, v0, :cond_0

    .line 987
    const/16 v67, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 997
    .end local v13           #configState:I
    :sswitch_10
    const-string v67, "WirelessDisplayService"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "HANDLE_WIFI_SCAN_RESULT_AVAILABLE, dongle scan = "

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, v68

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    const/16 v67, 0x1

    move/from16 v0, v67

    if-ne v10, v0, :cond_18

    const/16 v67, 0x1

    :goto_4
    move-object/from16 v0, v68

    move/from16 v1, v67

    #calls: Lcom/htc/server/WirelessDisplayService;->constructDongleInfoFromWifi(Z)V
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$3100(Lcom/htc/server/WirelessDisplayService;Z)V

    .line 1000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->updateNotification()V
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$3200(Lcom/htc/server/WirelessDisplayService;)V

    goto/16 :goto_0

    .line 998
    :cond_18
    const/16 v67, 0x0

    goto :goto_4

    .line 1005
    :sswitch_11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v67

    const-string v68, "wivu_res"

    invoke-virtual/range {v67 .. v68}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v59

    .line 1006
    .local v59, status:Ljava/lang/String;
    const/16 v67, 0x3e

    move/from16 v0, v67

    if-ne v10, v0, :cond_1b

    .line 1008
    const-string v67, "WirelessDisplayService"

    move-object/from16 v0, v67

    move-object/from16 v1, v59

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    const/16 v67, 0x1

    move/from16 v0, v67

    if-ne v11, v0, :cond_1a

    .line 1010
    const-string v67, "VALUE=1"

    move-object/from16 v0, v59

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v67

    if-eqz v67, :cond_19

    .line 1011
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3300()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v67

    const/16 v68, 0x1

    invoke-virtual/range {v67 .. v68}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v67

    if-eqz v67, :cond_0

    const/16 v67, 0x1

    move/from16 v0, v49

    move/from16 v1, v67

    if-ne v0, v1, :cond_0

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x2

    const/16 v69, 0x0

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v67 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    .line 1018
    const/16 v67, 0x1

    const/16 v68, 0x1

    const/16 v69, -0x6

    move-object/from16 v0, p0

    move/from16 v1, v67

    move/from16 v2, v68

    move/from16 v3, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v62

    .line 1019
    .local v62, timeOut2:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v67

    const-wide/32 v68, 0x15f90

    move-object/from16 v0, v67

    move-object/from16 v1, v62

    move-wide/from16 v2, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1022
    .end local v62           #timeOut2:Landroid/os/Message;
    :cond_19
    const-string v67, "VALUE=0"

    move-object/from16 v0, v59

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v67

    if-eqz v67, :cond_0

    .line 1023
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3300()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v67

    const/16 v68, 0x0

    invoke-virtual/range {v67 .. v68}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 1026
    :cond_1a
    const/16 v67, -0x1

    move/from16 v0, v67

    if-ne v11, v0, :cond_0

    .line 1030
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v67

    const/16 v68, 0x1

    invoke-virtual/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x1

    const/16 v69, -0x5

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v67 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    .line 1033
    :cond_1b
    const/16 v67, 0x3f

    move/from16 v0, v67

    if-ne v10, v0, :cond_1e

    .line 1035
    const-string v67, "WirelessDisplayService"

    move-object/from16 v0, v67

    move-object/from16 v1, v59

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    const/16 v67, 0x1

    move/from16 v0, v67

    if-ne v11, v0, :cond_1d

    .line 1037
    const-string v67, "VALUE=1"

    move-object/from16 v0, v59

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v67

    if-eqz v67, :cond_1c

    .line 1038
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3400()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v67

    const/16 v68, 0x1

    invoke-virtual/range {v67 .. v68}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 1040
    :cond_1c
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3400()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v67

    const/16 v68, 0x0

    invoke-virtual/range {v67 .. v68}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 1041
    :cond_1d
    const/16 v67, -0x1

    move/from16 v0, v67

    if-ne v11, v0, :cond_0

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x1

    const/16 v69, -0x5

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v67 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    .line 1044
    :cond_1e
    const/16 v67, 0x40

    move/from16 v0, v67

    if-ne v10, v0, :cond_1f

    .line 1045
    const-string v67, "WirelessDisplayService"

    move-object/from16 v0, v67

    move-object/from16 v1, v59

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1046
    :cond_1f
    const/16 v67, 0x41

    move/from16 v0, v67

    if-eq v10, v0, :cond_0

    .line 1048
    const/16 v67, 0x42

    move/from16 v0, v67

    if-ne v10, v0, :cond_0

    .line 1049
    const/16 v67, 0x1

    move/from16 v0, v67

    if-ne v11, v0, :cond_0

    .line 1050
    move-object/from16 v64, v59

    .line 1051
    .local v64, tosend:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    move-object/from16 v1, v64

    #calls: Lcom/htc/server/WirelessDisplayService;->updteDongleInfo(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$3500(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1057
    .end local v59           #status:Ljava/lang/String;
    .end local v64           #tosend:Ljava/lang/String;
    :sswitch_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v67

    const-string v68, "wivu_req"

    invoke-virtual/range {v67 .. v68}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 1058
    .local v52, request:Ljava/lang/String;
    const-string v67, "WirelessDisplayService"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "WIVU_REQ:"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    const-string v69, ", arg1 = "

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, v68

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v68

    const-string v69, " , arg2 = "

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, v68

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    if-eqz v52, :cond_28

    const/16 v67, 0x16

    move/from16 v0, v67

    if-ne v10, v0, :cond_28

    .line 1061
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3600()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v67

    const/16 v68, 0x16

    invoke-virtual/range {v67 .. v68}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1062
    const/16 v67, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1063
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3700()Ljava/util/regex/Pattern;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v27

    .line 1064
    .local v27, matcher:Ljava/util/regex/Matcher;
    invoke-virtual/range {v27 .. v27}, Ljava/util/regex/Matcher;->find()Z

    move-result v67

    if-eqz v67, :cond_20

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v68

    #setter for: Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;
    invoke-static/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$3802(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 1066
    :cond_20
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3900()Ljava/util/regex/Pattern;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v27

    .line 1067
    invoke-virtual/range {v27 .. v27}, Ljava/util/regex/Matcher;->find()Z

    move-result v67

    if-eqz v67, :cond_21

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v68

    #setter for: Lcom/htc/server/WirelessDisplayService;->mAudioPort:Ljava/lang/String;
    invoke-static/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$4002(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 1069
    :cond_21
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$4100()Ljava/util/regex/Pattern;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v27

    .line 1070
    invoke-virtual/range {v27 .. v27}, Ljava/util/regex/Matcher;->find()Z

    move-result v67

    if-eqz v67, :cond_22

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v68

    #setter for: Lcom/htc/server/WirelessDisplayService;->mVideoPort:Ljava/lang/String;
    invoke-static/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$4202(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 1072
    :cond_22
    const-string v67, "WirelessDisplayService"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "IP = "

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$3800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    const-string v69, ", audioPort = "

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAudioPort:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$4000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    const-string v69, ", videoPort = "

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mVideoPort:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$4200(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$3800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAudioPort:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$4000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mVideoPort:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$4200(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    #calls: Lcom/htc/server/WirelessDisplayService;->setIPandPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v67 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$4300(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v67

    if-eqz v67, :cond_27

    const/16 v67, 0x2

    move/from16 v0, v49

    move/from16 v1, v67

    if-eq v0, v1, :cond_23

    const/16 v67, 0x7

    move/from16 v0, v49

    move/from16 v1, v67

    if-ne v0, v1, :cond_27

    .line 1077
    :cond_23
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    if-eqz v67, :cond_25

    const/16 v67, 0x7

    move/from16 v0, v49

    move/from16 v1, v67

    if-ne v0, v1, :cond_25

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->synchronize_lock:Ljava/lang/Object;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$4400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/Object;

    move-result-object v68

    monitor-enter v68

    .line 1079
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->app_req_status:Ljava/lang/Boolean;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$4500(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/Boolean;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v67

    if-eqz v67, :cond_24

    .line 1080
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v67

    const/16 v69, 0x29

    const/16 v70, 0x2a

    const/16 v71, 0x2c

    move-object/from16 v0, v67

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v33

    .line 1081
    .local v33, msg3:Landroid/os/Message;
    const/16 v67, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1083
    const-wide/16 v69, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-wide/from16 v2, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1087
    .end local v33           #msg3:Landroid/os/Message;
    :goto_5
    monitor-exit v68

    goto/16 :goto_0

    :catchall_0
    move-exception v67

    monitor-exit v68
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v67

    .line 1085
    :cond_24
    :try_start_1
    const-string v67, "WirelessDisplayService"

    const-string v69, "Application wants to PAUSE so ignore WIVUSTART"

    move-object/from16 v0, v67

    move-object/from16 v1, v69

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 1088
    :cond_25
    const/16 v67, 0x2

    move/from16 v0, v49

    move/from16 v1, v67

    if-ne v0, v1, :cond_0

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$4600(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v67

    if-eqz v67, :cond_26

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x3

    const/16 v69, 0x0

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v67 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    .line 1094
    const/16 v67, 0x1

    const/16 v68, 0x9

    const/16 v69, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v67

    move/from16 v2, v68

    move/from16 v3, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v67

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v67

    const/16 v68, 0x2

    invoke-virtual/range {v67 .. v68}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1096
    const-string v67, "WirelessDisplayService"

    const-string v68, "IncomingCallReceiver during configuring set mAppCallScreen:2"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1098
    :cond_26
    const/16 v67, 0x33

    const/16 v68, 0x34

    const/16 v69, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v67

    move/from16 v2, v68

    move/from16 v3, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v31

    .line 1100
    .local v31, msg1:Landroid/os/Message;
    const-wide/16 v67, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-wide/from16 v2, v67

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1106
    .end local v31           #msg1:Landroid/os/Message;
    :cond_27
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    if-eqz v67, :cond_0

    .line 1107
    const-string v67, "WirelessDisplayService"

    const-string v68, "Dongle wrong state: take it out"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    const/16 v68, 0x1

    invoke-virtual/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    .line 1109
    const/16 v67, 0x1f

    const/16 v68, 0x21

    const/16 v69, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v67

    move/from16 v2, v68

    move/from16 v3, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v26

    .line 1110
    .local v26, makeSure:Landroid/os/Message;
    const-wide/16 v67, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v67

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1113
    .end local v26           #makeSure:Landroid/os/Message;
    .end local v27           #matcher:Ljava/util/regex/Matcher;
    :cond_28
    const/16 v67, 0x17

    move/from16 v0, v67

    if-ne v10, v0, :cond_2c

    .line 1115
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3600()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v67

    const/16 v68, 0x17

    invoke-virtual/range {v67 .. v68}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1116
    const/16 v67, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1117
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    if-eqz v67, :cond_29

    .line 1118
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    const/16 v68, 0x0

    invoke-virtual/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    .line 1119
    const/16 v67, 0x7

    move/from16 v0, v49

    move/from16 v1, v67

    if-eq v0, v1, :cond_29

    .line 1120
    const-string v67, "WirelessDisplayService"

    const-string v68, "Stop Initialized by Dongle, stop transmitting packets after timeout of 16sec"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    const/16 v67, 0x6

    const/16 v68, -0x1

    const/16 v69, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v67

    move/from16 v2, v68

    move/from16 v3, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v60

    .line 1122
    .local v60, stopTrans:Landroid/os/Message;
    const-wide/16 v67, 0x3a98

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-wide/from16 v2, v67

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1125
    .end local v60           #stopTrans:Landroid/os/Message;
    :cond_29
    const/16 v67, 0x1

    move/from16 v0, v49

    move/from16 v1, v67

    if-eq v0, v1, :cond_2a

    .line 1126
    const/16 v67, 0x7

    move/from16 v0, v49

    move/from16 v1, v67

    if-ne v0, v1, :cond_2b

    .line 1135
    const-string v67, "WirelessDisplayService"

    const-string v68, "Receive WIVUSTOP in APP_PAUSE State"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    :cond_2a
    :goto_6
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$4700()Ljava/lang/Boolean;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v67

    if-eqz v67, :cond_0

    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    if-eqz v67, :cond_0

    .line 1147
    const-string v67, "WirelessDisplayService"

    const-string v68, "Switching the dongle"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->selectDongle(Ljava/lang/String;)V

    .line 1149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$102(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 1150
    const/16 v67, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v67

    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$4702(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 1137
    :cond_2b
    const/16 v67, 0x1

    const/16 v68, 0x1

    const/16 v69, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v67

    move/from16 v2, v68

    move/from16 v3, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v36

    .line 1138
    .local v36, msgChangeState1:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v67

    const/16 v68, 0x0

    invoke-virtual/range {v67 .. v68}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_6

    .line 1153
    .end local v36           #msgChangeState1:Landroid/os/Message;
    :cond_2c
    const/16 v67, 0x18

    move/from16 v0, v67

    if-ne v10, v0, :cond_2d

    .line 1154
    const-string v67, "="

    move-object/from16 v0, v52

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 1155
    .local v25, macs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    move-object/from16 v1, v25

    #calls: Lcom/htc/server/WirelessDisplayService;->updateWivuList([Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$4800(Lcom/htc/server/WirelessDisplayService;[Ljava/lang/String;)V

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    if-eqz v67, :cond_0

    const/16 v67, 0x8

    move/from16 v0, v49

    move/from16 v1, v67

    if-ne v0, v1, :cond_0

    .line 1157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Ljava/util/List;

    move-result-object v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    invoke-interface/range {v67 .. v68}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_0

    .line 1158
    const-string v67, "WirelessDisplayService"

    const-string v68, "Found the dongle: now remove the HANDLE_CHANGE_STATE"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    const/16 v67, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->selectDongle(Ljava/lang/String;)V

    .line 1161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    #setter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$1302(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 1162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$102(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 1165
    .end local v25           #macs:[Ljava/lang/String;
    :cond_2d
    const/16 v67, 0x1b

    move/from16 v0, v67

    if-ne v10, v0, :cond_2e

    .line 1166
    move-object/from16 v6, v52

    .line 1167
    .local v6, addToList:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    #calls: Lcom/htc/server/WirelessDisplayService;->updteDongleInfo(Ljava/lang/String;)V
    invoke-static {v0, v6}, Lcom/htc/server/WirelessDisplayService;->access$3500(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)V

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    if-eqz v67, :cond_0

    const/16 v67, 0x8

    move/from16 v0, v49

    move/from16 v1, v67

    if-ne v0, v1, :cond_0

    .line 1169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Ljava/util/List;

    move-result-object v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    invoke-interface/range {v67 .. v68}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_0

    .line 1170
    const-string v67, "WirelessDisplayService"

    const-string v68, "Found the dongle: now remove the HANDLE_CHANGE_STATE"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    const/16 v67, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x2

    const/16 v69, 0x0

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v67 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    .line 1174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v67

    const/16 v68, 0x1

    invoke-virtual/range {v67 .. v68}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1175
    const/16 v67, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    #setter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$1302(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 1177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$102(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 1180
    .end local v6           #addToList:Ljava/lang/String;
    :cond_2e
    const/16 v67, 0x19

    move/from16 v0, v67

    if-ne v10, v0, :cond_2f

    .line 1181
    const-string v67, "WirelessDisplayService"

    const-string v68, "SWUPGRADE and send notification"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->updateFWUpgradeNotification()V
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$4900(Lcom/htc/server/WirelessDisplayService;)V

    goto/16 :goto_0

    .line 1257
    :cond_2f
    const/16 v67, 0x1a

    move/from16 v0, v67

    if-ne v10, v0, :cond_0

    .line 1258
    const-string v67, "WirelessDisplayService"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "RATE_FEEDBACK, rate: "

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, v68

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    if-eqz v11, :cond_30

    const/16 v67, 0x2

    move/from16 v0, v67

    if-ge v11, v0, :cond_30

    .line 1260
    const-string v67, "WirelessDisplayService"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "Current Interface"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    const-string v69, ", Mirror State:"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v69

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v67

    const/16 v68, 0x3

    move/from16 v0, v67

    move/from16 v1, v68

    if-ne v0, v1, :cond_0

    .line 1262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->getCurrentDongle()Lcom/htc/service/DongleInfo;

    move-result-object v16

    .line 1263
    .local v16, dfDongle:Lcom/htc/service/DongleInfo;
    if-eqz v16, :cond_0

    .line 1264
    const-string v67, "WirelessDisplayService"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "curDongle state:"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/service/DongleInfo;->status:I

    move/from16 v69, v0

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/service/DongleInfo;->status:I

    move/from16 v67, v0

    const/16 v68, 0x3

    move/from16 v0, v67

    move/from16 v1, v68

    if-ne v0, v1, :cond_0

    .line 1266
    const/16 v67, 0x72

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1270
    .end local v16           #dfDongle:Lcom/htc/service/DongleInfo;
    :cond_30
    if-eqz v11, :cond_31

    .line 1271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$5000(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v67

    if-eqz v67, :cond_0

    .line 1272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$5000(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v67

    move-object/from16 v0, v67

    invoke-virtual {v0, v11}, Landroid/media/MediaRecorder;->changeVideoBitRate(I)V

    goto/16 :goto_0

    .line 1275
    :cond_31
    const-string v67, "WirelessDisplayService"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "Should be not here, dongle feedbake rate is "

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, v68

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1281
    .end local v52           #request:Ljava/lang/String;
    :sswitch_13
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    if-eqz v67, :cond_0

    .line 1283
    const/16 v67, 0x20

    move/from16 v0, v67

    if-ne v10, v0, :cond_32

    .line 1284
    const-string v67, "WirelessDisplayService"

    const-string v68, "REQ_DISCOVERY"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestDiscover()V

    goto/16 :goto_0

    .line 1286
    :cond_32
    const/16 v67, 0x21

    move/from16 v0, v67

    if-ne v10, v0, :cond_34

    .line 1288
    const-string v67, "WirelessDisplayService"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "REQ_PLUGGED:"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, v68

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    const/16 v51, -0x1

    .line 1290
    .local v51, req:I
    const/16 v67, 0x1

    move/from16 v0, v67

    if-ne v11, v0, :cond_33

    .line 1291
    const/16 v67, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1292
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    const/16 v68, 0x1

    invoke-virtual/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    move-result v51

    .line 1296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v67

    if-eqz v67, :cond_0

    const/16 v67, 0x1

    move/from16 v0, v49

    move/from16 v1, v67

    if-ne v0, v1, :cond_0

    .line 1297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x2

    const/16 v69, 0x0

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v67 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    .line 1299
    const/16 v67, 0x1

    const/16 v68, 0x1

    const/16 v69, -0x6

    move-object/from16 v0, p0

    move/from16 v1, v67

    move/from16 v2, v68

    move/from16 v3, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v62

    .line 1300
    .restart local v62       #timeOut2:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v67

    const-wide/32 v68, 0x15f90

    move-object/from16 v0, v67

    move-object/from16 v1, v62

    move-wide/from16 v2, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1305
    .end local v62           #timeOut2:Landroid/os/Message;
    :cond_33
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    const/16 v68, 0x0

    invoke-virtual/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    move-result v51

    .line 1306
    const/16 v67, 0x1

    const/16 v68, 0x1

    const/16 v69, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v67

    move/from16 v2, v68

    move/from16 v3, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v37

    .line 1307
    .local v37, msgChangeState2:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1311
    .end local v37           #msgChangeState2:Landroid/os/Message;
    .end local v51           #req:I
    :cond_34
    const/16 v67, 0x22

    move/from16 v0, v67

    if-ne v10, v0, :cond_35

    .line 1313
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService$WivuThread;->getDiscoveryStatus()I

    goto/16 :goto_0

    .line 1315
    :cond_35
    const/16 v67, 0x23

    move/from16 v0, v67

    if-ne v10, v0, :cond_36

    .line 1317
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService$WivuThread;->getPluggedStatus()I

    goto/16 :goto_0

    .line 1319
    :cond_36
    const/16 v67, 0x24

    move/from16 v0, v67

    if-ne v10, v0, :cond_38

    .line 1321
    const-string v67, "WirelessDisplayService"

    const-string v68, "REQ_STOP_DIS"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService$WivuThread;->stopThread()V

    .line 1323
    const/16 v67, 0x1f

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1324
    const/16 v67, 0x33

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1325
    const/16 v67, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1326
    const/16 v67, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1328
    const/16 v67, 0x1

    const/16 v68, 0x1

    const/16 v69, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v67

    move/from16 v2, v68

    move/from16 v3, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v38

    .line 1329
    .local v38, msgChangeState3:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1333
    const/16 v67, 0x0

    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$702(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 1334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1300(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    if-eqz v67, :cond_37

    .line 1335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$1300(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    #setter for: Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;
    invoke-static/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$1402(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 1336
    const-string v67, "persist.sys.wfd.lastdongle"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$1400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    invoke-static/range {v67 .. v68}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$1302(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 1339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Ljava/util/List;

    move-result-object v67

    invoke-interface/range {v67 .. v67}, Ljava/util/List;->clear()V

    .line 1340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v67

    const/16 v68, 0x0

    invoke-virtual/range {v67 .. v68}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mExceptions:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v67

    const/16 v68, 0x49

    invoke-virtual/range {v67 .. v68}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v67

    const/16 v68, 0x0

    invoke-virtual/range {v67 .. v68}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/16 :goto_0

    .line 1343
    .end local v38           #msgChangeState3:Landroid/os/Message;
    :cond_38
    const/16 v67, 0x25

    move/from16 v0, v67

    if-ne v10, v0, :cond_39

    .line 1344
    const-string v67, "WirelessDisplayService"

    const-string v68, "REQ_PEER_SELECT"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    const/16 v67, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1346
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v67

    const-string v68, "dongle_staBssid"

    invoke-virtual/range {v67 .. v68}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 1347
    .local v56, staBssid2:Ljava/lang/String;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->selectPeer(Ljava/lang/String;)V

    .line 1348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    move-object/from16 v1, v56

    #setter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$1302(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 1349
    .end local v56           #staBssid2:Ljava/lang/String;
    :cond_39
    const/16 v67, 0x27

    move/from16 v0, v67

    if-ne v10, v0, :cond_3b

    .line 1350
    const-string v67, "WirelessDisplayService"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "REQ_SET_INTERFACE:"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, v68

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v67

    const-string v68, "interface"

    invoke-virtual/range {v67 .. v68}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1352
    .local v22, ifname:Ljava/lang/String;
    const/16 v51, -0x1

    .line 1353
    .restart local v51       #req:I
    if-eqz v22, :cond_0

    .line 1354
    const/16 v67, 0x1

    move/from16 v0, v67

    if-ne v11, v0, :cond_3a

    .line 1355
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    const/16 v68, 0x1

    move-object/from16 v0, v67

    move-object/from16 v1, v22

    move/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestSetMCastRoute(Ljava/lang/String;Z)I

    move-result v51

    .line 1359
    :goto_7
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->changeInterface(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1357
    :cond_3a
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    const/16 v68, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, v22

    move/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestSetMCastRoute(Ljava/lang/String;Z)I

    move-result v51

    goto :goto_7

    .line 1362
    .end local v22           #ifname:Ljava/lang/String;
    .end local v51           #req:I
    :cond_3b
    const/16 v67, 0x28

    move/from16 v0, v67

    if-ne v10, v0, :cond_3e

    .line 1363
    const-string v67, "WirelessDisplayService"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "REQ_JOIN_GROUP:"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, v68

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    const/16 v51, -0x1

    .line 1365
    .restart local v51       #req:I
    const/16 v67, 0x1

    move/from16 v0, v67

    if-ne v11, v0, :cond_3c

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$5100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v67

    if-nez v67, :cond_3c

    .line 1366
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$5100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v67

    const/16 v68, 0x1

    invoke-virtual/range {v67 .. v68}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1367
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    const/16 v68, 0x1

    invoke-virtual/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestJoin(Z)I

    move-result v51

    goto/16 :goto_0

    .line 1368
    :cond_3c
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$5100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v67

    if-nez v67, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1000(Lcom/htc/server/WirelessDisplayService;)Landroid/os/PowerManager;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v67

    if-nez v67, :cond_0

    .line 1369
    :cond_3d
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$5100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v67

    const/16 v68, 0x0

    invoke-virtual/range {v67 .. v68}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1370
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    const/16 v68, 0x0

    invoke-virtual/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestJoin(Z)I

    goto/16 :goto_0

    .line 1373
    .end local v51           #req:I
    :cond_3e
    const/16 v67, 0x191

    move/from16 v0, v67

    if-ne v10, v0, :cond_40

    .line 1374
    const-string v67, "WirelessDisplayService"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "REQ_SET_MCAST_ROUTE:"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, v68

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v67

    const-string v68, "interfaceRoute"

    invoke-virtual/range {v67 .. v68}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1376
    .restart local v22       #ifname:Ljava/lang/String;
    const/16 v51, -0x1

    .line 1377
    .restart local v51       #req:I
    if-eqz v22, :cond_0

    .line 1378
    const/16 v67, 0x1

    move/from16 v0, v67

    if-ne v11, v0, :cond_3f

    .line 1379
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    const/16 v68, 0x1

    move-object/from16 v0, v67

    move-object/from16 v1, v22

    move/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestSetMCastRoute(Ljava/lang/String;Z)I

    move-result v51

    goto/16 :goto_0

    .line 1381
    :cond_3f
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    const/16 v68, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, v22

    move/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestSetMCastRoute(Ljava/lang/String;Z)I

    goto/16 :goto_0

    .line 1384
    .end local v22           #ifname:Ljava/lang/String;
    .end local v51           #req:I
    :cond_40
    const/16 v67, 0x192

    move/from16 v0, v67

    if-ne v10, v0, :cond_0

    .line 1385
    const-string v67, "WirelessDisplayService"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "REQ_SET_MCAST_ROUTE:"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mSupportAAC:Z
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$5200(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v69

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    const/16 v51, -0x1

    .line 1387
    .restart local v51       #req:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mSupportAAC:Z
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$5200(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v68

    invoke-virtual/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService$WivuThread;->enabledAAC(Z)I

    goto/16 :goto_0

    .line 1392
    .end local v51           #req:I
    :sswitch_14
    const/16 v67, 0x34

    move/from16 v0, v67

    if-ne v10, v0, :cond_43

    .line 1394
    const-string v67, "WirelessDisplayService"

    const-string v68, "MEDIA_START"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    const/16 v67, 0x3

    move/from16 v0, v49

    move/from16 v1, v67

    if-eq v0, v1, :cond_0

    .line 1400
    const/16 v57, -0x1

    .line 1401
    .local v57, star:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIpAndPort:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$5300(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    #calls: Lcom/htc/server/WirelessDisplayService;->startDisplayRecorder(Ljava/lang/String;)I
    invoke-static/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$5400(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)I

    move-result v57

    .line 1402
    if-nez v57, :cond_41

    .line 1403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x3

    const/16 v69, 0x0

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v67 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    .line 1404
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->wivuSQoSStart()Z

    goto/16 :goto_0

    .line 1407
    :cond_41
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    if-eqz v67, :cond_42

    .line 1408
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    const/16 v68, 0x0

    invoke-virtual/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    .line 1409
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x1

    const/16 v69, -0x4

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v67 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    .line 1411
    .end local v57           #star:I
    :cond_43
    const/16 v67, 0x35

    move/from16 v0, v67

    if-ne v10, v0, :cond_45

    .line 1413
    const-string v67, "WirelessDisplayService"

    const-string v68, "MEDIA_STOP"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    const/16 v67, 0x4

    move/from16 v0, v49

    move/from16 v1, v67

    if-ne v0, v1, :cond_44

    .line 1419
    :cond_44
    const/16 v57, -0x1

    .line 1420
    .restart local v57       #star:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->stopDisplayRecorder()I
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$5500(Lcom/htc/server/WirelessDisplayService;)I

    move-result v57

    .line 1422
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->wivuSQoSStop()Z

    goto/16 :goto_0

    .line 1423
    .end local v57           #star:I
    :cond_45
    const/16 v67, 0x36

    move/from16 v0, v67

    if-ne v10, v0, :cond_0

    .line 1424
    const-string v67, "WirelessDisplayService"

    const-string v68, "MEDIA_RESTART"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    const/16 v57, -0x1

    .line 1426
    .restart local v57       #star:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIpAndPort:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$5300(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    #calls: Lcom/htc/server/WirelessDisplayService;->startDisplayRecorder(Ljava/lang/String;)I
    invoke-static/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$5400(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)I

    move-result v57

    .line 1430
    const/16 v67, -0x1

    move/from16 v0, v57

    move/from16 v1, v67

    if-ne v0, v1, :cond_0

    .line 1431
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    if-eqz v67, :cond_46

    .line 1432
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    const/16 v68, 0x0

    invoke-virtual/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    .line 1433
    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x1

    const/16 v69, -0x4

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v67 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    .line 1439
    .end local v57           #star:I
    :sswitch_15
    move/from16 v58, v49

    .line 1440
    .local v58, state:I
    const/16 v19, 0x0

    .line 1442
    .local v19, err:I
    const/16 v67, 0x1

    move/from16 v0, v49

    move/from16 v1, v67

    if-eq v0, v1, :cond_0

    .line 1444
    const/16 v67, 0x2b

    move/from16 v0, v67

    if-ne v10, v0, :cond_4a

    .line 1445
    const-string v67, "WirelessDisplayService"

    const-string v68, "MEDIA_PAUSE event"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    const/16 v67, 0x2c

    move/from16 v0, v67

    if-ne v11, v0, :cond_48

    .line 1447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->stopDisplayRecorder()I
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$5500(Lcom/htc/server/WirelessDisplayService;)I

    move-result v8

    .line 1448
    .local v8, app:I
    if-nez v8, :cond_47

    .line 1449
    const/16 v58, 0x7

    .line 1461
    .end local v8           #app:I
    :cond_47
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    move/from16 v1, v58

    move/from16 v2, v19

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    .line 1450
    :cond_48
    const/16 v67, 0x2d

    move/from16 v0, v67

    if-ne v11, v0, :cond_49

    .line 1451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->gotoPauseState()V
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$5600(Lcom/htc/server/WirelessDisplayService;)V

    .line 1452
    const/16 v58, 0x4

    goto :goto_8

    .line 1453
    :cond_49
    const/16 v67, 0x2e

    move/from16 v0, v67

    if-ne v11, v0, :cond_47

    .line 1457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x1

    #calls: Lcom/htc/server/WirelessDisplayService;->startPatternLockStopAudio(Z)V
    invoke-static/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$5700(Lcom/htc/server/WirelessDisplayService;Z)V

    .line 1458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->gotoPauseState()V
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$5600(Lcom/htc/server/WirelessDisplayService;)V

    .line 1459
    const/16 v58, 0x9

    goto :goto_8

    .line 1462
    :cond_4a
    const/16 v67, 0x2a

    move/from16 v0, v67

    if-ne v10, v0, :cond_0

    .line 1463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->synchronize_lock:Ljava/lang/Object;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$4400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/Object;

    move-result-object v68

    monitor-enter v68

    .line 1464
    :try_start_2
    const-string v67, "WirelessDisplayService"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "MEDIA_RESUME event, App Resutest: "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->app_req_status:Ljava/lang/Boolean;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$4500(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/Boolean;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v67

    move-object/from16 v1, v69

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->app_req_status:Ljava/lang/Boolean;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$4500(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/Boolean;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v67

    if-nez v67, :cond_4b

    .line 1466
    monitor-exit v68

    goto/16 :goto_0

    .line 1519
    :catchall_1
    move-exception v67

    monitor-exit v68
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v67

    .line 1468
    :cond_4b
    const/16 v67, 0x2c

    move/from16 v0, v67

    if-ne v11, v0, :cond_4f

    .line 1469
    const/16 v67, 0x7

    move/from16 v0, v49

    move/from16 v1, v67

    if-ne v0, v1, :cond_4c

    .line 1470
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIpAndPort:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$5300(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v67

    move-object/from16 v1, v69

    #calls: Lcom/htc/server/WirelessDisplayService;->startDisplayRecorder(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$5400(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)I

    move-result v9

    .line 1471
    .local v9, app2:I
    if-nez v9, :cond_4d

    .line 1472
    const/16 v58, 0x3

    .line 1518
    .end local v9           #app2:I
    :cond_4c
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    move/from16 v1, v58

    move/from16 v2, v19

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    .line 1519
    monitor-exit v68

    goto/16 :goto_0

    .line 1474
    .restart local v9       #app2:I
    :cond_4d
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    if-eqz v67, :cond_4e

    .line 1475
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    const/16 v69, 0x0

    move-object/from16 v0, v67

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    .line 1476
    :cond_4e
    const/16 v58, 0x1

    .line 1477
    const/16 v19, -0x4

    goto :goto_9

    .line 1480
    .end local v9           #app2:I
    :cond_4f
    const/16 v67, 0x2d

    move/from16 v0, v67

    if-ne v11, v0, :cond_50

    .line 1481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->gotoPauseState()V
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$5600(Lcom/htc/server/WirelessDisplayService;)V

    .line 1488
    const/16 v58, 0x3

    goto :goto_9

    .line 1489
    :cond_50
    const/16 v67, 0x2e

    move/from16 v0, v67

    if-ne v11, v0, :cond_4c

    .line 1490
    const-string v67, "WirelessDisplayService"

    const-string v69, "MEDIA_RESUME: CALL_PAUSE event"

    move-object/from16 v0, v67

    move-object/from16 v1, v69

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    const/16 v67, 0x9

    move/from16 v0, v49

    move/from16 v1, v67

    if-ne v0, v1, :cond_4c

    .line 1501
    const/16 v58, 0x3

    .line 1502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$5000(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v67

    if-eqz v67, :cond_51

    .line 1503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v69, 0x0

    move-object/from16 v0, v67

    move/from16 v1, v69

    #calls: Lcom/htc/server/WirelessDisplayService;->startPatternLockStopAudio(Z)V
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$5700(Lcom/htc/server/WirelessDisplayService;Z)V

    .line 1504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->gotoPauseState()V
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$5600(Lcom/htc/server/WirelessDisplayService;)V

    goto :goto_9

    .line 1506
    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIpAndPort:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$5300(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v67

    move-object/from16 v1, v69

    #calls: Lcom/htc/server/WirelessDisplayService;->startDisplayRecorder(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$5400(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)I

    move-result v9

    .line 1507
    .restart local v9       #app2:I
    if-nez v9, :cond_52

    .line 1508
    const/16 v58, 0x3

    goto/16 :goto_9

    .line 1510
    :cond_52
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    if-eqz v67, :cond_53

    .line 1511
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    const/16 v69, 0x0

    move-object/from16 v0, v67

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1512
    :cond_53
    const/16 v58, 0x1

    .line 1513
    const/16 v19, -0x4

    goto/16 :goto_9

    .line 1537
    .end local v9           #app2:I
    .end local v19           #err:I
    .end local v58           #state:I
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->writeConcurrentAPMacAddress()Z
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$5800(Lcom/htc/server/WirelessDisplayService;)Z

    .line 1538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    const-string v69, "/data/misc/wifidisplay.conf"

    #calls: Lcom/htc/server/WirelessDisplayService;->readConfigFile(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$6000(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    #setter for: Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;
    invoke-static/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$5902(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 1541
    :sswitch_17
    const-string v67, "WirelessDisplayService"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "HANDLE_PROCESS_WFDSERVICE, mWfdServiceRetryCount: "

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$6100(Lcom/htc/server/WirelessDisplayService;)I

    move-result v69

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v68

    const-string v69, ", arg:"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, v68

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$2700(Lcom/htc/server/WirelessDisplayService;)Landroid/os/IBinder;

    move-result-object v67

    if-nez v67, :cond_54

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$6100(Lcom/htc/server/WirelessDisplayService;)I

    move-result v67

    if-lez v67, :cond_54

    .line 1543
    const/16 v67, 0x70

    const/16 v68, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v67

    move/from16 v2, v68

    invoke-virtual {v0, v1, v10, v2}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v40

    .line 1544
    .local v40, msgUseWfdService:Landroid/os/Message;
    const-wide/16 v67, 0xc8

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-wide/from16 v2, v67

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1545
    const-string v67, "WirelessDisplayService"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "WfdService not ready, resent, type = "

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, v68

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$6110(Lcom/htc/server/WirelessDisplayService;)I

    goto/16 :goto_0

    .line 1547
    .end local v40           #msgUseWfdService:Landroid/os/Message;
    :cond_54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$2700(Lcom/htc/server/WirelessDisplayService;)Landroid/os/IBinder;

    move-result-object v67

    if-eqz v67, :cond_56

    .line 1548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x5

    #setter for: Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I
    invoke-static/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$6102(Lcom/htc/server/WirelessDisplayService;I)I

    .line 1549
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2800()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v67

    if-eqz v67, :cond_55

    .line 1550
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2800()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v67

    const/16 v68, 0x0

    invoke-virtual/range {v67 .. v68}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1551
    const/16 v67, 0x13

    const/16 v68, 0x0

    const/16 v69, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v67

    move/from16 v2, v68

    move/from16 v3, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v53

    .line 1552
    .local v53, resetWFD_Flag:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v67

    const-wide/32 v68, 0x249f0

    move-object/from16 v0, v67

    move-object/from16 v1, v53

    move-wide/from16 v2, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1553
    const-string v67, "WirelessDisplayService"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "Use WfdService, type = "

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, v68

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    packed-switch v10, :pswitch_data_0

    goto/16 :goto_0

    .line 1556
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x3

    #calls: Lcom/htc/server/WirelessDisplayService;->binder_setMode(I)V
    invoke-static/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$6200(Lcom/htc/server/WirelessDisplayService;I)V

    .line 1558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    invoke-virtual/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->getDefaultDongle()Lcom/htc/service/DongleInfo;

    move-result-object v68

    #calls: Lcom/htc/server/WirelessDisplayService;->binder_attemptToConfigure(Lcom/htc/service/DongleInfo;)V
    invoke-static/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$6300(Lcom/htc/server/WirelessDisplayService;Lcom/htc/service/DongleInfo;)V

    goto/16 :goto_0

    .line 1569
    .end local v53           #resetWFD_Flag:Landroid/os/Message;
    :cond_55
    const-string v67, "WirelessDisplayService"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "Can\'t use WfdService, WfdService is processing ignore message, type = "

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, v68

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1572
    :cond_56
    const-string v67, "WirelessDisplayService"

    const-string v68, "Can\'t use WfdService, WfdService bind false during 2 sec"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1576
    :sswitch_18
    move v4, v10

    .line 1577
    .local v4, absoluteDirection:I
    move/from16 v50, v11

    .line 1578
    .local v50, relativeDirection:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    move/from16 v1, v50

    #calls: Lcom/htc/server/WirelessDisplayService;->mirrorOnOffDirection(II)I
    invoke-static {v0, v4, v1}, Lcom/htc/server/WirelessDisplayService;->access$6400(Lcom/htc/server/WirelessDisplayService;II)I

    move-result v20

    .line 1579
    .local v20, fingerIndicator:I
    const-string v67, "WirelessDisplayService"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "HANDLE_FINGER_GESTURE_DIRECTION, fingerIndicator = "

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, v68

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v67

    const/16 v68, 0x6f

    invoke-virtual/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService$H;->hasMessages(I)Z

    move-result v67

    if-nez v67, :cond_0

    .line 1581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    move/from16 v1, v20

    #setter for: Lcom/htc/server/WirelessDisplayService;->tempFingerIndicator:I
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$6502(Lcom/htc/server/WirelessDisplayService;I)I

    .line 1586
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$6600()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v67

    const/16 v68, 0x1

    invoke-virtual/range {v67 .. v68}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v67

    const/16 v68, 0x1

    invoke-virtual/range {v67 .. v68}, Landroid/net/wifi/WifiManager;->startDongleSingleCscan(I)Z

    .line 1588
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v67

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v68

    const/16 v69, 0x6f

    const/16 v70, 0x1

    move-object/from16 v0, v68

    move/from16 v1, v69

    move/from16 v2, v20

    move/from16 v3, v70

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v68

    const-wide/16 v69, 0x3e8

    invoke-virtual/range {v67 .. v70}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1599
    .end local v4           #absoluteDirection:I
    .end local v20           #fingerIndicator:I
    .end local v50           #relativeDirection:I
    :sswitch_19
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$6600()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v67

    if-nez v67, :cond_57

    const/16 v67, 0x1

    move/from16 v0, v67

    if-ne v11, v0, :cond_57

    .line 1600
    const-string v67, "WirelessDisplayService"

    const-string v68, "ignore HANDLE_FINGER_GESTURE, due to already handle, it is error handling message"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1602
    :cond_57
    const/16 v67, 0x6f

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1603
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$6600()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v67

    const/16 v68, 0x0

    invoke-virtual/range {v67 .. v68}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1604
    const/16 v67, 0x3

    move/from16 v0, v67

    if-ne v10, v0, :cond_59

    .line 1605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x1

    invoke-virtual/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->setFingerGestureEnable(Z)V

    .line 1606
    const/16 v67, 0x1

    move/from16 v0, v67

    new-array v15, v0, [Ljava/lang/Object;

    .line 1607
    .local v15, debug2:[Ljava/lang/Object;
    const/16 v67, 0x0

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "curMirrStatus: "

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v69

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    aput-object v68, v15, v67

    .line 1608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const-string v68, "HANDLE_FINGER_GESTURE, arg=3"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    #calls: Lcom/htc/server/WirelessDisplayService;->addToHtcWDSrvHistory(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v15}, Lcom/htc/server/WirelessDisplayService;->access$2900(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v67

    if-eqz v67, :cond_58

    .line 1610
    const-string v67, "WirelessDisplayService"

    const-string v68, "Stop mirror mode from finger gesture indicator."

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    invoke-virtual/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->mirrorModeStartStop(Z)Z

    goto/16 :goto_0

    .line 1613
    :cond_58
    const-string v67, "WirelessDisplayService"

    const-string v68, "Notify DLNA Service 3-finer down, mirror state is false"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    new-instance v46, Landroid/content/Intent;

    const-string v67, "com.htc.intent.action.NOTIFY_DLNA_WIRELESS_DISPLAY_MIRROR_OFF"

    move-object/from16 v0, v46

    move-object/from16 v1, v67

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1615
    .local v46, notifyDLNA_MirrrorOff:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1619
    .end local v15           #debug2:[Ljava/lang/Object;
    .end local v46           #notifyDLNA_MirrrorOff:Landroid/content/Intent;
    :cond_59
    const/16 v67, 0x1

    move/from16 v0, v67

    if-ne v10, v0, :cond_0

    .line 1621
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$6700()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v67

    if-eqz v67, :cond_5a

    .line 1622
    const-string v67, "WirelessDisplayService"

    const-string v68, "Pre Load DLNA Services"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v67

    new-instance v68, Landroid/content/Intent;

    const-string v69, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct/range {v68 .. v69}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v67 .. v68}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1630
    :cond_5a
    :goto_a
    const/16 v67, 0x3

    move/from16 v0, v49

    move/from16 v1, v67

    if-eq v0, v1, :cond_5b

    const/16 v67, 0x7

    move/from16 v0, v49

    move/from16 v1, v67

    if-ne v0, v1, :cond_5c

    .line 1631
    :cond_5b
    new-instance v30, Landroid/content/Intent;

    const-string v67, "com.htc.intent.action.WIRELESS_DISPLAY_MIRROR_RESULT"

    move-object/from16 v0, v30

    move-object/from16 v1, v67

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1632
    .restart local v30       #mirrorResultIntent:Landroid/content/Intent;
    const-string v67, "RESULT"

    const-string v68, "SUCCESS"

    move-object/from16 v0, v30

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1634
    const-string v67, "WirelessDisplayService"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "mirror mode status: "

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, v68

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v68

    const-string v69, " ,ignore finger gesture, sendBroadcast Intent with SUCCESS "

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    const/16 v67, 0x7

    move/from16 v0, v49

    move/from16 v1, v67

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$6700()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v67

    if-nez v67, :cond_0

    .line 1636
    const-string v67, "WirelessDisplayService"

    const-string v68, "Notify DLNA Service user want to mirror replace DLNA"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    new-instance v45, Landroid/content/Intent;

    const-string v67, "com.htc.intent.action.NOTIFY_DLNA_WIRELESS_DISPLAY_MIRROR_REPLACE"

    move-object/from16 v0, v45

    move-object/from16 v1, v67

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1638
    .local v45, notifyDLNA_Mirror_Replace:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1625
    .end local v30           #mirrorResultIntent:Landroid/content/Intent;
    .end local v45           #notifyDLNA_Mirror_Replace:Landroid/content/Intent;
    :catch_0
    move-exception v54

    .line 1626
    .local v54, se:Ljava/lang/SecurityException;
    const-string v67, "WirelessDisplayService"

    const-string v68, "Pre Load DLNA Services occur SecurityException "

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 1643
    .end local v54           #se:Ljava/lang/SecurityException;
    :cond_5c
    new-instance v44, Landroid/content/Intent;

    const-string v67, "com.htc.wifidisplay.CONFIGURE_MODE_NOTIFICATION_LIST"

    move-object/from16 v0, v44

    move-object/from16 v1, v67

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1644
    .local v44, notifyConfigerTool:Landroid/content/Intent;
    new-instance v43, Landroid/content/Intent;

    const-string v67, "com.htc.wifidisplay.CONFIGURE_MODE_NOTIFICATION_CONFIG"

    move-object/from16 v0, v43

    move-object/from16 v1, v67

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1645
    .local v43, notifyConfigToolToConfig:Landroid/content/Intent;
    new-instance v47, Landroid/content/Intent;

    const-string v67, "com.htc.wifidisplay.CONFIGURE_MODE_NORMAL"

    move-object/from16 v0, v47

    move-object/from16 v1, v67

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1646
    .local v47, notifyNormalConfigTool:Landroid/content/Intent;
    const/high16 v67, 0x1000

    move-object/from16 v0, v44

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1647
    const/high16 v67, 0x1000

    move-object/from16 v0, v43

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1648
    const/high16 v67, 0x1000

    move-object/from16 v0, v47

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1649
    new-instance v30, Landroid/content/Intent;

    const-string v67, "com.htc.intent.action.WIRELESS_DISPLAY_MIRROR_RESULT"

    move-object/from16 v0, v30

    move-object/from16 v1, v67

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1650
    .restart local v30       #mirrorResultIntent:Landroid/content/Intent;
    const-string v67, "RESULT"

    const-string v68, "FAIL"

    move-object/from16 v0, v30

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v67

    if-nez v67, :cond_5d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->notSupportConcurrent:Z
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$6800(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v67

    if-eqz v67, :cond_5e

    :cond_5d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$6900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/Hashtable;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/util/Hashtable;->size()I

    move-result v67

    if-nez v67, :cond_60

    .line 1653
    :cond_5e
    const-string v67, "WirelessDisplayService"

    const-string v68, "FINGER GESTURE, No Dongle Found(WIFI DISABLED)"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$6700()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v67

    if-eqz v67, :cond_5f

    .line 1655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1658
    :cond_5f
    :try_start_5
    const-string v67, "caller"

    const-string v68, "3finger"

    move-object/from16 v0, v47

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 1660
    :catch_1
    move-exception v7

    .line 1661
    .local v7, ae:Landroid/content/ActivityNotFoundException;
    const-string v67, "WirelessDisplayService"

    const-string v68, "ActivityNotFoundException, intent: notifyNormalConfigTool "

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1665
    .end local v7           #ae:Landroid/content/ActivityNotFoundException;
    :cond_60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->getDefaultDongle()Lcom/htc/service/DongleInfo;

    move-result-object v67

    if-eqz v67, :cond_65

    .line 1666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->getDefaultDongle()Lcom/htc/service/DongleInfo;

    move-result-object v17

    .line 1667
    .local v17, dfgDongle:Lcom/htc/service/DongleInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->notSupportConcurrent:Z
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$6800(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v67

    if-eqz v67, :cond_61

    .line 1668
    if-eqz v17, :cond_0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    move/from16 v67, v0

    if-nez v67, :cond_0

    .line 1670
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 1671
    :catch_2
    move-exception v7

    .line 1672
    .restart local v7       #ae:Landroid/content/ActivityNotFoundException;
    const-string v67, "WirelessDisplayService"

    const-string v68, "ActivityNotFoundException, intent: notifyConfigerTool "

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1675
    .end local v7           #ae:Landroid/content/ActivityNotFoundException;
    :cond_61
    if-eqz v17, :cond_0

    .line 1676
    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/service/DongleInfo;->status:I

    move/from16 v67, v0

    const/16 v68, 0x4

    move/from16 v0, v67

    move/from16 v1, v68

    if-eq v0, v1, :cond_62

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/service/DongleInfo;->status:I

    move/from16 v67, v0

    const/16 v68, 0x1

    move/from16 v0, v67

    move/from16 v1, v68

    if-ne v0, v1, :cond_63

    .line 1677
    :cond_62
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 1678
    .restart local v12       #bundle:Landroid/os/Bundle;
    const-string v67, "DONGLE_MAC"

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    move-object/from16 v68, v0

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1679
    move-object/from16 v0, v43

    invoke-virtual {v0, v12}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1681
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 1682
    :catch_3
    move-exception v7

    .line 1683
    .restart local v7       #ae:Landroid/content/ActivityNotFoundException;
    const-string v67, "WirelessDisplayService"

    const-string v68, "ActivityNotFoundException, intent: notifyConfigToolToConfig"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1685
    .end local v7           #ae:Landroid/content/ActivityNotFoundException;
    .end local v12           #bundle:Landroid/os/Bundle;
    :cond_63
    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/service/DongleInfo;->status:I

    move/from16 v67, v0

    const/16 v68, 0x2

    move/from16 v0, v67

    move/from16 v1, v68

    if-eq v0, v1, :cond_64

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/service/DongleInfo;->status:I

    move/from16 v67, v0

    const/16 v68, 0x3

    move/from16 v0, v67

    move/from16 v1, v68

    if-ne v0, v1, :cond_0

    .line 1686
    :cond_64
    const/16 v67, 0xb

    const/16 v68, -0x1

    const/16 v69, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v67

    move/from16 v2, v68

    move/from16 v3, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v34

    .line 1687
    .local v34, msgBindWfdService:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1688
    const/16 v67, 0x70

    const/16 v68, 0x0

    const/16 v69, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v67

    move/from16 v2, v68

    move/from16 v3, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v40

    .line 1689
    .restart local v40       #msgUseWfdService:Landroid/os/Message;
    const-wide/16 v67, 0xc8

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-wide/from16 v2, v67

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1693
    .end local v17           #dfgDongle:Lcom/htc/service/DongleInfo;
    .end local v34           #msgBindWfdService:Landroid/os/Message;
    .end local v40           #msgUseWfdService:Landroid/os/Message;
    :cond_65
    const-string v67, "sys.wfd.autoTestFlag"

    const-string v68, ""

    invoke-static/range {v67 .. v68}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$7002(Ljava/lang/String;)Ljava/lang/String;

    .line 1694
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$7000()Ljava/lang/String;

    move-result-object v67

    const-string v68, "reconnect"

    invoke-virtual/range {v67 .. v68}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_66

    .line 1695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v67

    if-nez v67, :cond_0

    .line 1696
    const-string v67, "WirelessDisplayService"

    const-string v68, "wifi scan fail!"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1699
    :cond_66
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_8
    .catch Landroid/content/ActivityNotFoundException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    .line 1700
    :catch_4
    move-exception v7

    .line 1701
    .restart local v7       #ae:Landroid/content/ActivityNotFoundException;
    const-string v67, "WirelessDisplayService"

    const-string v68, "ActivityNotFoundException, intent: notifyConfigerTool "

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 748
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_6
        0x5 -> :sswitch_a
        0x6 -> :sswitch_8
        0x9 -> :sswitch_10
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_f
        0xf -> :sswitch_16
        0x10 -> :sswitch_9
        0x11 -> :sswitch_1
        0x13 -> :sswitch_d
        0x14 -> :sswitch_7
        0x15 -> :sswitch_12
        0x1f -> :sswitch_13
        0x29 -> :sswitch_15
        0x33 -> :sswitch_14
        0x3d -> :sswitch_11
        0x6f -> :sswitch_19
        0x70 -> :sswitch_17
        0x71 -> :sswitch_18
        0x72 -> :sswitch_5
        0x73 -> :sswitch_e
        0xde -> :sswitch_2
    .end sparse-switch

    .line 1554
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
