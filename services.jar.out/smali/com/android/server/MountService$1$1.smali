.class Lcom/android/server/MountService$1$1;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/MountService$1;


# direct methods
.method constructor <init>(Lcom/android/server/MountService$1;)V
    .locals 0
    .parameter

    .prologue
    .line 592
    iput-object p1, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 597
    :try_start_0
    invoke-static {}, Lcom/android/server/MountService;->access$800()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 598
    const-string v12, "MountService"

    const-string v13, "Inital ISO while usb connected"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v12, v12, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->initISO()I
    invoke-static {v12}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;)I

    .line 609
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v12, v12, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v13

    monitor-enter v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v12, v12, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 611
    .local v5, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v2

    .line 612
    .local v2, count:I
    new-array v12, v2, [Ljava/lang/String;

    invoke-interface {v5, v12}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 613
    .local v7, paths:[Ljava/lang/String;
    new-array v11, v2, [Ljava/lang/String;

    .line 614
    .local v11, states:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 615
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v12, v12, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v12

    aget-object v14, v7, v4

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    aput-object v12, v11, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 614
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 601
    .end local v2           #count:I
    .end local v4           #i:I
    .end local v5           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7           #paths:[Ljava/lang/String;
    .end local v11           #states:[Ljava/lang/String;
    :cond_0
    :try_start_2
    const-string v12, "MountService"

    const-string v13, "Do not inital ISO while usb connected"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 678
    :catch_0
    move-exception v3

    .line 679
    .local v3, ex:Ljava/lang/Exception;
    const-string v12, "MountService"

    const-string v13, "Boot-time mount exception"

    invoke-static {v12, v13, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 681
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-void

    .line 617
    .restart local v2       #count:I
    .restart local v4       #i:I
    .restart local v5       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v7       #paths:[Ljava/lang/String;
    .restart local v11       #states:[Ljava/lang/String;
    :cond_2
    :try_start_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 619
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v2, :cond_8

    .line 620
    :try_start_4
    aget-object v6, v7, v4

    .line 621
    .local v6, path:Ljava/lang/String;
    aget-object v10, v11, v4

    .line 622
    .local v10, state:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v12, v12, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v13

    monitor-enter v13
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 623
    :try_start_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v12, v12, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    .line 624
    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 625
    const/4 v1, 0x5

    .line 626
    .local v1, MAX_TRY:I
    :try_start_6
    const-string v12, "MountService"

    const-string v13, "Mounting %dth volume %s while boot up"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    add-int/lit8 v16, v4, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v6, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-static {}, Lcom/android/server/MountService;->access$1000()Z

    move-result v12

    if-nez v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v12, v12, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->isSdcardPath(Ljava/lang/String;)Z
    invoke-static {v12, v6}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 629
    const-string v12, "MountService"

    const-string v13, "Skip %s since SD card is disabled by DevicePolicyManager"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v6, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 619
    :cond_3
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 617
    .end local v1           #MAX_TRY:I
    .end local v2           #count:I
    .end local v4           #i:I
    .end local v5           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6           #path:Ljava/lang/String;
    .end local v7           #paths:[Ljava/lang/String;
    .end local v10           #state:Ljava/lang/String;
    .end local v11           #states:[Ljava/lang/String;
    :catchall_0
    move-exception v12

    :try_start_7
    monitor-exit v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v12
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 624
    .restart local v2       #count:I
    .restart local v4       #i:I
    .restart local v5       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v6       #path:Ljava/lang/String;
    .restart local v7       #paths:[Ljava/lang/String;
    .restart local v10       #state:Ljava/lang/String;
    .restart local v11       #states:[Ljava/lang/String;
    :catchall_1
    move-exception v12

    :try_start_9
    monitor-exit v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v12

    .line 632
    .restart local v1       #MAX_TRY:I
    :cond_4
    const-string v12, "unmounted"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 634
    const/4 v8, 0x0

    .line 635
    .local v8, rc:I
    const/4 v9, 0x0

    .local v9, retry:I
    :goto_5
    const/4 v12, 0x5

    if-gt v9, v12, :cond_5

    .line 636
    const-string v12, "MountService"

    const-string v13, "Retry mount %d time"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v12, v12, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v12, v6}, Lcom/android/server/MountService;->access$1700(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v8

    .line 638
    if-nez v8, :cond_6

    .line 649
    :cond_5
    if-eqz v8, :cond_3

    .line 650
    const-string v12, "MountService"

    const-string v13, "Boot-time mount %s failed (%d)"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v6, v14, v15

    const/4 v15, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 641
    :cond_6
    const-wide/16 v12, 0x2710

    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V

    .line 642
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v12, v12, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v13

    monitor-enter v13
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 643
    :try_start_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v12, v12, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    .line 644
    monitor-exit v13
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 645
    :try_start_c
    const-string v12, "mounted"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    move-result v12

    if-nez v12, :cond_5

    .line 635
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 644
    :catchall_2
    move-exception v12

    :try_start_d
    monitor-exit v13
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    throw v12

    .line 653
    .end local v8           #rc:I
    .end local v9           #retry:I
    :cond_7
    const-string v12, "shared"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 658
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v12, v12, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x7

    #calls: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v12, v13, v6, v14, v15}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_4

    .line 664
    .end local v1           #MAX_TRY:I
    .end local v6           #path:Ljava/lang/String;
    .end local v10           #state:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v12, v12, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mEmulateExternalStorage:Z
    invoke-static {v12}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 665
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v12, v12, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v13, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x4

    #calls: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static/range {v12 .. v16}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    .line 674
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v12, v12, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z
    invoke-static {v12}, Lcom/android/server/MountService;->access$1900(Lcom/android/server/MountService;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 675
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v12, v12, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v13, 0x1

    #calls: Lcom/android/server/MountService;->sendUmsIntent(Z)V
    invoke-static {v12, v13}, Lcom/android/server/MountService;->access$2000(Lcom/android/server/MountService;Z)V

    .line 676
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v12, v12, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v13, 0x0

    #setter for: Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z
    invoke-static {v12, v13}, Lcom/android/server/MountService;->access$1902(Lcom/android/server/MountService;Z)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_2
.end method
