.class Landroid/net/hotspot/SoftapMonitor$MonitorThread;
.super Ljava/lang/Thread;
.source "SoftapMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/hotspot/SoftapMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MonitorThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/hotspot/SoftapMonitor;


# direct methods
.method public constructor <init>(Landroid/net/hotspot/SoftapMonitor;)V
    .locals 1
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    .line 118
    const-string v0, "SoftapMonitor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method private handleAssocListChange()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #getter for: Landroid/net/hotspot/SoftapMonitor;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v0}, Landroid/net/hotspot/SoftapMonitor;->access$600(Landroid/net/hotspot/SoftapMonitor;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->notifyAssocListChange()V

    .line 249
    return-void
.end method

.method private handleConnectionRequest(Ljava/lang/String;)V
    .locals 1
    .parameter "mac"

    .prologue
    .line 253
    iget-object v0, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #getter for: Landroid/net/hotspot/SoftapMonitor;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v0}, Landroid/net/hotspot/SoftapMonitor;->access$600(Landroid/net/hotspot/SoftapMonitor;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->notifyConnectionRequest(Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method private handleL2peFailEvent()V
    .locals 2

    .prologue
    .line 276
    const-string v0, "SoftapMonitor"

    const-string v1, "L2PE: SoftapMonitor@handleL2peFailEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #getter for: Landroid/net/hotspot/SoftapMonitor;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v0}, Landroid/net/hotspot/SoftapMonitor;->access$600(Landroid/net/hotspot/SoftapMonitor;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->notifyL2peFail()V

    .line 278
    return-void
.end method

.method private handleL2peSuccessfulEvent()V
    .locals 2

    .prologue
    .line 272
    const-string v0, "SoftapMonitor"

    const-string v1, "L2PE: SoftapMonitor@handleL2peSuccessfulEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #getter for: Landroid/net/hotspot/SoftapMonitor;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v0}, Landroid/net/hotspot/SoftapMonitor;->access$600(Landroid/net/hotspot/SoftapMonitor;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->notifyL2peSuccessful()V

    .line 274
    return-void
.end method

.method private handleWpsRegistrarFailEvent()V
    .locals 2

    .prologue
    .line 267
    const-string v0, "SoftapMonitor"

    const-string v1, "SoftapMonitor@handleWpsRegistrarFailEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #getter for: Landroid/net/hotspot/SoftapMonitor;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v0}, Landroid/net/hotspot/SoftapMonitor;->access$600(Landroid/net/hotspot/SoftapMonitor;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->notifyWpsRegistrarFail()V

    .line 269
    return-void
.end method

.method private handleWpsRegistrarStartEvent()V
    .locals 2

    .prologue
    .line 259
    const-string v0, "SoftapMonitor"

    const-string v1, "SoftapMonitor@handleWpsRegistrarStartEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #getter for: Landroid/net/hotspot/SoftapMonitor;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v0}, Landroid/net/hotspot/SoftapMonitor;->access$600(Landroid/net/hotspot/SoftapMonitor;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->notifyWpsRegistrarStart()V

    .line 261
    return-void
.end method

.method private handleWpsRegistrarSuccessfulEvent()V
    .locals 2

    .prologue
    .line 263
    const-string v0, "SoftapMonitor"

    const-string v1, "SoftapMonitor@handleWpsRegistrarSuccessfulEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #getter for: Landroid/net/hotspot/SoftapMonitor;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v0}, Landroid/net/hotspot/SoftapMonitor;->access$600(Landroid/net/hotspot/SoftapMonitor;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->notifyWpsRegistrarSuccessful()V

    .line 265
    return-void
.end method

.method private nap(I)V
    .locals 2
    .parameter "secs"

    .prologue
    .line 289
    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v0, v0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_0
    return-void

    .line 290
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/16 v11, 0x26

    const/16 v10, 0x25

    const/4 v9, 0x0

    .line 121
    const-string v6, "SoftapMonitor"

    const-string v7, "Start waiting Hotspot event"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    :goto_0
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v6, v10, :cond_1

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v6, v11, :cond_2

    .line 126
    :cond_1
    iget-object v6, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #getter for: Landroid/net/hotspot/SoftapMonitor;->ShouldStopMonitor:Z
    invoke-static {v6}, Landroid/net/hotspot/SoftapMonitor;->access$000(Landroid/net/hotspot/SoftapMonitor;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #getter for: Landroid/net/hotspot/SoftapMonitor;->IsAPDown:Z
    invoke-static {v6}, Landroid/net/hotspot/SoftapMonitor;->access$100(Landroid/net/hotspot/SoftapMonitor;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 127
    const-string v6, "SoftapMonitor"

    const-string v7, "force to stop SoftapMonitor"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-direct {p0}, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->handleAssocListChange()V

    .line 129
    invoke-static {}, Landroid/net/hotspot/HotspotNative;->stopEventWaiting()Z

    .line 130
    iget-object v6, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #calls: Landroid/net/hotspot/SoftapMonitor;->setMonitorflag(Z)V
    invoke-static {v6, v9}, Landroid/net/hotspot/SoftapMonitor;->access$200(Landroid/net/hotspot/SoftapMonitor;Z)V

    .line 131
    iget-object v6, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #calls: Landroid/net/hotspot/SoftapMonitor;->setAPdownflag(Z)V
    invoke-static {v6, v9}, Landroid/net/hotspot/SoftapMonitor;->access$300(Landroid/net/hotspot/SoftapMonitor;Z)V

    .line 242
    :goto_1
    iget-object v6, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #setter for: Landroid/net/hotspot/SoftapMonitor;->mRecvErrors:I
    invoke-static {v6, v9}, Landroid/net/hotspot/SoftapMonitor;->access$502(Landroid/net/hotspot/SoftapMonitor;I)I

    .line 243
    iget-object v6, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #setter for: Landroid/net/hotspot/SoftapMonitor;->mNullErrors:I
    invoke-static {v6, v9}, Landroid/net/hotspot/SoftapMonitor;->access$402(Landroid/net/hotspot/SoftapMonitor;I)I

    .line 244
    return-void

    .line 136
    :cond_2
    invoke-static {}, Landroid/net/hotspot/HotspotNative;->waitForEvent()Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, eventStr:Ljava/lang/String;
    if-nez v2, :cond_3

    .line 138
    const-string v6, "SoftapMonitor"

    const-string v7, "HotspotNative.waitForEvent() return NULL"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v6, 0x5

    invoke-direct {p0, v6}, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->nap(I)V

    .line 140
    iget-object v6, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    invoke-static {v6}, Landroid/net/hotspot/SoftapMonitor;->access$404(Landroid/net/hotspot/SoftapMonitor;)I

    move-result v6

    const/4 v7, 0x6

    if-le v6, v7, :cond_0

    .line 141
    const-string v6, "SoftapMonitor"

    const-string v7, "Too many NULL EVENT"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {}, Landroid/net/hotspot/HotspotNative;->stopEventWaiting()Z

    goto :goto_1

    .line 148
    :cond_3
    iget-object v6, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #setter for: Landroid/net/hotspot/SoftapMonitor;->mNullErrors:I
    invoke-static {v6, v9}, Landroid/net/hotspot/SoftapMonitor;->access$402(Landroid/net/hotspot/SoftapMonitor;I)I

    .line 150
    const-string v6, "AP_UP"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 151
    const/4 v0, 0x1

    .line 152
    .local v0, event:I
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", AP_UP"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 153
    .end local v0           #event:I
    :cond_4
    const-string v6, "AP_DOWN"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 154
    const/4 v0, 0x2

    .line 155
    .restart local v0       #event:I
    invoke-direct {p0}, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->handleAssocListChange()V

    .line 156
    invoke-static {}, Landroid/net/hotspot/HotspotNative;->stopEventWaiting()Z

    .line 158
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v6, v10, :cond_5

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v6, v11, :cond_6

    .line 160
    :cond_5
    iget-object v6, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #calls: Landroid/net/hotspot/SoftapMonitor;->setMonitorflag(Z)V
    invoke-static {v6, v9}, Landroid/net/hotspot/SoftapMonitor;->access$200(Landroid/net/hotspot/SoftapMonitor;Z)V

    .line 161
    iget-object v6, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    const/4 v7, 0x1

    #calls: Landroid/net/hotspot/SoftapMonitor;->setAPdownflag(Z)V
    invoke-static {v6, v7}, Landroid/net/hotspot/SoftapMonitor;->access$300(Landroid/net/hotspot/SoftapMonitor;Z)V

    .line 164
    :cond_6
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", AP_DOWN"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 166
    .end local v0           #event:I
    :cond_7
    const-string v6, "STA_JOIN"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "AP-STA-CONNECTED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 167
    :cond_8
    const/4 v0, 0x3

    .line 168
    .restart local v0       #event:I
    invoke-direct {p0}, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->handleAssocListChange()V

    .line 169
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", STA_JOIN"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 170
    .end local v0           #event:I
    :cond_9
    const-string v6, "STA_LEAVE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "AP-STA-DISCONNECTED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 171
    :cond_a
    const/4 v0, 0x4

    .line 172
    .restart local v0       #event:I
    invoke-direct {p0}, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->handleAssocListChange()V

    .line 173
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", STA_LEAVE"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 174
    .end local v0           #event:I
    :cond_b
    const-string v6, "STA_BLOCK"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 175
    const/4 v0, 0x5

    .line 177
    .restart local v0       #event:I
    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 178
    .local v3, ind:I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_c

    .line 179
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, eventData:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 181
    .local v4, time:J
    invoke-direct {p0, v1}, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->handleConnectionRequest(Ljava/lang/String;)V

    .line 183
    .end local v1           #eventData:Ljava/lang/String;
    .end local v4           #time:J
    :cond_c
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", STA_BLOCK"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 185
    .end local v0           #event:I
    .end local v3           #ind:I
    :cond_d
    const-string v6, "ERROR_EVENT"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 186
    const/4 v0, 0x6

    .line 187
    .restart local v0       #event:I
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ERROR_EVENT"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v6, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    invoke-static {v6}, Landroid/net/hotspot/SoftapMonitor;->access$504(Landroid/net/hotspot/SoftapMonitor;)I

    move-result v6

    const/16 v7, 0xc

    if-le v6, v7, :cond_0

    .line 189
    const-string v6, "SoftapMonitor"

    const-string v7, "Too many ERROR_EVENT"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-static {}, Landroid/net/hotspot/HotspotNative;->stopEventWaiting()Z

    goto/16 :goto_1

    .line 195
    .end local v0           #event:I
    :cond_e
    const-string v6, "WPS_START"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 196
    const/16 v0, 0x8

    .line 197
    .restart local v0       #event:I
    invoke-direct {p0}, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->handleWpsRegistrarStartEvent()V

    .line 198
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", WPS_REGISTRAR_START"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 199
    .end local v0           #event:I
    :cond_f
    const-string v6, "WPS_SUCCESSFUL"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 200
    const/16 v0, 0x9

    .line 201
    .restart local v0       #event:I
    invoke-direct {p0}, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->handleWpsRegistrarSuccessfulEvent()V

    .line 202
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", WPS_REGISTRAR_SUCCESSFUL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 203
    .end local v0           #event:I
    :cond_10
    const-string v6, "WPS_FAIL"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 204
    const/16 v0, 0xa

    .line 205
    .restart local v0       #event:I
    invoke-direct {p0}, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->handleWpsRegistrarFailEvent()V

    .line 206
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", WPS_REGISTRAR_FAIL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 209
    .end local v0           #event:I
    :cond_11
    const-string v6, "L2PE_SUCCESSFUL"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 210
    const/16 v0, 0xb

    .line 211
    .restart local v0       #event:I
    invoke-direct {p0}, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->handleL2peSuccessfulEvent()V

    .line 212
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", L2PE_SUCCESSFUL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 214
    .end local v0           #event:I
    :cond_12
    const-string v6, "L2PE_FAIL"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 215
    const/16 v0, 0xc

    .line 216
    .restart local v0       #event:I
    invoke-direct {p0}, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->handleL2peFailEvent()V

    .line 217
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", L2PE_FAIL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 221
    .end local v0           #event:I
    :cond_13
    const-string v6, "HANG"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 222
    const/16 v0, 0xd

    .line 223
    .restart local v0       #event:I
    invoke-direct {p0}, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->handleAssocListChange()V

    .line 224
    iget-object v6, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #getter for: Landroid/net/hotspot/SoftapMonitor;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v6}, Landroid/net/hotspot/SoftapMonitor;->access$600(Landroid/net/hotspot/SoftapMonitor;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v6

    const v7, 0x2400c

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 225
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", HANGED"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 228
    .end local v0           #event:I
    :cond_14
    const-string v6, "PERF_LOCK"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 229
    const/16 v0, 0xe

    .line 230
    .restart local v0       #event:I
    iget-object v6, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #getter for: Landroid/net/hotspot/SoftapMonitor;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v6}, Landroid/net/hotspot/SoftapMonitor;->access$600(Landroid/net/hotspot/SoftapMonitor;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v6

    const v7, 0x24011

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 231
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", PERF-LOCK"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 233
    .end local v0           #event:I
    :cond_15
    const-string v6, "PERF_UNLOCK"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 234
    const/16 v0, 0xf

    .line 235
    .restart local v0       #event:I
    iget-object v6, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #getter for: Landroid/net/hotspot/SoftapMonitor;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v6}, Landroid/net/hotspot/SoftapMonitor;->access$600(Landroid/net/hotspot/SoftapMonitor;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v6

    const v7, 0x24012

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 236
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", PERF-UNLOCK"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
