.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;
.super Lcom/android/internal/util/State;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetherMasterUtilState"
.end annotation


# static fields
.field protected static final TRY_TO_SETUP_MOBILE_CONNECTION:Z = true

.field protected static final WAIT_FOR_NETWORK_TO_SETTLE:Z


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method protected chooseUpstreamType(Z)V
    .locals 12
    .parameter "tryCell"

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v6, -0x1

    .local v6, upType:I
    const/4 v2, 0x0

    .local v2, iface:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, ifaceV6:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->getActivedTetherUpstream()Landroid/net/NetworkInfo;
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering;->access$6900(Lcom/android/server/connectivity/Tethering;)Landroid/net/NetworkInfo;

    move-result-object v4

    .local v4, info:Landroid/net/NetworkInfo;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    :cond_0
    const-string v7, "Tethering"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "chooseUpstreamType("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "), preferredApn ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v9, v9, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    invoke-static {v9}, Lcom/android/server/connectivity/Tethering;->access$2900(Lcom/android/server/connectivity/Tethering;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", got type="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_1

    const/4 v7, 0x5

    if-eq v6, v7, :cond_1

    if-eq v6, v10, :cond_1

    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->turnOffUpstreamMobileConnection()Z

    :cond_1
    if-ne v6, v10, :cond_6

    const/4 v5, 0x1

    .local v5, tryAgainLater:Z
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering;->access$2900(Lcom/android/server/connectivity/Tethering;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->turnOnUpstreamMobileConnection(I)Z

    move-result v7

    if-ne v7, v11, :cond_2

    if-ne p1, v11, :cond_2

    .end local v5           #tryAgainLater:Z
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .local v1, ifChanged:Z
    const/4 v0, 0x0

    .local v0, dnsUpdated:Z
    if-nez v2, :cond_8

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceName:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7200(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_7

    :goto_1
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$4900()Z

    move-result v7

    if-eqz v7, :cond_3

    if-nez v3, :cond_c

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceNameV6:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7300(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_b

    :cond_3
    :goto_2
    const-string v7, "Tethering"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update if="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceName:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7200(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$4900()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "Tethering"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update if="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceNameV6:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7300(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (IPV6)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v1, :cond_10

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$4900()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-virtual {p0, v2, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->notifyTetheredOfNewUpstreamIface(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    return-void

    .end local v0           #dnsUpdated:Z
    .end local v1           #ifChanged:Z
    :cond_6
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->htcGetInterfaceName(Landroid/net/NetworkInfo;)Ljava/lang/String;
    invoke-static {v7, v4}, Lcom/android/server/connectivity/Tethering;->access$7000(Lcom/android/server/connectivity/Tethering;Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$4900()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->htcGetInterfaceNameV6(Landroid/net/NetworkInfo;)Ljava/lang/String;
    invoke-static {v7, v4}, Lcom/android/server/connectivity/Tethering;->access$7100(Lcom/android/server/connectivity/Tethering;Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .restart local v0       #dnsUpdated:Z
    .restart local v1       #ifChanged:Z
    :cond_7
    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_8
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceName:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7200(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_9

    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_9
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceName:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7200(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_a
    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_b
    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_c
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceNameV6:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7300(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_d

    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_d
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceNameV6:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7300(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_e
    const/4 v0, 0x1

    goto/16 :goto_2

    :cond_f
    invoke-virtual {p0, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->notifyTetheredOfNewUpstreamIface(Ljava/lang/String;)V

    goto :goto_3

    :cond_10
    if-eqz v0, :cond_5

    invoke-virtual {p0, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->updateDnsServer(Landroid/net/NetworkInfo;)V

    goto :goto_3
.end method

.method protected enableString(I)Ljava/lang/String;
    .locals 3
    .parameter "apnType"

    .prologue
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2400()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableString return null, apnType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "enableDUN"

    goto :goto_0

    :pswitch_2
    const-string v0, "enableHIPRI"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getDnsServers(Landroid/net/NetworkInfo;)[Ljava/lang/String;
    .locals 12
    .parameter "info"

    .prologue
    const/4 v3, 0x0

    .local v3, dnsServers:[Ljava/lang/String;
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v8, v8, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering;->access$6000(Lcom/android/server/connectivity/Tethering;)Landroid/net/IConnectivityManager;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    invoke-interface {v8, v9}, Landroid/net/IConnectivityManager;->getNetworkNameServers(I)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :cond_0
    :goto_0
    if-eqz v3, :cond_5

    const/4 v5, 0x0

    .local v5, i:I
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_1
    if-ge v6, v7, :cond_2

    aget-object v2, v0, v6

    .local v2, dns:Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v8, "0.0.0.0"

    invoke-static {v2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #dns:Ljava/lang/String;
    .end local v5           #i:I
    .end local v6           #i$:I
    .end local v7           #len$:I
    :catch_0
    move-exception v4

    .local v4, e4:Ljava/lang/Exception;
    const-string v8, "Tethering"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error getting DNS servers :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v4           #e4:Ljava/lang/Exception;
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v5       #i:I
    .restart local v6       #i$:I
    .restart local v7       #len$:I
    :cond_2
    const/4 v1, 0x0

    .local v1, avaliableDns:[Ljava/lang/String;
    if-lez v5, :cond_4

    new-array v1, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, v3

    array-length v7, v0

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v7, :cond_4

    aget-object v2, v0, v6

    .restart local v2       #dns:Ljava/lang/String;
    if-eqz v2, :cond_3

    const-string v8, "0.0.0.0"

    invoke-static {v2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    aput-object v2, v1, v5

    add-int/lit8 v5, v5, 0x1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .end local v2           #dns:Ljava/lang/String;
    :cond_4
    move-object v3, v1

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #avaliableDns:[Ljava/lang/String;
    .end local v5           #i:I
    .end local v6           #i$:I
    .end local v7           #len$:I
    :cond_5
    if-nez v3, :cond_6

    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v9, 0x51

    if-eq v8, v9, :cond_7

    const-string v8, "Tethering"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Use default DNS servers : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v11, v11, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$7600(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/server/connectivity/Tethering;->dumpStringArray([Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/android/server/connectivity/Tethering;->access$7700(Lcom/android/server/connectivity/Tethering;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v8, v8, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering;->access$7600(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v3

    :cond_6
    :goto_3
    return-object v3

    :cond_7
    const/4 v8, 0x1

    new-array v3, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, ""

    aput-object v9, v3, v8

    goto :goto_3
.end method

.method protected notifyTetheredOfNewUpstreamIface(Ljava/lang/String;)V
    .locals 1
    .parameter "ifaceName"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->notifyTetheredOfNewUpstreamIface(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected notifyTetheredOfNewUpstreamIface(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "ifaceName"
    .parameter "ifaceNameV6"

    .prologue
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$4900()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifying tethered with iface ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ifaceV6 ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v1, v4

    const/4 v4, 0x1

    aput-object p2, v1, v4

    .local v1, interfaces:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceNameV6:Ljava/lang/String;
    invoke-static {v4, p2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7302(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceName:Ljava/lang/String;
    invoke-static {v4, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7202(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7400(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .local v2, o:Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .local v3, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    const/16 v4, 0xc

    invoke-virtual {v3, v4, v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(ILjava/lang/Object;)V

    goto :goto_1

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #interfaces:[Ljava/lang/String;
    .end local v2           #o:Ljava/lang/Object;
    .end local v3           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_0
    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifying tethered with iface ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #interfaces:[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "m"

    .prologue
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2400()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected turnOffMasterTetherSettings()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$4600(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->stopTethering()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$4600(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStopTetheringErrorState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6500(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v3

    #calls: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6600(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingDisabledErrorState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v3

    #calls: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6800(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method

.method protected turnOffUpstreamMobileConnection()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, -0x1

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2400()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2500()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "turnOffMobile pre="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$2900(Lcom/android/server/connectivity/Tethering;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " prev="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mMobileApnReserved:I
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6104(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mMobileApnReserved:I
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    move-result v2

    if-eq v2, v5, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$6000(Lcom/android/server/connectivity/Tethering;)Landroid/net/IConnectivityManager;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mMobileApnReserved:I
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->enableString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/net/IConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mMobileApnReserved:I
    invoke-static {v1, v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5902(Lcom/android/server/connectivity/Tethering$TetherMasterSM;I)I

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method protected turnOffWiMaxConnection()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mWiMaxConnectionRequested:Z
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7500(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$900(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "wimax"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/net/wimax/WimaxController;

    .local v1, mWimaxController:Lcom/htc/net/wimax/WimaxController;
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2}, Lcom/htc/net/wimax/WimaxController;->setWimaxDunMode(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mWiMaxConnectionRequested:Z
    invoke-static {v2, v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7502(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Z)Z

    .end local v1           #mWimaxController:Lcom/htc/net/wimax/WimaxController;
    :cond_1
    const/4 v2, 0x1

    return v2

    .restart local v1       #mWimaxController:Lcom/htc/net/wimax/WimaxController;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WiMaxDUN=false fail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected turnOnMasterTetherSettings()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$4600(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #setter for: Lcom/android/server/connectivity/Tethering;->pDhcpRange:[Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/android/server/connectivity/Tethering;->access$6402(Lcom/android/server/connectivity/Tethering;[Ljava/lang/String;)[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->updateDhcpRange()V

    invoke-virtual {p0, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->updateDnsServer(Landroid/net/NetworkInfo;)V

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingEnabledErrorState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6200(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6300(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected turnOnUpstreamMobileConnection(I)Z
    .locals 9
    .parameter "apnType"

    .prologue
    const/4 v8, -0x1

    const/4 v4, 0x1

    .local v4, retValue:Z
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mMobileApnReserved:I
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    move-result v5

    if-eq p1, v5, :cond_0

    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->turnOffUpstreamMobileConnection()Z

    :cond_0
    const/4 v3, 0x3

    .local v3, result:I
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->enableString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, enableString:Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$2900(Lcom/android/server/connectivity/Tethering;)I

    move-result v5

    if-eq v5, v8, :cond_4

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$6000(Lcom/android/server/connectivity/Tethering;)Landroid/net/IConnectivityManager;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Landroid/os/Binder;

    invoke-direct {v7}, Landroid/os/Binder;-><init>()V

    invoke-interface {v5, v6, v1, v7}, Landroid/net/IConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_0
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2400()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2500()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "turnOnMobile pre="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering;->access$2900(Lcom/android/server/connectivity/Tethering;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ret="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    packed-switch v3, :pswitch_data_0

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$2900(Lcom/android/server/connectivity/Tethering;)I

    move-result v5

    if-eq v5, v8, :cond_2

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6108(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    :cond_2
    const/4 v4, 0x0

    :cond_3
    :goto_1
    move v5, v4

    :goto_2
    return v5

    :cond_4
    const/4 v5, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "turnOnMobile pre="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering;->access$2900(Lcom/android/server/connectivity/Tethering;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " fail:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_0
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$2900(Lcom/android/server/connectivity/Tethering;)I

    move-result v5

    if-eq v5, v8, :cond_3

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mMobileApnReserved:I
    invoke-static {v5, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5902(Lcom/android/server/connectivity/Tethering$TetherMasterSM;I)I

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .local v2, m:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6104(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    move-result v5

    iput v5, v2, Landroid/os/Message;->arg1:I

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const-wide/32 v6, 0x9c40

    invoke-virtual {v5, v2, v6, v7}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected turnOnWiMaxConnection()Z
    .locals 5

    .prologue
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$900(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "wimax"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/net/wimax/WimaxController;

    .local v1, mWimaxController:Lcom/htc/net/wimax/WimaxController;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mWiMaxConnectionRequested:Z
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7500(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Lcom/htc/net/wimax/WimaxController;->setWimaxDunMode(Z)V

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const/4 v3, 0x1

    #setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mWiMaxConnectionRequested:Z
    invoke-static {v2, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7502(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mWiMaxConnectionRequested:Z
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7500(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Z

    move-result v2

    return v2

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WiMaxDUN=true fail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected declared-synchronized updateDhcpRange()V
    .locals 22

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v18, "wifi"

    invoke-static/range {v18 .. v18}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    .local v17, wifib:Landroid/os/IBinder;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v15

    .local v15, wifiService:Landroid/net/wifi/IWifiManager;
    const-string v18, "Tethering"

    const-string v19, "updateDhcpRange +"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v16, 0x0

    .local v16, wifiTethered:Z
    const/4 v14, 0x0

    .local v14, usbTethered:Z
    const/4 v3, 0x0

    .local v3, bluetoothTethered:Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Lcom/android/server/connectivity/Tethering;->access$8000(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;

    move-result-object v19

    monitor-enter v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Lcom/android/server/connectivity/Tethering;->access$8000(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    .local v9, ifaces:Ljava/util/Set;
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, iface:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Lcom/android/server/connectivity/Tethering;->access$8000(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .local v13, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    const/16 v16, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    #calls: Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$5200(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    const/4 v14, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v18, v0

    check-cast v8, Ljava/lang/String;

    .end local v8           #iface:Ljava/lang/Object;
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .end local v13           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_3
    monitor-exit v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .local v12, myDhcpRange:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    invoke-interface {v15}, Landroid/net/wifi/IWifiManager;->getTetheringDhcpRange()[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v12, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const-string v18, "Tethering"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "myDhcpRange.length = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v18

    rem-int/lit8 v18, v18, 0x2

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_4

    const-string v19, "Tethering"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "            ["

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "]= "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v6           #i:I
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v9           #ifaces:Ljava/util/Set;
    .end local v12           #myDhcpRange:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v18

    :try_start_4
    monitor-exit v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v5

    .local v5, e1:Ljava/lang/Exception;
    :try_start_6
    const-string v18, "Tethering"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error updateDhcpRange :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v5           #e1:Ljava/lang/Exception;
    :goto_2
    monitor-exit p0

    return-void

    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v9       #ifaces:Ljava/util/Set;
    .restart local v12       #myDhcpRange:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/android/server/connectivity/Tethering;->access$8100(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v12, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-virtual {v12}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->pDhcpRange:[Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/server/connectivity/Tethering;->access$6400(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_9

    const-string v18, "update dhcp range from"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .local v11, msg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->pDhcpRange:[Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/android/server/connectivity/Tethering;->access$6400(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->pDhcpRange:[Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/android/server/connectivity/Tethering;->access$6400(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v2

    .local v2, arr$:[Ljava/lang/String;
    array-length v10, v2

    .local v10, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_3
    if-ge v7, v10, :cond_6

    aget-object v4, v2, v7

    .local v4, d:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #d:Ljava/lang/String;
    .end local v10           #len$:I
    .local v7, i$:Ljava/util/Iterator;
    :cond_5
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " null"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .end local v7           #i$:Ljava/util/Iterator;
    :cond_6
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " to"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    if-eqz v12, :cond_7

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .restart local v4       #d:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    .end local v4           #d:Ljava/lang/String;
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_7
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " null"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_8
    const-string v18, "Tethering"

    const-string v19, "%s"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v11, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v19, v0

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    #setter for: Lcom/android/server/connectivity/Tethering;->pDhcpRange:[Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$6402(Lcom/android/server/connectivity/Tethering;[Ljava/lang/String;)[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static/range {v18 .. v18}, Lcom/android/server/connectivity/Tethering;->access$4600(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/os/INetworkManagementService;->stopTethering()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static/range {v18 .. v18}, Lcom/android/server/connectivity/Tethering;->access$4600(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->pDhcpRange:[Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/server/connectivity/Tethering;->access$6400(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V

    .end local v11           #msg:Ljava/lang/String;
    :cond_9
    const-string v18, "Tethering"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updateDhcpRange :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_2

    .end local v3           #bluetoothTethered:Z
    .end local v9           #ifaces:Ljava/util/Set;
    .end local v12           #myDhcpRange:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14           #usbTethered:Z
    .end local v15           #wifiService:Landroid/net/wifi/IWifiManager;
    .end local v16           #wifiTethered:Z
    .end local v17           #wifib:Landroid/os/IBinder;
    :catchall_1
    move-exception v18

    monitor-exit p0

    throw v18
.end method

.method protected updateDnsServer(Landroid/net/NetworkInfo;)V
    .locals 7
    .parameter "info"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->getDnsServers(Landroid/net/NetworkInfo;)[Ljava/lang/String;

    move-result-object v0

    .local v0, dnsServers:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2400()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2500()Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update if "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " DNS "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v6, v6, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->dumpStringArray([Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6, v0}, Lcom/android/server/connectivity/Tethering;->access$7700(Lcom/android/server/connectivity/Tethering;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_2

    const/4 v4, 0x2

    :goto_1
    new-array v3, v4, [Ljava/lang/Object;

    .local v3, mParams:[Ljava/lang/Object;
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7200(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v5, 0x1

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceNameV6:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7300(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    const-string v4, "null"

    :goto_2
    aput-object v4, v3, v5

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    array-length v4, v0

    if-ge v2, v4, :cond_4

    add-int/lit8 v4, v2, 0x2

    aget-object v5, v0, v2

    aput-object v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v2           #i:I
    .end local v3           #mParams:[Ljava/lang/Object;
    :cond_1
    const/4 v4, -0x1

    goto :goto_0

    :cond_2
    array-length v4, v0

    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    .restart local v3       #mParams:[Ljava/lang/Object;
    :cond_3
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceNameV6:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7300(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    const/16 v5, 0xf

    #calls: Lcom/android/server/connectivity/Tethering;->addToHtcTetherHistory(I[Ljava/lang/Object;)V
    invoke-static {v4, v5, v3}, Lcom/android/server/connectivity/Tethering;->access$600(Lcom/android/server/connectivity/Tethering;I[Ljava/lang/Object;)V

    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$4600(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/os/INetworkManagementService;->setDnsForwarders([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dnsfwd="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetDnsForwardersErrorState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7800(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v5

    #calls: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    goto :goto_4
.end method
