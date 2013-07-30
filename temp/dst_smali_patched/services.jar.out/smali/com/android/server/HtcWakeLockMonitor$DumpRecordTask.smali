.class Lcom/android/server/HtcWakeLockMonitor$DumpRecordTask;
.super Ljava/lang/Object;
.source "HtcWakeLockMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcWakeLockMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DumpRecordTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/HtcWakeLockMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/HtcWakeLockMonitor;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/HtcWakeLockMonitor$DumpRecordTask;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/HtcWakeLockMonitor;Lcom/android/server/HtcWakeLockMonitor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/HtcWakeLockMonitor$DumpRecordTask;-><init>(Lcom/android/server/HtcWakeLockMonitor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/HtcWakeLockMonitor$DumpRecordTask;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    #getter for: Lcom/android/server/HtcWakeLockMonitor;->mWLM_Handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/HtcWakeLockMonitor;->access$4600(Lcom/android/server/HtcWakeLockMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/HtcWakeLockMonitor$DumpRecordTask;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    #getter for: Lcom/android/server/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/HtcWakeLockMonitor$LockRecordList;
    invoke-static {v0}, Lcom/android/server/HtcWakeLockMonitor;->access$2500(Lcom/android/server/HtcWakeLockMonitor;)Lcom/android/server/HtcWakeLockMonitor$LockRecordList;

    move-result-object v0

    #calls: Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->dump()V
    invoke-static {v0}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->access$4700(Lcom/android/server/HtcWakeLockMonitor$LockRecordList;)V

    iget-object v0, p0, Lcom/android/server/HtcWakeLockMonitor$DumpRecordTask;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    #getter for: Lcom/android/server/HtcWakeLockMonitor;->mWLM_Handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/HtcWakeLockMonitor;->access$4600(Lcom/android/server/HtcWakeLockMonitor;)Landroid/os/Handler;

    move-result-object v0

    const-wide/32 v1, 0x927c0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
