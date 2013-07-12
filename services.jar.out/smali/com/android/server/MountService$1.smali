.class Lcom/android/server/MountService$1;
.super Landroid/content/BroadcastReceiver;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0
    .parameter

    .prologue
    .line 544
    iput-object p1, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x1

    .line 547
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, action:Ljava/lang/String;
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v8, 0xa8

    if-ne v6, v8, :cond_0

    .line 555
    const-string v6, "MountService"

    const-string v8, "InitISO"

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-static {v1}, Lcom/android/server/MountService;->access$802(Z)Z

    .line 558
    :cond_0
    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "android.intent.action.USER_PRESENT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 564
    :cond_1
    iget-object v6, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v6

    const-string v8, "device_policy"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 566
    .local v3, mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v3, v10}, Landroid/app/admin/DevicePolicyManager;->getAllowStorageCardStatus(Landroid/content/ComponentName;)I

    move-result v5

    .line 567
    .local v5, status:I
    if-ne v5, v1, :cond_4

    .line 568
    invoke-static {v1}, Lcom/android/server/MountService;->access$1002(Z)Z

    .line 571
    :cond_2
    :goto_0
    const-string v8, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EAS policy: SD card is "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/android/server/MountService;->access$1000()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "ENABLED"

    :goto_1
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v6, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #setter for: Lcom/android/server/MountService;->mBooted:Z
    invoke-static {v6, v1}, Lcom/android/server/MountService;->access$1102(Lcom/android/server/MountService;Z)Z

    .line 574
    iget-object v6, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #setter for: Lcom/android/server/MountService;->mBootTimeMount:Z
    invoke-static {v6, v1}, Lcom/android/server/MountService;->access$1202(Lcom/android/server/MountService;Z)Z

    .line 577
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "sd_encryption"

    invoke-static {v6, v8, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 579
    .local v4, sdEncryption:I
    if-ne v4, v1, :cond_6

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v6

    invoke-virtual {v6}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v6

    sget-object v8, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v6, v8, :cond_6

    .line 720
    .end local v3           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v4           #sdEncryption:I
    .end local v5           #status:I
    :cond_3
    :goto_2
    return-void

    .line 569
    .restart local v3       #mDPM:Landroid/app/admin/DevicePolicyManager;
    .restart local v5       #status:I
    :cond_4
    if-nez v5, :cond_2

    .line 570
    invoke-static {v7}, Lcom/android/server/MountService;->access$1002(Z)Z

    goto :goto_0

    .line 571
    :cond_5
    const-string v6, "DISABLED"

    goto :goto_1

    .line 587
    .restart local v4       #sdEncryption:I
    :cond_6
    const-string v6, "simulator"

    const-string v8, "ro.product.device"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 588
    iget-object v6, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const-string v8, "/sdcard"

    const/4 v9, 0x4

    #calls: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v6, v10, v8, v7, v9}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_2

    .line 592
    :cond_7
    new-instance v6, Lcom/android/server/MountService$1$1;

    invoke-direct {v6, p0}, Lcom/android/server/MountService$1$1;-><init>(Lcom/android/server/MountService$1;)V

    invoke-virtual {v6}, Lcom/android/server/MountService$1$1;->start()V

    goto :goto_2

    .line 683
    .end local v3           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v4           #sdEncryption:I
    .end local v5           #status:I
    :cond_8
    const-string v6, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 684
    const-string v6, "connected"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "mass_storage"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 686
    .local v1, available:Z
    :goto_3
    iget-object v6, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const-string v7, "ums"

    #calls: Lcom/android/server/MountService;->notifyShareAvailabilityChange(Ljava/lang/String;Z)V
    invoke-static {v6, v7, v1}, Lcom/android/server/MountService;->access$2100(Lcom/android/server/MountService;Ljava/lang/String;Z)V

    goto :goto_2

    .end local v1           #available:Z
    :cond_9
    move v1, v7

    .line 684
    goto :goto_3

    .line 687
    :cond_a
    const-string v6, "com.htc.admin.ALLOW_STORAGE_CARD_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 693
    const-string v6, "com.htc.admin.extra.ALLOW_STATUS"

    invoke-virtual {p2, v6, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 695
    .restart local v5       #status:I
    if-ne v5, v1, :cond_b

    invoke-static {}, Lcom/android/server/MountService;->access$1000()Z

    move-result v6

    if-nez v6, :cond_b

    .line 697
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceive(): get ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], status = allow"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    invoke-static {v1}, Lcom/android/server/MountService;->access$1002(Z)Z

    .line 701
    iget-object v6, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->mountSdcard()V
    invoke-static {v6}, Lcom/android/server/MountService;->access$2200(Lcom/android/server/MountService;)V

    goto/16 :goto_2

    .line 702
    :cond_b
    if-nez v5, :cond_3

    invoke-static {}, Lcom/android/server/MountService;->access$1000()Z

    move-result v6

    if-ne v6, v1, :cond_3

    .line 704
    const-string v6, "MountService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive(): get ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "], status = disable"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    invoke-static {v7}, Lcom/android/server/MountService;->access$1002(Z)Z

    .line 708
    iget-object v6, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->unmountSdcard()V
    invoke-static {v6}, Lcom/android/server/MountService;->access$2300(Lcom/android/server/MountService;)V

    .line 714
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.settings.MEMORY_CARD_SETTINGS"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 715
    .local v2, in:Landroid/content/Intent;
    const/high16 v6, 0x1000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 716
    const-string v6, "SD_POLICY"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 717
    iget-object v6, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2
.end method
