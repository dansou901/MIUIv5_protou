.class public Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;
.super Ljava/lang/Object;
.source "HtcPolicyUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/HtcPolicyUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PhoneUtil"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcPolicyUtils-PhoneUtil"


# instance fields
.field private mTelephonyService:Lcom/android/internal/telephony/ITelephony;

.field final synthetic this$0:Lcom/android/internal/policy/impl/HtcPolicyUtils;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/HtcPolicyUtils;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->this$0:Lcom/android/internal/policy/impl/HtcPolicyUtils;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    return-void
.end method

.method private getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    if-nez v0, :cond_0

    .line 141
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    .line 142
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    if-nez v0, :cond_0

    .line 143
    const-string v0, "HtcPolicyUtils-PhoneUtil"

    const-string v1, "Unable to find ITelephony interface."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    return-object v0
.end method


# virtual methods
.method public endCall()Z
    .locals 6

    .prologue
    .line 117
    const/4 v1, 0x0

    .line 118
    .local v1, hungUp:Z
    invoke-direct {p0}, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 119
    .local v3, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-nez v3, :cond_0

    .line 120
    const-string v4, "HtcPolicyUtils-PhoneUtil"

    const-string v5, "couldn\'t get ITelephony reference"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 136
    .end local v1           #hungUp:Z
    .local v2, hungUp:I
    :goto_0
    return v2

    .line 124
    .end local v2           #hungUp:I
    .restart local v1       #hungUp:Z
    :cond_0
    :try_start_0
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 125
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->htcCdmaEndCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 133
    :goto_1
    invoke-static {}, Lcom/android/internal/policy/impl/HtcPolicyUtils;->access$000()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    .line 134
    const-string v4, "HtcPolicyUtils-PhoneUtil"

    const-string v5, "[ATS][?com.android.internal.policy.impl?][end_call][successful]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v2, v1

    .line 136
    .restart local v2       #hungUp:I
    goto :goto_0

    .line 127
    .end local v2           #hungUp:I
    :cond_2
    :try_start_1
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_1

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, ex:Landroid/os/RemoteException;
    const-string v4, "HtcPolicyUtils-PhoneUtil"

    const-string v5, "telephonyService.silenceRinger:"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getPowerKeyFlag()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-direct {p0}, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 71
    .local v1, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_0

    .line 72
    const-string v3, "HtcPolicyUtils-PhoneUtil"

    const-string v4, "couldn\'t get ITelephony reference"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :goto_0
    return v2

    .line 76
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getPowerKeyFlag()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "HtcPolicyUtils-PhoneUtil"

    const-string v4, "telephonyService.getPowerKeyFlag:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isInCall()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 43
    .local v1, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_0

    .line 44
    const-string v3, "HtcPolicyUtils-PhoneUtil"

    const-string v4, "couldn\'t get ITelephony reference"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :goto_0
    return v2

    .line 48
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "HtcPolicyUtils-PhoneUtil"

    const-string v4, "telephonyService.isOffhook:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isRinging()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 57
    .local v1, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_0

    .line 58
    const-string v3, "HtcPolicyUtils-PhoneUtil"

    const-string v4, "couldn\'t get ITelephony reference"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :goto_0
    return v2

    .line 62
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "HtcPolicyUtils-PhoneUtil"

    const-string v4, "telephonyService.isRinging:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPowerKeyFlag()V
    .locals 4

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 85
    .local v1, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_0

    .line 86
    const-string v2, "HtcPolicyUtils-PhoneUtil"

    const-string v3, "couldn\'t get ITelephony reference"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_0
    return-void

    .line 90
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->setPowerKeyFlag()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcPolicyUtils-PhoneUtil"

    const-string v3, "telephonyService.setPowerKeyFlag:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public silenceRinger()V
    .locals 4

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 98
    .local v1, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_0

    .line 99
    const-string v2, "HtcPolicyUtils-PhoneUtil"

    const-string v3, "couldn\'t get ITelephony reference"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_0
    return-void

    .line 103
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcPolicyUtils-PhoneUtil"

    const-string v3, "telephonyService.silenceRinger:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
