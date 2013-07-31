.class Lcom/android/server/HtcAutoBrightnessCtrl$2;
.super Landroid/content/BroadcastReceiver;
.source "HtcAutoBrightnessCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcAutoBrightnessCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/HtcAutoBrightnessCtrl;


# direct methods
.method constructor <init>(Lcom/android/server/HtcAutoBrightnessCtrl;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    if-nez p2, :cond_1

    const-string v8, "HtcAutoBrightnessCtrl"

    const-string v9, "BrighterOnlyReceiver intent is null"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v8, "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_ON"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mScreenState:Z
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$100(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$200(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$300(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "HtcAutoBrightnessCtrl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive: ON, Skip. mEnableOffHookMode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z
    invoke-static {v10}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$200(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$400(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$600(Lcom/android/server/HtcAutoBrightnessCtrl;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;
    invoke-static {v9}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$500(Lcom/android/server/HtcAutoBrightnessCtrl;)Ljava/lang/Runnable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$600(Lcom/android/server/HtcAutoBrightnessCtrl;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;
    invoke-static {v9}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$500(Lcom/android/server/HtcAutoBrightnessCtrl;)Ljava/lang/Runnable;

    move-result-object v9

    const-wide/32 v10, 0xea60

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$300(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "HtcAutoBrightnessCtrl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive: ON, Skip. mEnablebrighterOnly="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z
    invoke-static {v10}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$400(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    const/4 v9, 0x1

    #setter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z
    invoke-static {v8, v9}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$402(Lcom/android/server/HtcAutoBrightnessCtrl;Z)Z

    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    const-string v9, "entering.screen.brightness"

    const/16 v10, 0x7f

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    #setter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I
    invoke-static {v8, v9}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$702(Lcom/android/server/HtcAutoBrightnessCtrl;I)I

    const-string v8, "backlight.delay"

    const/16 v9, 0x14

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .local v4, enteringDelay:I
    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$800(Lcom/android/server/HtcAutoBrightnessCtrl;)Lcom/android/server/PowerManagerService$PMSInternalAPI;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->getCurrentBrightness()I

    move-result v1

    .local v1, curLcdValue:I
    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$800(Lcom/android/server/HtcAutoBrightnessCtrl;)Lcom/android/server/PowerManagerService$PMSInternalAPI;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->getEndBrightness()I

    move-result v3

    .local v3, endLcdValue:I
    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$700(Lcom/android/server/HtcAutoBrightnessCtrl;)I

    move-result v6

    .local v6, newLcdValue:I
    if-le v6, v1, :cond_6

    :goto_1
    if-le v6, v3, :cond_7

    :goto_2
    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$300(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "HtcAutoBrightnessCtrl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive: ON, mBrighterOnly="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z
    invoke-static {v10}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$400(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mEnteringLcdValue="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I
    invoke-static {v10}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$700(Lcom/android/server/HtcAutoBrightnessCtrl;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", enteringDelay="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", curLcdValue="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", endLcdValue="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", newLcdValue="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #calls: Lcom/android/server/HtcAutoBrightnessCtrl;->getBrighterOnlyLcdValue(I)I
    invoke-static {v8, v6}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$900(Lcom/android/server/HtcAutoBrightnessCtrl;I)I

    move-result v7

    .local v7, target:I
    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #calls: Lcom/android/server/HtcAutoBrightnessCtrl;->setBacklight(II)V
    invoke-static {v8, v7, v4}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$1000(Lcom/android/server/HtcAutoBrightnessCtrl;II)V

    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #calls: Lcom/android/server/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$1100(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$800(Lcom/android/server/HtcAutoBrightnessCtrl;)Lcom/android/server/PowerManagerService$PMSInternalAPI;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->setScreenBrightnessMode(I)V

    :cond_5
    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$600(Lcom/android/server/HtcAutoBrightnessCtrl;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;
    invoke-static {v9}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$500(Lcom/android/server/HtcAutoBrightnessCtrl;)Ljava/lang/Runnable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$600(Lcom/android/server/HtcAutoBrightnessCtrl;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;
    invoke-static {v9}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$500(Lcom/android/server/HtcAutoBrightnessCtrl;)Ljava/lang/Runnable;

    move-result-object v9

    const-wide/32 v10, 0xea60

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .end local v7           #target:I
    :cond_6
    move v6, v1

    goto/16 :goto_1

    :cond_7
    move v6, v3

    goto/16 :goto_2

    .end local v1           #curLcdValue:I
    .end local v3           #endLcdValue:I
    .end local v4           #enteringDelay:I
    .end local v6           #newLcdValue:I
    :cond_8
    const-string v8, "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_OFF"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mScreenState:Z
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$100(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #calls: Lcom/android/server/HtcAutoBrightnessCtrl;->isKeyguardLocked()Z
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$1200(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$200(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$300(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "HtcAutoBrightnessCtrl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive: OFF, Skip. mEnableOffHookMode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z
    invoke-static {v10}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$200(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    const-string v8, "backlight.delay"

    const/16 v9, 0x28

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .local v5, leavingDelay:I
    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$300(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v8

    if-eqz v8, :cond_a

    const-string v8, "HtcAutoBrightnessCtrl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive: OFF, mEnableBrighterOnly="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z
    invoke-static {v10}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$400(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", leavingDelay="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #calls: Lcom/android/server/HtcAutoBrightnessCtrl;->reset(I)V
    invoke-static {v8, v5}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$1300(Lcom/android/server/HtcAutoBrightnessCtrl;I)V

    goto/16 :goto_0

    .end local v5           #leavingDelay:I
    :cond_b
    const-string v8, "com.android.server.htcpowersaver.action.ON"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    const-string v8, "sys.psaver.bright"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, disable:Ljava/lang/String;
    const-string v8, "true"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    const/4 v9, 0x1

    #calls: Lcom/android/server/HtcAutoBrightnessCtrl;->setPowerSaverMode(Z)V
    invoke-static {v8, v9}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$1400(Lcom/android/server/HtcAutoBrightnessCtrl;Z)V

    goto/16 :goto_0

    .end local v2           #disable:Ljava/lang/String;
    :cond_c
    const-string v8, "com.android.server.htcpowersaver.action.OFF"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    const/4 v9, 0x0

    #calls: Lcom/android/server/HtcAutoBrightnessCtrl;->setPowerSaverMode(Z)V
    invoke-static {v8, v9}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$1400(Lcom/android/server/HtcAutoBrightnessCtrl;Z)V

    goto/16 :goto_0

    :cond_d
    const-string v8, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    const-string v9, "state"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    #setter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mPhoneState:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$1502(Lcom/android/server/HtcAutoBrightnessCtrl;Ljava/lang/String;)Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #calls: Lcom/android/server/HtcAutoBrightnessCtrl;->checkOffHookMode()V
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$1600(Lcom/android/server/HtcAutoBrightnessCtrl;)V

    goto/16 :goto_0

    :cond_e
    const-string v8, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    const-string v9, "level"

    const/16 v10, 0x64

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    #setter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mBatteryLevel:I
    invoke-static {v8, v9}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$1702(Lcom/android/server/HtcAutoBrightnessCtrl;I)I

    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$2;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #calls: Lcom/android/server/HtcAutoBrightnessCtrl;->checkOffHookMode()V
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$1600(Lcom/android/server/HtcAutoBrightnessCtrl;)V

    goto/16 :goto_0
.end method
