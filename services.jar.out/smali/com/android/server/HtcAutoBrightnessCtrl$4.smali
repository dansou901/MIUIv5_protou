.class Lcom/android/server/HtcAutoBrightnessCtrl$4;
.super Ljava/lang/Object;
.source "HtcAutoBrightnessCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcAutoBrightnessCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/HtcAutoBrightnessCtrl;


# direct methods
.method constructor <init>(Lcom/android/server/HtcAutoBrightnessCtrl;)V
    .locals 0
    .parameter

    .prologue
    .line 1073
    iput-object p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl$4;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl$4;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z
    invoke-static {v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$400(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1077
    const-string v0, "HtcAutoBrightnessCtrl"

    const-string v1, "mAudioStreamingTimeoutTask: Timeout!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    :cond_0
    iget-object v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl$4;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #calls: Lcom/android/server/HtcAutoBrightnessCtrl;->resetAudioStreamingMode()V
    invoke-static {v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$1900(Lcom/android/server/HtcAutoBrightnessCtrl;)V

    .line 1081
    return-void
.end method
