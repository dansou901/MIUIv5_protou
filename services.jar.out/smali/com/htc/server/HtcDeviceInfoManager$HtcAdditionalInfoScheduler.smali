.class Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;
.super Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;
.source "HtcDeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcDeviceInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HtcAdditionalInfoScheduler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler$LocationInfoLogger;
    }
.end annotation


# instance fields
.field private mLocationLogger:Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler$LocationInfoLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 917
    invoke-direct {p0, p1}, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;-><init>(Landroid/content/Context;)V

    .line 918
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    if-eqz v0, :cond_0

    .line 919
    new-instance v0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler$LocationInfoLogger;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    invoke-direct {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler$LocationInfoLogger;-><init>([Lcom/htc/server/HtcInfoOperator;)V

    iput-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;->mLocationLogger:Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler$LocationInfoLogger;

    .line 922
    :goto_0
    return-void

    .line 921
    :cond_0
    const-string v0, "HtcDeviceInfoManager"

    const-string v1, "[HtcAdditionalInfoScheduler] no info operator"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected createInfoOperators(Landroid/content/Context;)[Lcom/htc/server/HtcInfoOperator;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 925
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$500()D

    move-result-wide v0

    const-wide/high16 v2, 0x4010

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 927
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/server/HtcInfoOperator;

    new-instance v1, Lcom/htc/server/HtcDebugInfoOperator;

    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {v1, v2, p1}, Lcom/htc/server/HtcDebugInfoOperator;-><init>(Landroid/os/PowerManager;Landroid/content/Context;)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/htc/server/HtcReleaseInfoOperator;

    invoke-direct {v1}, Lcom/htc/server/HtcReleaseInfoOperator;-><init>()V

    aput-object v1, v0, v5

    .line 930
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v5, [Lcom/htc/server/HtcInfoOperator;

    new-instance v1, Lcom/htc/server/HtcDebugInfoOperator;

    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {v1, v2, p1}, Lcom/htc/server/HtcDebugInfoOperator;-><init>(Landroid/os/PowerManager;Landroid/content/Context;)V

    aput-object v1, v0, v4

    goto :goto_0
.end method

.method protected onHandleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 935
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 999
    :pswitch_0
    invoke-super {p0, p1}, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->onHandleMessage(Landroid/os/Message;)V

    .line 1003
    :cond_0
    :goto_0
    return-void

    .line 938
    :pswitch_1
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$000()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "HtcDeviceInfoManager"

    const-string v7, "SENTINEL "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    :cond_1
    monitor-enter p0

    .line 940
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 941
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 946
    :pswitch_2
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$000()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "HtcDeviceInfoManager"

    const-string v7, "LOGINSTALLEDAPP"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :cond_2
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .local v0, arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 948
    .local v4, op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v4}, Lcom/htc/server/HtcInfoOperator;->logInstalledApp()V

    .line 947
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 953
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_3
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$000()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "HtcDeviceInfoManager"

    const-string v7, "LOGSWINFOTIME"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :cond_3
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_2
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 955
    .restart local v4       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v4}, Lcom/htc/server/HtcInfoOperator;->logSWInfoTime()V

    .line 954
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 960
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_4
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$000()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "HtcDeviceInfoManager"

    const-string v7, "LOGHWINFOTIME"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :cond_4
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_3
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 962
    .restart local v4       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v4}, Lcom/htc/server/HtcInfoOperator;->logHWInfoTime()V

    .line 961
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 967
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_5
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$000()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "HtcDeviceInfoManager"

    const-string v7, "LOGLOCATIONINFO"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    :cond_5
    iget-object v6, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;->mLocationLogger:Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler$LocationInfoLogger;

    if-eqz v6, :cond_0

    .line 969
    iget-object v6, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;->mLocationLogger:Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler$LocationInfoLogger;

    invoke-virtual {v6}, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler$LocationInfoLogger;->log()V

    goto :goto_0

    .line 974
    :pswitch_6
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$000()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "HtcDeviceInfoManager"

    const-string v7, "SET_UI_MODE"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    :cond_6
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 976
    .local v5, uiMode:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_4
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 977
    .restart local v4       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v4, v5}, Lcom/htc/server/HtcInfoOperator;->setUIMode(Ljava/lang/String;)V

    .line 976
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 982
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #op:Lcom/htc/server/HtcInfoOperator;
    .end local v5           #uiMode:Ljava/lang/String;
    :pswitch_7
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$000()Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "HtcDeviceInfoManager"

    const-string v7, "UPDATE_POLICY"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    :cond_7
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 984
    .local v2, isSIE:Z
    if-nez v2, :cond_0

    .line 985
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_5
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 986
    .restart local v4       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v4}, Lcom/htc/server/HtcInfoOperator;->updatePolicy()V

    .line 985
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 992
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v2           #isSIE:Z
    .end local v3           #len$:I
    .end local v4           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_8
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$000()Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "HtcDeviceInfoManager"

    const-string v7, "LOGLSSHORTCUT"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :cond_8
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_6
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 994
    .restart local v4       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v4}, Lcom/htc/server/HtcInfoOperator;->logLockscreenShortcutInfo()V

    .line 993
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 935
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public setup(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 1006
    invoke-super {p0, p1}, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->setup(Landroid/content/Context;)V

    .line 1007
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mReceiverHandler:Landroid/os/Handler;

    invoke-static {p1, v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->registerDebugInfoReceiver(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 1008
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mReceiverHandler:Landroid/os/Handler;

    invoke-static {p1, v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->registerExtraUsageReceiver(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 1009
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mReceiverHandler:Landroid/os/Handler;

    invoke-static {p1, v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->registerUIModeReceiver(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 1010
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mReceiverHandler:Landroid/os/Handler;

    invoke-static {p1, v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->registerPolicyChangeReceiver(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 1011
    return-void
.end method

.method public synchronizedFlush()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 1014
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1015
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1016
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1017
    :cond_0
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1019
    monitor-enter p0

    .line 1021
    const-wide/16 v1, 0x2710

    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1025
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 1026
    return-void

    .line 1022
    :catch_0
    move-exception v0

    .line 1023
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "HtcDeviceInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "synchronized flush exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1025
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
