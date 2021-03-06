.class Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$PhoneCallHandle;
.super Ljava/lang/Object;
.source "HtcPhoneWindowManagerExtention.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhoneCallHandle"
.end annotation


# instance fields
.field private mIsHandled:Z

.field private mIsHandledBeforeQueueing:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;)V
    .locals 1
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$PhoneCallHandle;->this$0:Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$PhoneCallHandle;->mIsHandledBeforeQueueing:Z

    return-void
.end method

.method private isEndCallInScreenOff(Z)Z
    .locals 2
    .parameter "isScreenOn"

    .prologue
    .line 98
    if-eqz p1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public handleBeforeQueueing(ZI)Z
    .locals 3
    .parameter "isScreenOn"
    .parameter "keyCode"

    .prologue
    const/4 v2, 0x1

    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, hungUp:Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$PhoneCallHandle;->mIsHandled:Z

    .line 118
    sparse-switch p2, :sswitch_data_0

    .line 143
    :cond_0
    :goto_0
    return v0

    .line 123
    :sswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$PhoneCallHandle;->this$0:Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;

    #getter for: Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->mUtils:Lcom/android/internal/policy/impl/HtcPolicyUtils;
    invoke-static {v1}, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->access$000(Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;)Lcom/android/internal/policy/impl/HtcPolicyUtils;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/policy/impl/HtcPolicyUtils;->phone:Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->getPowerKeyFlag()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$PhoneCallHandle;->isEndCallInScreenOff(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$PhoneCallHandle;->this$0:Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;

    #getter for: Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->mUtils:Lcom/android/internal/policy/impl/HtcPolicyUtils;
    invoke-static {v1}, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->access$000(Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;)Lcom/android/internal/policy/impl/HtcPolicyUtils;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/policy/impl/HtcPolicyUtils;->phone:Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->endCall()Z

    move-result v0

    .line 126
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$PhoneCallHandle;->mIsHandled:Z

    .line 127
    invoke-static {}, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HtcPhoneWindowManagerExtention"

    const-string v2, "endCall"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$PhoneCallHandle;->this$0:Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;

    #getter for: Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->mUtils:Lcom/android/internal/policy/impl/HtcPolicyUtils;
    invoke-static {v1}, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->access$000(Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;)Lcom/android/internal/policy/impl/HtcPolicyUtils;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/policy/impl/HtcPolicyUtils;->phone:Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->setPowerKeyFlag()V

    .line 130
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$PhoneCallHandle;->this$0:Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;

    #getter for: Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->mUtils:Lcom/android/internal/policy/impl/HtcPolicyUtils;
    invoke-static {v1}, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->access$000(Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;)Lcom/android/internal/policy/impl/HtcPolicyUtils;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/policy/impl/HtcPolicyUtils;->phone:Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->silenceRinger()V

    .line 131
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$PhoneCallHandle;->mIsHandled:Z

    .line 132
    invoke-static {}, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HtcPhoneWindowManagerExtention"

    const-string v2, "silenceRinger"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 136
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$PhoneCallHandle;->isEndCallInScreenOff(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$PhoneCallHandle;->this$0:Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;

    #getter for: Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->mUtils:Lcom/android/internal/policy/impl/HtcPolicyUtils;
    invoke-static {v1}, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->access$000(Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;)Lcom/android/internal/policy/impl/HtcPolicyUtils;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/policy/impl/HtcPolicyUtils;->phone:Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->endCall()Z

    move-result v0

    .line 138
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$PhoneCallHandle;->mIsHandled:Z

    .line 139
    invoke-static {}, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HtcPhoneWindowManagerExtention"

    const-string v2, "endCall"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 118
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_1
        0x1a -> :sswitch_0
    .end sparse-switch
.end method

.method public init()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$PhoneCallHandle;->mIsHandled:Z

    .line 106
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$PhoneCallHandle;->mIsHandledBeforeQueueing:Z

    .line 107
    return-void
.end method

.method public isHandledBeforeQueueing()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$PhoneCallHandle;->mIsHandledBeforeQueueing:Z

    return v0
.end method
