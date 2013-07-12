.class final Lcom/android/server/HtcAutoBrightnessCtrl;
.super Ljava/lang/Object;
.source "HtcAutoBrightnessCtrl.java"


# instance fields
.field private final ACTION_AUDIO_STREAMING_MODE_CHANGE:Ljava/lang/String;

.field private final ACTION_BRIGHTER_ONLY_OFF:Ljava/lang/String;

.field private final ACTION_BRIGHTER_ONLY_ON:Ljava/lang/String;

.field private final ACTION_CAR_MODE_CHANGE:Ljava/lang/String;

.field private final ACTION_PREFIX:Ljava/lang/String;

.field private final AUDIO_STREAMING_TIMEOUT:I

.field private final AUTOMOTIVE_CARMODE_DISABLE:I

.field private final AUTOMOTIVE_CARMODE_ENABLE:I

.field private final BRIGHTER_ONLY_INITIAL_BRIGHTNESS:I

.field private final BRIGHTER_ONLY_TIMEOUT:I

.field private final CAR_MODE_CHANGE_MAX_SENSOR_LEVEL:I

.field private final CAR_MODE_CHANGE_MIN_SENSOR_LEVEL:I

.field private final CAR_MODE_INITIAL_BRIGHTNESS:I

.field private final DEBUG_ON:Z

.field private final DEFAULT_APP_ENTERING_TRANSITION_DELAY:I

.field private final DEFAULT_APP_LEAVING_TRANSITION_DELAY:I

.field private final DEFAULT_TRANSITION_DELAY:I

.field private final KEY_AUDIO_STREAMING_MODE:Ljava/lang/String;

.field private final KEY_AUDIO_STREAMING_UID:Ljava/lang/String;

.field private final KEY_BACKLIGHT_DELAY:Ljava/lang/String;

.field private final KEY_CAR_MODE:Ljava/lang/String;

.field private final KEY_ENTERING_SCREEN_BRIGHTNESS:Ljava/lang/String;

.field private final MASTER_ENABLE:Z

.field private final TAG:Ljava/lang/String;

.field private final VALID_MAX_TRANSITION_DELAY:I

.field private final VALID_MIN_TRANSITION_DELAY:I

.field private mAudioStreamingMode:Z

.field private final mAudioStreamingModeReceiver:Landroid/content/BroadcastReceiver;

.field private final mAudioStreamingTimeoutTask:Ljava/lang/Runnable;

.field private mAudioStreamingUid:I

.field private mBatteryLevel:I

.field private final mBrighterOnlyReceiver:Landroid/content/BroadcastReceiver;

.field private final mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;

.field private final mCarModeReceiver:Landroid/content/BroadcastReceiver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mEnableBrighterOnly:Z

.field private mEnableCarMode:Z

.field private mEnableOffHookMode:Z

.field private mEnteringLcdValue:I

.field private mHandler:Landroid/os/Handler;

.field private mIWindowManager:Landroid/view/IWindowManager;

.field private mLightSensorLevel:I

.field private mMaxBacklightValue:I

.field private mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

.field private mPhoneState:Ljava/lang/String;

.field private mPowerSaverMode:Z

.field private mScreenState:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/android/server/PowerManagerService$PMSInternalAPI;)V
    .locals 8
    .parameter "context"
    .parameter "pmsInternalAPI"

    .prologue
    const/16 v7, 0x14

    const/16 v6, 0x10

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 109
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v2, "HtcAutoBrightnessCtrl"

    iput-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->TAG:Ljava/lang/String;

    .line 32
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    .line 35
    iput-boolean v5, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->MASTER_ENABLE:Z

    .line 38
    const-string v2, "com.android.server.HtcAutoBrightnessCtrl.action."

    iput-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->ACTION_PREFIX:Ljava/lang/String;

    .line 40
    const-string v2, "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_ON"

    iput-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->ACTION_BRIGHTER_ONLY_ON:Ljava/lang/String;

    .line 42
    const-string v2, "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_OFF"

    iput-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->ACTION_BRIGHTER_ONLY_OFF:Ljava/lang/String;

    .line 46
    const-string v2, "entering.screen.brightness"

    iput-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->KEY_ENTERING_SCREEN_BRIGHTNESS:Ljava/lang/String;

    .line 48
    const-string v2, "backlight.delay"

    iput-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->KEY_BACKLIGHT_DELAY:Ljava/lang/String;

    .line 51
    const v2, 0xea60

    iput v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->BRIGHTER_ONLY_TIMEOUT:I

    .line 53
    const/16 v2, 0x7f

    iput v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->BRIGHTER_ONLY_INITIAL_BRIGHTNESS:I

    .line 55
    iput v6, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEFAULT_TRANSITION_DELAY:I

    .line 57
    iput v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEFAULT_APP_ENTERING_TRANSITION_DELAY:I

    .line 58
    const/16 v2, 0x28

    iput v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEFAULT_APP_LEAVING_TRANSITION_DELAY:I

    .line 60
    const/16 v2, 0xfa

    iput v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->VALID_MAX_TRANSITION_DELAY:I

    .line 61
    iput v6, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->VALID_MIN_TRANSITION_DELAY:I

    .line 64
    const-string v2, "com.htc.AutoMotive.Service.ModeChange"

    iput-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->ACTION_CAR_MODE_CHANGE:Ljava/lang/String;

    .line 65
    const-string v2, "AutoMotive_Current_Mode"

    iput-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->KEY_CAR_MODE:Ljava/lang/String;

    .line 66
    iput v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->AUTOMOTIVE_CARMODE_ENABLE:I

    .line 67
    iput v5, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->AUTOMOTIVE_CARMODE_DISABLE:I

    .line 68
    const/16 v2, 0x1e

    iput v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->CAR_MODE_INITIAL_BRIGHTNESS:I

    .line 69
    iput v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->CAR_MODE_CHANGE_MIN_SENSOR_LEVEL:I

    .line 70
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->CAR_MODE_CHANGE_MAX_SENSOR_LEVEL:I

    .line 74
    const-string v2, "com.htc.Audio.Streaming.ModeChange"

    iput-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->ACTION_AUDIO_STREAMING_MODE_CHANGE:Ljava/lang/String;

    .line 75
    const-string v2, "audio_streaming_status"

    iput-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->KEY_AUDIO_STREAMING_MODE:Ljava/lang/String;

    .line 76
    const-string v2, "uid"

    iput-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->KEY_AUDIO_STREAMING_UID:Ljava/lang/String;

    .line 86
    iput-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mScreenState:Z

    .line 88
    iput-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    .line 89
    const/16 v2, 0x7f

    iput v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    .line 91
    iput-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    .line 92
    iput v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mMaxBacklightValue:I

    .line 94
    iput-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    .line 95
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPhoneState:Ljava/lang/String;

    .line 96
    const/16 v2, 0x64

    iput v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBatteryLevel:I

    .line 99
    iput-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableCarMode:Z

    .line 100
    iput v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mLightSensorLevel:I

    .line 104
    const v2, 0xea60

    iput v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->AUDIO_STREAMING_TIMEOUT:I

    .line 105
    iput-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    .line 106
    iput v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mAudioStreamingUid:I

    .line 553
    new-instance v2, Lcom/android/server/HtcAutoBrightnessCtrl$1;

    invoke-direct {v2, p0}, Lcom/android/server/HtcAutoBrightnessCtrl$1;-><init>(Lcom/android/server/HtcAutoBrightnessCtrl;)V

    iput-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mCarModeReceiver:Landroid/content/BroadcastReceiver;

    .line 624
    new-instance v2, Lcom/android/server/HtcAutoBrightnessCtrl$2;

    invoke-direct {v2, p0}, Lcom/android/server/HtcAutoBrightnessCtrl$2;-><init>(Lcom/android/server/HtcAutoBrightnessCtrl;)V

    iput-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mAudioStreamingModeReceiver:Landroid/content/BroadcastReceiver;

    .line 643
    new-instance v2, Lcom/android/server/HtcAutoBrightnessCtrl$3;

    invoke-direct {v2, p0}, Lcom/android/server/HtcAutoBrightnessCtrl$3;-><init>(Lcom/android/server/HtcAutoBrightnessCtrl;)V

    iput-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBrighterOnlyReceiver:Landroid/content/BroadcastReceiver;

    .line 1073
    new-instance v2, Lcom/android/server/HtcAutoBrightnessCtrl$4;

    invoke-direct {v2, p0}, Lcom/android/server/HtcAutoBrightnessCtrl$4;-><init>(Lcom/android/server/HtcAutoBrightnessCtrl;)V

    iput-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mAudioStreamingTimeoutTask:Ljava/lang/Runnable;

    .line 1085
    new-instance v2, Lcom/android/server/HtcAutoBrightnessCtrl$5;

    invoke-direct {v2, p0}, Lcom/android/server/HtcAutoBrightnessCtrl$5;-><init>(Lcom/android/server/HtcAutoBrightnessCtrl;)V

    iput-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;

    .line 110
    iput-object p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    .line 112
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    .line 113
    const-string v2, "HtcAutoBrightnessCtrl"

    const-string v3, "Constructor: MASTER_ENABLE=true"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    .line 120
    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mContentResolver:Landroid/content/ContentResolver;

    .line 121
    iput-object p2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    .line 123
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 124
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string v2, "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    const-string v2, "com.android.server.htcpowersaver.action.ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-string v2, "com.android.server.htcpowersaver.action.OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x4a

    if-ne v2, v3, :cond_1

    .line 131
    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    :cond_1
    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBrighterOnlyReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "android.permission.DEVICE_POWER"

    iget-object v5, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 144
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 145
    .local v1, filterAudio:Landroid/content/IntentFilter;
    const-string v2, "com.htc.Audio.Streaming.ModeChange"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mAudioStreamingModeReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/HtcAutoBrightnessCtrl;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/server/HtcAutoBrightnessCtrl;->checkCarMode(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/HtcAutoBrightnessCtrl;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/server/HtcAutoBrightnessCtrl;->checkAudioStreamingMode(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/HtcAutoBrightnessCtrl;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/server/HtcAutoBrightnessCtrl;->getBrighterOnlyLcdValue(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/HtcAutoBrightnessCtrl;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/server/HtcAutoBrightnessCtrl;->setBacklight(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/HtcAutoBrightnessCtrl;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/server/HtcAutoBrightnessCtrl;->reset(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/HtcAutoBrightnessCtrl;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/server/HtcAutoBrightnessCtrl;->setPowerSaverMode(Z)V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/server/HtcAutoBrightnessCtrl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPhoneState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/server/HtcAutoBrightnessCtrl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->checkOffHookMode()V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/server/HtcAutoBrightnessCtrl;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/HtcAutoBrightnessCtrl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->resetAudioStreamingMode()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mScreenState:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/HtcAutoBrightnessCtrl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/HtcAutoBrightnessCtrl;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/HtcAutoBrightnessCtrl;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/HtcAutoBrightnessCtrl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/HtcAutoBrightnessCtrl;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/HtcAutoBrightnessCtrl;)Lcom/android/server/PowerManagerService$PMSInternalAPI;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    return-object v0
.end method

.method private checkAudioStreamingMode(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 858
    const-string v4, "audio_streaming_status"

    invoke-virtual {p1, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 859
    .local v0, audioStreamingValue:Z
    iget-object v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v4}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->getCurrentBrightness()I

    move-result v1

    .line 860
    .local v1, curLcdValue:I
    iget-object v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v4}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->getEndBrightness()I

    move-result v2

    .line 861
    .local v2, endLcdValue:I
    const/4 v3, -0x1

    .line 863
    .local v3, newLcdValue:I
    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v4, :cond_0

    .line 864
    const-string v4, "HtcAutoBrightnessCtrl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkAudioStreamingMode : , audioStreamingValue="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", AudioStreaming mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Car mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableCarMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Camera mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", OffHook mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Screen State="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mScreenState:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", curLcdValue="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", endLcdValue="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :cond_0
    if-ne v0, v9, :cond_4

    .line 877
    const-string v4, "uid"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mAudioStreamingUid:I

    .line 879
    iget v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mAudioStreamingUid:I

    if-gez v4, :cond_2

    .line 881
    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v4, :cond_1

    .line 882
    const-string v4, "HtcAutoBrightnessCtrl"

    const-string v5, "uid < 0"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    :cond_1
    :goto_0
    return-void

    .line 888
    :cond_2
    iget-object v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mAudioStreamingTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 889
    iget-object v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mAudioStreamingTimeoutTask:Ljava/lang/Runnable;

    const-wide/32 v6, 0xea60

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 891
    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    if-nez v4, :cond_1

    .line 895
    iput-boolean v9, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    .line 897
    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mScreenState:Z

    if-eqz v4, :cond_1

    .line 902
    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableCarMode:Z

    if-nez v4, :cond_1

    .line 906
    iget-object v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v4}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->getCurrentBrightness()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/HtcAutoBrightnessCtrl;->getAudioStreamingModeLcdValue(I)I

    move-result v3

    .line 940
    :cond_3
    :goto_1
    if-lez v3, :cond_1

    .line 942
    invoke-direct {p0, v3, v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->setBacklight(II)V

    goto :goto_0

    .line 910
    :cond_4
    iget-object v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mAudioStreamingTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 911
    iput v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mAudioStreamingUid:I

    .line 913
    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    if-eqz v4, :cond_1

    .line 917
    iput-boolean v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    .line 919
    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mScreenState:Z

    if-eqz v4, :cond_1

    .line 924
    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableCarMode:Z

    if-nez v4, :cond_1

    .line 928
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 929
    iget-object v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    if-eqz v4, :cond_3

    .line 930
    iget-object v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v4, v7}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->forceLightSensorUpdate(I)V

    goto :goto_1

    .line 932
    :cond_5
    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eqz v4, :cond_6

    .line 933
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getManualBrightness()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/HtcAutoBrightnessCtrl;->getPowerSaverLcdValueInManual(I)I

    move-result v3

    goto :goto_1

    .line 935
    :cond_6
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getManualBrightness()I

    move-result v3

    goto :goto_1
.end method

.method private checkCarMode(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v7, 0x10

    .line 765
    const-string v4, "AutoMotive_Current_Mode"

    invoke-virtual {p1, v4, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 766
    .local v0, carModeValue:I
    iget-object v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v4}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->getCurrentBrightness()I

    move-result v1

    .line 767
    .local v1, curLcdValue:I
    iget-object v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v4}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->getEndBrightness()I

    move-result v2

    .line 769
    .local v2, endLcdValue:I
    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v4, :cond_0

    .line 770
    const-string v4, "HtcAutoBrightnessCtrl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkCarMode : , carModeValue="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Car mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableCarMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Camera mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", OffHook mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Screen State="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mScreenState:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Light Sensor Level="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mLightSensorLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", curLcdValue="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", endLcdValue="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :cond_0
    if-nez v0, :cond_5

    .line 783
    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableCarMode:Z

    if-eqz v4, :cond_2

    .line 853
    :cond_1
    :goto_0
    return-void

    .line 787
    :cond_2
    iput-boolean v9, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableCarMode:Z

    .line 789
    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mScreenState:Z

    if-eqz v4, :cond_1

    .line 794
    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-nez v4, :cond_1

    .line 798
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 799
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->inCarModeLightSensorRange()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 800
    const/16 v4, 0x1e

    invoke-direct {p0, v4, v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->setBacklight(II)V

    goto :goto_0

    .line 802
    :cond_3
    iget-object v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    if-eqz v4, :cond_1

    .line 803
    iget-object v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v4, v7}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->forceLightSensorUpdate(I)V

    goto :goto_0

    .line 807
    :cond_4
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getManualBrightness()I

    move-result v4

    invoke-direct {p0, v4, v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->setBacklight(II)V

    goto :goto_0

    .line 810
    :cond_5
    if-ne v0, v9, :cond_1

    .line 812
    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableCarMode:Z

    if-eqz v4, :cond_1

    .line 816
    iput-boolean v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableCarMode:Z

    .line 818
    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mScreenState:Z

    if-eqz v4, :cond_1

    .line 823
    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-nez v4, :cond_1

    .line 827
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 828
    iget-object v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    if-eqz v4, :cond_1

    .line 829
    iget-object v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v4, v7}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->forceLightSensorUpdate(I)V

    goto :goto_0

    .line 831
    :cond_6
    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    if-eqz v4, :cond_7

    .line 832
    const/4 v3, -0x1

    .line 833
    .local v3, newLcdValue:I
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getManualBrightness()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/HtcAutoBrightnessCtrl;->getAudioStreamingModeLcdValueInManual(I)I

    move-result v3

    .line 835
    if-lez v3, :cond_1

    .line 837
    invoke-direct {p0, v3, v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->setBacklight(II)V

    goto :goto_0

    .line 840
    .end local v3           #newLcdValue:I
    :cond_7
    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eqz v4, :cond_1

    .line 841
    const/4 v3, -0x1

    .line 842
    .restart local v3       #newLcdValue:I
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getManualBrightness()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/HtcAutoBrightnessCtrl;->getPowerSaverLcdValueInManual(I)I

    move-result v3

    .line 844
    if-lez v3, :cond_1

    .line 846
    invoke-direct {p0, v3, v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->setBacklight(II)V

    goto :goto_0
.end method

.method private checkOffHookMode()V
    .locals 9

    .prologue
    const/16 v8, 0x7f

    const/16 v7, 0x10

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 1040
    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPhoneState:Ljava/lang/String;

    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1041
    .local v1, IS_OFF_HOOK:Z
    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->getCurrentBrightness()I

    move-result v0

    .line 1043
    .local v0, CURRENT_LCD_VALUE:I
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    .line 1044
    const-string v2, "HtcAutoBrightnessCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkOffHookMode:, mPhoneState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPhoneState:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mBatteryLevel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBatteryLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mOffHookMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mBrighterOnly="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", CUR_LCD_VALUE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    :cond_0
    if-eqz v1, :cond_3

    iget v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBatteryLevel:I

    if-gt v2, v6, :cond_3

    .line 1053
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-eqz v2, :cond_1

    .line 1054
    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->cancelAnimation()V

    .line 1055
    iput-boolean v5, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    .line 1056
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    .line 1057
    const-string v2, "HtcAutoBrightnessCtrl"

    const-string v3, "checkOffHookMode: Disable mEnableBrighterOnly mode."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    .line 1063
    if-le v0, v8, :cond_2

    .line 1064
    invoke-direct {p0, v8, v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->setBacklight(II)V

    .line 1070
    :cond_2
    :goto_0
    return-void

    .line 1066
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_4

    iget v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBatteryLevel:I

    if-le v2, v6, :cond_2

    .line 1067
    :cond_4
    iput-boolean v5, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    .line 1068
    invoke-direct {p0, v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->reset(I)V

    goto :goto_0
.end method

.method private checkPlayAudioStreamingUid()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 948
    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v4, :cond_0

    .line 949
    const-string v4, "HtcAutoBrightnessCtrl"

    const-string v6, "checkPlayAudioStreamingUid"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 954
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 956
    .local v2, infoList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v2, :cond_1

    move v4, v5

    .line 980
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v2           #infoList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :goto_0
    return v4

    .line 960
    .restart local v0       #am:Landroid/app/ActivityManager;
    .restart local v2       #infoList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 962
    .local v3, size:I
    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v4, :cond_2

    .line 963
    const-string v4, "HtcAutoBrightnessCtrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const-string v4, "HtcAutoBrightnessCtrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAudioStreamingUid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mAudioStreamingUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_5

    .line 968
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    iget v6, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mAudioStreamingUid:I

    if-ne v4, v6, :cond_4

    .line 969
    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v4, :cond_3

    .line 970
    const-string v4, "HtcAutoBrightnessCtrl"

    const-string v6, "This Uid is running"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 972
    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    .line 967
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 976
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #i:I
    .end local v2           #infoList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v3           #size:I
    :catch_0
    move-exception v4

    :cond_5
    move v4, v5

    .line 980
    goto :goto_0
.end method

.method private closeAudioStreamingMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 985
    const/4 v0, -0x1

    .line 987
    .local v0, newLcdValue:I
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 988
    const-string v1, "HtcAutoBrightnessCtrl"

    const-string v2, "closeAudioStreamingMode"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    if-nez v1, :cond_2

    .line 1021
    :cond_1
    :goto_0
    return-void

    .line 995
    :cond_2
    iput-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    .line 997
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mScreenState:Z

    if-eqz v1, :cond_1

    .line 1002
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableCarMode:Z

    if-nez v1, :cond_1

    .line 1006
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1007
    iget-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    if-eqz v1, :cond_3

    .line 1008
    iget-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->forceLightSensorUpdate(I)V

    .line 1016
    :cond_3
    :goto_1
    if-lez v0, :cond_1

    .line 1018
    invoke-direct {p0, v0, v3}, Lcom/android/server/HtcAutoBrightnessCtrl;->setBacklight(II)V

    goto :goto_0

    .line 1010
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eqz v1, :cond_5

    .line 1011
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getManualBrightness()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/HtcAutoBrightnessCtrl;->getPowerSaverLcdValueInManual(I)I

    move-result v0

    goto :goto_1

    .line 1013
    :cond_5
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getManualBrightness()I

    move-result v0

    goto :goto_1
.end method

.method private getAudioStreamingModeLcdValue(I)I
    .locals 2
    .parameter "lcdValue"

    .prologue
    .line 574
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v0

    .line 576
    .local v0, AUTO_BRIGHTNESS_MODE:Z
    if-eqz v0, :cond_0

    .line 577
    invoke-direct {p0, p1}, Lcom/android/server/HtcAutoBrightnessCtrl;->getAudioStreamingModeLcdValueInAuto(I)I

    move-result v1

    .line 579
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/HtcAutoBrightnessCtrl;->getAudioStreamingModeLcdValueInManual(I)I

    move-result v1

    goto :goto_0
.end method

.method private getAudioStreamingModeLcdValueInAuto(I)I
    .locals 4
    .parameter "lcdValue"

    .prologue
    .line 605
    move v0, p1

    .line 607
    .local v0, newLcdValue:I
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-nez v1, :cond_1

    .line 608
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getMaxBacklightValue()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 609
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getMaxBacklightValue()I

    move-result v0

    .line 612
    :cond_0
    mul-int/lit8 v0, v0, 0x1

    .line 614
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    .line 615
    const-string v1, "HtcAutoBrightnessCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAudioStreaming: lcdValue("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getMaxBacklightValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_1
    return v0
.end method

.method private getAudioStreamingModeLcdValueInManual(I)I
    .locals 5
    .parameter "lcdValue"

    .prologue
    .line 585
    move v0, p1

    .line 587
    .local v0, newLcdValue:I
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    if-eqz v2, :cond_0

    .line 588
    int-to-float v2, v0

    const/high16 v3, 0x437f

    div-float v1, v2, v3

    .line 589
    .local v1, ratio:F
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getMaxBacklightValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 591
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    .line 592
    const-string v2, "HtcAutoBrightnessCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAudioStreaming: ratio="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", lcdValue("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getMaxBacklightValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    .end local v1           #ratio:F
    :cond_0
    return v0
.end method

.method private getAutoBrightnessEnabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 1172
    const/4 v0, 0x0

    .line 1174
    .local v0, autoBrightnessMode:I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "screen_brightness_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1178
    :goto_0
    if-ne v0, v2, :cond_0

    :goto_1
    return v2

    .line 1175
    :catch_0
    move-exception v1

    .line 1176
    .local v1, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "HtcAutoBrightnessCtrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAutoBrightnessEnabled: [SettingNotFoundException]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1178
    .end local v1           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getBrighterOnlyLcdValue(I)I
    .locals 4
    .parameter "lcdValue"

    .prologue
    .line 463
    move v0, p1

    .line 465
    .local v0, newLcdValue:I
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-eqz v1, :cond_1

    .line 467
    iget v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    .line 469
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    .line 470
    const-string v1, "HtcAutoBrightnessCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBrighterOnly:, mEnteringLcdValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", lcdValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_1
    return v0
.end method

.method private getCarModeLcdValue(I)I
    .locals 4
    .parameter "lcdValue"

    .prologue
    .line 531
    move v0, p1

    .line 533
    .local v0, newLcdValue:I
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableCarMode:Z

    if-eqz v1, :cond_1

    .line 535
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->inCarModeLightSensorRange()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 537
    const/16 v0, 0x1e

    .line 540
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    .line 541
    const-string v1, "HtcAutoBrightnessCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCarModeLcdValue: mLightSensorLevel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mLightSensorLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", lcdValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_1
    return v0
.end method

.method private getIWindowManager()Landroid/view/IWindowManager;
    .locals 2

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mIWindowManager:Landroid/view/IWindowManager;

    if-nez v0, :cond_0

    .line 1235
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mIWindowManager:Landroid/view/IWindowManager;

    .line 1236
    iget-object v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mIWindowManager:Landroid/view/IWindowManager;

    if-nez v0, :cond_0

    .line 1237
    const-string v0, "HtcAutoBrightnessCtrl"

    const-string v1, "getIWindowManager: Could not get IWindowManager."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    const/4 v0, 0x0

    .line 1241
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mIWindowManager:Landroid/view/IWindowManager;

    goto :goto_0
.end method

.method private getManualBrightness()I
    .locals 5

    .prologue
    .line 1182
    const/16 v0, 0x7f

    .line 1184
    .local v0, currentLcdValue:I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1188
    :goto_0
    return v0

    .line 1185
    :catch_0
    move-exception v1

    .line 1186
    .local v1, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "HtcAutoBrightnessCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getManualBrightness: [SettingNotFoundException]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getMaxBacklightValue()I
    .locals 5

    .prologue
    .line 1205
    :try_start_0
    iget v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mMaxBacklightValue:I

    const/16 v4, 0x14

    if-le v3, v4, :cond_0

    .line 1206
    iget v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mMaxBacklightValue:I

    .line 1216
    :goto_0
    return v3

    .line 1209
    :cond_0
    iget-object v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1210
    .local v2, resources:Landroid/content/res/Resources;
    const v3, 0x1070028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 1211
    .local v1, mLcdBacklightValues:[I
    const/4 v3, 0x4

    aget v3, v1, v3

    iput v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mMaxBacklightValue:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1216
    .end local v1           #mLcdBacklightValues:[I
    .end local v2           #resources:Landroid/content/res/Resources;
    :goto_1
    iget v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mMaxBacklightValue:I

    goto :goto_0

    .line 1212
    :catch_0
    move-exception v0

    .line 1213
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "HtcAutoBrightnessCtrl"

    const-string v4, "getMaxBacklightValue: reset mMaxBacklightValue"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    const/16 v3, 0x78

    iput v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mMaxBacklightValue:I

    goto :goto_1
.end method

.method private getOffHookLcdValue(I)I
    .locals 2
    .parameter "lcdValue"

    .prologue
    .line 481
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v0

    .line 483
    .local v0, AUTO_BRIGHTNESS_MODE:Z
    if-eqz v0, :cond_0

    .line 484
    invoke-direct {p0, p1}, Lcom/android/server/HtcAutoBrightnessCtrl;->getOffHookLcdValueInAuto(I)I

    move-result v1

    .line 486
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/HtcAutoBrightnessCtrl;->getOffHookLcdValueInManual(I)I

    move-result v1

    goto :goto_0
.end method

.method private getOffHookLcdValueInAuto(I)I
    .locals 5
    .parameter "lcdValue"

    .prologue
    const/16 v2, 0x7f

    .line 512
    const/16 v0, 0x7f

    .line 513
    .local v0, HALF_BRIGHTNESS:I
    move v1, p1

    .line 515
    .local v1, newLcdValue:I
    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    if-eqz v3, :cond_1

    .line 516
    if-le v1, v2, :cond_0

    move v1, v2

    .line 518
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    .line 519
    const-string v2, "HtcAutoBrightnessCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOffHook:, lcdValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_1
    return v1
.end method

.method private getOffHookLcdValueInManual(I)I
    .locals 5
    .parameter "lcdValue"

    .prologue
    .line 493
    move v0, p1

    .line 495
    .local v0, newLcdValue:I
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    if-eqz v1, :cond_0

    .line 496
    int-to-double v1, v0

    const-wide/high16 v3, 0x3fe0

    mul-double/2addr v1, v3

    double-to-int v0, v1

    .line 498
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 499
    const-string v1, "HtcAutoBrightnessCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOffHookLcdValueInManual: lcdValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_0
    return v0
.end method

.method private getPowerSaverLcdValue(I)I
    .locals 2
    .parameter "lcdValue"

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v0

    .line 412
    .local v0, AUTO_BRIGHTNESS_MODE:Z
    if-eqz v0, :cond_0

    .line 413
    invoke-direct {p0, p1}, Lcom/android/server/HtcAutoBrightnessCtrl;->getPowerSaverLcdValueInAuto(I)I

    move-result v1

    .line 415
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/HtcAutoBrightnessCtrl;->getPowerSaverLcdValueInManual(I)I

    move-result v1

    goto :goto_0
.end method

.method private getPowerSaverLcdValueInAuto(I)I
    .locals 4
    .parameter "lcdValue"

    .prologue
    .line 442
    move v0, p1

    .line 444
    .local v0, newLcdValue:I
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-nez v1, :cond_1

    .line 445
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getMaxBacklightValue()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 446
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getMaxBacklightValue()I

    move-result v0

    .line 449
    :cond_0
    mul-int/lit8 v0, v0, 0x1

    .line 451
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    .line 452
    const-string v1, "HtcAutoBrightnessCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPSAuto: lcdValue("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getMaxBacklightValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_1
    return v0
.end method

.method private getPowerSaverLcdValueInManual(I)I
    .locals 5
    .parameter "lcdValue"

    .prologue
    .line 422
    move v0, p1

    .line 424
    .local v0, newLcdValue:I
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-nez v2, :cond_0

    .line 425
    int-to-float v2, v0

    const/high16 v3, 0x437f

    div-float v1, v2, v3

    .line 426
    .local v1, ratio:F
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getMaxBacklightValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 428
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    .line 429
    const-string v2, "HtcAutoBrightnessCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPSManual: ratio="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", lcdValue("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getMaxBacklightValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    .end local v1           #ratio:F
    :cond_0
    return v0
.end method

.method private getValidDelay(I)I
    .locals 2
    .parameter "delay"

    .prologue
    const/16 v0, 0xfa

    const/16 v1, 0x10

    .line 1198
    if-ge p1, v1, :cond_0

    move p1, v1

    .line 1199
    :cond_0
    if-le p1, v0, :cond_1

    move p1, v0

    .line 1200
    :cond_1
    return p1
.end method

.method private getValidLcdValue(I)I
    .locals 2
    .parameter "lcdValue"

    .prologue
    const/16 v1, 0xff

    const/16 v0, 0x14

    .line 1192
    if-le p1, v1, :cond_0

    move p1, v1

    .line 1193
    :cond_0
    if-ge p1, v0, :cond_1

    move p1, v0

    .line 1194
    :cond_1
    return p1
.end method

.method private inCarModeLightSensorRange()Z
    .locals 2

    .prologue
    .line 757
    iget v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mLightSensorLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mLightSensorLevel:I

    if-ltz v0, :cond_0

    .line 759
    const/4 v0, 0x1

    .line 761
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isKeyguardLocked()Z
    .locals 3

    .prologue
    .line 1220
    const/4 v0, 0x1

    .line 1222
    .local v0, keyguardLocked:Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getIWindowManager()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->keyguardIsShowing()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1226
    :goto_0
    if-eqz v0, :cond_0

    .line 1227
    const-string v1, "HtcAutoBrightnessCtrl"

    const-string v2, "isKeyguardLocked: Keyguard is locked, skip request."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    iget-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->cancelAnimation()V

    .line 1230
    :cond_0
    return v0

    .line 1223
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private reset(I)V
    .locals 5
    .parameter "delay"

    .prologue
    const/4 v4, 0x0

    .line 1098
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v0

    .line 1099
    .local v0, AUTO_BRIGHTNESS_MODE:Z
    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1101
    if-nez v0, :cond_0

    .line 1103
    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v2, v4}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->setScreenBrightnessMode(I)V

    .line 1107
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-nez v2, :cond_2

    .line 1137
    :cond_1
    :goto_0
    return-void

    .line 1111
    :cond_2
    iput-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    .line 1113
    const/4 v1, 0x0

    .line 1114
    .local v1, manualBrightness:I
    if-eqz v0, :cond_3

    .line 1115
    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    mul-int/lit8 v3, p1, 0x28

    invoke-virtual {v2, v3}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->forceLightSensorUpdate(I)V

    .line 1131
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    .line 1132
    const-string v2, "HtcAutoBrightnessCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reset: AUTO_BRIGHTNESS_MODE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", delay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", manualBrightness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1117
    :cond_3
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getManualBrightness()I

    move-result v1

    .line 1120
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableCarMode:Z

    if-eqz v2, :cond_5

    .line 1121
    invoke-direct {p0, v1}, Lcom/android/server/HtcAutoBrightnessCtrl;->getCarModeLcdValue(I)I

    move-result v1

    .line 1128
    :cond_4
    :goto_2
    invoke-direct {p0, v1, p1}, Lcom/android/server/HtcAutoBrightnessCtrl;->setBacklight(II)V

    goto :goto_1

    .line 1122
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    if-eqz v2, :cond_6

    .line 1123
    invoke-direct {p0, v1}, Lcom/android/server/HtcAutoBrightnessCtrl;->getAudioStreamingModeLcdValueInManual(I)I

    move-result v1

    goto :goto_2

    .line 1124
    :cond_6
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eqz v2, :cond_4

    .line 1125
    invoke-direct {p0, v1}, Lcom/android/server/HtcAutoBrightnessCtrl;->getPowerSaverLcdValueInManual(I)I

    move-result v1

    goto :goto_2
.end method

.method private resetAudioStreamingMode()V
    .locals 4

    .prologue
    .line 1023
    iget-boolean v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 1024
    const-string v0, "HtcAutoBrightnessCtrl"

    const-string v1, "resetAudioStreamingMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    :cond_0
    iget-object v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mAudioStreamingTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1030
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->checkPlayAudioStreamingUid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1031
    iget-object v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mAudioStreamingTimeoutTask:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1036
    :goto_0
    return-void

    .line 1033
    :cond_1
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->closeAudioStreamingMode()V

    goto :goto_0
.end method

.method private setBacklight(II)V
    .locals 5
    .parameter "targetLcdValue"
    .parameter "delay"

    .prologue
    const/4 v1, 0x0

    .line 1140
    const/16 v2, 0x10

    if-ge p2, v2, :cond_1

    const/4 v0, 0x1

    .line 1142
    .local v0, noTransition:Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mScreenState:Z

    if-nez v2, :cond_2

    .line 1143
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 1144
    const-string v1, "HtcAutoBrightnessCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBacklight: screen off. Skip. target="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", delay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", noTransition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    :cond_0
    :goto_1
    return-void

    .end local v0           #noTransition:Z
    :cond_1
    move v0, v1

    .line 1140
    goto :goto_0

    .line 1152
    .restart local v0       #noTransition:Z
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_3

    .line 1153
    const-string v2, "HtcAutoBrightnessCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBacklight: target="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", delay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", noTransition="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    :cond_3
    if-lez p1, :cond_0

    .line 1163
    if-eqz v0, :cond_4

    .line 1164
    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->setSmoothBacklight(II)V

    goto :goto_1

    .line 1166
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/server/HtcAutoBrightnessCtrl;->getValidDelay(I)I

    move-result p2

    .line 1167
    iget-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    mul-int/lit8 v2, p2, 0x28

    invoke-virtual {v1, p1, v2}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->setSmoothBacklight(II)V

    goto :goto_1
.end method

.method private setPowerSaverMode(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    .line 364
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    .line 365
    .local v1, PREV_POWER_MODE:Z
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v0

    .line 366
    .local v0, AUTO_BRIGHTNESS_MODE:Z
    const/4 v2, -0x1

    .line 368
    .local v2, newLcdValue:I
    iput-boolean p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    .line 371
    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mScreenState:Z

    if-nez v3, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableCarMode:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    if-nez v3, :cond_0

    .line 381
    if-nez v1, :cond_4

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eqz v3, :cond_4

    .line 382
    iget-object v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v3}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->getCurrentBrightness()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/HtcAutoBrightnessCtrl;->getPowerSaverLcdValue(I)I

    move-result v2

    .line 391
    :cond_2
    :goto_1
    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eq v3, v1, :cond_0

    .line 392
    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v3, :cond_3

    .line 393
    const-string v3, "HtcAutoBrightnessCtrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPSM: mPSM="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", AUTO_BRIGHTNESS_MODE="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newLcdValue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_3
    iput-boolean p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    .line 402
    if-lez v2, :cond_0

    .line 404
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/HtcAutoBrightnessCtrl;->setBacklight(II)V

    goto :goto_0

    .line 383
    :cond_4
    if-eqz v1, :cond_2

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-nez v3, :cond_2

    .line 384
    if-eqz v0, :cond_5

    .line 385
    iget-object v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->forceLightSensorUpdate(I)V

    goto :goto_1

    .line 387
    :cond_5
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getManualBrightness()I

    move-result v2

    goto :goto_1
.end method


# virtual methods
.method protected getCtrlAutoBrightnessValue(I)I
    .locals 4
    .parameter "lcdValue"

    .prologue
    .line 154
    move v0, p1

    .line 156
    .local v0, newLcdValue:I
    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    .line 157
    const/16 v0, 0xff

    .line 160
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    if-eqz v1, :cond_3

    .line 161
    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getOffHookLcdValue(I)I

    move-result v0

    .line 173
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_2

    .line 174
    const-string v1, "HtcAutoBrightnessCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCtrlAutoBrightnessValue: ENABLE=true, mPSM("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getMaxBacklightValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mAudioStreamingMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mEnableCarMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableCarMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mBrighterOnly="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mOffHookMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", lcdValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getValidLcdValue(I)I

    move-result v1

    return v1

    .line 162
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-eqz v1, :cond_4

    .line 164
    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getBrighterOnlyLcdValue(I)I

    move-result v0

    goto :goto_0

    .line 165
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableCarMode:Z

    if-eqz v1, :cond_5

    .line 166
    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getCarModeLcdValue(I)I

    move-result v0

    goto/16 :goto_0

    .line 167
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    if-eqz v1, :cond_6

    .line 168
    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getAudioStreamingModeLcdValue(I)I

    move-result v0

    goto/16 :goto_0

    .line 169
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eqz v1, :cond_1

    .line 170
    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getPowerSaverLcdValue(I)I

    move-result v0

    goto/16 :goto_0
.end method

.method protected getCtrlScreenOnLcdValue(I)I
    .locals 4
    .parameter "lcdValue"

    .prologue
    .line 224
    move v0, p1

    .line 226
    .local v0, newLcdValue:I
    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    .line 227
    const/16 v0, 0xff

    .line 231
    :cond_0
    const/16 v1, 0x14

    if-le v0, v1, :cond_2

    .line 232
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    if-eqz v1, :cond_3

    .line 233
    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getOffHookLcdValue(I)I

    move-result v0

    .line 245
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_2

    .line 246
    const-string v1, "HtcAutoBrightnessCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCtrlScreenOnLcdValue: ENABLE=true, mPSM("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getMaxBacklightValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mAudioStreamingMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mEnableCarMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableCarMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mBrighterOnly="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mOffHookMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", lcdValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_2
    return v0

    .line 234
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-eqz v1, :cond_4

    .line 236
    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getBrighterOnlyLcdValue(I)I

    move-result v0

    goto :goto_0

    .line 237
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableCarMode:Z

    if-eqz v1, :cond_5

    .line 238
    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getCarModeLcdValue(I)I

    move-result v0

    goto/16 :goto_0

    .line 239
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    if-eqz v1, :cond_6

    .line 240
    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getAudioStreamingModeLcdValue(I)I

    move-result v0

    goto/16 :goto_0

    .line 241
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eqz v1, :cond_1

    .line 242
    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getPowerSaverLcdValue(I)I

    move-result v0

    goto/16 :goto_0
.end method

.method protected getCtrlSetBacklightBrightness(I)I
    .locals 4
    .parameter "lcdValue"

    .prologue
    .line 188
    move v0, p1

    .line 190
    .local v0, newLcdValue:I
    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    .line 191
    const/16 v0, 0xff

    .line 195
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    if-eqz v1, :cond_3

    .line 196
    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getOffHookLcdValue(I)I

    move-result v0

    .line 208
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_2

    .line 209
    const-string v1, "HtcAutoBrightnessCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCtrlSetBacklightBrightness: ENABLE=true, mPSM("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getMaxBacklightValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mAudioStreamingMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mEnableCarMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableCarMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mBrighterOnly="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mOffHookMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", lcdValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getValidLcdValue(I)I

    move-result v1

    return v1

    .line 197
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-eqz v1, :cond_4

    .line 199
    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getBrighterOnlyLcdValue(I)I

    move-result v0

    goto :goto_0

    .line 200
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableCarMode:Z

    if-eqz v1, :cond_5

    .line 201
    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getCarModeLcdValue(I)I

    move-result v0

    goto/16 :goto_0

    .line 202
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    if-eqz v1, :cond_6

    .line 203
    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getAudioStreamingModeLcdValue(I)I

    move-result v0

    goto/16 :goto_0

    .line 204
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eqz v1, :cond_1

    .line 205
    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getPowerSaverLcdValue(I)I

    move-result v0

    goto/16 :goto_0
.end method

.method protected screenState(Z)V
    .locals 2
    .parameter "on"

    .prologue
    const/4 v0, 0x0

    .line 342
    iput-boolean p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mScreenState:Z

    .line 344
    if-nez p1, :cond_0

    .line 346
    iput-boolean v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    .line 347
    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->reset(I)V

    .line 350
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mAudioStreamingTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 352
    iget-object v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mAudioStreamingTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 355
    :cond_1
    return-void
.end method

.method protected setLightSensorLevel(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 359
    iput p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mLightSensorLevel:I

    .line 360
    return-void
.end method
