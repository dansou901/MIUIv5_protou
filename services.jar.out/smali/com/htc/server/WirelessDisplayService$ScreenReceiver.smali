.class Lcom/htc/server/WirelessDisplayService$ScreenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WirelessDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WirelessDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WirelessDisplayService;


# direct methods
.method private constructor <init>(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter

    .prologue
    .line 1839
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/WirelessDisplayService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1839
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1844
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 1845
    .local v2, curState:I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1846
    .local v0, action:Ljava/lang/String;
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$1000(Lcom/htc/server/WirelessDisplayService;)Landroid/os/PowerManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v10

    .line 1847
    .local v10, screenOn:Z
    const-string v11, "WirelessDisplayService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ScreenReceiver;"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",callOnGoing: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z
    invoke-static {v13}, Lcom/htc/server/WirelessDisplayService;->access$4600(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", Screen On: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    const/16 v12, 0x14

    invoke-virtual {v11, v12}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1849
    const-string v11, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$4600(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v11

    if-nez v11, :cond_8

    if-nez v10, :cond_8

    .line 1851
    const/4 v11, 0x2

    if-eq v2, v11, :cond_0

    const/16 v11, 0x8

    if-eq v2, v11, :cond_0

    .line 1852
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    const/16 v12, 0x1f

    const/16 v13, 0x28

    const/4 v14, -0x1

    invoke-virtual {v11, v12, v13, v14}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    .line 1853
    .local v9, msg_leave:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1854
    const-string v11, "WirelessDisplayService"

    const-string v12, "ScreenReceiver: ACTION_SCREEN_OFF && Not in DongleWait nor MirrorEnabling State: REQ_JOIN_GROUP - FALSE"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    .end local v9           #msg_leave:Landroid/os/Message;
    :cond_0
    const/4 v11, 0x3

    if-eq v2, v11, :cond_1

    const/4 v11, 0x7

    if-eq v2, v11, :cond_1

    const/16 v11, 0x9

    if-ne v2, v11, :cond_2

    .line 1861
    :cond_1
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 1862
    .local v1, condState:I
    const-string v11, "WirelessDisplayService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ScreenReceiver:ACTION_SCREEN_OFF :curState:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " cond:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    const/4 v11, 0x3

    if-ne v2, v11, :cond_3

    .line 1865
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    const/16 v12, 0x29

    const/16 v13, 0x2b

    const/16 v14, 0x2d

    invoke-virtual {v11, v12, v13, v14}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 1866
    .local v3, msg:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    invoke-virtual {v11, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1867
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1868
    const-string v11, "WirelessDisplayService"

    const-string v12, "ScreenReceiver:starting Timeout of 2mins: mAppCallScreen: 1"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 1870
    .local v7, msgTimeOut:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    const-wide/32 v12, 0x1d4c0

    invoke-virtual {v11, v7, v12, v13}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1958
    .end local v1           #condState:I
    .end local v3           #msg:Landroid/os/Message;
    .end local v7           #msgTimeOut:Landroid/os/Message;
    :cond_2
    :goto_0
    return-void

    .line 1871
    .restart local v1       #condState:I
    :cond_3
    const/4 v11, 0x7

    if-ne v2, v11, :cond_6

    .line 1872
    const/4 v11, 0x4

    if-ne v1, v11, :cond_4

    .line 1873
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1874
    const-string v11, "WirelessDisplayService"

    const-string v12, "ScreenReceiver: ACTION_SCREEN_OFF: mAppCallScreen:5"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1875
    :cond_4
    const/4 v11, 0x6

    if-ne v1, v11, :cond_5

    .line 1876
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    const/4 v12, 0x7

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1877
    const-string v11, "WirelessDisplayService"

    const-string v12, "ScreenReceiver: ACTION_SCREEN_OFF: mAppCallScreen:7"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1878
    :cond_5
    if-nez v1, :cond_2

    .line 1879
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1880
    const-string v11, "WirelessDisplayService"

    const-string v12, "ScreenReceiver: ACTION_SCREEN_OFF: mAppCallScreen:1"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1882
    :cond_6
    const/16 v11, 0x9

    if-ne v2, v11, :cond_2

    .line 1883
    const/4 v11, 0x2

    if-ne v1, v11, :cond_7

    .line 1884
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1885
    const-string v11, "WirelessDisplayService"

    const-string v12, "ScreenReceiver: ACTION_SCREEN_OFF: mAppCallScreen:3"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1886
    :cond_7
    const/4 v11, 0x6

    if-ne v1, v11, :cond_2

    .line 1887
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    const/4 v12, 0x7

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1888
    const-string v11, "WirelessDisplayService"

    const-string v12, "ScreenReceiver: ACTION_SCREEN_OFF: mAppCallScreen:7"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1896
    .end local v1           #condState:I
    :cond_8
    const-string v11, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1898
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    const/16 v12, 0x1f

    const/16 v13, 0x28

    const/4 v14, 0x1

    invoke-virtual {v11, v12, v13, v14}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    .line 1899
    .local v8, msg_join:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1900
    const-string v11, "WirelessDisplayService"

    const-string v12, "ScreenReceiver: ACTION_USER_PRESENT: REQ_JOIN_GROUP - TRUE"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1905
    const/4 v11, 0x7

    if-eq v2, v11, :cond_9

    const/4 v11, 0x4

    if-eq v2, v11, :cond_9

    const/16 v11, 0x9

    if-ne v2, v11, :cond_2

    .line 1908
    :cond_9
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 1909
    .restart local v1       #condState:I
    const-string v11, "WirelessDisplayService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ScreenReceiver:ACTION_USER_PRESENT: curState"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " condState:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    const/4 v11, 0x4

    if-ne v2, v11, :cond_d

    .line 1911
    const/4 v11, 0x1

    if-ne v1, v11, :cond_a

    .line 1912
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    const/16 v12, 0x29

    const/16 v13, 0x2a

    const/16 v14, 0x2d

    invoke-virtual {v11, v12, v13, v14}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 1913
    .restart local v3       #msg:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    const-wide/16 v12, 0x1

    invoke-virtual {v11, v3, v12, v13}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1914
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1915
    const-string v11, "WirelessDisplayService"

    const-string v12, "ScreenReceiver: ACTION_USER_PRESENT: mAppCallScreen:0"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1916
    .end local v3           #msg:Landroid/os/Message;
    :cond_a
    const/4 v11, 0x7

    if-ne v1, v11, :cond_b

    .line 1917
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    const/4 v12, 0x6

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1918
    const-string v11, "WirelessDisplayService"

    const-string v12, "ScreenReceiver: ACTION_USER_PRESENT: mAppCallScreen:6"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1919
    :cond_b
    const/4 v11, 0x3

    if-ne v1, v11, :cond_c

    .line 1920
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1921
    const-string v11, "WirelessDisplayService"

    const-string v12, "ScreenReceiver: ACTION_USER_PRESENT: mAppCallScreen:2"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1922
    :cond_c
    const/4 v11, 0x5

    if-ne v1, v11, :cond_2

    .line 1923
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1924
    const-string v11, "WirelessDisplayService"

    const-string v12, "ScreenReceiver: ACTION_USER_PRESENT: mAppCallScreen:4 Should not be here"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1926
    :cond_d
    const/4 v11, 0x7

    if-ne v2, v11, :cond_10

    .line 1927
    const/4 v11, 0x1

    if-ne v1, v11, :cond_e

    .line 1928
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    const/16 v12, 0x1f

    const/16 v13, 0x21

    const/4 v14, 0x1

    invoke-virtual {v11, v12, v13, v14}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    .line 1929
    .local v5, msg3:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1930
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1932
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    const/16 v12, 0x14

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    .line 1933
    .local v6, msgFallBackfromAppPause:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    const-wide/16 v12, 0xbb8

    invoke-virtual {v11, v6, v12, v13}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1934
    const-string v11, "WirelessDisplayService"

    const-string v12, "ScreenReceiver: ACTION_USER_PRESENT: mAppCallScreen:0"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1935
    .end local v5           #msg3:Landroid/os/Message;
    .end local v6           #msgFallBackfromAppPause:Landroid/os/Message;
    :cond_e
    const/4 v11, 0x7

    if-ne v1, v11, :cond_f

    .line 1936
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    const/4 v12, 0x6

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1937
    const-string v11, "WirelessDisplayService"

    const-string v12, "ScreenReceiver: ACTION_USER_PRESENT: mAppCallScreen:6"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1938
    :cond_f
    const/4 v11, 0x5

    if-ne v1, v11, :cond_2

    .line 1939
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1940
    const-string v11, "WirelessDisplayService"

    const-string v12, "ScreenReceiver: ACTION_USER_PRESENT: mAppCallScreen:4"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1942
    :cond_10
    const/16 v11, 0x9

    if-ne v2, v11, :cond_2

    .line 1943
    const/4 v11, 0x1

    if-ne v1, v11, :cond_11

    .line 1944
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    const/16 v12, 0x29

    const/16 v13, 0x2a

    const/16 v14, 0x2e

    invoke-virtual {v11, v12, v13, v14}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 1945
    .local v4, msg2:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v11

    const-wide/16 v12, 0xbb8

    invoke-virtual {v11, v4, v12, v13}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1946
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1947
    const-string v11, "WirelessDisplayService"

    const-string v12, "ScreenReceiver: ACTION_USER_PRESENT: mAppCallScreen:0 Should not be here"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1948
    .end local v4           #msg2:Landroid/os/Message;
    :cond_11
    const/4 v11, 0x3

    if-ne v1, v11, :cond_12

    .line 1949
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1950
    const-string v11, "WirelessDisplayService"

    const-string v12, "ScreenReceiver: ACTION_USER_PRESENT: mAppCallScreen:2"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1951
    :cond_12
    const/4 v11, 0x7

    if-ne v1, v11, :cond_2

    .line 1952
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayService$ScreenReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    const/4 v12, 0x6

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1953
    const-string v11, "WirelessDisplayService"

    const-string v12, "ScreenReceiver: ACTION_USER_PRESENT: mAppCallScreen:6"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
