.class public Landroid/net/HtcMobileNetworkEngine;
.super Ljava/lang/Object;
.source "HtcMobileNetworkEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/HtcMobileNetworkEngine$2;,
        Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_HTC_SIMCARD_STATUS_UPDATE:Ljava/lang/String; = "com.htc.intent.action.HTC_SIMCARD_STATUS_UPDATE"

.field private static final ACTION_MODEMLINK_DISABLED:Ljava/lang/String; = "com.htc.is.disabled"

.field private static final ACTION_MODEMLINK_ENABLED:Ljava/lang/String; = "com.htc.is.enabled"

.field protected static final ALLOW_ALL_TRIP:I = 0x1

.field protected static final ALLOW_THIS_TRIP:I = 0x2

#the value of this static final field might be set in the static constructor
.field private static final ALWAYS_ENABLE_UI:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field protected static final DENY_ROAMING:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final FEATURE_SUPPORT_MOBILE_DATA_TURN_OFF_ALERT:Z = false

.field private static final HAS_SIM_CHECK:Z = false

#the value of this static final field might be set in the static constructor
.field private static final MODEM_LINK_CHECK:Z = false

.field private static SERVICE_STATE_CHECK:Z = false

.field public static final SUMMARY_AIR_MODE_DATA_ROAMING_ON:I = 0x64

.field public static final SUMMARY_CONNECTED:I = 0x2

.field public static final SUMMARY_CONNECTING:I = 0x1

.field public static final SUMMARY_DISCONNECTED:I = 0x3

.field public static final SUMMARY_DISCONNECTED_APN_ERROR:I = 0x5

.field public static final SUMMARY_DISCONNECTED_DENIED:I = 0x6

.field public static final SUMMARY_DISCONNECTED_ENABLED:I = 0x8

.field public static final SUMMARY_DISCONNECTED_ERROR:I = 0x4

.field public static final SUMMARY_DISCONNECTED_RADIO_OFF:I = 0x9

.field public static final SUMMARY_DISCONNECTED_ROAMING_ERROR:I = 0x7

.field public static final SUMMARY_DISCONNECTED_WIFI_ON:I = 0xa

.field public static final SUMMARY_DISCONNECTED_WIMAX_4G_ON:I = 0xb

.field public static final SUMMARY_DISCONNECTED_WIMAX_WB_ON:I = 0xc

.field public static final SUMMARY_DISCONNECTED_WIMAX_WX_ON:I = 0xd

.field public static final SUMMARY_INIT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HtcMobileNetworkEngine"

.field private static mEngine:Landroid/net/HtcMobileNetworkEngine;


# instance fields
.field private hasReceivedHtcSIMIntent:Z

.field private hasRegisterredReciever:Z

.field private mCheckState:Z

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mEnableState:Z

.field private mHandler:Landroid/os/Handler;

.field private mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mReceiver:Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;

.field private mSettingsEnableState:Z

.field private mSummaryType:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xa8

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Landroid/net/HtcMobileNetworkEngine;->DBG:Z

    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-double v3, v0

    const-wide/high16 v5, 0x4010

    cmpg-double v0, v3, v5

    if-gez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/net/HtcMobileNetworkEngine;->SERVICE_STATE_CHECK:Z

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v7, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Landroid/net/HtcMobileNetworkEngine;->MODEM_LINK_CHECK:Z

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd1

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_2
    sput-boolean v0, Landroid/net/HtcMobileNetworkEngine;->ALWAYS_ENABLE_UI:Z

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v7, :cond_3

    :goto_3
    sput-boolean v1, Landroid/net/HtcMobileNetworkEngine;->FEATURE_SUPPORT_MOBILE_DATA_TURN_OFF_ALERT:Z

    const/4 v0, 0x0

    sput-object v0, Landroid/net/HtcMobileNetworkEngine;->mEngine:Landroid/net/HtcMobileNetworkEngine;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Landroid/net/HtcMobileNetworkEngine;->mEnableState:Z

    iput-boolean v4, p0, Landroid/net/HtcMobileNetworkEngine;->mSettingsEnableState:Z

    iput v0, p0, Landroid/net/HtcMobileNetworkEngine;->mSummaryType:I

    iput-boolean v0, p0, Landroid/net/HtcMobileNetworkEngine;->hasRegisterredReciever:Z

    iput-boolean v0, p0, Landroid/net/HtcMobileNetworkEngine;->hasReceivedHtcSIMIntent:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Landroid/net/HtcMobileNetworkEngine;->mIntentFilter:Landroid/content/IntentFilter;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/net/HtcMobileNetworkEngine;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/net/HtcMobileNetworkEngine$1;

    invoke-direct {v0, p0}, Landroid/net/HtcMobileNetworkEngine$1;-><init>(Landroid/net/HtcMobileNetworkEngine;)V

    iput-object v0, p0, Landroid/net/HtcMobileNetworkEngine;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iput-object p1, p0, Landroid/net/HtcMobileNetworkEngine;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;

    invoke-direct {v0, p0, v5}, Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;-><init>(Landroid/net/HtcMobileNetworkEngine;Landroid/net/HtcMobileNetworkEngine$1;)V

    iput-object v0, p0, Landroid/net/HtcMobileNetworkEngine;->mReceiver:Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/net/HtcMobileNetworkEngine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Landroid/net/HtcMobileNetworkEngine;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Landroid/net/HtcMobileNetworkEngine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Landroid/net/HtcMobileNetworkEngine;->mContext:Landroid/content/Context;

    const-string v1, "htctelephony"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/HtcTelephonyManager;

    iput-object v0, p0, Landroid/net/HtcMobileNetworkEngine;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    iget-object v0, p0, Landroid/net/HtcMobileNetworkEngine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Landroid/net/HtcMobileNetworkEngine;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Landroid/net/HtcMobileNetworkEngine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/HtcMobileNetworkEngine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.intent.action.MOBILEDATA_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/HtcMobileNetworkEngine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/HtcMobileNetworkEngine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.intent.action.HTC_SIMCARD_STATUS_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/HtcMobileNetworkEngine;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/HtcMobileNetworkEngine;->mReceiver:Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;

    iget-object v2, p0, Landroid/net/HtcMobileNetworkEngine;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v3, p0, Landroid/net/HtcMobileNetworkEngine;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iput-boolean v4, p0, Landroid/net/HtcMobileNetworkEngine;->hasRegisterredReciever:Z

    invoke-direct {p0}, Landroid/net/HtcMobileNetworkEngine;->checkMobileNetworkDisplayPolicy()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    sget-boolean v0, Landroid/net/HtcMobileNetworkEngine;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Landroid/net/HtcMobileNetworkEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/HtcMobileNetworkEngine;->checkMobileNetworkDisplayPolicy()V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Intent;)Landroid/net/NetworkInfo$State;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-static {p0}, Landroid/net/HtcMobileNetworkEngine;->getMobileDataState(Landroid/content/Intent;)Landroid/net/NetworkInfo$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/HtcMobileNetworkEngine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/HtcMobileNetworkEngine;->mCheckState:Z

    return v0
.end method

.method static synthetic access$302(Landroid/net/HtcMobileNetworkEngine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/HtcMobileNetworkEngine;->mCheckState:Z

    return p1
.end method

.method static synthetic access$400(Landroid/net/HtcMobileNetworkEngine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/HtcMobileNetworkEngine;->getPersistedMobileDataEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/net/HtcMobileNetworkEngine;Landroid/net/NetworkInfo$State;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/net/HtcMobileNetworkEngine;->checkMobileNetworkSummaryPolicy(Landroid/net/NetworkInfo$State;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/net/HtcMobileNetworkEngine;)I
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/HtcMobileNetworkEngine;->checkMobileNetworkSummaryPolicy()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/net/HtcMobileNetworkEngine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/HtcMobileNetworkEngine;->hasReceivedHtcSIMIntent:Z

    return v0
.end method

.method static synthetic access$702(Landroid/net/HtcMobileNetworkEngine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/HtcMobileNetworkEngine;->hasReceivedHtcSIMIntent:Z

    return p1
.end method

.method private checkMobileNetworkDisplayPolicy()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v4, -0x1

    .local v4, serviceState:I
    const/4 v2, -0x1

    .local v2, gprsState:I
    const/4 v3, 0x0

    .local v3, hasSim:Z
    const/4 v1, 0x1

    .local v1, enableState:Z
    const/4 v5, 0x1

    .local v5, settingsEnableState:Z
    invoke-direct {p0}, Landroid/net/HtcMobileNetworkEngine;->getPersistedAirplaneModeEnabled()Z

    move-result v0

    .local v0, airState:Z
    iget-object v6, p0, Landroid/net/HtcMobileNetworkEngine;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    if-nez v6, :cond_0

    const-string v6, "HtcMobileNetworkEngine"

    const-string v9, "mHtcTelephonyManager is null, rebind it."

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Landroid/net/HtcMobileNetworkEngine;->mContext:Landroid/content/Context;

    const-string v9, "htctelephony"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/service/HtcTelephonyManager;

    iput-object v6, p0, Landroid/net/HtcMobileNetworkEngine;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    :cond_0
    iget-object v6, p0, Landroid/net/HtcMobileNetworkEngine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v6, :cond_1

    const-string v6, "HtcMobileNetworkEngine"

    const-string v9, "mTelephonyManager is null, rebind it."

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Landroid/net/HtcMobileNetworkEngine;->mContext:Landroid/content/Context;

    const-string v9, "phone"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    iput-object v6, p0, Landroid/net/HtcMobileNetworkEngine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_1
    iget-object v6, p0, Landroid/net/HtcMobileNetworkEngine;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/net/HtcMobileNetworkEngine;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    invoke-virtual {v6}, Lcom/htc/service/HtcTelephonyManager;->getServiceState()I

    move-result v4

    iget-object v6, p0, Landroid/net/HtcMobileNetworkEngine;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    invoke-virtual {v6}, Lcom/htc/service/HtcTelephonyManager;->getGprsState()I

    move-result v2

    :cond_2
    iget-object v6, p0, Landroid/net/HtcMobileNetworkEngine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/net/HtcMobileNetworkEngine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v3

    :cond_3
    iget-object v6, p0, Landroid/net/HtcMobileNetworkEngine;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/net/HtcMobileNetworkEngine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v6, :cond_5

    :cond_4
    const-string v9, "HtcMobileNetworkEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mHtcTelephonyManager is null:"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v6, p0, Landroid/net/HtcMobileNetworkEngine;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    if-nez v6, :cond_e

    move v6, v7

    :goto_0
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "mTelephonyManager is null:"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v10, p0, Landroid/net/HtcMobileNetworkEngine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v10, :cond_f

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->LTE_CONFIG()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_LTE_CONFIG()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v6

    if-eqz v6, :cond_11

    :cond_6
    if-eqz v2, :cond_7

    sget-boolean v6, Landroid/net/HtcMobileNetworkEngine;->SERVICE_STATE_CHECK:Z

    if-nez v6, :cond_10

    :cond_7
    if-nez v0, :cond_10

    :cond_8
    :goto_2
    if-nez v0, :cond_9

    if-nez v3, :cond_a

    :cond_9
    const/4 v5, 0x0

    :cond_a
    sget-boolean v6, Landroid/net/HtcMobileNetworkEngine;->DBG:Z

    if-eqz v6, :cond_b

    const-string v6, "HtcMobileNetworkEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "serviceState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; gprsState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; airState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; hasSim:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; enable:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; settingsEnableState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-boolean v6, p0, Landroid/net/HtcMobileNetworkEngine;->mEnableState:Z

    if-eq v6, v1, :cond_c

    iput-boolean v1, p0, Landroid/net/HtcMobileNetworkEngine;->mEnableState:Z

    iget-boolean v6, p0, Landroid/net/HtcMobileNetworkEngine;->mEnableState:Z

    invoke-virtual {p0, v6}, Landroid/net/HtcMobileNetworkEngine;->onEnableStateChange(Z)V

    :cond_c
    iget-boolean v6, p0, Landroid/net/HtcMobileNetworkEngine;->mSettingsEnableState:Z

    if-eq v5, v6, :cond_d

    iput-boolean v5, p0, Landroid/net/HtcMobileNetworkEngine;->mSettingsEnableState:Z

    iget-boolean v6, p0, Landroid/net/HtcMobileNetworkEngine;->mSettingsEnableState:Z

    invoke-virtual {p0, v6}, Landroid/net/HtcMobileNetworkEngine;->onSettingsEnableStateChange(Z)V

    :cond_d
    return-void

    :cond_e
    move v6, v8

    goto/16 :goto_0

    :cond_f
    move v7, v8

    goto/16 :goto_1

    :cond_10
    const/4 v1, 0x0

    goto :goto_2

    :cond_11
    if-eqz v4, :cond_12

    sget-boolean v6, Landroid/net/HtcMobileNetworkEngine;->SERVICE_STATE_CHECK:Z

    if-nez v6, :cond_13

    :cond_12
    if-eqz v0, :cond_8

    :cond_13
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private checkMobileNetworkSummaryPolicy()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .local v0, networkInfo:Landroid/net/NetworkInfo;
    iget-object v1, p0, Landroid/net/HtcMobileNetworkEngine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    const-string v1, "HtcMobileNetworkEngine"

    const-string v2, "connectivity is null, rebind it."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/net/HtcMobileNetworkEngine;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Landroid/net/HtcMobileNetworkEngine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    :cond_0
    iget-object v1, p0, Landroid/net/HtcMobileNetworkEngine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/HtcMobileNetworkEngine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    :goto_0
    sget-boolean v1, Landroid/net/HtcMobileNetworkEngine;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "HtcMobileNetworkEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ni:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/net/HtcMobileNetworkEngine;->checkMobileNetworkSummaryPolicy(Landroid/net/NetworkInfo$State;Ljava/lang/String;)I

    move-result v1

    :goto_1
    return v1

    :cond_2
    const-string v1, "HtcMobileNetworkEngine"

    const-string v2, "mConnectivityManager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v1, "HtcMobileNetworkEngine"

    const-string v2, "networkInfo is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4, v4}, Landroid/net/HtcMobileNetworkEngine;->checkMobileNetworkSummaryPolicy(Landroid/net/NetworkInfo$State;Ljava/lang/String;)I

    move-result v1

    goto :goto_1
.end method

.method private checkMobileNetworkSummaryPolicy(Landroid/net/NetworkInfo$State;Ljava/lang/String;)I
    .locals 5
    .parameter "state"
    .parameter "reason"

    .prologue
    if-nez p2, :cond_0

    const-string p2, "unspecified"

    :cond_0
    if-nez p1, :cond_1

    sget-object p1, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    :cond_1
    invoke-direct {p0}, Landroid/net/HtcMobileNetworkEngine;->getPersistedMobileDataEnabled()Z

    move-result v3

    iput-boolean v3, p0, Landroid/net/HtcMobileNetworkEngine;->mCheckState:Z

    invoke-direct {p0}, Landroid/net/HtcMobileNetworkEngine;->getPersistedAirplaneModeEnabled()Z

    move-result v0

    .local v0, airState:Z
    const/4 v1, -0x1

    .local v1, gprsState:I
    iget-object v3, p0, Landroid/net/HtcMobileNetworkEngine;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    if-nez v3, :cond_2

    const-string v3, "HtcMobileNetworkEngine"

    const-string v4, "mHtcTelephonyManager is null, rebind it."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/net/HtcMobileNetworkEngine;->mContext:Landroid/content/Context;

    const-string v4, "htctelephony"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/service/HtcTelephonyManager;

    iput-object v3, p0, Landroid/net/HtcMobileNetworkEngine;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    :cond_2
    iget-object v3, p0, Landroid/net/HtcMobileNetworkEngine;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/net/HtcMobileNetworkEngine;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    invoke-virtual {v3}, Lcom/htc/service/HtcTelephonyManager;->getGprsState()I

    move-result v1

    :goto_0
    const/4 v2, -0x1

    .local v2, summaryType:I
    iget-boolean v3, p0, Landroid/net/HtcMobileNetworkEngine;->mCheckState:Z

    if-eqz v3, :cond_14

    sget-object v3, Landroid/net/HtcMobileNetworkEngine$2;->$SwitchMap$android$net$NetworkInfo$State:[I

    invoke-virtual {p1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/net/HtcMobileNetworkEngine;->getDataOnRoamingEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v2, v2, 0x64

    :cond_4
    iget v3, p0, Landroid/net/HtcMobileNetworkEngine;->mSummaryType:I

    if-eq v3, v2, :cond_5

    iput v2, p0, Landroid/net/HtcMobileNetworkEngine;->mSummaryType:I

    invoke-virtual {p0, v2}, Landroid/net/HtcMobileNetworkEngine;->onSummaryChange(I)V

    :cond_5
    iget v3, p0, Landroid/net/HtcMobileNetworkEngine;->mSummaryType:I

    return v3

    .end local v2           #summaryType:I
    :cond_6
    const-string v3, "HtcMobileNetworkEngine"

    const-string v4, "mHtcTelephonyManager is null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .restart local v2       #summaryType:I
    :pswitch_0
    const/4 v2, 0x2

    goto :goto_1

    :pswitch_1
    const/4 v2, 0x1

    goto :goto_1

    :pswitch_2
    const-string v3, "apnChanged"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "pdpDisconnect"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_7
    const/4 v2, 0x4

    :goto_2
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Landroid/net/HtcMobileNetworkEngine;->isNetworkActive(I)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v2, 0x8

    :cond_8
    :goto_3
    if-eqz v1, :cond_9

    const/4 v2, 0x6

    :cond_9
    if-eqz v0, :cond_3

    const/16 v2, 0x9

    goto :goto_1

    :cond_a
    const-string v3, "datt not subcribed"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v2, 0x5

    goto :goto_2

    :cond_b
    const-string v3, "dataConnectionDenied"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v2, 0x6

    goto :goto_2

    :cond_c
    const-string v3, "roamingDisabled"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "roamingOn"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_d
    const/4 v2, 0x7

    goto :goto_2

    :cond_e
    const-string v3, "radioTurnedOff"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/16 v2, 0x9

    goto :goto_2

    :cond_f
    const-string v3, "pdpTeardown"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/16 v2, 0x8

    goto :goto_2

    :cond_10
    const/4 v2, 0x3

    goto :goto_2

    :cond_11
    const/4 v3, 0x6

    invoke-direct {p0, v3}, Landroid/net/HtcMobileNetworkEngine;->isNetworkActive(I)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x51

    if-ne v3, v4, :cond_12

    const/16 v2, 0xd

    goto :goto_3

    :cond_12
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x50

    if-ne v3, v4, :cond_13

    const/16 v2, 0xc

    goto :goto_3

    :cond_13
    const/16 v2, 0xb

    goto :goto_3

    :cond_14
    const/4 v2, 0x0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/net/HtcMobileNetworkEngine;
    .locals 3
    .parameter "context"

    .prologue
    const-class v1, Landroid/net/HtcMobileNetworkEngine;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/net/HtcMobileNetworkEngine;->mEngine:Landroid/net/HtcMobileNetworkEngine;

    if-nez v0, :cond_0

    new-instance v0, Landroid/net/HtcMobileNetworkEngine;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/net/HtcMobileNetworkEngine;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/net/HtcMobileNetworkEngine;->mEngine:Landroid/net/HtcMobileNetworkEngine;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Landroid/net/HtcMobileNetworkEngine;->mEngine:Landroid/net/HtcMobileNetworkEngine;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Landroid/net/NetworkInfo$State;
    .locals 4
    .parameter "intent"

    .prologue
    const-string v3, "state"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, str:Ljava/lang/String;
    const-class v3, Lcom/android/internal/telephony/Phone$DataState;

    invoke-static {v3, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone$DataState;

    .local v0, dataState:Lcom/android/internal/telephony/Phone$DataState;
    sget-object v1, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    .local v1, state:Landroid/net/NetworkInfo$State;
    if-eqz v2, :cond_0

    sget-object v3, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v0, v3, :cond_1

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    sget-object v3, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v0, v3, :cond_2

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v0, v3, :cond_3

    sget-object v1, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v0, v3, :cond_0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    goto :goto_0
.end method

.method private getPersistedAirplaneModeEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/net/HtcMobileNetworkEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getPersistedMobileDataEnabled()Z
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/HtcMobileNetworkEngine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    const-string v0, "HtcMobileNetworkEngine"

    const-string v1, "connectivity is null, rebind it."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/HtcMobileNetworkEngine;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/net/HtcMobileNetworkEngine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    :cond_0
    iget-object v0, p0, Landroid/net/HtcMobileNetworkEngine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/HtcMobileNetworkEngine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/HtcMobileNetworkEngine;->mCheckState:Z

    iget-boolean v0, p0, Landroid/net/HtcMobileNetworkEngine;->mCheckState:Z

    :goto_0
    return v0

    :cond_1
    const-string v0, "HtcMobileNetworkEngine"

    const-string v1, "mConnectivityManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNetworkActive(I)Z
    .locals 3
    .parameter "networkType"

    .prologue
    iget-object v1, p0, Landroid/net/HtcMobileNetworkEngine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/net/HtcMobileNetworkEngine;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Landroid/net/HtcMobileNetworkEngine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    :cond_0
    iget-object v1, p0, Landroid/net/HtcMobileNetworkEngine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_2

    const-string v1, "HtcMobileNetworkEngine"

    const-string v2, "couldn\'t get connectivity manager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_2
    iget-object v1, p0, Landroid/net/HtcMobileNetworkEngine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .local v0, info:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCheckedState()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/net/HtcMobileNetworkEngine;->getPersistedMobileDataEnabled()Z

    move-result v0

    return v0
.end method

.method public getDataOnRoamingEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VZW_GLOBAL_ROAMING_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/net/HtcMobileNetworkEngine;->getGlobalDataRoamingOption()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    invoke-virtual {p0}, Landroid/net/HtcMobileNetworkEngine;->getGlobalDataRoamingOption()I

    move-result v3

    if-ne v3, v2, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v3, p0, Landroid/net/HtcMobileNetworkEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_roaming"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lez v3, :cond_3

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method public getEnableState()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/net/HtcMobileNetworkEngine;->checkMobileNetworkDisplayPolicy()V

    iget-boolean v0, p0, Landroid/net/HtcMobileNetworkEngine;->mEnableState:Z

    return v0
.end method

.method public getGlobalDataRoamingOption()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/net/HtcMobileNetworkEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vzw_global_roaming_options"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getSettingsEnableState()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/net/HtcMobileNetworkEngine;->checkMobileNetworkDisplayPolicy()V

    iget-boolean v0, p0, Landroid/net/HtcMobileNetworkEngine;->mSettingsEnableState:Z

    return v0
.end method

.method public getSummaryType()I
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/net/HtcMobileNetworkEngine;->checkMobileNetworkSummaryPolicy()I

    iget v0, p0, Landroid/net/HtcMobileNetworkEngine;->mSummaryType:I

    return v0
.end method

.method public onCheckStateChange(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    return-void
.end method

.method public onEnableStateChange(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    return-void
.end method

.method public onSettingsEnableStateChange(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    return-void
.end method

.method public onSummaryChange(I)V
    .locals 0
    .parameter "status"

    .prologue
    return-void
.end method

.method public persistMobileDataSettingEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    iget-object v1, p0, Landroid/net/HtcMobileNetworkEngine;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    invoke-virtual {p0, p1}, Landroid/net/HtcMobileNetworkEngine;->onCheckStateChange(Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.MOBILEDATA_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "sender"

    const-string v2, "HtcMobileNetworkEngine"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Landroid/net/HtcMobileNetworkEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/net/HtcMobileNetworkEngine;->hasRegisterredReciever:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/HtcMobileNetworkEngine;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/HtcMobileNetworkEngine;->mReceiver:Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v2, p0, Landroid/net/HtcMobileNetworkEngine;->hasRegisterredReciever:Z

    :cond_0
    iget-object v0, p0, Landroid/net/HtcMobileNetworkEngine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/HtcMobileNetworkEngine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Landroid/net/HtcMobileNetworkEngine;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    return-void
.end method

.method public setMobileNetworkEnabled(Z)V
    .locals 6
    .parameter "checked"

    .prologue
    sget-boolean v3, Landroid/net/HtcMobileNetworkEngine;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "HtcMobileNetworkEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMobileNetworkEnabled:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Landroid/net/HtcMobileNetworkEngine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v3, :cond_1

    const-string v3, "HtcMobileNetworkEngine"

    const-string v4, "connectivity is null, rebind it."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/net/HtcMobileNetworkEngine;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    iput-object v3, p0, Landroid/net/HtcMobileNetworkEngine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    :cond_1
    iget-object v3, p0, Landroid/net/HtcMobileNetworkEngine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/net/HtcMobileNetworkEngine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v3

    iput-boolean v3, p0, Landroid/net/HtcMobileNetworkEngine;->mCheckState:Z

    :goto_0
    iget-boolean v3, p0, Landroid/net/HtcMobileNetworkEngine;->mCheckState:Z

    if-ne p1, v3, :cond_3

    :goto_1
    return-void

    :cond_2
    const-string v3, "HtcMobileNetworkEngine"

    const-string v4, "mConnectivityManager is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p0, p1}, Landroid/net/HtcMobileNetworkEngine;->persistMobileDataSettingEnabled(Z)V

    goto :goto_1

    :cond_4
    sget-boolean v3, Landroid/net/HtcMobileNetworkEngine;->FEATURE_SUPPORT_MOBILE_DATA_TURN_OFF_ALERT:Z

    if-eqz v3, :cond_6

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.framework.core.wireless.mobilenetwork.HtcMobileDataDialog"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x1084

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Landroid/net/HtcMobileNetworkEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/net/HtcMobileNetworkEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_5
    const-string v3, "HtcMobileNetworkEngine"

    const-string v4, "no such activity!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Landroid/net/HtcMobileNetworkEngine;->persistMobileDataSettingEnabled(Z)V

    goto :goto_1

    .end local v0           #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :cond_6
    invoke-virtual {p0, p1}, Landroid/net/HtcMobileNetworkEngine;->persistMobileDataSettingEnabled(Z)V

    goto :goto_1
.end method
