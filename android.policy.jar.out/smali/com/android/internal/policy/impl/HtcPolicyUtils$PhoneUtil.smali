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
    .line 33
    iput-object p1, p0, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->this$0:Lcom/android/internal/policy/impl/HtcPolicyUtils;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    return-void
.end method

.method private getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    if-nez v0, :cond_0

    .line 140
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    .line 141
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    if-nez v0, :cond_0

    .line 142
    const-string v0, "HtcPolicyUtils-PhoneUtil"

    const-string v1, "Unable to find ITelephony interface."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    return-object v0
.end method


# virtual methods
.method public endCall()Z
    .locals 6

    .prologue
    .line 116
    const/4 v1, 0x0

    .line 117
    .local v1, hungUp:Z
    invoke-direct {p0}, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 118
    .local v3, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-nez v3, :cond_0

    .line 119
    const-string v4, "HtcPolicyUtils-PhoneUtil"

    const-string v5, "couldn\'t get ITelephony reference"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 135
    .end local v1           #hungUp:Z
    .local v2, hungUp:I
    :goto_0
    return v2

    .line 123
    .end local v2           #hungUp:I
    .restart local v1       #hungUp:Z
    :cond_0
    :try_start_0
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 124
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->htcCdmaEndCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 132
    :goto_1
    invoke-static {}, Lcom/android/internal/policy/impl/HtcPolicyUtils;->access$000()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    .line 133
    const-string v4, "HtcPolicyUtils-PhoneUtil"

    const-string v5, "[ATS][?com.android.internal.policy.impl?][end_call][successful]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v2, v1

    .line 135
    .restart local v2       #hungUp:I
    goto :goto_0

    .line 126
    .end local v2           #hungUp:I
    :cond_2
    :try_start_1
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_1

    .line 128
    :catch_0
    move-exception v0

    .line 129
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

    .line 69
    invoke-direct {p0}, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 70
    .local v1, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_0

    .line 71
    const-string v3, "HtcPolicyUtils-PhoneUtil"

    const-string v4, "couldn\'t get ITelephony reference"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_0
    return v2

    .line 75
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getPowerKeyFlag()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
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

    .line 41
    invoke-direct {p0}, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 42
    .local v1, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_0

    .line 43
    const-string v3, "HtcPolicyUtils-PhoneUtil"

    const-string v4, "couldn\'t get ITelephony reference"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :goto_0
    return v2

    .line 47
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
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

    .line 55
    invoke-direct {p0}, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 56
    .local v1, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_0

    .line 57
    const-string v3, "HtcPolicyUtils-PhoneUtil"

    const-string v4, "couldn\'t get ITelephony reference"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :goto_0
    return v2

    .line 61
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "HtcPolicyUtils-PhoneUtil"

    const-string v4, "telephonyService.isRinging:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPowerKeyFlag()V
    .locals 4

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 84
    .local v1, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_0

    .line 85
    const-string v2, "HtcPolicyUtils-PhoneUtil"

    const-string v3, "couldn\'t get ITelephony reference"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_0
    return-void

    .line 89
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->setPowerKeyFlag()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcPolicyUtils-PhoneUtil"

    const-string v3, "telephonyService.setPowerKeyFlag:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public silenceRinger()V
    .locals 4

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 97
    .local v1, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_0

    .line 98
    const-string v2, "HtcPolicyUtils-PhoneUtil"

    const-string v3, "couldn\'t get ITelephony reference"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :goto_0
    return-void

    .line 102
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcPolicyUtils-PhoneUtil"

    const-string v3, "telephonyService.silenceRinger:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
