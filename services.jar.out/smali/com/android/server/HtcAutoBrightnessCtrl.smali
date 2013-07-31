.class final Lcom/android/server/HtcAutoBrightnessCtrl;
.super Ljava/lang/Object;
.source "HtcAutoBrightnessCtrl.java"


# instance fields
.field private final ACTION_BRIGHTER_ONLY_OFF:Ljava/lang/String;

.field private final ACTION_BRIGHTER_ONLY_ON:Ljava/lang/String;

.field private final ACTION_CAR_MODE_CHANGE:Ljava/lang/String;

.field private final ACTION_PREFIX:Ljava/lang/String;

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

.field private final KEY_BACKLIGHT_DELAY:Ljava/lang/String;

.field private final KEY_CAR_MODE:Ljava/lang/String;

.field private final KEY_ENTERING_SCREEN_BRIGHTNESS:Ljava/lang/String;

.field private final MASTER_ENABLE:Z

.field private final TAG:Ljava/lang/String;

.field private final VALID_MAX_TRANSITION_DELAY:I

.field private final VALID_MIN_TRANSITION_DELAY:I

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
    .locals 7
    .parameter "context"
    .parameter "pmsInternalAPI"

    .prologue
    const/16 v6, 0x7f

    const/16 v5, 0x14

    const/16 v4, 0x10

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v1, "HtcAutoBrightnessCtrl"

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->TAG:Ljava/lang/String;

    .line 29
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    .line 32
    iput-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->MASTER_ENABLE:Z

    .line 35
    const-string v1, "com.android.server.HtcAutoBrightnessCtrl.action."

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->ACTION_PREFIX:Ljava/lang/String;

    .line 37
    const-string v1, "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_ON"

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->ACTION_BRIGHTER_ONLY_ON:Ljava/lang/String;

    .line 39
    const-string v1, "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_OFF"

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->ACTION_BRIGHTER_ONLY_OFF:Ljava/lang/String;

    .line 43
    const-string v1, "entering.screen.brightness"

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->KEY_ENTERING_SCREEN_BRIGHTNESS:Ljava/lang/String;

    .line 45
    const-string v1, "backlight.delay"

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->KEY_BACKLIGHT_DELAY:Ljava/lang/String;

    .line 48
    const v1, 0xea60

    iput v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->BRIGHTER_ONLY_TIMEOUT:I

    .line 50
    iput v6, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->BRIGHTER_ONLY_INITIAL_BRIGHTNESS:I

    .line 52
    iput v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEFAULT_TRANSITION_DELAY:I

    .line 54
    iput v5, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEFAULT_APP_ENTERING_TRANSITION_DELAY:I

    .line 55
    const/16 v1, 0x28

    iput v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEFAULT_APP_LEAVING_TRANSITION_DELAY:I

    .line 57
    const/16 v1, 0xfa

    iput v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->VALID_MAX_TRANSITION_DELAY:I

    .line 58
    iput v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->VALID_MIN_TRANSITION_DELAY:I

    .line 61
    const-string v1, "com.htc.AutoMotive.Service.ModeChange"

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->ACTION_CAR_MODE_CHANGE:Ljava/lang/String;

    .line 62
    const-string v1, "AutoMotive_Current_Mode"

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->KEY_CAR_MODE:Ljava/lang/String;

    .line 63
    iput v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->AUTOMOTIVE_CARMODE_ENABLE:I

    .line 64
    iput v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->AUTOMOTIVE_CARMODE_DISABLE:I

    .line 65
    const/16 v1, 0x1e

    iput v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->CAR_MODE_INITIAL_BRIGHTNESS:I

    .line 66
    iput v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->CAR_MODE_CHANGE_MIN_SENSOR_LEVEL:I

    .line 67
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->CAR_MODE_CHANGE_MAX_SENSOR_LEVEL:I

    .line 77
    iput-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mScreenState:Z

    .line 79
    iput-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    .line 80
    iput v6, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    .line 82
    iput-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    .line 83
    iput v5, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mMaxBacklightValue:I

    .line 85
    iput-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    .line 86
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPhoneState:Ljava/lang/String;

    .line 87
    const/16 v1, 0x64

    iput v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBatteryLevel:I

    .line 90
    iput-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableCarMode:Z

    .line 91
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mLightSensorLevel:I

    .line 516
    new-instance v1, Lcom/android/server/HtcAutoBrightnessCtrl$1;

    invoke-direct {v1, p0}, Lcom/android/server/HtcAutoBrightnessCtrl$1;-><init>(Lcom/android/server/HtcAutoBrightnessCtrl;)V

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mCarModeReceiver:Landroid/content/BroadcastReceiver;

    .line 535
    new-instance v1, Lcom/android/server/HtcAutoBrightnessCtrl$2;

    invoke-direct {v1, p0}, Lcom/android/server/HtcAutoBrightnessCtrl$2;-><init>(Lcom/android/server/HtcAutoBrightnessCtrl;)V

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBrighterOnlyReceiver:Landroid/content/BroadcastReceiver;

    .line 771
    new-instance v1, Lcom/android/server/HtcAutoBrightnessCtrl$3;

    invoke-direct {v1, p0}, Lcom/android/server/HtcAutoBrightnessCtrl$3;-><init>(Lcom/android/server/HtcAutoBrightnessCtrl;)V

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;

    .line 95
    iput-object p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    .line 97
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 98
    const-string v1, "HtcAutoBrightnessCtrl"

    const-string v2, "Constructor: MASTER_ENABLE=true"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    .line 105
    iget-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mContentResolver:Landroid/content/ContentResolver;

    .line 106
    iput-object p2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 109
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    const-string v1, "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    const-string v1, "com.android.server.htcpowersaver.action.ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string v1, "com.android.server.htcpowersaver.action.OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x4a

    if-ne v1, v2, :cond_1

    .line 116
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBrighterOnlyReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "android.permission.DEVICE_POWER"

    iget-object v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/HtcAutoBrightnessCtrl;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/server/HtcAutoBrightnessCtrl;->checkCarMode(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mScreenState:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/HtcAutoBrightnessCtrl;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/server/HtcAutoBrightnessCtrl;->setBacklight(II)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/HtcAutoBrightnessCtrl;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/server/HtcAutoBrightnessCtrl;->reset(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/HtcAutoBrightnessCtrl;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/server/HtcAutoBrightnessCtrl;->setPowerSaverMode(Z)V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/server/HtcAutoBrightnessCtrl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPhoneState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/HtcAutoBrightnessCtrl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->checkOffHookMode()V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/server/HtcAutoBrightnessCtrl;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/HtcAutoBrightnessCtrl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/HtcAutoBrightnessCtrl;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/HtcAutoBrightnessCtrl;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/HtcAutoBrightnessCtrl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/HtcAutoBrightnessCtrl;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/HtcAutoBrightnessCtrl;)Lcom/android/server/PowerManagerService$PMSInternalAPI;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/HtcAutoBrightnessCtrl;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/server/HtcAutoBrightnessCtrl;->getBrighterOnlyLcdValue(I)I

    move-result v0

    return v0
.end method

.method private checkCarMode(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/16 v7, 0x10

    .line 656
    const-string v4, "AutoMotive_Current_Mode"

    invoke-virtual {p1, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 657
    .local v0, carModeValue:I
    iget-object v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v4}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->getCurrentBrightness()I

    move-result v1

    .line 658
    .local v1, curLcdValue:I
    iget-object v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v4}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->getEndBrightness()I

    move-result v2

    .line 660
    .local v2, endLcdValue:I
    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v4, :cond_0

    .line 661
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

    .line 672
    :cond_0
    if-nez v0, :cond_5

    .line 674
    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableCarMode:Z

    if-eqz v4, :cond_2

    .line 735
    :cond_1
    :goto_0
    return-void

    .line 678
    :cond_2
    iput-boolean v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableCarMode:Z

    .line 680
    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mScreenState:Z

    if-eqz v4, :cond_1

    .line 685
    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-nez v4, :cond_1

    .line 689
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 690
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->inCarModeLightSensorRange()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 691
    const/16 v4, 0x1e

    invoke-direct {p0, v4, v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->setBacklight(II)V

    goto :goto_0

    .line 693
    :cond_3
    iget-object v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    if-eqz v4, :cond_1

    .line 694
    iget-object v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v4, v7}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->forceLightSensorUpdate(I)V

    goto :goto_0

    .line 698
    :cond_4
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getManualBrightness()I

    move-result v4

    invoke-direct {p0, v4, v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->setBacklight(II)V

    goto :goto_0

    .line 701
    :cond_5
    if-ne v0, v8, :cond_1

    .line 703
    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableCarMode:Z

    if-eqz v4, :cond_1

    .line 707
    iput-boolean v9, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableCarMode:Z

    .line 709
    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mScreenState:Z

    if-eqz v4, :cond_1

    .line 714
    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-nez v4, :cond_1

    .line 718
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 719
    iget-object v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    if-eqz v4, :cond_1

    .line 720
    iget-object v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v4, v7}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->forceLightSensorUpdate(I)V

    goto :goto_0

    .line 722
    :cond_6
    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eqz v4, :cond_1

    .line 723
    const/4 v3, -0x1

    .line 724
    .local v3, newLcdValue:I
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getManualBrightness()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/HtcAutoBrightnessCtrl;->getPowerSaverLcdValueInManual(I)I

    move-result v3

    .line 726
    if-lez v3, :cond_1

    .line 728
    invoke-direct {p0, v3, v9}, Lcom/android/server/HtcAutoBrightnessCtrl;->setBacklight(II)V

    goto :goto_0
.end method

.method private checkOffHookMode()V
    .locals 9

    .prologue
    const/16 v8, 0x7f

    const/16 v7, 0x10

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 739
    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPhoneState:Ljava/lang/String;

    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 740
    .local v1, IS_OFF_HOOK:Z
    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->getCurrentBrightness()I

    move-result v0

    .line 742
    .local v0, CURRENT_LCD_VALUE:I
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    .line 743
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

    .line 751
    :cond_0
    if-eqz v1, :cond_3

    iget v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBatteryLevel:I

    if-gt v2, v6, :cond_3

    .line 752
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-eqz v2, :cond_1

    .line 753
    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->cancelAnimation()V

    .line 754
    iput-boolean v5, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    .line 755
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    .line 756
    const-string v2, "HtcAutoBrightnessCtrl"

    const-string v3, "checkOffHookMode: Disable mEnableBrighterOnly mode."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    .line 762
    if-le v0, v8, :cond_2

    .line 763
    invoke-direct {p0, v8, v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->setBacklight(II)V

    .line 769
    :cond_2
    :goto_0
    return-void

    .line 765
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_4

    iget v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBatteryLevel:I

    if-le v2, v6, :cond_2

    .line 766
    :cond_4
    iput-boolean v5, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    .line 767
    invoke-direct {p0, v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->reset(I)V

    goto :goto_0
.end method

.method private getAutoBrightnessEnabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 856
    const/4 v0, 0x0

    .line 858
    .local v0, autoBrightnessMode:I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "screen_brightness_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 862
    :goto_0
    if-ne v0, v2, :cond_0

    :goto_1
    return v2

    .line 859
    :catch_0
    move-exception v1

    .line 860
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

    .line 862
    .end local v1           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getBrighterOnlyLcdValue(I)I
    .locals 4
    .parameter "lcdValue"

    .prologue
    .line 426
    move v0, p1

    .line 428
    .local v0, newLcdValue:I
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-eqz v1, :cond_1

    .line 430
    iget v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    .line 432
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    .line 433
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

    .line 440
    :cond_1
    return v0
.end method

.method private getCarModeLcdValue(I)I
    .locals 4
    .parameter "lcdValue"

    .prologue
    .line 494
    move v0, p1

    .line 496
    .local v0, newLcdValue:I
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableCarMode:Z

    if-eqz v1, :cond_1

    .line 498
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->inCarModeLightSensorRange()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 500
    const/16 v0, 0x1e

    .line 503
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    .line 504
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

    .line 511
    :cond_1
    return v0
.end method

.method private getIWindowManager()Landroid/view/IWindowManager;
    .locals 2

    .prologue
    .line 918
    iget-object v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mIWindowManager:Landroid/view/IWindowManager;

    if-nez v0, :cond_0

    .line 919
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mIWindowManager:Landroid/view/IWindowManager;

    .line 920
    iget-object v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mIWindowManager:Landroid/view/IWindowManager;

    if-nez v0, :cond_0

    .line 921
    const-string v0, "HtcAutoBrightnessCtrl"

    const-string v1, "getIWindowManager: Could not get IWindowManager."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    const/4 v0, 0x0

    .line 925
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mIWindowManager:Landroid/view/IWindowManager;

    goto :goto_0
.end method

.method private getManualBrightness()I
    .locals 5

    .prologue
    .line 866
    const/16 v0, 0x7f

    .line 868
    .local v0, currentLcdValue:I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 872
    :goto_0
    return v0

    .line 869
    :catch_0
    move-exception v1

    .line 870
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
    .line 889
    :try_start_0
    iget v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mMaxBacklightValue:I

    const/16 v4, 0x14

    if-le v3, v4, :cond_0

    .line 890
    iget v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mMaxBacklightValue:I

    .line 900
    :goto_0
    return v3

    .line 893
    :cond_0
    iget-object v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 894
    .local v2, resources:Landroid/content/res/Resources;
    const v3, 0x1070028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 895
    .local v1, mLcdBacklightValues:[I
    const/4 v3, 0x4

    aget v3, v1, v3

    iput v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mMaxBacklightValue:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 900
    .end local v1           #mLcdBacklightValues:[I
    .end local v2           #resources:Landroid/content/res/Resources;
    :goto_1
    iget v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mMaxBacklightValue:I

    goto :goto_0

    .line 896
    :catch_0
    move-exception v0

    .line 897
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "HtcAutoBrightnessCtrl"

    const-string v4, "getMaxBacklightValue: reset mMaxBacklightValue"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const/16 v3, 0x78

    iput v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mMaxBacklightValue:I

    goto :goto_1
.end method

.method private getOffHookLcdValue(I)I
    .locals 2
    .parameter "lcdValue"

    .prologue
    .line 444
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v0

    .line 446
    .local v0, AUTO_BRIGHTNESS_MODE:Z
    if-eqz v0, :cond_0

    .line 447
    invoke-direct {p0, p1}, Lcom/android/server/HtcAutoBrightnessCtrl;->getOffHookLcdValueInAuto(I)I

    move-result v1

    .line 449
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

    .line 475
    const/16 v0, 0x7f

    .line 476
    .local v0, HALF_BRIGHTNESS:I
    move v1, p1

    .line 478
    .local v1, newLcdValue:I
    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    if-eqz v3, :cond_1

    .line 479
    if-le v1, v2, :cond_0

    move v1, v2

    .line 481
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    .line 482
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

    .line 488
    :cond_1
    return v1
.end method

.method private getOffHookLcdValueInManual(I)I
    .locals 5
    .parameter "lcdValue"

    .prologue
    .line 456
    move v0, p1

    .line 458
    .local v0, newLcdValue:I
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    if-eqz v1, :cond_0

    .line 459
    int-to-double v1, v0

    const-wide/high16 v3, 0x3fe0

    mul-double/2addr v1, v3

    double-to-int v0, v1

    .line 461
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 462
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

    .line 469
    :cond_0
    return v0
.end method

.method private getPowerSaverLcdValue(I)I
    .locals 2
    .parameter "lcdValue"

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v0

    .line 375
    .local v0, AUTO_BRIGHTNESS_MODE:Z
    if-eqz v0, :cond_0

    .line 376
    invoke-direct {p0, p1}, Lcom/android/server/HtcAutoBrightnessCtrl;->getPowerSaverLcdValueInAuto(I)I

    move-result v1

    .line 378
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
    .line 405
    move v0, p1

    .line 407
    .local v0, newLcdValue:I
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-nez v1, :cond_1

    .line 408
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getMaxBacklightValue()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 409
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getMaxBacklightValue()I

    move-result v0

    .line 412
    :cond_0
    mul-int/lit8 v0, v0, 0x1

    .line 414
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    .line 415
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

    .line 421
    :cond_1
    return v0
.end method

.method private getPowerSaverLcdValueInManual(I)I
    .locals 5
    .parameter "lcdValue"

    .prologue
    .line 385
    move v0, p1

    .line 387
    .local v0, newLcdValue:I
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-nez v2, :cond_0

    .line 388
    int-to-float v2, v0

    const/high16 v3, 0x437f

    div-float v1, v2, v3

    .line 389
    .local v1, ratio:F
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getMaxBacklightValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 391
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    .line 392
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

    .line 399
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

    .line 882
    if-ge p1, v1, :cond_0

    move p1, v1

    .line 883
    :cond_0
    if-le p1, v0, :cond_1

    move p1, v0

    .line 884
    :cond_1
    return p1
.end method

.method private getValidLcdValue(I)I
    .locals 2
    .parameter "lcdValue"

    .prologue
    const/16 v1, 0xff

    const/16 v0, 0x14

    .line 876
    if-le p1, v1, :cond_0

    move p1, v1

    .line 877
    :cond_0
    if-ge p1, v0, :cond_1

    move p1, v0

    .line 878
    :cond_1
    return p1
.end method

.method private inCarModeLightSensorRange()Z
    .locals 2

    .prologue
    .line 648
    iget v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mLightSensorLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mLightSensorLevel:I

    if-ltz v0, :cond_0

    .line 650
    const/4 v0, 0x1

    .line 652
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isKeyguardLocked()Z
    .locals 3

    .prologue
    .line 904
    const/4 v0, 0x1

    .line 906
    .local v0, keyguardLocked:Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getIWindowManager()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->keyguardIsShowing()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 910
    :goto_0
    if-eqz v0, :cond_0

    .line 911
    const-string v1, "HtcAutoBrightnessCtrl"

    const-string v2, "isKeyguardLocked: Keyguard is locked, skip request."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iget-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->cancelAnimation()V

    .line 914
    :cond_0
    return v0

    .line 907
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private reset(I)V
    .locals 5
    .parameter "delay"

    .prologue
    const/4 v4, 0x0

    .line 784
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v0

    .line 785
    .local v0, AUTO_BRIGHTNESS_MODE:Z
    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 787
    if-nez v0, :cond_0

    .line 789
    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v2, v4}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->setScreenBrightnessMode(I)V

    .line 793
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-nez v2, :cond_2

    .line 821
    :cond_1
    :goto_0
    return-void

    .line 797
    :cond_2
    iput-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    .line 799
    const/4 v1, 0x0

    .line 800
    .local v1, manualBrightness:I
    if-eqz v0, :cond_3

    .line 801
    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    mul-int/lit8 v3, p1, 0x28

    invoke-virtual {v2, v3}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->forceLightSensorUpdate(I)V

    .line 815
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    .line 816
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

    .line 803
    :cond_3
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getManualBrightness()I

    move-result v1

    .line 806
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableCarMode:Z

    if-eqz v2, :cond_5

    .line 807
    invoke-direct {p0, v1}, Lcom/android/server/HtcAutoBrightnessCtrl;->getCarModeLcdValue(I)I

    move-result v1

    .line 812
    :cond_4
    :goto_2
    invoke-direct {p0, v1, p1}, Lcom/android/server/HtcAutoBrightnessCtrl;->setBacklight(II)V

    goto :goto_1

    .line 808
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eqz v2, :cond_4

    .line 809
    invoke-direct {p0, v1}, Lcom/android/server/HtcAutoBrightnessCtrl;->getPowerSaverLcdValueInManual(I)I

    move-result v1

    goto :goto_2
.end method

.method private setBacklight(II)V
    .locals 5
    .parameter "targetLcdValue"
    .parameter "delay"

    .prologue
    const/4 v1, 0x0

    .line 824
    const/16 v2, 0x10

    if-ge p2, v2, :cond_1

    const/4 v0, 0x1

    .line 826
    .local v0, noTransition:Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mScreenState:Z

    if-nez v2, :cond_2

    .line 827
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 828
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

    .line 853
    :cond_0
    :goto_1
    return-void

    .end local v0           #noTransition:Z
    :cond_1
    move v0, v1

    .line 824
    goto :goto_0

    .line 836
    .restart local v0       #noTransition:Z
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_3

    .line 837
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

    .line 843
    :cond_3
    if-lez p1, :cond_0

    .line 847
    if-eqz v0, :cond_4

    .line 848
    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->setSmoothBacklight(II)V

    goto :goto_1

    .line 850
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/server/HtcAutoBrightnessCtrl;->getValidDelay(I)I

    move-result p2

    .line 851
    iget-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    mul-int/lit8 v2, p2, 0x28

    invoke-virtual {v1, p1, v2}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->setSmoothBacklight(II)V

    goto :goto_1
.end method

.method private setPowerSaverMode(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    .line 327
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    .line 328
    .local v1, PREV_POWER_MODE:Z
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v0

    .line 329
    .local v0, AUTO_BRIGHTNESS_MODE:Z
    const/4 v2, -0x1

    .line 331
    .local v2, newLcdValue:I
    iput-boolean p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    .line 334
    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mScreenState:Z

    if-nez v3, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableCarMode:Z

    if-nez v3, :cond_0

    .line 344
    if-nez v1, :cond_4

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eqz v3, :cond_4

    .line 345
    iget-object v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v3}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->getCurrentBrightness()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/HtcAutoBrightnessCtrl;->getPowerSaverLcdValue(I)I

    move-result v2

    .line 354
    :cond_2
    :goto_1
    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eq v3, v1, :cond_0

    .line 355
    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v3, :cond_3

    .line 356
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

    .line 362
    :cond_3
    iput-boolean p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    .line 365
    if-lez v2, :cond_0

    .line 367
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/HtcAutoBrightnessCtrl;->setBacklight(II)V

    goto :goto_0

    .line 346
    :cond_4
    if-eqz v1, :cond_2

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-nez v3, :cond_2

    .line 347
    if-eqz v0, :cond_5

    .line 348
    iget-object v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->forceLightSensorUpdate(I)V

    goto :goto_1

    .line 350
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
    .line 132
    move v0, p1

    .line 134
    .local v0, newLcdValue:I
    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    .line 135
    const/16 v0, 0xff

    .line 138
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    if-eqz v1, :cond_3

    .line 139
    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getOffHookLcdValue(I)I

    move-result v0

    .line 149
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_2

    .line 150
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

    .line 159
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getValidLcdValue(I)I

    move-result v1

    return v1

    .line 140
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-eqz v1, :cond_4

    .line 142
    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getBrighterOnlyLcdValue(I)I

    move-result v0

    goto :goto_0

    .line 143
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableCarMode:Z

    if-eqz v1, :cond_5

    .line 144
    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getCarModeLcdValue(I)I

    move-result v0

    goto :goto_0

    .line 145
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eqz v1, :cond_1

    .line 146
    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getPowerSaverLcdValue(I)I

    move-result v0

    goto/16 :goto_0
.end method

.method protected getCtrlScreenOnLcdValue(I)I
    .locals 4
    .parameter "lcdValue"

    .prologue
    .line 196
    move v0, p1

    .line 198
    .local v0, newLcdValue:I
    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    .line 199
    const/16 v0, 0xff

    .line 203
    :cond_0
    const/16 v1, 0x14

    if-le v0, v1, :cond_2

    .line 204
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    if-eqz v1, :cond_3

    .line 205
    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getOffHookLcdValue(I)I

    move-result v0

    .line 215
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_2

    .line 216
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

    .line 227
    :cond_2
    return v0

    .line 206
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-eqz v1, :cond_4

    .line 208
    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getBrighterOnlyLcdValue(I)I

    move-result v0

    goto :goto_0

    .line 209
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableCarMode:Z

    if-eqz v1, :cond_5

    .line 210
    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getCarModeLcdValue(I)I

    move-result v0

    goto :goto_0

    .line 211
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eqz v1, :cond_1

    .line 212
    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getPowerSaverLcdValue(I)I

    move-result v0

    goto :goto_0
.end method

.method protected getCtrlSetBacklightBrightness(I)I
    .locals 4
    .parameter "lcdValue"

    .prologue
    .line 163
    move v0, p1

    .line 165
    .local v0, newLcdValue:I
    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    .line 166
    const/16 v0, 0xff

    .line 170
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    if-eqz v1, :cond_3

    .line 171
    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getOffHookLcdValue(I)I

    move-result v0

    .line 181
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_2

    .line 182
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

    .line 191
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getValidLcdValue(I)I

    move-result v1

    return v1

    .line 172
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-eqz v1, :cond_4

    .line 174
    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getBrighterOnlyLcdValue(I)I

    move-result v0

    goto :goto_0

    .line 175
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableCarMode:Z

    if-eqz v1, :cond_5

    .line 176
    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getCarModeLcdValue(I)I

    move-result v0

    goto :goto_0

    .line 177
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eqz v1, :cond_1

    .line 178
    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getPowerSaverLcdValue(I)I

    move-result v0

    goto/16 :goto_0
.end method

.method protected screenState(Z)V
    .locals 1
    .parameter "on"

    .prologue
    const/4 v0, 0x0

    .line 311
    iput-boolean p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mScreenState:Z

    .line 313
    if-nez p1, :cond_0

    .line 315
    iput-boolean v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    .line 316
    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->reset(I)V

    .line 318
    :cond_0
    return-void
.end method

.method protected setLightSensorLevel(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 322
    iput p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mLightSensorLevel:I

    .line 323
    return-void
.end method
