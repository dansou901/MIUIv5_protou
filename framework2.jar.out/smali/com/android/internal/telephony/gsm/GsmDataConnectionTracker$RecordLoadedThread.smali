.class Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$RecordLoadedThread;
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
    name = "RecordLoadedThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 3211
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 3214
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->UnsyncConnectionCheck()V

    .line 3216
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-string v1, "onRecordsLoaded: createAllApnList"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3217
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #calls: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->createAllApnList()V
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1300(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V

    .line 3219
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #setter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mSimLoaded:Z
    invoke-static {v0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1402(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Z)Z

    .line 3222
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #calls: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getPdpLimit()V
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V

    .line 3224
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mAttached:Z
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1600(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3225
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #calls: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setPdpLimit()V
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1700(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V

    .line 3229
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->alreadyCheckedProfile:Z
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1800(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3230
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #setter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->alreadyCheckedProfile:Z
    invoke-static {v0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1802(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Z)Z

    .line 3236
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1900(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3237
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-string v1, "onRecordsLoaded: notifying data availability"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3239
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-string v1, "simLoaded"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 3244
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-string v1, "onRecordsLoaded: Send EVENT_TRY_SETUP_DATA Mesg to setup data call"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3245
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const v2, 0x42003

    const-string v3, "simLoaded"

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 3247
    return-void
.end method
