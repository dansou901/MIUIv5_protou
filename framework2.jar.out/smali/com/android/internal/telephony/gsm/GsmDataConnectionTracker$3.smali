.class Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;
.super Ljava/lang/Object;
.source "GsmDataConnectionTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 2875
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2878
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #calls: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->updateDataActivity()V
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$400(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V

    .line 2880
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsScreenOn:Z
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2881
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$700(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pdp_watchdog_poll_interval_ms"

    const/16 v3, 0x3e8

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mNetStatPollPeriod:I
    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$602(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I

    .line 2889
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mNetStatPollEnabled:Z
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$900(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2890
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1100(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mNetStatPollPeriod:I
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1000(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2892
    :cond_0
    return-void

    .line 2884
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$700(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pdp_watchdog_long_poll_interval_ms"

    const v3, 0x927c0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mNetStatPollPeriod:I
    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$802(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I

    goto :goto_0
.end method
