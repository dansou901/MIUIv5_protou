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

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "HtcAutoBrightnessCtrl"

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->TAG:Ljava/lang/String;

    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    iput-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->MASTER_ENABLE:Z

    const-string v1, "com.android.server.HtcAutoBrightnessCtrl.action."

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->ACTION_PREFIX:Ljava/lang/String;

    const-string v1, "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_ON"

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->ACTION_BRIGHTER_ONLY_ON:Ljava/lang/String;

    const-string v1, "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_OFF"

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->ACTION_BRIGHTER_ONLY_OFF:Ljava/lang/String;

    const-string v1, "entering.screen.brightness"

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->KEY_ENTERING_SCREEN_BRIGHTNESS:Ljava/lang/String;

    const-string v1, "backlight.delay"

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->KEY_BACKLIGHT_DELAY:Ljava/lang/String;

    const v1, 0xea60

    iput v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->BRIGHTER_ONLY_TIMEOUT:I

    iput v6, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->BRIGHTER_ONLY_INITIAL_BRIGHTNESS:I

    iput v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEFAULT_TRANSITION_DELAY:I

    iput v5, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEFAULT_APP_ENTERING_TRANSITION_DELAY:I

    const/16 v1, 0x28

    iput v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEFAULT_APP_LEAVING_TRANSITION_DELAY:I

    const/16 v1, 0xfa

    iput v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->VALID_MAX_TRANSITION_DELAY:I

    iput v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->VALID_MIN_TRANSITION_DELAY:I

    const-string v1, "com.htc.AutoMotive.Service.ModeChange"

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->ACTION_CAR_MODE_CHANGE:Ljava/lang/String;

    const-string v1, "AutoMotive_Current_Mode"

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->KEY_CAR_MODE:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->AUTOMOTIVE_CARMODE_ENABLE:I

    iput v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->AUTOMOTIVE_CARMODE_DISABLE:I

    const/16 v1, 0x1e

    iput v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->CAR_MODE_INITIAL_BRIGHTNESS:I

    iput v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->CAR_MODE_CHANGE_MIN_SENSOR_LEVEL:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->CAR_MODE_CHANGE_MAX_SENSOR_LEVEL:I

    iput-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mScreenState:Z

    iput-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    iput v6, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    iput-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    iput v5, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mMaxBacklightValue:I

    iput-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPhoneState:Ljava/lang/String;

    const/16 v1, 0x64

    iput v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBatteryLevel:I

    iput-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableCarMode:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mLightSensorLevel:I

    new-instance v1, Lcom/android/server/HtcAutoBrightnessCtrl$1;

    invoke-direct {v1, p0}, Lcom/android/server/HtcAutoBrightnessCtrl$1;-><init>(Lcom/android/server/HtcAutoBrightnessCtrl;)V

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mCarModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/HtcAutoBrightnessCtrl$2;

    invoke-direct {v1, p0}, Lcom/android/server/HtcAutoBrightnessCtrl$2;-><init>(Lcom/android/server/HtcAutoBrightnessCtrl;)V

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBrighterOnlyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/HtcAutoBrightnessCtrl$3;

    invoke-direct {v1, p0}, Lcom/android/server/HtcAutoBrightnessCtrl$3;-><init>(Lcom/android/server/HtcAutoBrightnessCtrl;)V

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    const-string v1, "HtcAutoBrightnessCtrl"

    const-string v2, "Constructor: MASTER_ENABLE=true"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.htcpowersaver.action.ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.htcpowersaver.action.OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x4a

    if-ne v1, v2, :cond_1

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBrighterOnlyReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "android.permission.DEVICE_POWER"

    iget-object v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/HtcAutoBrightnessCtrl;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/HtcAutoBrightnessCtrl;->checkCarMode(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mScreenState:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/HtcAutoBrightnessCtrl;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/HtcAutoBrightnessCtrl;->setBacklight(II)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/HtcAutoBrightnessCtrl;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/HtcAutoBrightnessCtrl;->reset(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/HtcAutoBrightnessCtrl;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/HtcAutoBrightnessCtrl;->setPowerSaverMode(Z)V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/server/HtcAutoBrightnessCtrl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPhoneState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/HtcAutoBrightnessCtrl;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->checkOffHookMode()V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/server/HtcAutoBrightnessCtrl;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/HtcAutoBrightnessCtrl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/HtcAutoBrightnessCtrl;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/HtcAutoBrightnessCtrl;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/HtcAutoBrightnessCtrl;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/HtcAutoBrightnessCtrl;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/HtcAutoBrightnessCtrl;)Lcom/android/server/PowerManagerService$PMSInternalAPI;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/HtcAutoBrightnessCtrl;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
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

    const-string v4, "AutoMotive_Current_Mode"

    invoke-virtual {p1, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .local v0, carModeValue:I
    iget-object v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v4}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->getCurrentBrightness()I

    move-result v1

    .local v1, curLcdValue:I
    iget-object v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v4}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->getEndBrightness()I

    move-result v2

    .local v2, endLcdValue:I
    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v4, :cond_0

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

    :cond_0
    if-nez v0, :cond_5

    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableCarMode:Z

    if-eqz v4, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-boolean v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableCarMode:Z

    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mScreenState:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->inCarModeLightSensorRange()Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x1e

    invoke-direct {p0, v4, v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->setBacklight(II)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v4, v7}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->forceLightSensorUpdate(I)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getManualBrightness()I

    move-result v4

    invoke-direct {p0, v4, v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->setBacklight(II)V

    goto :goto_0

    :cond_5
    if-ne v0, v8, :cond_1

    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableCarMode:Z

    if-eqz v4, :cond_1

    iput-boolean v9, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableCarMode:Z

    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mScreenState:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v4, v7}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->forceLightSensorUpdate(I)V

    goto :goto_0

    :cond_6
    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eqz v4, :cond_1

    const/4 v3, -0x1

    .local v3, newLcdValue:I
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getManualBrightness()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/HtcAutoBrightnessCtrl;->getPowerSaverLcdValueInManual(I)I

    move-result v3

    if-lez v3, :cond_1

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

    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPhoneState:Ljava/lang/String;

    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .local v1, IS_OFF_HOOK:Z
    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->getCurrentBrightness()I

    move-result v0

    .local v0, CURRENT_LCD_VALUE:I
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_0

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

    :cond_0
    if-eqz v1, :cond_3

    iget v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBatteryLevel:I

    if-gt v2, v6, :cond_3

    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->cancelAnimation()V

    iput-boolean v5, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    const-string v2, "HtcAutoBrightnessCtrl"

    const-string v3, "checkOffHookMode: Disable mEnableBrighterOnly mode."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    if-le v0, v8, :cond_2

    invoke-direct {p0, v8, v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->setBacklight(II)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_4

    iget v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBatteryLevel:I

    if-le v2, v6, :cond_2

    :cond_4
    iput-boolean v5, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    invoke-direct {p0, v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->reset(I)V

    goto :goto_0
.end method

.method private getAutoBrightnessEnabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .local v0, autoBrightnessMode:I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "screen_brightness_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-ne v0, v2, :cond_0

    :goto_1
    return v2

    :catch_0
    move-exception v1

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

    .end local v1           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getBrighterOnlyLcdValue(I)I
    .locals 4
    .parameter "lcdValue"

    .prologue
    move v0, p1

    .local v0, newLcdValue:I
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_1

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

    :cond_1
    return v0
.end method

.method private getCarModeLcdValue(I)I
    .locals 4
    .parameter "lcdValue"

    .prologue
    move v0, p1

    .local v0, newLcdValue:I
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableCarMode:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->inCarModeLightSensorRange()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1e

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_1

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

    :cond_1
    return v0
.end method

.method private getIWindowManager()Landroid/view/IWindowManager;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mIWindowManager:Landroid/view/IWindowManager;

    if-nez v0, :cond_0

    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mIWindowManager:Landroid/view/IWindowManager;

    if-nez v0, :cond_0

    const-string v0, "HtcAutoBrightnessCtrl"

    const-string v1, "getIWindowManager: Could not get IWindowManager."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mIWindowManager:Landroid/view/IWindowManager;

    goto :goto_0
.end method

.method private getManualBrightness()I
    .locals 5

    .prologue
    const/16 v0, 0x7f

    .local v0, currentLcdValue:I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

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
    :try_start_0
    iget v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mMaxBacklightValue:I

    const/16 v4, 0x14

    if-le v3, v4, :cond_0

    iget v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mMaxBacklightValue:I

    :goto_0
    return v3

    :cond_0
    iget-object v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .local v2, resources:Landroid/content/res/Resources;
    const v3, 0x1070028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .local v1, mLcdBacklightValues:[I
    const/4 v3, 0x4

    aget v3, v1, v3

    iput v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mMaxBacklightValue:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #mLcdBacklightValues:[I
    .end local v2           #resources:Landroid/content/res/Resources;
    :goto_1
    iget v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mMaxBacklightValue:I

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v3, "HtcAutoBrightnessCtrl"

    const-string v4, "getMaxBacklightValue: reset mMaxBacklightValue"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x78

    iput v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mMaxBacklightValue:I

    goto :goto_1
.end method

.method private getOffHookLcdValue(I)I
    .locals 2
    .parameter "lcdValue"

    .prologue
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v0

    .local v0, AUTO_BRIGHTNESS_MODE:Z
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/HtcAutoBrightnessCtrl;->getOffHookLcdValueInAuto(I)I

    move-result v1

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

    const/16 v0, 0x7f

    .local v0, HALF_BRIGHTNESS:I
    move v1, p1

    .local v1, newLcdValue:I
    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    if-eqz v3, :cond_1

    if-le v1, v2, :cond_0

    move v1, v2

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_1

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

    :cond_1
    return v1
.end method

.method private getOffHookLcdValueInManual(I)I
    .locals 5
    .parameter "lcdValue"

    .prologue
    move v0, p1

    .local v0, newLcdValue:I
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    if-eqz v1, :cond_0

    int-to-double v1, v0

    const-wide/high16 v3, 0x3fe0

    mul-double/2addr v1, v3

    double-to-int v0, v1

    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_0

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

    :cond_0
    return v0
.end method

.method private getPowerSaverLcdValue(I)I
    .locals 2
    .parameter "lcdValue"

    .prologue
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v0

    .local v0, AUTO_BRIGHTNESS_MODE:Z
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/HtcAutoBrightnessCtrl;->getPowerSaverLcdValueInAuto(I)I

    move-result v1

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
    move v0, p1

    .local v0, newLcdValue:I
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getMaxBacklightValue()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getMaxBacklightValue()I

    move-result v0

    :cond_0
    mul-int/lit8 v0, v0, 0x1

    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_1

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

    :cond_1
    return v0
.end method

.method private getPowerSaverLcdValueInManual(I)I
    .locals 5
    .parameter "lcdValue"

    .prologue
    move v0, p1

    .local v0, newLcdValue:I
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-nez v2, :cond_0

    int-to-float v2, v0

    const/high16 v3, 0x437f

    div-float v1, v2, v3

    .local v1, ratio:F
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getMaxBacklightValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v0, v2

    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_0

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

    if-ge p1, v1, :cond_0

    move p1, v1

    :cond_0
    if-le p1, v0, :cond_1

    move p1, v0

    :cond_1
    return p1
.end method

.method private getValidLcdValue(I)I
    .locals 2
    .parameter "lcdValue"

    .prologue
    const/16 v1, 0xff

    const/16 v0, 0x14

    if-le p1, v1, :cond_0

    move p1, v1

    :cond_0
    if-ge p1, v0, :cond_1

    move p1, v0

    :cond_1
    return p1
.end method

.method private inCarModeLightSensorRange()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mLightSensorLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mLightSensorLevel:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isKeyguardLocked()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .local v0, keyguardLocked:Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getIWindowManager()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->keyguardIsShowing()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "HtcAutoBrightnessCtrl"

    const-string v2, "isKeyguardLocked: Keyguard is locked, skip request."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->cancelAnimation()V

    :cond_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private reset(I)V
    .locals 5
    .parameter "delay"

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v0

    .local v0, AUTO_BRIGHTNESS_MODE:Z
    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v2, v4}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->setScreenBrightnessMode(I)V

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    const/4 v1, 0x0

    .local v1, manualBrightness:I
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    mul-int/lit8 v3, p1, 0x28

    invoke-virtual {v2, v3}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->forceLightSensorUpdate(I)V

    :goto_1
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_1

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

    :cond_3
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getManualBrightness()I

    move-result v1

    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableCarMode:Z

    if-eqz v2, :cond_5

    invoke-direct {p0, v1}, Lcom/android/server/HtcAutoBrightnessCtrl;->getCarModeLcdValue(I)I

    move-result v1

    :cond_4
    :goto_2
    invoke-direct {p0, v1, p1}, Lcom/android/server/HtcAutoBrightnessCtrl;->setBacklight(II)V

    goto :goto_1

    :cond_5
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eqz v2, :cond_4

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

    const/16 v2, 0x10

    if-ge p2, v2, :cond_1

    const/4 v0, 0x1

    .local v0, noTransition:Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mScreenState:Z

    if-nez v2, :cond_2

    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_0

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

    :cond_0
    :goto_1
    return-void

    .end local v0           #noTransition:Z
    :cond_1
    move v0, v1

    goto :goto_0

    .restart local v0       #noTransition:Z
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_3

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

    :cond_3
    if-lez p1, :cond_0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->setSmoothBacklight(II)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, p2}, Lcom/android/server/HtcAutoBrightnessCtrl;->getValidDelay(I)I

    move-result p2

    iget-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    mul-int/lit8 v2, p2, 0x28

    invoke-virtual {v1, p1, v2}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->setSmoothBacklight(II)V

    goto :goto_1
.end method

.method private setPowerSaverMode(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    .local v1, PREV_POWER_MODE:Z
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v0

    .local v0, AUTO_BRIGHTNESS_MODE:Z
    const/4 v2, -0x1

    .local v2, newLcdValue:I
    iput-boolean p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mScreenState:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableCarMode:Z

    if-nez v3, :cond_0

    if-nez v1, :cond_4

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v3}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->getCurrentBrightness()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/HtcAutoBrightnessCtrl;->getPowerSaverLcdValue(I)I

    move-result v2

    :cond_2
    :goto_1
    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eq v3, v1, :cond_0

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v3, :cond_3

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

    :cond_3
    iput-boolean p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-lez v2, :cond_0

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/HtcAutoBrightnessCtrl;->setBacklight(II)V

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_2

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-nez v3, :cond_2

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->forceLightSensorUpdate(I)V

    goto :goto_1

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
    move v0, p1

    .local v0, newLcdValue:I
    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    const/16 v0, 0xff

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getOffHookLcdValue(I)I

    move-result v0

    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_2

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

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getValidLcdValue(I)I

    move-result v1

    return v1

    :cond_3
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-eqz v1, :cond_4

    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getBrighterOnlyLcdValue(I)I

    move-result v0

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableCarMode:Z

    if-eqz v1, :cond_5

    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getCarModeLcdValue(I)I

    move-result v0

    goto :goto_0

    :cond_5
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getPowerSaverLcdValue(I)I

    move-result v0

    goto/16 :goto_0
.end method

.method protected getCtrlScreenOnLcdValue(I)I
    .locals 4
    .parameter "lcdValue"

    .prologue
    move v0, p1

    .local v0, newLcdValue:I
    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    const/16 v0, 0xff

    :cond_0
    const/16 v1, 0x14

    if-le v0, v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getOffHookLcdValue(I)I

    move-result v0

    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_2

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

    :cond_2
    return v0

    :cond_3
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-eqz v1, :cond_4

    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getBrighterOnlyLcdValue(I)I

    move-result v0

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableCarMode:Z

    if-eqz v1, :cond_5

    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getCarModeLcdValue(I)I

    move-result v0

    goto :goto_0

    :cond_5
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getPowerSaverLcdValue(I)I

    move-result v0

    goto :goto_0
.end method

.method protected getCtrlSetBacklightBrightness(I)I
    .locals 4
    .parameter "lcdValue"

    .prologue
    move v0, p1

    .local v0, newLcdValue:I
    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    const/16 v0, 0xff

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getOffHookLcdValue(I)I

    move-result v0

    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_2

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

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getValidLcdValue(I)I

    move-result v1

    return v1

    :cond_3
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-eqz v1, :cond_4

    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getBrighterOnlyLcdValue(I)I

    move-result v0

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableCarMode:Z

    if-eqz v1, :cond_5

    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getCarModeLcdValue(I)I

    move-result v0

    goto :goto_0

    :cond_5
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getPowerSaverLcdValue(I)I

    move-result v0

    goto/16 :goto_0
.end method

.method protected screenState(Z)V
    .locals 1
    .parameter "on"

    .prologue
    const/4 v0, 0x0

    iput-boolean p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mScreenState:Z

    if-nez p1, :cond_0

    iput-boolean v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->reset(I)V

    :cond_0
    return-void
.end method

.method protected setLightSensorLevel(I)V
    .locals 0
    .parameter "level"

    .prologue
    iput p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mLightSensorLevel:I

    return-void
.end method
