.class public Lcom/htc/server/WirelessDisplayService$CallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WirelessDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WirelessDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WirelessDisplayService;


# direct methods
.method public constructor <init>(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter

    .prologue
    .line 2111
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2115
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 2116
    .local v1, bundle:Landroid/os/Bundle;
    if-nez v1, :cond_1

    .line 2235
    :cond_0
    :goto_0
    return-void

    .line 2118
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2119
    .local v0, action:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 2120
    .local v3, curState:I
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 2121
    .local v2, condState:I
    const-string v8, "WirelessDisplayService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CallReceiver: action"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x14

    invoke-virtual {v8, v9}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 2123
    const-string v8, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2124
    const-string v8, "state"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2125
    .local v7, state:Ljava/lang/String;
    const-string v8, "WirelessDisplayService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IncomingCallReceiver State: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " curState"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " condState"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$4600(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v8

    if-nez v8, :cond_7

    sget-object v8, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2130
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    const/4 v9, 0x1

    #setter for: Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z
    invoke-static {v8, v9}, Lcom/htc/server/WirelessDisplayService;->access$4602(Lcom/htc/server/WirelessDisplayService;Z)Z

    .line 2133
    const/4 v8, 0x3

    if-ne v3, v8, :cond_2

    .line 2134
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x29

    const/16 v10, 0x2b

    const/16 v11, 0x2e

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 2135
    .local v4, msg1:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 2136
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2137
    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver: mAppCallScreen:2"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2138
    .end local v4           #msg1:Landroid/os/Message;
    :cond_2
    const/4 v8, 0x4

    if-ne v3, v8, :cond_4

    .line 2140
    const/4 v8, 0x1

    if-ne v2, v8, :cond_3

    .line 2141
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2142
    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver: mAppCallScreen:3"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2143
    :cond_3
    const/4 v8, 0x5

    if-ne v2, v8, :cond_0

    .line 2144
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x7

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2145
    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver: mAppCallScreen:7"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2147
    :cond_4
    const/4 v8, 0x7

    if-ne v3, v8, :cond_0

    .line 2148
    const/4 v8, 0x4

    if-ne v2, v8, :cond_5

    .line 2149
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x6

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2150
    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver: mAppCallScreen:6"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2151
    :cond_5
    const/4 v8, 0x5

    if-ne v2, v8, :cond_6

    .line 2152
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x7

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2153
    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver: mAppCallScreen:7"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2154
    :cond_6
    if-nez v2, :cond_0

    .line 2155
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2156
    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver: mAppCallScreen:2"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2159
    :cond_7
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$4600(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v8

    if-eqz v8, :cond_12

    sget-object v8, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 2161
    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver :EXTRA_STATE_IDLE"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    const/16 v8, 0x9

    if-ne v3, v8, :cond_c

    .line 2163
    const/4 v8, 0x2

    if-ne v2, v8, :cond_9

    .line 2164
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x29

    const/16 v10, 0x2a

    const/16 v11, 0x2e

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    .line 2165
    .local v5, msg2:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const-wide/16 v9, 0xbb8

    invoke-virtual {v8, v5, v9, v10}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2166
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2167
    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver :mAppCallScreen:0"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    .end local v5           #msg2:Landroid/os/Message;
    :cond_8
    :goto_1
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    const/4 v9, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z
    invoke-static {v8, v9}, Lcom/htc/server/WirelessDisplayService;->access$4602(Lcom/htc/server/WirelessDisplayService;Z)Z

    goto/16 :goto_0

    .line 2168
    :cond_9
    const/4 v8, 0x3

    if-ne v2, v8, :cond_a

    .line 2169
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2170
    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver: mAppCallScreen:1"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2171
    :cond_a
    const/4 v8, 0x7

    if-ne v2, v8, :cond_b

    .line 2172
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2173
    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver: mAppCallScreen:5"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2174
    :cond_b
    const/4 v8, 0x6

    if-ne v2, v8, :cond_8

    .line 2175
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2176
    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver: mAppCallScreen:4"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2178
    :cond_c
    const/4 v8, 0x4

    if-ne v3, v8, :cond_f

    .line 2179
    const/4 v8, 0x2

    if-ne v2, v8, :cond_d

    .line 2180
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x29

    const/16 v10, 0x2a

    const/16 v11, 0x2d

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    .line 2181
    .restart local v5       #msg2:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const-wide/16 v9, 0xbb8

    invoke-virtual {v8, v5, v9, v10}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2182
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2183
    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver :mAppCallScreen:0"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2184
    .end local v5           #msg2:Landroid/os/Message;
    :cond_d
    const/4 v8, 0x7

    if-ne v2, v8, :cond_e

    .line 2185
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2186
    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver :mAppCallScreen:5"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2187
    :cond_e
    const/4 v8, 0x3

    if-ne v2, v8, :cond_8

    .line 2188
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2189
    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver :mAppCallScreen:1"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2191
    :cond_f
    const/4 v8, 0x7

    if-ne v3, v8, :cond_8

    .line 2192
    const/4 v8, 0x2

    if-ne v2, v8, :cond_10

    .line 2193
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x1f

    const/16 v10, 0x21

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    .line 2194
    .restart local v5       #msg2:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const-wide/16 v9, 0xbb8

    invoke-virtual {v8, v5, v9, v10}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2195
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2197
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x14

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    .line 2198
    .local v6, msgFallBackfromAppPause:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const-wide/16 v9, 0xbb8

    invoke-virtual {v8, v6, v9, v10}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2199
    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver :mAppCallScreen:0"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2200
    .end local v5           #msg2:Landroid/os/Message;
    .end local v6           #msgFallBackfromAppPause:Landroid/os/Message;
    :cond_10
    const/4 v8, 0x7

    if-ne v2, v8, :cond_11

    .line 2201
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2202
    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver :mAppCallScreen:5"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2203
    :cond_11
    const/4 v8, 0x6

    if-ne v2, v8, :cond_8

    .line 2204
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2205
    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver :mAppCallScreen:4"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2209
    :cond_12
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$4600(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v8

    if-nez v8, :cond_0

    sget-object v8, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2210
    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver :EXTRA_STATE_OFFHOOK"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    const/4 v9, 0x1

    #setter for: Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z
    invoke-static {v8, v9}, Lcom/htc/server/WirelessDisplayService;->access$4602(Lcom/htc/server/WirelessDisplayService;Z)Z

    goto/16 :goto_0
.end method
