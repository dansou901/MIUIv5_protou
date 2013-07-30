.class public Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"

# interfaces
.implements Lcom/android/internal/policy/impl/HtcIfKeyguardUpdateMonitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$IccStateCallback;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoPlusCallback;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SubSimExtraStateCallback;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimExtraStateCallback;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$Injector;
    }
.end annotation


# static fields
.field private static final ACTION_CS_LOCK_CHANGE:Ljava/lang/String; = "com.htc.cs.system.remotelock"

.field private static final ACTION_DM_LOCK_CHANGE:Ljava/lang/String; = "com.htc.omadm.state.change"

.field private static final DEBUG:Z = false

#the value of this static final field might be set in the static constructor
.field protected static final DEBUG_SIM_STATES:Z = false

.field public static final DEVICE_LOCK_TYPE_CS:I = 0x1

.field public static final DEVICE_LOCK_TYPE_DM:I = 0x2

.field public static final DEVICE_LOCK_TYPE_NONE:I = 0x0

.field private static final EXTRA_VALUE_CS_LOCK_STATE:Ljava/lang/String; = "remotelock.enable"

.field private static final EXTRA_VALUE_DM_LOCK_STATE:Ljava/lang/String; = "dm.lawmo.lockstate"

.field private static final EXTRA_VALUE_DM_PIN_ENABLE:Ljava/lang/String; = "dm.lawmo.pinenable"

.field private static final FAILED_BIOMETRIC_UNLOCK_ATTEMPTS_BEFORE_BACKUP:I = 0x3

.field static final LOW_BATTERY_THRESHOLD:I = 0xf

.field private static final MSG_BATTERY_UPDATE:I = 0x12e

.field private static final MSG_CARRIER_INFO_UPDATE:I = 0x12f

.field private static final MSG_CLOCK_VISIBILITY_CHANGED:I = 0x133

.field private static final MSG_DEVICE_LOCK_CHANGE:I = 0x12b

.field private static final MSG_DEVICE_PROVISIONED:I = 0x134

.field protected static final MSG_DPM_STATE_CHANGED:I = 0x135

.field private static final MSG_PHONE_STATE_CHANGED:I = 0x132

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x131

.field private static final MSG_SIM_EXTRA_STATE_CHANGE:I = 0x12c

.field private static final MSG_SIM_STATE_CHANGE:I = 0x130

.field private static final MSG_SIM_STATE_CHANGE_DUAL:I = 0x129

.field private static final MSG_SUB_CARRIER_INFO_UPDATE:I = 0x128

.field private static final MSG_SUB_SIM_EXTRA_STATE_CHANGE:I = 0x12a

.field private static final MSG_TIME_UPDATE:I = 0x12d

.field protected static final MSG_USER_CHANGED:I = 0x136

.field private static final PHONE_REQUEST_LOCKED:Ljava/lang/String; = "com.htc.intent.action.PHONE_REQUEST_LOCKED"

.field private static final SYSTEM_PROPERTY_DM_LOCK_STATE:Ljava/lang/String; = "ro.omadm.lockstate"

.field private static final SYSTEM_PROPERTY_DM_PIN_ENABLE:Ljava/lang/String; = "ro.omadm.pinenable"

.field private static final TAG:Ljava/lang/String; = "KeyguardUpdateMonitor"

.field private static mIccStatusInfo:[I

.field private static mNetworkLockType:I

.field private static mRUIMNetworkLockType:I

.field private static mRUIMStatusInfo:[I

.field private static mSIMNetworkLockType:I

.field private static mSIMStatusInfo:[I

.field private static mSUBSIMNetworkLockType:I

.field private static mSUBSIMStatusInfo:[I


# instance fields
.field private mAvailableTimeStamp:J

.field private mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

.field private mBypassSimPinEnabled:Z

.field private mCSLockState:Z

.field private mClockVisible:Z

.field private mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mDMLockState:I

.field private mDMPinEnable:Z

.field private mDeviceLock:Z

.field private mDeviceProvisioned:Z

.field private mFailedAttempts:I

.field private mFailedBiometricUnlockAttempts:I

.field private mHandler:Landroid/os/Handler;

.field private mHtcIccStateCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/HtcIfNewIccStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mHtcInfoPlusCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/HtcIfNewInfoPlusCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mIccStateCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$IccStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mInfoCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mInfoPlusCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoPlusCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyboardFlyHeight:I

.field private mNeedToShowAnimation:Z

.field private mNeedToWaitFirstFrame:Z

.field private mPasswordTimeout:Z

.field private mPhoneState:I

.field private mRingMode:I

.field private mServiceStatus:I

.field private mShowing:Z

.field private mSimExtraStateCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/HtcIfSimExtraStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mSimState:Lcom/android/internal/telephony/IccCard$State;

.field private mSimStateCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mSubServiceStatus:I

.field private mSubSimExtraStateCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/HtcIfSubSimExtraStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mSubSimState:Lcom/android/internal/telephony/IccCard$State;

.field public mSubTelephonyPlmn:Ljava/lang/CharSequence;

.field public mSubTelephonySpn:Ljava/lang/CharSequence;

.field private mSkipSimStateChange:Z
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field private mTelephonyPlmn:Ljava/lang/CharSequence;

.field private mTelephonySpn:Ljava/lang/CharSequence;

.field private mUimState:Lcom/android/internal/telephony/IccCard$State;

.field private mUnlockExtraType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG_SIM_STATES:Z

    new-array v0, v1, [I

    sput-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mIccStatusInfo:[I

    new-array v0, v1, [I

    sput-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMStatusInfo:[I

    new-array v0, v1, [I

    sput-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mRUIMStatusInfo:[I

    new-array v0, v1, [I

    sput-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSUBSIMStatusInfo:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    iput v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedAttempts:I

    iput v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    iput v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mServiceStatus:I

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mShowing:Z

    iput v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDMLockState:I

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDMPinEnable:Z

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCSLockState:Z

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceLock:Z

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPasswordTimeout:Z

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mNeedToShowAnimation:Z

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubSimState:Lcom/android/internal/telephony/IccCard$State;

    iput v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubServiceStatus:I

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimExtraStateCallbacks:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubSimExtraStateCallbacks:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoPlusCallbacks:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mIccStateCallbacks:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHtcInfoPlusCallbacks:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHtcIccStateCallbacks:Ljava/util/ArrayList;

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBypassSimPinEnabled:Z

    iput v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mKeyboardFlyHeight:I

    iput v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnlockExtraType:I

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mNeedToWaitFirstFrame:Z

    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "device_provisioned"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-nez v3, :cond_0

    new-instance v3, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$2;

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$2;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "device_provisioned"

    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "device_provisioned"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    move v2, v4

    .local v2, provisioned:Z
    :goto_1
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eq v2, v3, :cond_0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x134

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v2           #provisioned:Z
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    new-instance v3, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    const/16 v6, 0x64

    invoke-direct {v3, v4, v6, v5, v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;-><init>(IIII)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDualPhoneDevice()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubSimState:Lcom/android/internal/telephony/IccCard$State;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubTelephonyPlmn:Ljava/lang/CharSequence;

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.EXTRA_SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDualPhoneDevice()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "com.htc.intent.action.SIM_STATE_CHANGED_EXT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.PHONE_STATE_EXT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.htc.intent.action.PHONE_REQUEST_LOCKED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_2
    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v3, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .local v1, filter2:Landroid/content/IntentFilter;
    const-string v3, "com.htc.omadm.state.change"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.htc.cs.system.remotelock"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v3, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$4;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$4;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    const-string v4, "android.permission.UPDATE_DEVICE_STATS"

    const/4 v6, 0x0

    invoke-virtual {p1, v3, v1, v4, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string v3, "ro.omadm.lockstate"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDMLockState:I

    const-string v3, "ro.omadm.pinenable"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDMPinEnable:Z

    return-void

    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v1           #filter2:Landroid/content/IntentFilter;
    :cond_3
    move v3, v5

    goto/16 :goto_0

    :cond_4
    move v2, v5

    goto/16 :goto_1
.end method

.method private DualhandleSimStateChange(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;Z)V
    .locals 13
    .parameter "simArgs"
    .parameter "isSubPhone"

    .prologue
    const/4 v12, 0x1

    iget-object v4, p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCard$State;

    .local v4, state:Lcom/android/internal/telephony/IccCard$State;
    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v10, "htctelephony"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/service/HtcTelephonyManager;

    .local v5, telephony:Lcom/htc/service/HtcTelephonyManager;
    sget-boolean v9, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG_SIM_STATES:Z

    if-eqz v9, :cond_0

    const-string v9, "KeyguardUpdateMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DualhandleSimStateChange: intentValue = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "state resolved to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isSubPhone:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_9

    if-eqz p2, :cond_4

    sget-object v9, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-eq v4, v9, :cond_12

    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    if-eq v4, v9, :cond_12

    iput-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v10, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v9, v10, :cond_1

    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v10, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v9, v10, :cond_2

    :cond_1
    const/4 v9, 0x2

    invoke-virtual {v5, v9}, Lcom/htc/service/HtcTelephonyManager;->getIccState(I)I

    move-result v3

    .local v3, iccUimType:I
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimStateFromIccType(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v8

    .local v8, tempUimState:Lcom/android/internal/telephony/IccCard$State;
    sget-object v9, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-eq v8, v9, :cond_2

    iput-object v8, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUimState:Lcom/android/internal/telephony/IccCard$State;

    .end local v3           #iccUimType:I
    .end local v8           #tempUimState:Lcom/android/internal/telephony/IccCard$State;
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_3

    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$IccStateCallback;

    invoke-interface {v9, v4, p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$IccStateCallback;->onIccStateChanged(Lcom/android/internal/telephony/IccCard$State;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHtcIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_12

    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHtcIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/policy/impl/HtcIfNewIccStateCallback;

    invoke-interface {v9, v4, p2}, Lcom/android/internal/policy/impl/HtcIfNewIccStateCallback;->onIccStateChanged(Lcom/android/internal/telephony/IccCard$State;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    :cond_4
    sget-object v9, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-eq v4, v9, :cond_12

    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUimState:Lcom/android/internal/telephony/IccCard$State;

    if-eq v4, v9, :cond_12

    iput-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUimState:Lcom/android/internal/telephony/IccCard$State;

    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v10, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v9, v10, :cond_5

    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v10, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v9, v10, :cond_6

    :cond_5
    invoke-virtual {v5, v12}, Lcom/htc/service/HtcTelephonyManager;->getIccState(I)I

    move-result v1

    .local v1, iccSimType:I
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimStateFromIccType(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v6

    .local v6, tempSimState:Lcom/android/internal/telephony/IccCard$State;
    sget-object v9, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-eq v6, v9, :cond_6

    iput-object v6, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .end local v1           #iccSimType:I
    .end local v6           #tempSimState:Lcom/android/internal/telephony/IccCard$State;
    :cond_6
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_7

    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$IccStateCallback;

    invoke-interface {v9, v4, p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$IccStateCallback;->onIccStateChanged(Lcom/android/internal/telephony/IccCard$State;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :goto_3
    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHtcIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_8

    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHtcIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/policy/impl/HtcIfNewIccStateCallback;

    invoke-interface {v9, v4, p2}, Lcom/android/internal/policy/impl/HtcIfNewIccStateCallback;->onIccStateChanged(Lcom/android/internal/telephony/IccCard$State;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    :goto_4
    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_12

    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-interface {v9, v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .end local v0           #i:I
    :cond_9
    if-eqz p2, :cond_d

    sget-object v9, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-eq v4, v9, :cond_12

    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubSimState:Lcom/android/internal/telephony/IccCard$State;

    if-eq v4, v9, :cond_12

    iput-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubSimState:Lcom/android/internal/telephony/IccCard$State;

    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v10, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v9, v10, :cond_a

    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v10, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v9, v10, :cond_b

    :cond_a
    invoke-virtual {v5, v12}, Lcom/htc/service/HtcTelephonyManager;->getIccState(I)I

    move-result v1

    .restart local v1       #iccSimType:I
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimStateFromIccType(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v6

    .restart local v6       #tempSimState:Lcom/android/internal/telephony/IccCard$State;
    sget-object v9, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-eq v6, v9, :cond_b

    iput-object v6, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .end local v1           #iccSimType:I
    .end local v6           #tempSimState:Lcom/android/internal/telephony/IccCard$State;
    :cond_b
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_5
    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_c

    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$IccStateCallback;

    invoke-interface {v9, v4, p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$IccStateCallback;->onIccStateChanged(Lcom/android/internal/telephony/IccCard$State;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_c
    const/4 v0, 0x0

    :goto_6
    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHtcIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_12

    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHtcIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/policy/impl/HtcIfNewIccStateCallback;

    invoke-interface {v9, v4, p2}, Lcom/android/internal/policy/impl/HtcIfNewIccStateCallback;->onIccStateChanged(Lcom/android/internal/telephony/IccCard$State;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .end local v0           #i:I
    :cond_d
    sget-object v9, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-eq v4, v9, :cond_12

    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    if-eq v4, v9, :cond_12

    iput-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v10, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v9, v10, :cond_e

    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v10, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v9, v10, :cond_f

    :cond_e
    const/4 v9, 0x3

    invoke-virtual {v5, v9}, Lcom/htc/service/HtcTelephonyManager;->getIccState(I)I

    move-result v2

    .local v2, iccSubSimType:I
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimStateFromIccType(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v7

    .local v7, tempSubSimState:Lcom/android/internal/telephony/IccCard$State;
    sget-object v9, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-eq v7, v9, :cond_f

    iput-object v7, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubSimState:Lcom/android/internal/telephony/IccCard$State;

    .end local v2           #iccSubSimType:I
    .end local v7           #tempSubSimState:Lcom/android/internal/telephony/IccCard$State;
    :cond_f
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_7
    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_10

    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$IccStateCallback;

    invoke-interface {v9, v4, p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$IccStateCallback;->onIccStateChanged(Lcom/android/internal/telephony/IccCard$State;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_10
    const/4 v0, 0x0

    :goto_8
    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHtcIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_11

    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHtcIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/policy/impl/HtcIfNewIccStateCallback;

    invoke-interface {v9, v4, p2}, Lcom/android/internal/policy/impl/HtcIfNewIccStateCallback;->onIccStateChanged(Lcom/android/internal/telephony/IccCard$State;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_11
    const/4 v0, 0x0

    :goto_9
    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_12

    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-interface {v9, v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .end local v0           #i:I
    :cond_12
    const-string v9, "KeyguardUpdateMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mSimState = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , mUimState = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUimState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , mSubSimState = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubSimState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMStatusInfo:[I

    return-object v0
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mRUIMStatusInfo:[I

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;IILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleSubSimExtraStateChange(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleDeviceLockChange()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleSubCarrierInfoUpdate()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DualhandleSimStateChange(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mServiceStatus:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mServiceStatus:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Intent;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getServiceStatusFrom(Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$200()[I
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSUBSIMStatusInfo:[I

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isSubPhoneForDualPhone(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDMLockState:I

    return v0
.end method

.method static synthetic access$2402(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDMLockState:I

    return p1
.end method

.method static synthetic access$2502(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDMPinEnable:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCSLockState:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCSLockState:Z

    return p1
.end method

.method static synthetic access$300()[I
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mIccStatusInfo:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleTimeUpdate()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleBatteryUpdate(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleCarrierInfoUpdate()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleSimStateChange(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleClockVisibilityChanged()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;IILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleSimExtraStateChange(IILjava/lang/String;)V

    return-void
.end method

.method private getDefaultPlmn()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getServiceStatusFrom(Landroid/content/Intent;)I
    .locals 2
    .parameter "intent"

    .prologue
    const-string v0, "networkState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getSimStateFromIccType(I)Lcom/android/internal/telephony/IccCard$State;
    .locals 1
    .parameter "iccType"

    .prologue
    packed-switch p1, :pswitch_data_0

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "intent"

    .prologue
    const-string v1, "showPlmn"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "plmn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, plmn:Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0           #plmn:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #plmn:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .end local v0           #plmn:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "intent"

    .prologue
    const-string v1, "showSpn"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "spn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, spn:Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0           #spn:Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleBatteryUpdate(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 6
    .parameter "batteryStatus"

    .prologue
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    invoke-static {v2, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBatteryUpdateInteresting(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    .local v0, batteryUpdateInteresting:Z
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v3

    invoke-static {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isPluggedIn(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v4

    iget v5, p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onRefreshBatteryInfo(ZZI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method private handleCarrierInfoUpdate()V
    .locals 5

    .prologue
    sget-boolean v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG_SIM_STATES:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCarrierInfoUpdate: ServiceStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mServiceStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", plmn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", spn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    iget v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mServiceStatus:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onRefreshCarrierInfo(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleClockVisibilityChanged()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onClockVisibilityChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleDeviceLockChange()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    iget v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDMLockState:I

    if-gt v2, v0, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCSLockState:Z

    if-eqz v2, :cond_1

    .local v0, deviceLock:Z
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceLock:Z

    if-eq v0, v2, :cond_2

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceLock:Z

    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceLock:Z

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onDeviceLockChange(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #deviceLock:Z
    .end local v1           #i:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0       #deviceLock:Z
    :cond_2
    return-void
.end method

.method private handleSimExtraStateChange(IILjava/lang/String;)V
    .locals 4
    .parameter "provisioned"
    .parameter "icc_type"
    .parameter "operator"

    .prologue
    sget-boolean v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG_SIM_STATES:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSimExtraStateChange: provisioned = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "icc_type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "opeartor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimExtraStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimExtraStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/HtcIfSimExtraStateCallback;

    if-lez p1, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-interface {v1, v2, p2, p3}, Lcom/android/internal/policy/impl/HtcIfSimExtraStateCallback;->onSimExtraStateChanged(ZILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    return-void
.end method

.method private handleSimStateChange(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;)V
    .locals 5
    .parameter "simArgs"

    .prologue
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSkipSimStateChange:Z

    if-eqz v2, :cond_miui_0

    return-void

    :cond_miui_0
    iget-object v1, p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCard$State;

    .local v1, state:Lcom/android/internal/telephony/IccCard$State;
    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSimStateChange: intentValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "state resolved to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , mSimState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v2, :cond_1

    sget-boolean v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG_SIM_STATES:Z

    if-eqz v2, :cond_0

    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatching state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-interface {v2, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method private handleSubCarrierInfoUpdate()V
    .locals 4

    .prologue
    sget-boolean v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG_SIM_STATES:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSubCarrierInfoUpdate: SubServiceStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubServiceStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sub plmn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubTelephonyPlmn:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sub spn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubTelephonySpn:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoPlusCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoPlusCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoPlusCallback;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubTelephonyPlmn:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubTelephonySpn:Ljava/lang/CharSequence;

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoPlusCallback;->onRefreshSubCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHtcInfoPlusCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHtcInfoPlusCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/HtcIfNewInfoPlusCallback;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubTelephonyPlmn:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubTelephonySpn:Ljava/lang/CharSequence;

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/HtcIfNewInfoPlusCallback;->onRefreshSubCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private handleSubSimExtraStateChange(IILjava/lang/String;)V
    .locals 4
    .parameter "provisioned"
    .parameter "icc_type"
    .parameter "operator"

    .prologue
    sget-boolean v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG_SIM_STATES:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSubSimExtraStateChange: provisioned = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "icc_type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "opeartor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubSimExtraStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubSimExtraStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/HtcIfSubSimExtraStateCallback;

    if-lez p1, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-interface {v1, v2, p2, p3}, Lcom/android/internal/policy/impl/HtcIfSubSimExtraStateCallback;->onSubSimExtraStateChanged(ZILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    return-void
.end method

.method private handleTimeUpdate()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onTimeChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static isBatteryLow(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z
    .locals 2
    .parameter "status"

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isBatteryUpdateInteresting(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z
    .locals 7
    .parameter "old"
    .parameter "current"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isPluggedIn(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    .local v0, nowPluggedIn:Z
    invoke-static {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isPluggedIn(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v2

    .local v2, wasPluggedIn:Z
    if-ne v2, v3, :cond_1

    if-ne v0, v3, :cond_1

    iget v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->status:I

    iget v6, p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->status:I

    if-eq v5, v6, :cond_1

    move v1, v3

    .local v1, stateChangedWhilePluggedIn:Z
    :goto_0
    if-ne v2, v0, :cond_0

    if-eqz v1, :cond_2

    :cond_0
    :goto_1
    return v3

    .end local v1           #stateChangedWhilePluggedIn:Z
    :cond_1
    move v1, v4

    goto :goto_0

    .restart local v1       #stateChangedWhilePluggedIn:Z
    :cond_2
    if-eqz v0, :cond_3

    iget v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iget v6, p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    if-ne v5, v6, :cond_0

    :cond_3
    if-nez v0, :cond_5

    iget v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    const/16 v6, 0xf

    if-ge v5, v6, :cond_4

    iget v5, p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iget v6, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    if-ne v5, v6, :cond_0

    :cond_4
    invoke-static {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBatteryLow(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget v5, p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iget v6, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    if-ne v5, v6, :cond_0

    :cond_5
    move v3, v4

    goto :goto_1
.end method

.method public static isDualPhoneDevice()Z
    .locals 1

    .prologue
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPluggedIn(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z
    .locals 3
    .parameter "status"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-static {}, Landroid/app/MiuiThemeHelper;->isScreenshotMode()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSubPhoneForDualPhone(I)Z
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_2

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x5

    if-eq v2, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public DualremoveCallback(Ljava/lang/Object;)V
    .locals 1
    .parameter "observer"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoPlusCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHtcInfoPlusCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHtcIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimExtraStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubSimExtraStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public checkDMLockState()V
    .locals 3

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDMLockState:I

    if-lez v0, :cond_0

    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkDMLockState , mDMLockState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDMLockState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x12b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public clearFailedAttempts()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedAttempts:I

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mAvailableTimeStamp:J

    return-void
.end method

.method public getAvailableTimeStamp()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mAvailableTimeStamp:J

    return-wide v0
.end method

.method public getBatteryLevel()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    iget v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    return v0
.end method

.method public getDeviceLock()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceLock:Z

    return v0
.end method

.method public getDeviceLockType()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .local v0, type:I
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCSLockState:Z

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    iget v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDMLockState:I

    if-lez v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    return v0
.end method

.method public getFailedAttempts()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedAttempts:I

    return v0
.end method

.method public getIccDetailStatus()[I
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mIccStatusInfo:[I

    return-object v0
.end method

.method public getIccDetailStatusExt(I)[I
    .locals 1
    .parameter "phoneType"

    .prologue
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mRUIMStatusInfo:[I

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMStatusInfo:[I

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSUBSIMStatusInfo:[I

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMStatusInfo:[I

    goto :goto_0
.end method

.method public getIccState()Lcom/android/internal/telephony/IccCard$State;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    return-object v0
.end method

.method public getKeyboardFly()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mKeyboardFlyHeight:I

    if-lez v3, :cond_0

    move v0, v1

    .local v0, fly:Z
    :goto_0
    iget v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mKeyboardFlyHeight:I

    if-lez v3, :cond_1

    :goto_1
    return v1

    .end local v0           #fly:Z
    :cond_0
    move v0, v2

    goto :goto_0

    .restart local v0       #fly:Z
    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public getKeyboardFlyHeight()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mKeyboardFlyHeight:I

    return v0
.end method

.method public getMaxBiometricUnlockAttemptsReached()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNetowrkServiceStatus()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mServiceStatus:I

    return v0
.end method

.method public getNetworkLockType()I
    .locals 1

    .prologue
    sget v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mNetworkLockType:I

    return v0
.end method

.method public getPasswordTimeout()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPasswordTimeout:Z

    return v0
.end method

.method public getPhoneState()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneState:I

    return v0
.end method

.method public getPinEnable()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDMPinEnable:Z

    return v0
.end method

.method public getShowing()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mShowing:Z

    return v0
.end method

.method public getSimState()Lcom/android/internal/telephony/IccCard$State;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    return-object v0
.end method

.method public getSimState(I)Lcom/android/internal/telephony/IccCard$State;
    .locals 1
    .parameter "phoneType"

    .prologue
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDualPhoneDevice()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0
.end method

.method public getSubNetowrkServiceStatus()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubServiceStatus:I

    return v0
.end method

.method public getSubSimState()Lcom/android/internal/telephony/IccCard$State;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubSimState:Lcom/android/internal/telephony/IccCard$State;

    return-object v0
.end method

.method public getSubTelephonyPlmn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubTelephonyPlmn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSubTelephonySpn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubTelephonySpn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTelephonyPlmn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTelephonySpn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getUimState()Lcom/android/internal/telephony/IccCard$State;
    .locals 1

    .prologue
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUimState:Lcom/android/internal/telephony/IccCard$State;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0
.end method

.method public getUnlockType()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnlockExtraType:I

    return v0
.end method

.method protected handleDevicePolicyManagerStateChanged()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onDevicePolicyManagerStateChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected handleDeviceProvisioned()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onDeviceProvisioned()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    :cond_1
    return-void
.end method

.method protected handlePhoneStateChanged(Ljava/lang/String;)V
    .locals 4
    .parameter "newState"

    .prologue
    sget-boolean v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG_SIM_STATES:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePhoneStateChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setPhoneState(I)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    iget v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneState:I

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onPhoneStateChanged(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    :cond_2
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setPhoneState(I)V

    goto :goto_0

    :cond_3
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setPhoneState(I)V

    goto :goto_0

    .restart local v0       #i:I
    :cond_4
    return-void
.end method

.method protected handleRingerModeChange(I)V
    .locals 2
    .parameter "mode"

    .prologue
    iput p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mRingMode:I

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onRingerModeChanged(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected handleUserChanged(I)V
    .locals 2
    .parameter "userId"

    .prologue
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onUserChanged(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isBypassSimPinEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBypassSimPinEnabled:Z

    return v0
.end method

.method public isClockVisible()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mClockVisible:Z

    return v0
.end method

.method public isDeviceCharged()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    iget v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    iget v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDevicePluggedIn()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isPluggedIn(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    return v0
.end method

.method public isDeviceProvisioned()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return v0
.end method

.method public isShowCallDeclinedAnimation()Z
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mNeedToShowAnimation:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isSimLocked()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStuckNetworkLock()Z
    .locals 2

    .prologue
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWaitFirstFrame()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mNeedToWaitFirstFrame:Z

    return v0
.end method

.method public registerHtcIccStateCallback(Lcom/android/internal/policy/impl/HtcIfNewIccStateCallback;)V
    .locals 4
    .parameter "callback"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHtcIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHtcIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "Object tried to add another SIM callback"

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Whoops"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerHtcInfoPlusCallback(Lcom/android/internal/policy/impl/HtcIfNewInfoPlusCallback;)V
    .locals 4
    .parameter "callback"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHtcInfoPlusCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHtcInfoPlusCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "Object tried to add another INFOPlus callback"

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Whoops"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerIccStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$IccStateCallback;)V
    .locals 4
    .parameter "callback"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "Object tried to add another SIM callback"

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Whoops"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method isSimPinSecure()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isSimLocked()Z

    move-result v0

    return v0
.end method

.method public registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V
    .locals 3
    .parameter "callback"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isPluggedIn(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    iget v2, v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    invoke-interface {p1, v0, v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onRefreshBatteryInfo(ZZI)V

    invoke-interface {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onTimeChanged()V

    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mRingMode:I

    invoke-interface {p1, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onRingerModeChanged(I)V

    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneState:I

    invoke-interface {p1, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onPhoneStateChanged(I)V

    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mServiceStatus:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    invoke-interface {p1, v0, v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onRefreshCarrierInfo(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onClockVisibilityChanged()V

    :cond_0
    return-void
.end method

.method public registerInfoPlusCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoPlusCallback;)V
    .locals 4
    .parameter "callback"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoPlusCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoPlusCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "Object tried to add another INFOPlus callback"

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Whoops"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerSimExtraStateCallback(Lcom/android/internal/policy/impl/HtcIfSimExtraStateCallback;)V
    .locals 4
    .parameter "callback"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimExtraStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimExtraStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "Object tried to add another SIM callback"

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Whoops"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    invoke-interface {p1, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V

    :cond_0
    return-void
.end method

.method public registerSubSimExtraStateCallback(Lcom/android/internal/policy/impl/HtcIfSubSimExtraStateCallback;)V
    .locals 4
    .parameter "callback"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubSimExtraStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubSimExtraStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "Object tried to add another Sub SIM callback"

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Whoops"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeCallback(Ljava/lang/Object;)V
    .locals 1
    .parameter "observer"

    .prologue
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDualPhoneDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DualremoveCallback(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimExtraStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public reportAvailableTimeStamp(J)V
    .locals 0
    .parameter "timeStamp"

    .prologue
    iput-wide p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mAvailableTimeStamp:J

    return-void
.end method

.method public reportBypassSimPinLock(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    sget-boolean v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG_SIM_STATES:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BypassSimPinLock , enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBypassSimPinEnabled:Z

    return-void
.end method

.method public reportClockVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mClockVisible:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x133

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public reportFailedAttempt()V
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedAttempts:I

    return-void
.end method

.method public reportFailedBiometricUnlockAttempt()V
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    return-void
.end method

.method public reportPinUnlocked(I)V
    .locals 1
    .parameter "phoneType"

    .prologue
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0
.end method

.method public reportSimAbsent()V
    .locals 5

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x130

    new-instance v3, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;

    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    invoke-direct {v3, v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;-><init>(Lcom/android/internal/telephony/IccCard$State;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public reportSimAbsent(I)V
    .locals 5
    .parameter "phoneType"

    .prologue
    sget-boolean v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG_SIM_STATES:Z

    if-eqz v2, :cond_0

    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportSimAbsent , phoneType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDualPhoneDevice()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0           #i:I
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isSubPhoneForDualPhone(I)Z

    move-result v1

    .local v1, isSubPhone:Z
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$IccStateCallback;

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    invoke-interface {v2, v3, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$IccStateCallback;->onIccStateChanged(Lcom/android/internal/telephony/IccCard$State;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0           #i:I
    .end local v1           #isSubPhone:Z
    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_1

    :cond_4
    const/4 v2, 0x5

    if-ne p1, v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_1

    .restart local v0       #i:I
    .restart local v1       #isSubPhone:Z
    :cond_5
    const/4 v0, 0x0

    :goto_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHtcIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHtcIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/HtcIfNewIccStateCallback;

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    invoke-interface {v2, v3, v1}, Lcom/android/internal/policy/impl/HtcIfNewIccStateCallback;->onIccStateChanged(Lcom/android/internal/telephony/IccCard$State;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v1           #isSubPhone:Z
    :cond_6
    return-void
.end method

.method public reportSimUnlocked()V
    .locals 3

    .prologue
    sget-boolean v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG_SIM_STATES:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "reportSimUnlocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDualPhoneDevice()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;-><init>(Lcom/android/internal/telephony/IccCard$State;)V

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleSimStateChange(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x12f

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method public reportSubSimUnlocked()V
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubSimState:Lcom/android/internal/telephony/IccCard$State;

    return-void
.end method

.method public reportUimPinUnlocked()V
    .locals 1

    .prologue
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUimState:Lcom/android/internal/telephony/IccCard$State;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0
.end method

.method public resetSimStateToDefault()V
    .locals 2

    .prologue
    sget-boolean v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG_SIM_STATES:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "resetSimStateToDefault"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubSimState:Lcom/android/internal/telephony/IccCard$State;

    return-void
.end method

.method public setKeyboardFly(I)V
    .locals 4
    .parameter "height"

    .prologue
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setKeyboardFly height:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x40a0018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .local v0, fly:I
    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mKeyboardFlyHeight:I

    .end local v0           #fly:I
    :goto_0
    return-void

    :cond_1
    if-lez p1, :cond_2

    iput p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mKeyboardFlyHeight:I

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mKeyboardFlyHeight:I

    goto :goto_0
.end method

.method public setKeyboardFly(Z)V
    .locals 1
    .parameter "bFly"

    .prologue
    const/4 v0, 0x0

    .local v0, height:I
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setKeyboardFly(I)V

    return-void
.end method

.method public setPasswordTimeout(Z)V
    .locals 0
    .parameter "timeout"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPasswordTimeout:Z

    return-void
.end method

.method public setPhoneState(I)V
    .locals 1
    .parameter "PhoneState"

    .prologue
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneState:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setShowCallDeclinedAnimation(Z)V
    .locals 1
    .parameter "bShow"

    .prologue
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mNeedToShowAnimation:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setShowing(Z)V
    .locals 3
    .parameter "show"

    .prologue
    sget-boolean v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG_SIM_STATES:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set keyguard showing to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mShowing:Z

    return-void
.end method

.method public setUnlockType(I)V
    .locals 0
    .parameter "type"

    .prologue
    iput p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnlockExtraType:I

    return-void
.end method

.method public setWaitFirstFrame(Z)V
    .locals 0
    .parameter "wait"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mNeedToWaitFirstFrame:Z

    return-void
.end method

.method public setSkipSimStateChange(Z)V
    .locals 0
    .parameter "skip"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSkipSimStateChange:Z

    return-void
.end method

.method public shouldShowBatteryInfo()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isPluggedIn(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBatteryLow(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Landroid/app/MiuiThemeHelper;->isScreenshotMode()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateIccDetailStatus(III)V
    .locals 3
    .parameter "phoneType"
    .parameter "pin1RetryCount"
    .parameter "puk1RetryCount"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mRUIMStatusInfo:[I

    aput p2, v0, v1

    sget-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mRUIMStatusInfo:[I

    aput p3, v0, v2

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMStatusInfo:[I

    aput p2, v0, v1

    sget-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMStatusInfo:[I

    aput p3, v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSUBSIMStatusInfo:[I

    aput p2, v0, v1

    sget-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSUBSIMStatusInfo:[I

    aput p3, v0, v2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMStatusInfo:[I

    aput p2, v0, v1

    sget-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMStatusInfo:[I

    aput p3, v0, v2

    goto :goto_0
.end method

.method public updateNetworkLockType(I)V
    .locals 0
    .parameter "type"

    .prologue
    sput p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mNetworkLockType:I

    return-void
.end method

.method public updateSimDetailStatus(II)V
    .locals 2
    .parameter "pin1RetryCount"
    .parameter "puk1RetryCount"

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mIccStatusInfo:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    sget-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mIccStatusInfo:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    return-void
.end method
