.class final Landroid/view/Choreographer$FrameDisplayEventReceiver;
.super Landroid/view/DisplayEventReceiver;
.source "Choreographer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Choreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FrameDisplayEventReceiver"
.end annotation


# instance fields
.field private mFrame:I

.field private mHavePendingVsync:Z

.field private mTimestampNanos:J

.field final synthetic this$0:Landroid/view/Choreographer;


# direct methods
.method public constructor <init>(Landroid/view/Choreographer;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 680
    iput-object p1, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->this$0:Landroid/view/Choreographer;

    .line 681
    invoke-direct {p0, p2}, Landroid/view/DisplayEventReceiver;-><init>(Landroid/os/Looper;)V

    .line 682
    return-void
.end method


# virtual methods
.method public onVsync(JI)V
    .locals 8
    .parameter "timestampNanos"
    .parameter "frame"

    .prologue
    const/4 v7, 0x1

    .line 691
    const-string v3, "Choregrapher"

    const-string v4, "ONVSYNC"

    const-string v5, "ONVSYNC start"

    invoke-static {v7, v3, v4, v5}, Landroid/util/jTestFramework;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 693
    .local v1, now:J
    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    .line 694
    const-string v3, "Choreographer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Frame time is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v5, p1, v1

    long-to-float v5, v5

    const v6, 0x358637bd

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms in the future!  Check that graphics HAL is generating vsync "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "timestamps using the correct timebase."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    move-wide p1, v1

    .line 700
    :cond_0
    iget-boolean v3, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mHavePendingVsync:Z

    if-eqz v3, :cond_1

    .line 701
    const-string v3, "Choreographer"

    const-string v4, "Already have a pending vsync event.  There should only be one at a time."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :goto_0
    iput-wide p1, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mTimestampNanos:J

    .line 708
    iput p3, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mFrame:I

    .line 709
    iget-object v3, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->this$0:Landroid/view/Choreographer;

    #getter for: Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;
    invoke-static {v3}, Landroid/view/Choreographer;->access$300(Landroid/view/Choreographer;)Landroid/view/Choreographer$FrameHandler;

    move-result-object v3

    invoke-static {v3, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 710
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0, v7}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 711
    iget-object v3, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->this$0:Landroid/view/Choreographer;

    #getter for: Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;
    invoke-static {v3}, Landroid/view/Choreographer;->access$300(Landroid/view/Choreographer;)Landroid/view/Choreographer$FrameHandler;

    move-result-object v3

    const-wide/32 v4, 0xf4240

    div-long v4, p1, v4

    invoke-virtual {v3, v0, v4, v5}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 712
    const/4 v3, 0x2

    const-string v4, "Choregrapher"

    const-string v5, "ONVSYNC"

    const-string v6, "ONVSYNC end"

    invoke-static {v3, v4, v5, v6}, Landroid/util/jTestFramework;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    return-void

    .line 704
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    iput-boolean v7, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mHavePendingVsync:Z

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 717
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mHavePendingVsync:Z

    .line 718
    const/4 v0, 0x1

    const-string v1, "Choregrapher"

    const-string v2, "ONVSYNC-RUN"

    const-string v3, "ONVSYNC RUN start"

    invoke-static {v0, v1, v2, v3}, Landroid/util/jTestFramework;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget-object v0, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->this$0:Landroid/view/Choreographer;

    iget-wide v1, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mTimestampNanos:J

    iget v3, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mFrame:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->doFrame(JI)V

    .line 720
    const/4 v0, 0x2

    const-string v1, "Choregrapher"

    const-string v2, "ONVSYNC-RUN"

    const-string v3, "ONVSYNC RUN end"

    invoke-static {v0, v1, v2, v3}, Landroid/util/jTestFramework;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    return-void
.end method
