.class Lcom/android/server/MountService$2;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->onDaemonConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 801
    iput-object p1, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 808
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v13}, Lcom/android/server/MountService;->access$2100(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v13

    const-string v14, "volume"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "list"

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v13

    const/16 v14, 0x6e

    invoke-static {v13, v14}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v11

    .line 811
    .local v11, vols:[Ljava/lang/String;
    move-object v1, v11

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_4

    aget-object v12, v1, v5

    .line 812
    .local v12, volstr:Ljava/lang/String;
    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 814
    .local v10, tok:[Ljava/lang/String;
    const/4 v13, 0x1

    aget-object v7, v10, v13

    .line 815
    .local v7, path:Ljava/lang/String;
    const-string v9, "removed"

    .line 817
    .local v9, state:Ljava/lang/String;
    const/4 v13, 0x2

    aget-object v13, v10, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 818
    .local v8, st:I
    if-nez v8, :cond_2

    .line 819
    const-string v9, "removed"

    .line 835
    :goto_1
    if-eqz v9, :cond_1

    .line 836
    invoke-static {}, Lcom/android/server/MountService;->access$2200()Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v13, "MountService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Updating valid state "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v13, v7, v9}, Lcom/android/server/MountService;->access$2300(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 820
    :cond_2
    const/4 v13, 0x1

    if-ne v8, v13, :cond_3

    .line 821
    const-string v9, "unmounted"

    goto :goto_1

    .line 822
    :cond_3
    const/4 v13, 0x4

    if-ne v8, v13, :cond_5

    .line 823
    const-string v9, "mounted"

    .line 824
    const-string v13, "MountService"

    const-string v14, "Media already mounted on daemon connection"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 840
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #path:Ljava/lang/String;
    .end local v8           #st:I
    .end local v9           #state:Ljava/lang/String;
    .end local v10           #tok:[Ljava/lang/String;
    .end local v11           #vols:[Ljava/lang/String;
    .end local v12           #volstr:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 841
    .local v3, e:Ljava/lang/Exception;
    const-string v13, "MountService"

    const-string v14, "Error processing initial volume state"

    invoke-static {v13, v14, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 842
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/server/MountService;->access$2400(Lcom/android/server/MountService;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "removed"

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v13, v14, v15}, Lcom/android/server/MountService;->access$2300(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    .end local v3           #e:Ljava/lang/Exception;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    const-string v14, "ums"

    #calls: Lcom/android/server/MountService;->doGetShareMethodAvailable(Ljava/lang/String;)Z
    invoke-static {v13, v14}, Lcom/android/server/MountService;->access$2500(Lcom/android/server/MountService;Ljava/lang/String;)Z

    move-result v2

    .line 847
    .local v2, avail:Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    const-string v14, "ums"

    #calls: Lcom/android/server/MountService;->notifyShareAvailabilityChange(Ljava/lang/String;Z)V
    invoke-static {v13, v14, v2}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 855
    .end local v2           #avail:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v13}, Lcom/android/server/MountService;->access$2600(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v13

    if-eqz v13, :cond_8

    .line 856
    const-string v13, "MountService"

    const-string v14, "mConnectedSignal.countDown()"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v13}, Lcom/android/server/MountService;->access$2600(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 858
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    const/4 v14, 0x0

    #setter for: Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v13, v14}, Lcom/android/server/MountService;->access$2602(Lcom/android/server/MountService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 864
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v13}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerService;->scanAvailableAsecs()V

    .line 867
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v13}, Lcom/android/server/MountService;->access$2700(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v13

    if-eqz v13, :cond_9

    .line 868
    const-string v13, "MountService"

    const-string v14, "mAsecsScanned.countDown();"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v13}, Lcom/android/server/MountService;->access$2700(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 870
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    const/4 v14, 0x0

    #setter for: Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v13, v14}, Lcom/android/server/MountService;->access$2702(Lcom/android/server/MountService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 874
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    const/4 v14, 0x1

    #setter for: Lcom/android/server/MountService;->mReady:Z
    invoke-static {v13, v14}, Lcom/android/server/MountService;->access$2802(Lcom/android/server/MountService;Z)Z

    .line 875
    return-void

    .line 825
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    .restart local v7       #path:Ljava/lang/String;
    .restart local v8       #st:I
    .restart local v9       #state:Ljava/lang/String;
    .restart local v10       #tok:[Ljava/lang/String;
    .restart local v11       #vols:[Ljava/lang/String;
    .restart local v12       #volstr:Ljava/lang/String;
    :cond_5
    const/4 v13, 0x7

    if-ne v8, v13, :cond_6

    .line 826
    :try_start_2
    const-string v9, "shared"

    .line 827
    const-string v13, "MountService"

    const-string v14, "Media shared on daemon connection"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 828
    :cond_6
    const/16 v13, 0xa

    if-ne v8, v13, :cond_7

    .line 829
    const-string v9, "mounted_ro"

    .line 830
    const-string v13, "MountService"

    const-string v14, "Media mounted read only"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 832
    :cond_7
    new-instance v13, Ljava/lang/Exception;

    const-string v14, "Unexpected state %d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 848
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #path:Ljava/lang/String;
    .end local v8           #st:I
    .end local v9           #state:Ljava/lang/String;
    .end local v10           #tok:[Ljava/lang/String;
    .end local v11           #vols:[Ljava/lang/String;
    .end local v12           #volstr:Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 849
    .local v4, ex:Ljava/lang/Exception;
    const-string v13, "MountService"

    const-string v14, "Failed to get share availability"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 860
    .end local v4           #ex:Ljava/lang/Exception;
    :cond_8
    const-string v13, "MountService"

    const-string v14, "mConnectedSignal == null"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 872
    :cond_9
    const-string v13, "MountService"

    const-string v14, "mAsecsScanned == null"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method
