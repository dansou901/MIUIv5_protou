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
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 72
    .parameter "msg"

    .prologue
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v65, v0

    .local v65, type:I
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .local v10, arg1:I
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg2:I

    .local v11, arg2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v49

    .local v49, previousState:I
    sparse-switch v65, :sswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

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

    move/from16 v0, v49

    if-eq v10, v0, :cond_0

    const/16 v67, 0x8

    move/from16 v0, v49

    move/from16 v1, v67

    if-ne v0, v1, :cond_1

    const/16 v67, 0x1

    move/from16 v0, v67

    if-ne v10, v0, :cond_1

    const-string v67, "WirelessDisplayService"

    const-string v68, "[WFDERR][2] Wait 90000 secs and dongle not found."

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$102(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    const/16 v67, 0x1

    move/from16 v0, v67

    if-ne v10, v0, :cond_2

    const/16 v67, 0x33

    const/16 v68, 0x35

    move-object/from16 v0, p0

    move/from16 v1, v67

    move/from16 v2, v68

    invoke-virtual {v0, v1, v2, v11}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v32

    .local v32, msg2:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .end local v32           #msg2:Landroid/os/Message;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static {v0, v10, v11}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    goto :goto_0

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiScanCount:I
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$300(Lcom/htc/server/WirelessDisplayService;)I

    move-result v67

    if-lez v67, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$310(Lcom/htc/server/WirelessDisplayService;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v67

    if-nez v67, :cond_3

    const-string v67, "WirelessDisplayService"

    const-string v68, "wifi scan fail!"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    .local v41, msgWifiScan:Landroid/os/Message;
    const-wide/16 v67, 0x1770

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-wide/from16 v2, v67

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .end local v41           #msgWifiScan:Landroid/os/Message;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x3

    #setter for: Lcom/htc/server/WirelessDisplayService;->mWifiScanCount:I
    invoke-static/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$302(Lcom/htc/server/WirelessDisplayService;I)I

    goto/16 :goto_0

    :sswitch_2
    new-instance v48, Landroid/content/Intent;

    const-string v67, "com.htc.intent.action.WIRELESS_NOTIFY_MIRROR_CONNECTED_SWITCH"

    move-object/from16 v0, v48

    move-object/from16 v1, v67

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v48, notifyUserSwitch:Landroid/content/Intent;
    const-string v67, "visible"

    const/16 v68, 0x0

    move-object/from16 v0, v48

    move-object/from16 v1, v67

    move/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v67, "WirelessDisplayService"

    const-string v68, "Disable INTENT_WIRELESS_NOTIFY_MIRROR_CONNECTED_SWITCH"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

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

    .local v66, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v66, :cond_0

    invoke-virtual/range {v66 .. v66}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v23

    .local v23, ipAddress:I
    move/from16 v61, v23

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

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Ljava/util/regex/Pattern;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v28

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

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    if-nez v67, :cond_7

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

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService$WivuThread;->wivuInit()I

    move-result v67

    const/16 v68, -0x1

    move/from16 v0, v67

    move/from16 v1, v68

    if-ne v0, v1, :cond_6

    const-string v67, "WirelessDisplayService"

    const-string v68, "Something Wrong with netHD initialization Delete mWivuThread"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v67, 0x0

    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$702(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;

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

    :cond_6
    const-string v67, "WirelessDisplayService"

    const-string v68, "HANDLE_GET_DEVICE_IP: REQ_SET_MCAST_ROUTE, clearOldRoute = false"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .local v12, bundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v67

    const/16 v68, 0x1f

    const/16 v69, 0x191

    const/16 v70, -0x1

    invoke-virtual/range {v67 .. v70}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v55

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

    move-object/from16 v0, v55

    invoke-virtual {v0, v12}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual/range {v55 .. v55}, Landroid/os/Message;->sendToTarget()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1000(Lcom/htc/server/WirelessDisplayService;)Landroid/os/PowerManager;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v67

    if-nez v67, :cond_5

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v67

    const/16 v68, 0x1f

    const/16 v69, 0x28

    const/16 v70, -0x1

    invoke-virtual/range {v67 .. v70}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v42

    .local v42, msg_leave:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

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

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService$WivuThread;->changeInterface(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1000(Lcom/htc/server/WirelessDisplayService;)Landroid/os/PowerManager;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v67

    if-nez v67, :cond_5

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v67

    const/16 v68, 0x1f

    const/16 v69, 0x28

    const/16 v70, -0x1

    invoke-virtual/range {v67 .. v70}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v42

    .restart local v42       #msg_leave:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

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

    const/16 v67, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    .local v21, getIp:Landroid/os/Message;
    const-wide/16 v67, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, v67

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

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

    const/16 v67, 0x1f

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1200(Lcom/htc/server/WirelessDisplayService;)Landroid/net/ConnectivityManager;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .local v5, activeNetwork:Landroid/net/NetworkInfo;
    if-eqz v5, :cond_d

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v67

    const/16 v68, 0x1

    move/from16 v0, v67

    move/from16 v1, v68

    if-ne v0, v1, :cond_b

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

    const-string v67, "WirelessDisplayService"

    const-string v68, "Wifi Connected, don\'t exit netHDencode"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/16 v67, 0x33

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    const/16 v67, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    const/16 v67, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    const/16 v67, 0x1

    const/16 v68, 0x1

    const/16 v69, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v67

    move/from16 v2, v68

    move/from16 v3, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v35

    .local v35, msgChangeState:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1300(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    if-eqz v67, :cond_9

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

    const-string v67, "persist.sys.wfd.lastdongle"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$1400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    invoke-static/range {v67 .. v68}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$1302(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->clearDongleCache()Z
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v67

    if-eqz v67, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->notifyWHDMI()V
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1600(Lcom/htc/server/WirelessDisplayService;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Ljava/util/List;

    move-result-object v67

    invoke-interface/range {v67 .. v67}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v67

    const/16 v68, 0x0

    invoke-virtual/range {v67 .. v68}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mExceptions:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v67

    const/16 v68, 0x49

    invoke-virtual/range {v67 .. v68}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v67

    const/16 v68, 0x0

    invoke-virtual/range {v67 .. v68}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

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

    .end local v35           #msgChangeState:Landroid/os/Message;
    :cond_b
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    if-eqz v67, :cond_c

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService$WivuThread;->stopThread()V

    :cond_c
    const/16 v67, 0x0

    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$702(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;

    goto/16 :goto_2

    :cond_d
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    if-eqz v67, :cond_e

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService$WivuThread;->stopThread()V

    :cond_e
    const/16 v67, 0x0

    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$702(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;

    goto/16 :goto_2

    .end local v5           #activeNetwork:Landroid/net/NetworkInfo;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->saveLimitedApInfo()V
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$2100(Lcom/htc/server/WirelessDisplayService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    invoke-virtual/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->mirrorModeStartStop(Z)Z

    new-instance v48, Landroid/content/Intent;

    const-string v67, "com.htc.intent.action.WIRELESS_NOTIFY_MIRROR_CONNECTED_SWITCH"

    move-object/from16 v0, v48

    move-object/from16 v1, v67

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v48       #notifyUserSwitch:Landroid/content/Intent;
    const-string v67, "visible"

    const/16 v68, 0x1

    move-object/from16 v0, v48

    move-object/from16 v1, v67

    move/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v67

    const/16 v68, 0xde

    const/16 v69, 0x0

    const/16 v70, 0x0

    invoke-virtual/range {v67 .. v70}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v18

    .local v18, disableSwitchMsg:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v67

    const/16 v68, 0xde

    invoke-virtual/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v67

    const-wide/16 v68, 0x1388

    move-object/from16 v0, v67

    move-object/from16 v1, v18

    move-wide/from16 v2, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v67

    const/16 v68, 0x6f

    const/16 v69, 0x1

    const/16 v70, 0x0

    invoke-virtual/range {v67 .. v70}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v29

    .local v29, mirrorMsg:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v67

    const/16 v68, 0x6f

    invoke-virtual/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v67

    const-wide/16 v68, 0x13ba

    move-object/from16 v0, v67

    move-object/from16 v1, v29

    move-wide/from16 v2, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

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

    const-string v67, "WirelessDisplayService"

    const-string v68, "HANDLE_TIMEOUT_STOP, But Music Keep Playing, Wait 2 min later"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v67

    const/16 v68, 0x4

    invoke-virtual/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v39

    .local v39, msgTimeOut:Landroid/os/Message;
    const-wide/32 v67, 0x1d4c0

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-wide/from16 v2, v67

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .end local v39           #msgTimeOut:Landroid/os/Message;
    :cond_f
    const-string v67, "WirelessDisplayService"

    const-string v68, "HANDLE_TIMEOUT_STOP"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v67, 0x1f

    const/16 v68, 0x21

    const/16 v69, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v67

    move/from16 v2, v68

    move/from16 v3, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v63

    .local v63, timeOutStop:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .end local v63           #timeOutStop:Landroid/os/Message;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->fallBackFromAppPause()V
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$2300(Lcom/htc/server/WirelessDisplayService;)V

    goto/16 :goto_0

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

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    if-eqz v67, :cond_0

    const/16 v67, 0x1

    move/from16 v0, v67

    if-ne v10, v0, :cond_10

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    const/16 v68, 0x1

    invoke-virtual/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService$WivuThread;->setTransmit(Z)V

    goto/16 :goto_0

    :cond_10
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    const/16 v68, 0x0

    invoke-virtual/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService$WivuThread;->setTransmit(Z)V

    goto/16 :goto_0

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

    new-instance v67, Lcom/htc/server/WirelessDisplayService$H$1;

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService$H$1;-><init>(Lcom/htc/server/WirelessDisplayService$H;)V

    invoke-virtual/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService$H$1;->start()V

    goto/16 :goto_0

    :sswitch_a
    const-string v67, "WirelessDisplayService"

    const-string v68, "HANDLE_WIFI_DIS"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->stopWivuDiscovery()V

    goto/16 :goto_0

    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$2500(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v67

    if-nez v67, :cond_0

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

    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$2500(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v67

    if-eqz v67, :cond_11

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$2502(Lcom/htc/server/WirelessDisplayService;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;
    invoke-static/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$2702(Lcom/htc/server/WirelessDisplayService;Landroid/os/IBinder;)Landroid/os/IBinder;

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

    :cond_11
    const/16 v67, 0x13

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2800()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v67

    const/16 v68, 0x1

    invoke-virtual/range {v67 .. v68}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :sswitch_d
    const-string v67, "WirelessDisplayService"

    const-string v68, "HANDLE_RESET_WDS_USABLE_FLAG"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v67, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :sswitch_e
    const-string v67, "WirelessDisplayService"

    const-string v68, "HANDLE_RESET_FINGERGESTURE_FLAG"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const-string v68, "HANDLE_RESET_FINGERGESTURE_FLAG"

    const/16 v69, 0x0

    #calls: Lcom/htc/server/WirelessDisplayService;->addToHtcWDSrvHistory(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static/range {v67 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2900(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x1

    invoke-virtual/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->setFingerGestureEnable(Z)V

    goto/16 :goto_0

    :sswitch_f
    move v13, v10

    .local v13, configState:I
    const/16 v67, 0x3

    move/from16 v0, v67

    if-eq v10, v0, :cond_12

    const/16 v67, 0x4

    move/from16 v0, v67

    if-ne v10, v0, :cond_17

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

    new-instance v30, Landroid/content/Intent;

    const-string v67, "com.htc.intent.action.WIRELESS_DISPLAY_MIRROR_RESULT"

    move-object/from16 v0, v30

    move-object/from16 v1, v67

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v30, mirrorResultIntent:Landroid/content/Intent;
    const/16 v67, 0x3

    move/from16 v0, v67

    if-ne v10, v0, :cond_16

    const-string v67, "RESULT"

    const-string v68, "SUCCESS"

    move-object/from16 v0, v30

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_13
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->getCurrentDongle()Lcom/htc/service/DongleInfo;

    move-result-object v14

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

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->binder_finishService()V
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$3000(Lcom/htc/server/WirelessDisplayService;)V

    goto/16 :goto_0

    .end local v14           #currentDongle:Lcom/htc/service/DongleInfo;
    :cond_16
    const/16 v67, 0x4

    move/from16 v0, v67

    if-ne v10, v0, :cond_13

    const-string v67, "RESULT"

    const-string v68, "FAIL"

    move-object/from16 v0, v30

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    invoke-virtual/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->mirrorModeStartStop(Z)Z

    goto :goto_3

    .end local v30           #mirrorResultIntent:Landroid/content/Intent;
    :cond_17
    const/16 v67, 0x5

    move/from16 v0, v67

    if-ne v10, v0, :cond_0

    const/16 v67, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendEmptyMessage(I)Z

    goto/16 :goto_0

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->updateNotification()V
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$3200(Lcom/htc/server/WirelessDisplayService;)V

    goto/16 :goto_0

    :cond_18
    const/16 v67, 0x0

    goto :goto_4

    :sswitch_11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v67

    const-string v68, "wivu_res"

    invoke-virtual/range {v67 .. v68}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v59

    .local v59, status:Ljava/lang/String;
    const/16 v67, 0x3e

    move/from16 v0, v67

    if-ne v10, v0, :cond_1b

    const-string v67, "WirelessDisplayService"

    move-object/from16 v0, v67

    move-object/from16 v1, v59

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v67, 0x1

    move/from16 v0, v67

    if-ne v11, v0, :cond_1a

    const-string v67, "VALUE=1"

    move-object/from16 v0, v59

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v67

    if-eqz v67, :cond_19

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3300()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v67

    const/16 v68, 0x1

    invoke-virtual/range {v67 .. v68}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x2

    const/16 v69, 0x0

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v67 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    const/16 v67, 0x1

    const/16 v68, 0x1

    const/16 v69, -0x6

    move-object/from16 v0, p0

    move/from16 v1, v67

    move/from16 v2, v68

    move/from16 v3, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v62

    .local v62, timeOut2:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v67

    const-wide/32 v68, 0x15f90

    move-object/from16 v0, v67

    move-object/from16 v1, v62

    move-wide/from16 v2, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .end local v62           #timeOut2:Landroid/os/Message;
    :cond_19
    const-string v67, "VALUE=0"

    move-object/from16 v0, v59

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v67

    if-eqz v67, :cond_0

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3300()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v67

    const/16 v68, 0x0

    invoke-virtual/range {v67 .. v68}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :cond_1a
    const/16 v67, -0x1

    move/from16 v0, v67

    if-ne v11, v0, :cond_0

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v67

    const/16 v68, 0x1

    invoke-virtual/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x1

    const/16 v69, -0x5

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v67 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    :cond_1b
    const/16 v67, 0x3f

    move/from16 v0, v67

    if-ne v10, v0, :cond_1e

    const-string v67, "WirelessDisplayService"

    move-object/from16 v0, v67

    move-object/from16 v1, v59

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v67, 0x1

    move/from16 v0, v67

    if-ne v11, v0, :cond_1d

    const-string v67, "VALUE=1"

    move-object/from16 v0, v59

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v67

    if-eqz v67, :cond_1c

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3400()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v67

    const/16 v68, 0x1

    invoke-virtual/range {v67 .. v68}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :cond_1c
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3400()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v67

    const/16 v68, 0x0

    invoke-virtual/range {v67 .. v68}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :cond_1d
    const/16 v67, -0x1

    move/from16 v0, v67

    if-ne v11, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x1

    const/16 v69, -0x5

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v67 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    :cond_1e
    const/16 v67, 0x40

    move/from16 v0, v67

    if-ne v10, v0, :cond_1f

    const-string v67, "WirelessDisplayService"

    move-object/from16 v0, v67

    move-object/from16 v1, v59

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1f
    const/16 v67, 0x41

    move/from16 v0, v67

    if-eq v10, v0, :cond_0

    const/16 v67, 0x42

    move/from16 v0, v67

    if-ne v10, v0, :cond_0

    const/16 v67, 0x1

    move/from16 v0, v67

    if-ne v11, v0, :cond_0

    move-object/from16 v64, v59

    .local v64, tosend:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    move-object/from16 v1, v64

    #calls: Lcom/htc/server/WirelessDisplayService;->updteDongleInfo(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$3500(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v59           #status:Ljava/lang/String;
    .end local v64           #tosend:Ljava/lang/String;
    :sswitch_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v67

    const-string v68, "wivu_req"

    invoke-virtual/range {v67 .. v68}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

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

    if-eqz v52, :cond_28

    const/16 v67, 0x16

    move/from16 v0, v67

    if-ne v10, v0, :cond_28

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3600()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v67

    const/16 v68, 0x16

    invoke-virtual/range {v67 .. v68}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/16 v67, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3700()Ljava/util/regex/Pattern;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v27

    .local v27, matcher:Ljava/util/regex/Matcher;
    invoke-virtual/range {v27 .. v27}, Ljava/util/regex/Matcher;->find()Z

    move-result v67

    if-eqz v67, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v68

    #setter for: Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;
    invoke-static/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$3802(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    :cond_20
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3900()Ljava/util/regex/Pattern;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/regex/Matcher;->find()Z

    move-result v67

    if-eqz v67, :cond_21

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

    :cond_21
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$4100()Ljava/util/regex/Pattern;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/regex/Matcher;->find()Z

    move-result v67

    if-eqz v67, :cond_22

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

    :cond_23
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    if-eqz v67, :cond_25

    const/16 v67, 0x7

    move/from16 v0, v49

    move/from16 v1, v67

    if-ne v0, v1, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->synchronize_lock:Ljava/lang/Object;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$4400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/Object;

    move-result-object v68

    monitor-enter v68

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

    .local v33, msg3:Landroid/os/Message;
    const/16 v67, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    const-wide/16 v69, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-wide/from16 v2, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

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

    :cond_25
    const/16 v67, 0x2

    move/from16 v0, v49

    move/from16 v1, v67

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$4600(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v67

    if-eqz v67, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x3

    const/16 v69, 0x0

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v67 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v67

    const/16 v68, 0x2

    invoke-virtual/range {v67 .. v68}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v67, "WirelessDisplayService"

    const-string v68, "IncomingCallReceiver during configuring set mAppCallScreen:2"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

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

    .local v31, msg1:Landroid/os/Message;
    const-wide/16 v67, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-wide/from16 v2, v67

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .end local v31           #msg1:Landroid/os/Message;
    :cond_27
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    if-eqz v67, :cond_0

    const-string v67, "WirelessDisplayService"

    const-string v68, "Dongle wrong state: take it out"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    const/16 v68, 0x1

    invoke-virtual/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    const/16 v67, 0x1f

    const/16 v68, 0x21

    const/16 v69, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v67

    move/from16 v2, v68

    move/from16 v3, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v26

    .local v26, makeSure:Landroid/os/Message;
    const-wide/16 v67, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v67

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .end local v26           #makeSure:Landroid/os/Message;
    .end local v27           #matcher:Ljava/util/regex/Matcher;
    :cond_28
    const/16 v67, 0x17

    move/from16 v0, v67

    if-ne v10, v0, :cond_2c

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3600()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v67

    const/16 v68, 0x17

    invoke-virtual/range {v67 .. v68}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/16 v67, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    if-eqz v67, :cond_29

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    const/16 v68, 0x0

    invoke-virtual/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    const/16 v67, 0x7

    move/from16 v0, v49

    move/from16 v1, v67

    if-eq v0, v1, :cond_29

    const-string v67, "WirelessDisplayService"

    const-string v68, "Stop Initialized by Dongle, stop transmitting packets after timeout of 16sec"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v67, 0x6

    const/16 v68, -0x1

    const/16 v69, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v67

    move/from16 v2, v68

    move/from16 v3, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v60

    .local v60, stopTrans:Landroid/os/Message;
    const-wide/16 v67, 0x3a98

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-wide/from16 v2, v67

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v60           #stopTrans:Landroid/os/Message;
    :cond_29
    const/16 v67, 0x1

    move/from16 v0, v49

    move/from16 v1, v67

    if-eq v0, v1, :cond_2a

    const/16 v67, 0x7

    move/from16 v0, v49

    move/from16 v1, v67

    if-ne v0, v1, :cond_2b

    const-string v67, "WirelessDisplayService"

    const-string v68, "Receive WIVUSTOP in APP_PAUSE State"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    :goto_6
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$4700()Ljava/lang/Boolean;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v67

    if-eqz v67, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    if-eqz v67, :cond_0

    const-string v67, "WirelessDisplayService"

    const-string v68, "Switching the dongle"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$102(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    const/16 v67, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v67

    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$4702(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_0

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

    .local v36, msgChangeState1:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v67

    const/16 v68, 0x0

    invoke-virtual/range {v67 .. v68}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_6

    .end local v36           #msgChangeState1:Landroid/os/Message;
    :cond_2c
    const/16 v67, 0x18

    move/from16 v0, v67

    if-ne v10, v0, :cond_2d

    const-string v67, "="

    move-object/from16 v0, v52

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .local v25, macs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    move-object/from16 v1, v25

    #calls: Lcom/htc/server/WirelessDisplayService;->updateWivuList([Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$4800(Lcom/htc/server/WirelessDisplayService;[Ljava/lang/String;)V

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

    const-string v67, "WirelessDisplayService"

    const-string v68, "Found the dongle: now remove the HANDLE_CHANGE_STATE"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v67, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$102(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .end local v25           #macs:[Ljava/lang/String;
    :cond_2d
    const/16 v67, 0x1b

    move/from16 v0, v67

    if-ne v10, v0, :cond_2e

    move-object/from16 v6, v52

    .local v6, addToList:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    #calls: Lcom/htc/server/WirelessDisplayService;->updteDongleInfo(Ljava/lang/String;)V
    invoke-static {v0, v6}, Lcom/htc/server/WirelessDisplayService;->access$3500(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)V

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

    const-string v67, "WirelessDisplayService"

    const-string v68, "Found the dongle: now remove the HANDLE_CHANGE_STATE"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v67, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x2

    const/16 v69, 0x0

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v67 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v67

    const/16 v68, 0x1

    invoke-virtual/range {v67 .. v68}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v67, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$102(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .end local v6           #addToList:Ljava/lang/String;
    :cond_2e
    const/16 v67, 0x19

    move/from16 v0, v67

    if-ne v10, v0, :cond_2f

    const-string v67, "WirelessDisplayService"

    const-string v68, "SWUPGRADE and send notification"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->updateFWUpgradeNotification()V
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$4900(Lcom/htc/server/WirelessDisplayService;)V

    goto/16 :goto_0

    :cond_2f
    const/16 v67, 0x1a

    move/from16 v0, v67

    if-ne v10, v0, :cond_0

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

    if-eqz v11, :cond_30

    const/16 v67, 0x2

    move/from16 v0, v67

    if-ge v11, v0, :cond_30

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->getCurrentDongle()Lcom/htc/service/DongleInfo;

    move-result-object v16

    .local v16, dfDongle:Lcom/htc/service/DongleInfo;
    if-eqz v16, :cond_0

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

    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/service/DongleInfo;->status:I

    move/from16 v67, v0

    const/16 v68, 0x3

    move/from16 v0, v67

    move/from16 v1, v68

    if-ne v0, v1, :cond_0

    const/16 v67, 0x72

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .end local v16           #dfDongle:Lcom/htc/service/DongleInfo;
    :cond_30
    if-eqz v11, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$5000(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v67

    if-eqz v67, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$5000(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v67

    move-object/from16 v0, v67

    invoke-virtual {v0, v11}, Landroid/media/MediaRecorder;->changeVideoBitRate(I)V

    goto/16 :goto_0

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

    .end local v52           #request:Ljava/lang/String;
    :sswitch_13
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    if-eqz v67, :cond_0

    const/16 v67, 0x20

    move/from16 v0, v67

    if-ne v10, v0, :cond_32

    const-string v67, "WirelessDisplayService"

    const-string v68, "REQ_DISCOVERY"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestDiscover()V

    goto/16 :goto_0

    :cond_32
    const/16 v67, 0x21

    move/from16 v0, v67

    if-ne v10, v0, :cond_34

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

    const/16 v51, -0x1

    .local v51, req:I
    const/16 v67, 0x1

    move/from16 v0, v67

    if-ne v11, v0, :cond_33

    const/16 v67, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    const/16 v68, 0x1

    invoke-virtual/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    move-result v51

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x2

    const/16 v69, 0x0

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v67 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    const/16 v67, 0x1

    const/16 v68, 0x1

    const/16 v69, -0x6

    move-object/from16 v0, p0

    move/from16 v1, v67

    move/from16 v2, v68

    move/from16 v3, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v62

    .restart local v62       #timeOut2:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v67

    const-wide/32 v68, 0x15f90

    move-object/from16 v0, v67

    move-object/from16 v1, v62

    move-wide/from16 v2, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .end local v62           #timeOut2:Landroid/os/Message;
    :cond_33
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    const/16 v68, 0x0

    invoke-virtual/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    move-result v51

    const/16 v67, 0x1

    const/16 v68, 0x1

    const/16 v69, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v67

    move/from16 v2, v68

    move/from16 v3, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v37

    .local v37, msgChangeState2:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .end local v37           #msgChangeState2:Landroid/os/Message;
    .end local v51           #req:I
    :cond_34
    const/16 v67, 0x22

    move/from16 v0, v67

    if-ne v10, v0, :cond_35

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService$WivuThread;->getDiscoveryStatus()I

    goto/16 :goto_0

    :cond_35
    const/16 v67, 0x23

    move/from16 v0, v67

    if-ne v10, v0, :cond_36

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService$WivuThread;->getPluggedStatus()I

    goto/16 :goto_0

    :cond_36
    const/16 v67, 0x24

    move/from16 v0, v67

    if-ne v10, v0, :cond_38

    const-string v67, "WirelessDisplayService"

    const-string v68, "REQ_STOP_DIS"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService$WivuThread;->stopThread()V

    const/16 v67, 0x1f

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    const/16 v67, 0x33

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    const/16 v67, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    const/16 v67, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    const/16 v67, 0x1

    const/16 v68, 0x1

    const/16 v69, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v67

    move/from16 v2, v68

    move/from16 v3, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v38

    .local v38, msgChangeState3:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    const/16 v67, 0x0

    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$702(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1300(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    if-eqz v67, :cond_37

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

    const-string v67, "persist.sys.wfd.lastdongle"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$1400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    invoke-static/range {v67 .. v68}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$1302(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Ljava/util/List;

    move-result-object v67

    invoke-interface/range {v67 .. v67}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v67

    const/16 v68, 0x0

    invoke-virtual/range {v67 .. v68}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mExceptions:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v67

    const/16 v68, 0x49

    invoke-virtual/range {v67 .. v68}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v67

    const/16 v68, 0x0

    invoke-virtual/range {v67 .. v68}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/16 :goto_0

    .end local v38           #msgChangeState3:Landroid/os/Message;
    :cond_38
    const/16 v67, 0x25

    move/from16 v0, v67

    if-ne v10, v0, :cond_39

    const-string v67, "WirelessDisplayService"

    const-string v68, "REQ_PEER_SELECT"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v67, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v67

    const-string v68, "dongle_staBssid"

    invoke-virtual/range {v67 .. v68}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .local v56, staBssid2:Ljava/lang/String;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->selectPeer(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    move-object/from16 v1, v56

    #setter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$1302(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .end local v56           #staBssid2:Ljava/lang/String;
    :cond_39
    const/16 v67, 0x27

    move/from16 v0, v67

    if-ne v10, v0, :cond_3b

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

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v67

    const-string v68, "interface"

    invoke-virtual/range {v67 .. v68}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .local v22, ifname:Ljava/lang/String;
    const/16 v51, -0x1

    .restart local v51       #req:I
    if-eqz v22, :cond_0

    const/16 v67, 0x1

    move/from16 v0, v67

    if-ne v11, v0, :cond_3a

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    const/16 v68, 0x1

    move-object/from16 v0, v67

    move-object/from16 v1, v22

    move/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestSetMCastRoute(Ljava/lang/String;Z)I

    move-result v51

    :goto_7
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->changeInterface(Ljava/lang/String;)V

    goto/16 :goto_0

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

    .end local v22           #ifname:Ljava/lang/String;
    .end local v51           #req:I
    :cond_3b
    const/16 v67, 0x28

    move/from16 v0, v67

    if-ne v10, v0, :cond_3e

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

    const/16 v51, -0x1

    .restart local v51       #req:I
    const/16 v67, 0x1

    move/from16 v0, v67

    if-ne v11, v0, :cond_3c

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$5100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v67

    if-nez v67, :cond_3c

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$5100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v67

    const/16 v68, 0x1

    invoke-virtual/range {v67 .. v68}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    const/16 v68, 0x1

    invoke-virtual/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestJoin(Z)I

    move-result v51

    goto/16 :goto_0

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

    :cond_3d
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$5100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v67

    const/16 v68, 0x0

    invoke-virtual/range {v67 .. v68}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    const/16 v68, 0x0

    invoke-virtual/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestJoin(Z)I

    goto/16 :goto_0

    .end local v51           #req:I
    :cond_3e
    const/16 v67, 0x191

    move/from16 v0, v67

    if-ne v10, v0, :cond_40

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

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v67

    const-string v68, "interfaceRoute"

    invoke-virtual/range {v67 .. v68}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .restart local v22       #ifname:Ljava/lang/String;
    const/16 v51, -0x1

    .restart local v51       #req:I
    if-eqz v22, :cond_0

    const/16 v67, 0x1

    move/from16 v0, v67

    if-ne v11, v0, :cond_3f

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    const/16 v68, 0x1

    move-object/from16 v0, v67

    move-object/from16 v1, v22

    move/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestSetMCastRoute(Ljava/lang/String;Z)I

    move-result v51

    goto/16 :goto_0

    :cond_3f
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    const/16 v68, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, v22

    move/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestSetMCastRoute(Ljava/lang/String;Z)I

    goto/16 :goto_0

    .end local v22           #ifname:Ljava/lang/String;
    .end local v51           #req:I
    :cond_40
    const/16 v67, 0x192

    move/from16 v0, v67

    if-ne v10, v0, :cond_0

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

    const/16 v51, -0x1

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

    .end local v51           #req:I
    :sswitch_14
    const/16 v67, 0x34

    move/from16 v0, v67

    if-ne v10, v0, :cond_43

    const-string v67, "WirelessDisplayService"

    const-string v68, "MEDIA_START"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v67, 0x3

    move/from16 v0, v49

    move/from16 v1, v67

    if-eq v0, v1, :cond_0

    const/16 v57, -0x1

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

    if-nez v57, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x3

    const/16 v69, 0x0

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v67 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->wivuSQoSStart()Z

    goto/16 :goto_0

    :cond_41
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    if-eqz v67, :cond_42

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    const/16 v68, 0x0

    invoke-virtual/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x1

    const/16 v69, -0x4

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v67 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    .end local v57           #star:I
    :cond_43
    const/16 v67, 0x35

    move/from16 v0, v67

    if-ne v10, v0, :cond_45

    const-string v67, "WirelessDisplayService"

    const-string v68, "MEDIA_STOP"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v67, 0x4

    move/from16 v0, v49

    move/from16 v1, v67

    if-ne v0, v1, :cond_44

    :cond_44
    const/16 v57, -0x1

    .restart local v57       #star:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->stopDisplayRecorder()I
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$5500(Lcom/htc/server/WirelessDisplayService;)I

    move-result v57

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->wivuSQoSStop()Z

    goto/16 :goto_0

    .end local v57           #star:I
    :cond_45
    const/16 v67, 0x36

    move/from16 v0, v67

    if-ne v10, v0, :cond_0

    const-string v67, "WirelessDisplayService"

    const-string v68, "MEDIA_RESTART"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v57, -0x1

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

    const/16 v67, -0x1

    move/from16 v0, v57

    move/from16 v1, v67

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    if-eqz v67, :cond_46

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    const/16 v68, 0x0

    invoke-virtual/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x1

    const/16 v69, -0x4

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v67 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    .end local v57           #star:I
    :sswitch_15
    move/from16 v58, v49

    .local v58, state:I
    const/16 v19, 0x0

    .local v19, err:I
    const/16 v67, 0x1

    move/from16 v0, v49

    move/from16 v1, v67

    if-eq v0, v1, :cond_0

    const/16 v67, 0x2b

    move/from16 v0, v67

    if-ne v10, v0, :cond_4a

    const-string v67, "WirelessDisplayService"

    const-string v68, "MEDIA_PAUSE event"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v67, 0x2c

    move/from16 v0, v67

    if-ne v11, v0, :cond_48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->stopDisplayRecorder()I
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$5500(Lcom/htc/server/WirelessDisplayService;)I

    move-result v8

    .local v8, app:I
    if-nez v8, :cond_47

    const/16 v58, 0x7

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

    :cond_48
    const/16 v67, 0x2d

    move/from16 v0, v67

    if-ne v11, v0, :cond_49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->gotoPauseState()V
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$5600(Lcom/htc/server/WirelessDisplayService;)V

    const/16 v58, 0x4

    goto :goto_8

    :cond_49
    const/16 v67, 0x2e

    move/from16 v0, v67

    if-ne v11, v0, :cond_47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x1

    #calls: Lcom/htc/server/WirelessDisplayService;->startPatternLockStopAudio(Z)V
    invoke-static/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$5700(Lcom/htc/server/WirelessDisplayService;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->gotoPauseState()V
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$5600(Lcom/htc/server/WirelessDisplayService;)V

    const/16 v58, 0x9

    goto :goto_8

    :cond_4a
    const/16 v67, 0x2a

    move/from16 v0, v67

    if-ne v10, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->synchronize_lock:Ljava/lang/Object;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$4400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/Object;

    move-result-object v68

    monitor-enter v68

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->app_req_status:Ljava/lang/Boolean;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$4500(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/Boolean;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v67

    if-nez v67, :cond_4b

    monitor-exit v68

    goto/16 :goto_0

    :catchall_1
    move-exception v67

    monitor-exit v68
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v67

    :cond_4b
    const/16 v67, 0x2c

    move/from16 v0, v67

    if-ne v11, v0, :cond_4f

    const/16 v67, 0x7

    move/from16 v0, v49

    move/from16 v1, v67

    if-ne v0, v1, :cond_4c

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

    .local v9, app2:I
    if-nez v9, :cond_4d

    const/16 v58, 0x3

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

    monitor-exit v68

    goto/16 :goto_0

    .restart local v9       #app2:I
    :cond_4d
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    if-eqz v67, :cond_4e

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    const/16 v69, 0x0

    move-object/from16 v0, v67

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    :cond_4e
    const/16 v58, 0x1

    const/16 v19, -0x4

    goto :goto_9

    .end local v9           #app2:I
    :cond_4f
    const/16 v67, 0x2d

    move/from16 v0, v67

    if-ne v11, v0, :cond_50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->gotoPauseState()V
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$5600(Lcom/htc/server/WirelessDisplayService;)V

    const/16 v58, 0x3

    goto :goto_9

    :cond_50
    const/16 v67, 0x2e

    move/from16 v0, v67

    if-ne v11, v0, :cond_4c

    const-string v67, "WirelessDisplayService"

    const-string v69, "MEDIA_RESUME: CALL_PAUSE event"

    move-object/from16 v0, v67

    move-object/from16 v1, v69

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v67, 0x9

    move/from16 v0, v49

    move/from16 v1, v67

    if-ne v0, v1, :cond_4c

    const/16 v58, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$5000(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v67

    if-eqz v67, :cond_51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v69, 0x0

    move-object/from16 v0, v67

    move/from16 v1, v69

    #calls: Lcom/htc/server/WirelessDisplayService;->startPatternLockStopAudio(Z)V
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$5700(Lcom/htc/server/WirelessDisplayService;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->gotoPauseState()V
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$5600(Lcom/htc/server/WirelessDisplayService;)V

    goto :goto_9

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

    .restart local v9       #app2:I
    if-nez v9, :cond_52

    const/16 v58, 0x3

    goto/16 :goto_9

    :cond_52
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    if-eqz v67, :cond_53

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v67

    const/16 v69, 0x0

    move-object/from16 v0, v67

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_53
    const/16 v58, 0x1

    const/16 v19, -0x4

    goto/16 :goto_9

    .end local v9           #app2:I
    .end local v19           #err:I
    .end local v58           #state:I
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->writeConcurrentAPMacAddress()Z
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$5800(Lcom/htc/server/WirelessDisplayService;)Z

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

    const/16 v67, 0x70

    const/16 v68, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v67

    move/from16 v2, v68

    invoke-virtual {v0, v1, v10, v2}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v40

    .local v40, msgUseWfdService:Landroid/os/Message;
    const-wide/16 v67, 0xc8

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-wide/from16 v2, v67

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$6110(Lcom/htc/server/WirelessDisplayService;)I

    goto/16 :goto_0

    .end local v40           #msgUseWfdService:Landroid/os/Message;
    :cond_54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$2700(Lcom/htc/server/WirelessDisplayService;)Landroid/os/IBinder;

    move-result-object v67

    if-eqz v67, :cond_56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x5

    #setter for: Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I
    invoke-static/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$6102(Lcom/htc/server/WirelessDisplayService;I)I

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2800()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v67

    if-eqz v67, :cond_55

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2800()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v67

    const/16 v68, 0x0

    invoke-virtual/range {v67 .. v68}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v67, 0x13

    const/16 v68, 0x0

    const/16 v69, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v67

    move/from16 v2, v68

    move/from16 v3, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v53

    .local v53, resetWFD_Flag:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v67

    const-wide/32 v68, 0x249f0

    move-object/from16 v0, v67

    move-object/from16 v1, v53

    move-wide/from16 v2, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

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

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x3

    #calls: Lcom/htc/server/WirelessDisplayService;->binder_setMode(I)V
    invoke-static/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$6200(Lcom/htc/server/WirelessDisplayService;I)V

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

    :cond_56
    const-string v67, "WirelessDisplayService"

    const-string v68, "Can\'t use WfdService, WfdService bind false during 2 sec"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_18
    move v4, v10

    .local v4, absoluteDirection:I
    move/from16 v50, v11

    .local v50, relativeDirection:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    move/from16 v1, v50

    #calls: Lcom/htc/server/WirelessDisplayService;->mirrorOnOffDirection(II)I
    invoke-static {v0, v4, v1}, Lcom/htc/server/WirelessDisplayService;->access$6400(Lcom/htc/server/WirelessDisplayService;II)I

    move-result v20

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

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v67

    const/16 v68, 0x6f

    invoke-virtual/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService$H;->hasMessages(I)Z

    move-result v67

    if-nez v67, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    move/from16 v1, v20

    #setter for: Lcom/htc/server/WirelessDisplayService;->tempFingerIndicator:I
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$6502(Lcom/htc/server/WirelessDisplayService;I)I

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$6600()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v67

    const/16 v68, 0x1

    invoke-virtual/range {v67 .. v68}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v67

    const/16 v68, 0x1

    invoke-virtual/range {v67 .. v68}, Landroid/net/wifi/WifiManager;->startDongleSingleCscan(I)Z

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

    const-string v67, "WirelessDisplayService"

    const-string v68, "ignore HANDLE_FINGER_GESTURE, due to already handle, it is error handling message"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_57
    const/16 v67, 0x6f

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$6600()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v67

    const/16 v68, 0x0

    invoke-virtual/range {v67 .. v68}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v67, 0x3

    move/from16 v0, v67

    if-ne v10, v0, :cond_59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x1

    invoke-virtual/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->setFingerGestureEnable(Z)V

    const/16 v67, 0x1

    move/from16 v0, v67

    new-array v15, v0, [Ljava/lang/Object;

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const-string v68, "HANDLE_FINGER_GESTURE, arg=3"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    #calls: Lcom/htc/server/WirelessDisplayService;->addToHtcWDSrvHistory(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v15}, Lcom/htc/server/WirelessDisplayService;->access$2900(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v67

    if-eqz v67, :cond_58

    const-string v67, "WirelessDisplayService"

    const-string v68, "Stop mirror mode from finger gesture indicator."

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    invoke-virtual/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->mirrorModeStartStop(Z)Z

    goto/16 :goto_0

    :cond_58
    const-string v67, "WirelessDisplayService"

    const-string v68, "Notify DLNA Service 3-finer down, mirror state is false"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v46, Landroid/content/Intent;

    const-string v67, "com.htc.intent.action.NOTIFY_DLNA_WIRELESS_DISPLAY_MIRROR_OFF"

    move-object/from16 v0, v46

    move-object/from16 v1, v67

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

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

    .end local v15           #debug2:[Ljava/lang/Object;
    .end local v46           #notifyDLNA_MirrrorOff:Landroid/content/Intent;
    :cond_59
    const/16 v67, 0x1

    move/from16 v0, v67

    if-ne v10, v0, :cond_0

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$6700()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v67

    if-eqz v67, :cond_5a

    const-string v67, "WirelessDisplayService"

    const-string v68, "Pre Load DLNA Services"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    :cond_5b
    new-instance v30, Landroid/content/Intent;

    const-string v67, "com.htc.intent.action.WIRELESS_DISPLAY_MIRROR_RESULT"

    move-object/from16 v0, v30

    move-object/from16 v1, v67

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v30       #mirrorResultIntent:Landroid/content/Intent;
    const-string v67, "RESULT"

    const-string v68, "SUCCESS"

    move-object/from16 v0, v30

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

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

    const/16 v67, 0x7

    move/from16 v0, v49

    move/from16 v1, v67

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$6700()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v67

    if-nez v67, :cond_0

    const-string v67, "WirelessDisplayService"

    const-string v68, "Notify DLNA Service user want to mirror replace DLNA"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v45, Landroid/content/Intent;

    const-string v67, "com.htc.intent.action.NOTIFY_DLNA_WIRELESS_DISPLAY_MIRROR_REPLACE"

    move-object/from16 v0, v45

    move-object/from16 v1, v67

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

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

    .end local v30           #mirrorResultIntent:Landroid/content/Intent;
    .end local v45           #notifyDLNA_Mirror_Replace:Landroid/content/Intent;
    :catch_0
    move-exception v54

    .local v54, se:Ljava/lang/SecurityException;
    const-string v67, "WirelessDisplayService"

    const-string v68, "Pre Load DLNA Services occur SecurityException "

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .end local v54           #se:Ljava/lang/SecurityException;
    :cond_5c
    new-instance v44, Landroid/content/Intent;

    const-string v67, "com.htc.wifidisplay.CONFIGURE_MODE_NOTIFICATION_LIST"

    move-object/from16 v0, v44

    move-object/from16 v1, v67

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v44, notifyConfigerTool:Landroid/content/Intent;
    new-instance v43, Landroid/content/Intent;

    const-string v67, "com.htc.wifidisplay.CONFIGURE_MODE_NOTIFICATION_CONFIG"

    move-object/from16 v0, v43

    move-object/from16 v1, v67

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v43, notifyConfigToolToConfig:Landroid/content/Intent;
    new-instance v47, Landroid/content/Intent;

    const-string v67, "com.htc.wifidisplay.CONFIGURE_MODE_NORMAL"

    move-object/from16 v0, v47

    move-object/from16 v1, v67

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v47, notifyNormalConfigTool:Landroid/content/Intent;
    const/high16 v67, 0x1000

    move-object/from16 v0, v44

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v67, 0x1000

    move-object/from16 v0, v43

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v67, 0x1000

    move-object/from16 v0, v47

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v30, Landroid/content/Intent;

    const-string v67, "com.htc.intent.action.WIRELESS_DISPLAY_MIRROR_RESULT"

    move-object/from16 v0, v30

    move-object/from16 v1, v67

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v30       #mirrorResultIntent:Landroid/content/Intent;
    const-string v67, "RESULT"

    const-string v68, "FAIL"

    move-object/from16 v0, v30

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

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

    :cond_5e
    const-string v67, "WirelessDisplayService"

    const-string v68, "FINGER GESTURE, No Dongle Found(WIFI DISABLED)"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$6700()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v67

    if-eqz v67, :cond_5f

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

    :cond_5f
    :try_start_5
    const-string v67, "caller"

    const-string v68, "3finger"

    move-object/from16 v0, v47

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

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

    :catch_1
    move-exception v7

    .local v7, ae:Landroid/content/ActivityNotFoundException;
    const-string v67, "WirelessDisplayService"

    const-string v68, "ActivityNotFoundException, intent: notifyNormalConfigTool "

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v7           #ae:Landroid/content/ActivityNotFoundException;
    :cond_60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->getDefaultDongle()Lcom/htc/service/DongleInfo;

    move-result-object v67

    if-eqz v67, :cond_65

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->getDefaultDongle()Lcom/htc/service/DongleInfo;

    move-result-object v17

    .local v17, dfgDongle:Lcom/htc/service/DongleInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->notSupportConcurrent:Z
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$6800(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v67

    if-eqz v67, :cond_61

    if-eqz v17, :cond_0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    move/from16 v67, v0

    if-nez v67, :cond_0

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

    :catch_2
    move-exception v7

    .restart local v7       #ae:Landroid/content/ActivityNotFoundException;
    const-string v67, "WirelessDisplayService"

    const-string v68, "ActivityNotFoundException, intent: notifyConfigerTool "

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v7           #ae:Landroid/content/ActivityNotFoundException;
    :cond_61
    if-eqz v17, :cond_0

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

    :cond_62
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .restart local v12       #bundle:Landroid/os/Bundle;
    const-string v67, "DONGLE_MAC"

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    move-object/from16 v68, v0

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v12}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

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

    :catch_3
    move-exception v7

    .restart local v7       #ae:Landroid/content/ActivityNotFoundException;
    const-string v67, "WirelessDisplayService"

    const-string v68, "ActivityNotFoundException, intent: notifyConfigToolToConfig"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

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

    .local v34, msgBindWfdService:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    const/16 v67, 0x70

    const/16 v68, 0x0

    const/16 v69, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v67

    move/from16 v2, v68

    move/from16 v3, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v40

    .restart local v40       #msgUseWfdService:Landroid/os/Message;
    const-wide/16 v67, 0xc8

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-wide/from16 v2, v67

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .end local v17           #dfgDongle:Lcom/htc/service/DongleInfo;
    .end local v34           #msgBindWfdService:Landroid/os/Message;
    .end local v40           #msgUseWfdService:Landroid/os/Message;
    :cond_65
    const-string v67, "sys.wfd.autoTestFlag"

    const-string v68, ""

    invoke-static/range {v67 .. v68}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$7002(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$7000()Ljava/lang/String;

    move-result-object v67

    const-string v68, "reconnect"

    invoke-virtual/range {v67 .. v68}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_66

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v67

    if-nez v67, :cond_0

    const-string v67, "WirelessDisplayService"

    const-string v68, "wifi scan fail!"

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

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

    :catch_4
    move-exception v7

    .restart local v7       #ae:Landroid/content/ActivityNotFoundException;
    const-string v67, "WirelessDisplayService"

    const-string v68, "ActivityNotFoundException, intent: notifyConfigerTool "

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

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

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
