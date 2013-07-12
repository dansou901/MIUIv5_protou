.class public Lcom/android/internal/os/BatteryStatsImpl$Counter;
.super Landroid/os/BatteryStats$Counter;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Counter"
.end annotation


# instance fields
.field final mCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field mLastCount:I

.field mLoadedCount:I

.field mPluggedCount:I

.field final mUnpluggables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;",
            ">;"
        }
    .end annotation
.end field

.field mUnpluggedCount:I


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 477
    .local p1, unpluggables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;>;"
    invoke-direct {p0}, Landroid/os/BatteryStats$Counter;-><init>()V

    .line 458
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 478
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mUnpluggables:Ljava/util/ArrayList;

    .line 479
    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->access$400()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 480
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    monitor-exit v1

    .line 482
    return-void

    .line 481
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method constructor <init>(Ljava/util/ArrayList;Landroid/os/Parcel;)V
    .locals 2
    .parameter
    .parameter "in"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;",
            ">;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 465
    .local p1, unpluggables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;>;"
    invoke-direct {p0}, Landroid/os/BatteryStats$Counter;-><init>()V

    .line 458
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 466
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mUnpluggables:Ljava/util/ArrayList;

    .line 467
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mPluggedCount:I

    .line 468
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mPluggedCount:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 469
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mLoadedCount:I

    .line 470
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mLastCount:I

    .line 471
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mUnpluggedCount:I

    .line 472
    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->access$400()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 473
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    monitor-exit v1

    .line 475
    return-void

    .line 474
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static writeCounterToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Counter;)V
    .locals 1
    .parameter "out"
    .parameter "counter"

    .prologue
    .line 506
    if-nez p1, :cond_0

    .line 507
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    :goto_0
    return-void

    .line 510
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    invoke-virtual {p1, p0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_0
.end method


# virtual methods
.method attach()V
    .locals 2

    .prologue
    .line 558
    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->access$400()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 559
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mUnpluggables:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    monitor-exit v1

    .line 561
    return-void

    .line 560
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method detach()V
    .locals 2

    .prologue
    .line 564
    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->access$400()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 565
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mUnpluggables:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 566
    monitor-exit v1

    .line 567
    return-void

    .line 566
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCountLocked(I)I
    .locals 2
    .parameter "which"

    .prologue
    .line 518
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 519
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mLastCount:I

    .line 529
    .local v0, val:I
    :cond_0
    :goto_0
    return v0

    .line 521
    .end local v0           #val:I
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 522
    .restart local v0       #val:I
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 523
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mUnpluggedCount:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 524
    :cond_2
    if-eqz p1, :cond_0

    .line 525
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mLoadedCount:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLoadedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mLoadedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLastCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mLastCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mUnpluggedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mUnpluggedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mPluggedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mPluggedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 537
    return-void
.end method

.method public plug(JJ)V
    .locals 1
    .parameter "batteryUptime"
    .parameter "batteryRealtime"

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mPluggedCount:I

    .line 497
    return-void
.end method

.method readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 575
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mLoadedCount:I

    .line 576
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mLoadedCount:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 577
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mLastCount:I

    .line 578
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mLoadedCount:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mPluggedCount:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mUnpluggedCount:I

    .line 579
    return-void
.end method

.method reset(Z)V
    .locals 2
    .parameter "detachIfReset"

    .prologue
    const/4 v1, 0x0

    .line 547
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 548
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mUnpluggedCount:I

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mPluggedCount:I

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mLastCount:I

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mLoadedCount:I

    .line 549
    if-eqz p1, :cond_0

    .line 550
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->detach()V

    .line 552
    :cond_0
    return-void
.end method

.method stepAtomic()V
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 541
    return-void
.end method

.method public unplug(JJ)V
    .locals 2
    .parameter "batteryUptime"
    .parameter "batteryRealtime"

    .prologue
    .line 491
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mPluggedCount:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mUnpluggedCount:I

    .line 492
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mPluggedCount:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 493
    return-void
.end method

.method writeSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 570
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 571
    .local v0, count:I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 572
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mLoadedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mUnpluggedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 488
    return-void
.end method
