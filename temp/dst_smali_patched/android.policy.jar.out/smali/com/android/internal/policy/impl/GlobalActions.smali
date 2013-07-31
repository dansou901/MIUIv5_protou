.class Lcom/android/internal/policy/impl/GlobalActions;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/GlobalActions$CloseDialogReceiver;,
        Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;,
        Lcom/android/internal/policy/impl/GlobalActions$SilentModeToggleAction;,
        Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;,
        Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;,
        Lcom/android/internal/policy/impl/GlobalActions$Action;,
        Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    }
.end annotation


# static fields
.field private static final DIALOG_DISMISS_DELAY:I = 0x12c

.field private static IMS_REGISTRATION:Ljava/lang/String; = null

.field private static IMS_REG_STATUS:Ljava/lang/String; = null

.field private static final IPUtilesClasssName:Ljava/lang/String; = "com.movial.ipphone.IPUtils"

.field private static final KIDMODE_DIALOG_SHOW:Ljava/lang/String; = "kidmode_dg_show"

.field private static final KID_MODE_ACTIVITY_NAME:Ljava/lang/String; = "com.zoodles.kidmode.activity.LauncherActivity"

.field private static final KID_MODE_EXIT_APP_ACTIVITY:Ljava/lang/String; = "com.zoodles.kidmode.activity.kid.exit.ExitAppActivity"

.field private static final KID_MODE_PACKAGE_NAME:Ljava/lang/String; = "com.zoodles.kidmode"

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_NOTIFY:I = 0x3

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final MESSAGE_SHOW:I = 0x2

.field private static final SENDER:Ljava/lang/String; = "GlobalActionsMobileDataEnabler"

.field private static final SHOW_SILENT_TOGGLE:Z = true

.field private static final TAG:Ljava/lang/String; = "GlobalActions"

.field private static final VIBRATE_DURATION:I = 0x12c


# instance fields
.field private imsRegistered:Z

.field private mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

.field private mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mHasTelephony:Z

.field private mHasVibrator:Z

.field private mIWindowManager:Landroid/view/IWindowManager;

.field private mIsWaitingForEcmExit:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/GlobalActions$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardShowing:Z

.field private mKidModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

.field private mKidModeState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

.field private mMobileNetworkModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

.field private mMobileNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

.field private final mPhoneService:Lcom/android/internal/telephony/ITelephony;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private mSilentModeAction:Lcom/android/internal/policy/impl/GlobalActions$Action;

.field private mSimReady:Z

.field private mVibrationModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, ""

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions;->IMS_REGISTRATION:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions;->IMS_REG_STATUS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 10
    .parameter "context"
    .parameter "windowManagerFuncs"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDeviceProvisioned:Z

    sget-object v5, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v5, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKidModeState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v5, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mMobileNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSimReady:Z

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsWaitingForEcmExit:Z

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->imsRegistered:Z

    new-instance v5, Lcom/android/internal/policy/impl/GlobalActions$11;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/GlobalActions$11;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Lcom/android/internal/policy/impl/GlobalActions$12;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/GlobalActions$12;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v5, Lcom/android/internal/policy/impl/GlobalActions$13;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/GlobalActions$13;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Lcom/android/internal/policy/impl/GlobalActions$14;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v8}, Lcom/android/internal/policy/impl/GlobalActions$14;-><init>(Lcom/android/internal/policy/impl/GlobalActions;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    new-instance v5, Lcom/android/internal/policy/impl/GlobalActions$15;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/GlobalActions$15;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .local v2, filter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v5

    if-eqz v5, :cond_0

    :try_start_0
    const-string v5, "com.movial.ipphone.IPUtils"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v8, "IMS_REGISTRATION"

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/internal/policy/impl/GlobalActions;->IMS_REGISTRATION:Ljava/lang/String;

    const-string v5, "com.movial.ipphone.IPUtils"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v8, "IMS_REG_STATUS"

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/internal/policy/impl/GlobalActions;->IMS_REG_STATUS:Ljava/lang/String;

    sget-object v5, Lcom/android/internal/policy/impl/GlobalActions;->IMS_REGISTRATION:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/android/internal/policy/impl/GlobalActions;->IMS_REG_STATUS:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/android/internal/policy/impl/GlobalActions;->IMS_REGISTRATION:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .local v3, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v3, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "airplane_mode_on"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v8, v6, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v8, "vibrator"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    .local v4, vibrator:Landroid/os/Vibrator;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasVibrator:Z

    return-void

    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v3           #telephonyManager:Landroid/telephony/TelephonyManager;
    .end local v4           #vibrator:Landroid/os/Vibrator;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    .restart local v3       #telephonyManager:Landroid/telephony/TelephonyManager;
    .restart local v4       #vibrator:Landroid/os/Vibrator;
    :cond_1
    move v5, v7

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/GlobalActions;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlobalActions;->confirmKidMode(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/GlobalActions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/view/IWindowManager;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/GlobalActions;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mMobileNetworkModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions;->IMS_REGISTRATION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions;->IMS_REG_STATUS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->refreshSilentMode()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->handleShow()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/GlobalActions;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlobalActions;->enter_leave_KidMode(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/GlobalActions;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlobalActions;->changeAirplaneModeSystemSetting(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->imsRegistered:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/GlobalActions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->imsRegistered:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/telephony/ITelephony;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSimReady:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/GlobalActions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSimReady:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mMobileNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mMobileNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    return-object p1
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .locals 4
    .parameter "on"

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeAirplaneModeSystemSetting, set AirplaneMode to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_2

    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_1
    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :cond_0
    return-void

    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .restart local v0       #intent:Landroid/content/Intent;
    :cond_2
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_1
.end method

.method private confirmKidMode(Z)V
    .locals 19
    .parameter "on"

    .prologue
    const/4 v13, 0x0

    .local v13, show_kidmode_dialog:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "kidmode_dg_show"

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    if-lez v16, :cond_1

    const/4 v13, 0x1

    :goto_0
    sget-boolean v16, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v16, :cond_0

    const-string v16, "GlobalActions"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[KID] show_kidmode_dialog = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_2

    if-eqz v13, :cond_2

    const v10, 0x407002d

    .local v10, idTitle:I
    const v8, 0x4070030

    .local v8, idMessage:I
    const v7, 0x4070031

    .local v7, idDontShow:I
    const v9, 0x104000a

    .local v9, idPositive:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .local v11, inflater:Landroid/view/LayoutInflater;
    const v16, 0x4030009

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .local v12, layout:Landroid/view/View;
    const v16, 0x411000f

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .local v15, warning_text:Landroid/widget/TextView;
    invoke-virtual {v15, v8}, Landroid/widget/TextView;->setText(I)V

    const v16, 0x4110010

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/htc/widget/HtcCheckBox;

    .local v14, warning_check:Lcom/htc/widget/HtcCheckBox;
    const v16, 0x4110011

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .local v5, dont_show_text:Landroid/widget/TextView;
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$CloseDialogReceiver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Lcom/android/internal/policy/impl/GlobalActions$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .local v3, closer:Lcom/android/internal/policy/impl/GlobalActions$CloseDialogReceiver;
    new-instance v16, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v16

    new-instance v17, Lcom/android/internal/policy/impl/GlobalActions$16;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2, v14}, Lcom/android/internal/policy/impl/GlobalActions$16;-><init>(Lcom/android/internal/policy/impl/GlobalActions;ZLcom/htc/widget/HtcCheckBox;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v9, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    .local v4, dialog:Lcom/htc/widget/HtcAlertDialog;
    iput-object v4, v3, Lcom/android/internal/policy/impl/GlobalActions$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    const/16 v17, 0x7d9

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .end local v3           #closer:Lcom/android/internal/policy/impl/GlobalActions$CloseDialogReceiver;
    .end local v4           #dialog:Lcom/htc/widget/HtcAlertDialog;
    .end local v5           #dont_show_text:Landroid/widget/TextView;
    .end local v7           #idDontShow:I
    .end local v8           #idMessage:I
    .end local v9           #idPositive:I
    .end local v10           #idTitle:I
    .end local v11           #inflater:Landroid/view/LayoutInflater;
    .end local v12           #layout:Landroid/view/View;
    .end local v14           #warning_check:Lcom/htc/widget/HtcCheckBox;
    .end local v15           #warning_text:Landroid/widget/TextView;
    :goto_1
    return-void

    :cond_1
    const/4 v13, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v6

    .local v6, e:Ljava/lang/Exception;
    const-string v16, "GlobalActions"

    const-string v17, "[KID] Error getting KIDMODE_DIALOG_SHOW"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v13, 0x0

    goto/16 :goto_0

    .end local v6           #e:Ljava/lang/Exception;
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/GlobalActions;->enter_leave_KidMode(Z)V

    goto :goto_1
.end method

.method private createDialog()Lcom/htc/widget/HtcAlertDialog;
    .locals 24

    .prologue
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mHasVibrator:Z

    if-nez v3, :cond_2

    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$SilentModeToggleAction;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeToggleAction;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/GlobalActions$Action;

    :goto_0
    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$1;

    const v5, 0x4020029

    const v6, 0x4020029

    const v7, 0x104013e

    const v8, 0x104013f

    const v9, 0x1040140

    const/4 v10, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/internal/policy/impl/GlobalActions$1;-><init>(Lcom/android/internal/policy/impl/GlobalActions;IIIIIZ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/GlobalActions;->onAirplaneModeChanged()V

    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$2;

    const v5, 0x402003f

    const v6, 0x402003f

    const v7, 0x4070029

    const v8, 0x4070028

    const v9, 0x4070027

    const/4 v10, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/internal/policy/impl/GlobalActions$2;-><init>(Lcom/android/internal/policy/impl/GlobalActions;IIIIIZ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mVibrationModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$3;

    const v5, 0x402003d

    const v6, 0x402003d

    const v7, 0x407002a

    const v8, 0x407002c

    const v9, 0x407002b

    const/4 v10, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/internal/policy/impl/GlobalActions$3;-><init>(Lcom/android/internal/policy/impl/GlobalActions;IIIIIZ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mMobileNetworkModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "icon_launcher_kidmode"

    const-string v6, "drawable"

    const-string v7, "com.htc.framework"

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .local v5, kidModeIcon:I
    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$4;

    const v7, 0x407002d

    const v8, 0x407002e

    const v9, 0x407002f

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move v6, v5

    invoke-direct/range {v3 .. v10}, Lcom/android/internal/policy/impl/GlobalActions$4;-><init>(Lcom/android/internal/policy/impl/GlobalActions;IIIIIZ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mKidModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/GlobalActions;->isSense2Mode()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "powerOptions_power_off_status"

    const-string v6, "string"

    const-string v7, "com.htc.framework"

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    .local v17, powerOffStatus:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "powerOptions_restart"

    const-string v6, "string"

    const-string v7, "com.htc.framework"

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    .local v20, restartText:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "powerOptions_restart_status"

    const-string v6, "string"

    const-string v7, "com.htc.framework"

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    .local v19, restartStatus:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$5;

    const v6, 0x402003e

    const v7, 0x104013a

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v4, v0, v6, v7, v1}, Lcom/android/internal/policy/impl/GlobalActions$5;-><init>(Lcom/android/internal/policy/impl/GlobalActions;III)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/htc/profileflag/FeatureConfig;->isFeatureKidModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    const-string v3, "GlobalActions"

    const-string v4, "[KID] device supports KidMode feature"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/GlobalActions;->mKidModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$6;

    const v6, 0x4020044

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-direct {v4, v0, v6, v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$6;-><init>(Lcom/android/internal/policy/impl/GlobalActions;III)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v17           #powerOffStatus:I
    .end local v19           #restartStatus:I
    .end local v20           #restartText:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getUsers()Ljava/util/List;

    move-result-object v23

    .local v23, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_a

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .local v12, currentUser:Landroid/content/pm/UserInfo;
    :goto_2
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/UserInfo;

    .local v22, user:Landroid/content/pm/UserInfo;
    if-nez v12, :cond_6

    move-object/from16 v0, v22

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    if-nez v3, :cond_5

    const/16 v16, 0x1

    .local v16, isCurrentUser:Z
    :goto_4
    new-instance v21, Lcom/android/internal/policy/impl/GlobalActions$9;

    const v4, 0x108031d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v3, :cond_8

    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    :goto_5
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v16, :cond_9

    const-string v3, " \u2714"

    :goto_6
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/android/internal/policy/impl/GlobalActions$9;-><init>(Lcom/android/internal/policy/impl/GlobalActions;ILjava/lang/CharSequence;Landroid/content/pm/UserInfo;)V

    .local v21, switchToUser:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .end local v5           #kidModeIcon:I
    .end local v12           #currentUser:Landroid/content/pm/UserInfo;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v16           #isCurrentUser:Z
    .end local v21           #switchToUser:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
    .end local v22           #user:Landroid/content/pm/UserInfo;
    .end local v23           #users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, v4, v6, v7}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/GlobalActions$Action;

    goto/16 :goto_0

    .restart local v5       #kidModeIcon:I
    :cond_3
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x9

    if-ne v3, v4, :cond_4

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xd1

    if-ne v3, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$7;

    const v6, 0x402003d

    const v7, 0x104013a

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v6, v7}, Lcom/android/internal/policy/impl/GlobalActions$7;-><init>(Lcom/android/internal/policy/impl/GlobalActions;II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/GlobalActions$Action;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/GlobalActions;->mVibrationModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/GlobalActions;->mMobileNetworkModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$8;

    const v6, 0x402003d

    const v7, 0x104013a

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v6, v7}, Lcom/android/internal/policy/impl/GlobalActions$8;-><init>(Lcom/android/internal/policy/impl/GlobalActions;II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/GlobalActions$Action;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/GlobalActions;->mVibrationModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .restart local v23       #users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_0
    move-exception v18

    .local v18, re:Landroid/os/RemoteException;
    const/4 v12, 0x0

    .restart local v12       #currentUser:Landroid/content/pm/UserInfo;
    goto/16 :goto_2

    .end local v18           #re:Landroid/os/RemoteException;
    .restart local v14       #i$:Ljava/util/Iterator;
    .restart local v22       #user:Landroid/content/pm/UserInfo;
    :cond_5
    const/16 v16, 0x0

    goto/16 :goto_4

    :cond_6
    iget v3, v12, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, v22

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    if-ne v3, v4, :cond_7

    const/16 v16, 0x1

    goto/16 :goto_4

    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_4

    .restart local v16       #isCurrentUser:Z
    :cond_8
    const-string v3, "Primary"

    goto/16 :goto_5

    :cond_9
    const-string v3, ""

    goto/16 :goto_6

    .end local v12           #currentUser:Landroid/content/pm/UserInfo;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v16           #isCurrentUser:Z
    .end local v22           #user:Landroid/content/pm/UserInfo;
    :cond_a
    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;-><init>(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$1;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    new-instance v11, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v11, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v11, ab:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/GlobalActions;->isSense2Mode()Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "global_actions"

    const-string v6, "string"

    const-string v7, "android"

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .local v15, idTitle:I
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v11, v3, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v13

    .local v13, dialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {v13}, Lcom/htc/widget/HtcAlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {v13}, Lcom/htc/widget/HtcAlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setLongClickable(Z)V

    invoke-virtual {v13}, Lcom/htc/widget/HtcAlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$10;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/internal/policy/impl/GlobalActions$10;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    invoke-virtual {v13}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/GlobalActions;->isSense2Mode()Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/htc/widget/HtcAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_b
    return-object v13

    .end local v13           #dialog:Lcom/htc/widget/HtcAlertDialog;
    .end local v15           #idTitle:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "global_actions"

    const-string v6, "string"

    const-string v7, "android"

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .restart local v15       #idTitle:I
    goto :goto_7
.end method

.method private enter_leave_KidMode(Z)V
    .locals 6
    .parameter "enter"

    .prologue
    const/4 v1, 0x0

    .local v1, kid:Landroid/content/Intent;
    if-eqz p1, :cond_1

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #kid:Landroid/content/Intent;
    .local v2, kid:Landroid/content/Intent;
    :try_start_1
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.zoodles.kidmode"

    const-string v5, "com.zoodles.kidmode.activity.LauncherActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    const-string v3, "GlobalActions"

    const-string v4, "[KID] Starting KID_MODE_ACTIVITY"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-object v1, v2

    .end local v2           #kid:Landroid/content/Intent;
    .restart local v1       #kid:Landroid/content/Intent;
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    :goto_1
    const-string v3, "GlobalActions"

    const-string v4, "Error launching KID_MODE_ACTIVITY"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .end local v1           #kid:Landroid/content/Intent;
    .restart local v2       #kid:Landroid/content/Intent;
    :try_start_3
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.zoodles.kidmode"

    const-string v5, "com.zoodles.kidmode.activity.kid.exit.ExitAppActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_2

    const-string v3, "GlobalActions"

    const-string v4, "[KID] Starting KID_MODE_EXIT_APP_ACTIVIT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v1, v2

    .end local v2           #kid:Landroid/content/Intent;
    .restart local v1       #kid:Landroid/content/Intent;
    goto :goto_0

    :catch_1
    move-exception v0

    .restart local v0       #e:Ljava/lang/Exception;
    :goto_2
    const-string v3, "GlobalActions"

    const-string v4, "Error launching KID_MODE_EXIT_APP_ACTIVIT"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #kid:Landroid/content/Intent;
    .restart local v2       #kid:Landroid/content/Intent;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2           #kid:Landroid/content/Intent;
    .restart local v1       #kid:Landroid/content/Intent;
    goto :goto_2

    .end local v1           #kid:Landroid/content/Intent;
    .restart local v2       #kid:Landroid/content/Intent;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2           #kid:Landroid/content/Intent;
    .restart local v1       #kid:Landroid/content/Intent;
    goto :goto_1
.end method

.method private getWindowManager()Landroid/view/IWindowManager;
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIWindowManager:Landroid/view/IWindowManager;

    if-nez v1, :cond_0

    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIWindowManager:Landroid/view/IWindowManager;

    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIWindowManager:Landroid/view/IWindowManager;

    return-object v1
.end method

.method private handleShow()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->createDialog()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->prepareDialog()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private isSense2Mode()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, bRet:Z
    sget-object v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .local v1, version:F
    const v2, 0x3fcccccd

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private onAirplaneModeChanged()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .local v0, airplaneModeOn:Z
    :goto_1
    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_2
    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    goto :goto_0

    .end local v0           #airplaneModeOn:Z
    :cond_1
    move v0, v1

    goto :goto_1

    .restart local v0       #airplaneModeOn:Z
    :cond_2
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_2
.end method

.method private prepareDialog()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->refreshSilentMode()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->updateKidModeState()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    if-ne v3, v2, :cond_2

    .local v2, vibrationModeOn:Z
    :goto_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mVibrationModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    if-eqz v2, :cond_3

    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_1
    invoke-virtual {v4, v3}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v4, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    if-ne v3, v4, :cond_4

    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->TurningOff:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mMobileNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :cond_0
    :goto_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mMobileNetworkModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mMobileNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    :goto_3
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->isSense2Mode()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "global_actions"

    const-string v6, "string"

    const-string v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog;->setTitle(I)V

    :goto_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->isSense2Mode()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->updateDialogSelector()V

    :cond_1
    return-void

    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v2           #vibrationModeOn:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .restart local v2       #vibrationModeOn:Z
    :cond_3
    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mMobileNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v4, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mMobileNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v4, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    if-ne v3, v4, :cond_0

    :cond_5
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    .local v1, mobileNetworkModeOn:Z
    if-eqz v1, :cond_6

    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_5
    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mMobileNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_2

    :cond_6
    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_5

    .end local v1           #mobileNetworkModeOn:Z
    :cond_7
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    goto :goto_3

    .restart local v0       #filter:Landroid/content/IntentFilter;
    :cond_8
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "global_actions"

    const-string v6, "string"

    const-string v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog;->setTitle(I)V

    goto :goto_4
.end method

.method private refreshSilentMode()V
    .locals 3

    .prologue
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasVibrator:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .local v0, silentModeOn:Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/GlobalActions$Action;

    check-cast v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    .end local v0           #silentModeOn:Z
    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0       #silentModeOn:Z
    :cond_2
    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_1
.end method

.method private updateDialogSelector()V
    .locals 10

    .prologue
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v6, "GlobalActions"

    const-string v7, "updateDialogSelector()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .local v0, am:Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .local v1, config:Landroid/content/res/Configuration;
    iget-object v3, v1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .local v3, skinPackage:Ljava/lang/String;
    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v6, :cond_2

    const-string v6, "GlobalActions"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateDialogSelector(), skinPackage == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .local v5, version:F
    const/high16 v6, 0x4080

    cmpg-float v6, v5, v6

    if-gez v6, :cond_0

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "default"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .local v2, res:Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v6

    const-string v7, "list_selector_background"

    const-string v8, "drawable"

    const-string v9, "android"

    invoke-virtual {v2, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setSelector(I)V

    goto :goto_0

    .end local v1           #config:Landroid/content/res/Configuration;
    .end local v2           #res:Landroid/content/res/Resources;
    .end local v3           #skinPackage:Ljava/lang/String;
    .end local v5           #version:F
    :catch_0
    move-exception v6

    goto :goto_0

    .restart local v1       #config:Landroid/content/res/Configuration;
    .restart local v3       #skinPackage:Ljava/lang/String;
    .restart local v5       #version:F
    :cond_4
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    .local v4, themeres:Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v6

    const-string v7, "list_selector_background"

    const-string v8, "drawable"

    invoke-virtual {v4, v7, v8, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method private updateKidModeState()V
    .locals 5

    .prologue
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v3, "uimode"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .local v0, uiModeManager:Landroid/app/UiModeManager;
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v1

    .local v1, uiModeType:I
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_0

    const-string v2, "GlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[KID] updateKidModeState(), uiModeType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v2, 0xe

    if-ne v1, v2, :cond_1

    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKidModeState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKidModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKidModeState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    return-void

    :cond_1
    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKidModeState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/GlobalActions$Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/GlobalActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/GlobalActions$Action;->onPress()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    packed-switch p2, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_0
    .end packed-switch
.end method

.method public showDialog(ZZ)V
    .locals 2
    .parameter "keyguardShowing"
    .parameter "isDeviceProvisioned"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDeviceProvisioned:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->handleShow()V

    goto :goto_0
.end method
