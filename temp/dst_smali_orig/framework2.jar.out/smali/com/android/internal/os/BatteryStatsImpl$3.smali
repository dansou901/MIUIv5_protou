.class Lcom/android/internal/os/BatteryStatsImpl$3;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/BatteryStatsImpl;->handleBatteryStatsData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .local v2, uidSize:I
    const/4 v0, 0x0

    .local v0, count:I
    const-wide/16 v3, 0x64

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->access$100()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "BatteryStatsImpl"

    const-string v4, "Start remove Uid data"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->access$800()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_1
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #getter for: Lcom/android/internal/os/BatteryStatsImpl;->mUidStatsDel:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/internal/os/BatteryStatsImpl;->access$900(Lcom/android/internal/os/BatteryStatsImpl;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->access$100()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "BatteryStatsImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_4

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #getter for: Lcom/android/internal/os/BatteryStatsImpl;->mUidStatsDel:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/internal/os/BatteryStatsImpl;->access$900(Lcom/android/internal/os/BatteryStatsImpl;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->reset()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #getter for: Lcom/android/internal/os/BatteryStatsImpl;->mUidStatsDel:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/internal/os/BatteryStatsImpl;->access$900(Lcom/android/internal/os/BatteryStatsImpl;)Landroid/util/SparseArray;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #getter for: Lcom/android/internal/os/BatteryStatsImpl;->mUidStatsDel:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/internal/os/BatteryStatsImpl;->access$900(Lcom/android/internal/os/BatteryStatsImpl;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v1, v1, -0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0x19

    if-lt v0, v3, :cond_3

    const/4 v0, 0x0

    const-wide/16 v3, 0x64

    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_2
    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->access$800()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #getter for: Lcom/android/internal/os/BatteryStatsImpl;->mUidStatsDel:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/internal/os/BatteryStatsImpl;->access$900(Lcom/android/internal/os/BatteryStatsImpl;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1           #i:I
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .restart local v1       #i:I
    :catchall_1
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v3

    :cond_4
    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->access$100()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "BatteryStatsImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "End remove Uid data and size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-lez v2, :cond_6

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #getter for: Lcom/android/internal/os/BatteryStatsImpl;->mUidStatsDel:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/internal/os/BatteryStatsImpl;->access$900(Lcom/android/internal/os/BatteryStatsImpl;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    :cond_6
    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->access$800()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_6
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v5, 0x0

    #setter for: Lcom/android/internal/os/BatteryStatsImpl;->mUidStatsDel:Landroid/util/SparseArray;
    invoke-static {v3, v5}, Lcom/android/internal/os/BatteryStatsImpl;->access$902(Lcom/android/internal/os/BatteryStatsImpl;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    monitor-exit v4

    return-void

    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v3

    .end local v1           #i:I
    :catch_0
    move-exception v3

    goto/16 :goto_0

    .restart local v1       #i:I
    :catch_1
    move-exception v3

    goto :goto_2
.end method
