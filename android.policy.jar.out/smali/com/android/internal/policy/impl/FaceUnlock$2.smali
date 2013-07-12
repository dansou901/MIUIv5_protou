.class Lcom/android/internal/policy/impl/FaceUnlock$2;
.super Lcom/android/internal/policy/IFaceLockCallback$Stub;
.source "FaceUnlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/FaceUnlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/FaceUnlock;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/FaceUnlock;)V
    .locals 0
    .parameter

    .prologue
    .line 523
    iput-object p1, p0, Lcom/android/internal/policy/impl/FaceUnlock$2;->this$0:Lcom/android/internal/policy/impl/FaceUnlock;

    invoke-direct {p0}, Lcom/android/internal/policy/IFaceLockCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 538
    invoke-static {}, Lcom/android/internal/policy/impl/FaceUnlock;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FULLockscreen"

    const-string v1, "cancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock$2;->this$0:Lcom/android/internal/policy/impl/FaceUnlock;

    #getter for: Lcom/android/internal/policy/impl/FaceUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/FaceUnlock;->access$100(Lcom/android/internal/policy/impl/FaceUnlock;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 540
    return-void
.end method

.method public exposeFallback()V
    .locals 2

    .prologue
    .line 558
    invoke-static {}, Lcom/android/internal/policy/impl/FaceUnlock;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FULLockscreen"

    const-string v1, "exposeFallback()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock$2;->this$0:Lcom/android/internal/policy/impl/FaceUnlock;

    #getter for: Lcom/android/internal/policy/impl/FaceUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/FaceUnlock;->access$100(Lcom/android/internal/policy/impl/FaceUnlock;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 561
    return-void
.end method

.method public pokeWakelock(I)V
    .locals 4
    .parameter "millis"

    .prologue
    .line 568
    invoke-static {}, Lcom/android/internal/policy/impl/FaceUnlock;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "FULLockscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pokeWakelock() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceUnlock$2;->this$0:Lcom/android/internal/policy/impl/FaceUnlock;

    #getter for: Lcom/android/internal/policy/impl/FaceUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/FaceUnlock;->access$100(Lcom/android/internal/policy/impl/FaceUnlock;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 570
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceUnlock$2;->this$0:Lcom/android/internal/policy/impl/FaceUnlock;

    #getter for: Lcom/android/internal/policy/impl/FaceUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/FaceUnlock;->access$100(Lcom/android/internal/policy/impl/FaceUnlock;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 571
    return-void
.end method

.method public reportFailedAttempt()V
    .locals 2

    .prologue
    .line 547
    invoke-static {}, Lcom/android/internal/policy/impl/FaceUnlock;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FULLockscreen"

    const-string v1, "reportFailedAttempt()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock$2;->this$0:Lcom/android/internal/policy/impl/FaceUnlock;

    #getter for: Lcom/android/internal/policy/impl/FaceUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/FaceUnlock;->access$100(Lcom/android/internal/policy/impl/FaceUnlock;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 549
    return-void
.end method

.method public unlock()V
    .locals 2

    .prologue
    .line 529
    invoke-static {}, Lcom/android/internal/policy/impl/FaceUnlock;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FULLockscreen"

    const-string v1, "unlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock$2;->this$0:Lcom/android/internal/policy/impl/FaceUnlock;

    #getter for: Lcom/android/internal/policy/impl/FaceUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/FaceUnlock;->access$100(Lcom/android/internal/policy/impl/FaceUnlock;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 531
    return-void
.end method
