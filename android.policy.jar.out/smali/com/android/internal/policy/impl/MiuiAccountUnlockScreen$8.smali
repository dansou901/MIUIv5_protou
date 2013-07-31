.class Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$8;
.super Landroid/content/BroadcastReceiver;
.source "MiuiAccountUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 616
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$8;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 620
    const-string v9, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    const-string v9, "LOADED"

    const-string v10, "ss"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "ABSENT"

    const-string v10, "ss"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 623
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lmiui/provider/ExtraSettings$Secure;->REGISTER_FIND_DEVICE_SIM_NUMBER:Ljava/lang/String;

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 625
    .local v4, regitsterNumberSim1:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lmiui/provider/ExtraSettings$Secure;->REGISTER_FIND_DEVICE_SIM2_NUMBER:Ljava/lang/String;

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 628
    .local v5, regitsterNumberSim2:Ljava/lang/String;
    const-string v9, "phone"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 629
    .local v6, telephonyManager:Landroid/telephony/TelephonyManager;
    const-string v9, "subscriberId"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 630
    .local v1, currentPhoneNumber:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 631
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 634
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 635
    const-string v1, ""

    .line 637
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    move v2, v7

    .line 638
    .local v2, hasRegisterSim1:Z
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    move v3, v7

    .line 640
    .local v3, hasRegisterSim2:Z
    :goto_1
    if-nez v2, :cond_3

    if-eqz v3, :cond_5

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    :cond_4
    if-eqz v3, :cond_a

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 643
    :cond_5
    iget-object v7, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$8;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mIsLockedBySimChange:Z
    invoke-static {v7}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->access$1100(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 645
    iget-object v7, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$8;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    #setter for: Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mIsLockedBySimChange:Z
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->access$1102(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;Z)Z

    .line 648
    iget-object v7, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$8;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->access$1000(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 651
    iget-object v7, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$8;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    new-instance v9, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$8$1;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$8$1;-><init>(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$8;)V

    invoke-virtual {v7, v9}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->post(Ljava/lang/Runnable;)Z

    .line 663
    :cond_6
    :goto_2
    iget-object v7, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$8;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    iget-object v9, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$8;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mUpdateLockDeviceRunnable:Ljava/lang/Runnable;
    invoke-static {v9}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->access$2100(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Ljava/lang/Runnable;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->post(Ljava/lang/Runnable;)Z

    .line 664
    iget-object v7, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$8;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    #setter for: Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mIsSimChecking:Z
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->access$2202(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;Z)Z

    .line 668
    .end local v1           #currentPhoneNumber:Ljava/lang/String;
    .end local v2           #hasRegisterSim1:Z
    .end local v3           #hasRegisterSim2:Z
    .end local v4           #regitsterNumberSim1:Ljava/lang/String;
    .end local v5           #regitsterNumberSim2:Ljava/lang/String;
    .end local v6           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_7
    :goto_3
    return-void

    .restart local v1       #currentPhoneNumber:Ljava/lang/String;
    .restart local v4       #regitsterNumberSim1:Ljava/lang/String;
    .restart local v5       #regitsterNumberSim2:Ljava/lang/String;
    .restart local v6       #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_8
    move v2, v8

    .line 637
    goto :goto_0

    .restart local v2       #hasRegisterSim1:Z
    :cond_9
    move v3, v8

    .line 638
    goto :goto_1

    .line 658
    .restart local v3       #hasRegisterSim2:Z
    :cond_a
    iget-object v9, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$8;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->access$2000(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 659
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v9

    if-nez v9, :cond_6

    .line 660
    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_2

    .line 665
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #currentPhoneNumber:Ljava/lang/String;
    .end local v2           #hasRegisterSim1:Z
    .end local v3           #hasRegisterSim2:Z
    .end local v4           #regitsterNumberSim1:Ljava/lang/String;
    .end local v5           #regitsterNumberSim2:Ljava/lang/String;
    .end local v6           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_b
    iget-object v7, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$8;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->isConnectivityActive()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$8;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mIsSimChecking:Z
    invoke-static {v7}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->access$2200(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 666
    iget-object v7, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$8;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$8;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mUpdateLockDeviceRunnable:Ljava/lang/Runnable;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->access$2100(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->post(Ljava/lang/Runnable;)Z

    goto :goto_3
.end method
