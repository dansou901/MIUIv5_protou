.class public Lcom/android/internal/telephony/SimSlotManager;
.super Landroid/os/Handler;
.source "SimSlotManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SimSlotManager$1;,
        Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;,
        Lcom/android/internal/telephony/SimSlotManager$SimSlot;,
        Lcom/android/internal/telephony/SimSlotManager$Switcher;,
        Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;,
        Lcom/android/internal/telephony/SimSlotManager$BootCompletedReceiver;,
        Lcom/android/internal/telephony/SimSlotManager$SwitchState;
    }
.end annotation


# static fields
.field public static final BROADCAST_SSM_ABILITY:Ljava/lang/String; = "com.basewin.braodcast.ability"

.field public static final BROADCAST_SSM_STATE:Ljava/lang/String; = "com.basewin.braodcast.state"

.field public static final EVENT_GSM_MANUAL_NETWORK_MONITOR:I = 0xe

.field public static final EVENT_ON_RUIM_READY:I = 0x4

.field public static final EVENT_ON_SIM_READY:I = 0x6

.field public static final EVENT_ON_SUB_SIM_READY:I = 0xf

.field public static final EVENT_RESWITCH_HINT:I = 0xd

.field public static final EVENT_SWITCH_DONE:I = 0x1

.field public static final EVENT_SWITCH_RESULT_FAIL:I = 0xc

.field public static final EVENT_SWITCH_RESULT_SUCCESS:I = 0xb

.field public static final EVENT_SWITCH_STATE_END:I = 0xa

.field public static final EVENT_SWITCH_STATE_START:I = 0x9

.field public static final EVENT_UPDATE_SLOT_DONE:I = 0x3

.field private static final IDENTIFY_SLOT2:Z = false

.field public static final PREFERENCES:Ljava/lang/String; = "SimSlotManager"

.field public static final SIM_SLOT_1:I = 0x1

.field public static final SIM_SLOT_2:I = 0x2

.field public static final SP_URI:Ljava/lang/String; = "com.basewin.ssm."

.field public static final SSM_PHONE_TYPE_BOTH:I = 0x3

.field public static final SSM_PHONE_TYPE_CDMA:I = 0x1

.field public static final SSM_PHONE_TYPE_GSM:I = 0x2

.field public static final SSM_PHONE_TYPE_SUB_GSM:I = 0x4

.field public static final SSM_PHONE_TYPE_UNKNOWN:I = 0x0

.field public static final TAG:Ljava/lang/String; = "SSM"

.field private static mOobeFinish:Z

.field public static sMe:Lcom/android/internal/telephony/SimSlotManager;


# instance fields
.field private final DBG:Z

.field private final GSM_MANUAL_NETWORK_MONITOR_DURATION:I

.field private final NOTIFY_ID:I

.field private final RESWITCH_DURATION:I

.field private final TEST:Z

.field private mCdma:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field private mContext:Landroid/content/Context;

.field private mDualSettingMgr:Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;

.field private mGSMUimTypeQueryer:Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;

.field private mGsm:Lcom/android/internal/telephony/gsm/GSMPhone;

.field private mLastSlot:I

.field private mPhoneTypeOfSlot1:I

.field private mPwrup:Z

.field private mSlot1:Lcom/android/internal/telephony/SimSlotManager$SimSlot;

.field private mSlot2:Lcom/android/internal/telephony/SimSlotManager$SimSlot;

.field private mSubGsm:Lcom/android/internal/telephony/gsm/GSMPhone;

.field private mSwitcher:Lcom/android/internal/telephony/SimSlotManager$Switcher;

.field private mWMReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/SimSlotManager;->sMe:Lcom/android/internal/telephony/SimSlotManager;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/SimSlotManager;->mOobeFinish:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 9
    .parameter "phone"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-boolean v5, p0, Lcom/android/internal/telephony/SimSlotManager;->DBG:Z

    iput-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager;->TEST:Z

    iput-object v6, p0, Lcom/android/internal/telephony/SimSlotManager;->mSlot1:Lcom/android/internal/telephony/SimSlotManager$SimSlot;

    iput-object v6, p0, Lcom/android/internal/telephony/SimSlotManager;->mSlot2:Lcom/android/internal/telephony/SimSlotManager$SimSlot;

    iput v5, p0, Lcom/android/internal/telephony/SimSlotManager;->mPhoneTypeOfSlot1:I

    iput v5, p0, Lcom/android/internal/telephony/SimSlotManager;->mLastSlot:I

    iput-boolean v5, p0, Lcom/android/internal/telephony/SimSlotManager;->mPwrup:Z

    iput-boolean v4, p0, Lcom/android/internal/telephony/SimSlotManager;->mWMReady:Z

    new-instance v2, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;

    invoke-direct {v2, p0, v6}, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;-><init>(Lcom/android/internal/telephony/SimSlotManager;Lcom/android/internal/telephony/SimSlotManager$1;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager;->mGSMUimTypeQueryer:Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;

    const v2, 0xbc614e

    iput v2, p0, Lcom/android/internal/telephony/SimSlotManager;->NOTIFY_ID:I

    const v2, 0xea60

    iput v2, p0, Lcom/android/internal/telephony/SimSlotManager;->RESWITCH_DURATION:I

    const/16 v2, 0x7530

    iput v2, p0, Lcom/android/internal/telephony/SimSlotManager;->GSM_MANUAL_NETWORK_MONITOR_DURATION:I

    const-string v2, "SSM"

    const-string v3, "Create SSM"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/android/internal/telephony/SimSlotManager;->sMe:Lcom/android/internal/telephony/SimSlotManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x5

    invoke-interface {p1, v2}, Lcom/android/internal/telephony/Phone;->getPhoneInstance(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager;->mSubGsm:Lcom/android/internal/telephony/gsm/GSMPhone;

    :cond_0
    :goto_0
    invoke-interface {p1, v5}, Lcom/android/internal/telephony/Phone;->getPhoneInstance(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager;->mGsm:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager;->mGsm:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager;->mContext:Landroid/content/Context;

    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager;->mContext:Landroid/content/Context;

    const-string v3, "SimSlotManager"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "com.basewin.ssm.slot1phone"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/SimSlotManager;->mLastSlot:I

    const-string v2, "SSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Last phone type of slot1 is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/SimSlotManager;->mLastSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/telephony/SimSlotManager;->updateRecord()V

    new-instance v2, Lcom/android/internal/telephony/SimSlotManager$Switcher;

    invoke-direct {v2, p0, v6}, Lcom/android/internal/telephony/SimSlotManager$Switcher;-><init>(Lcom/android/internal/telephony/SimSlotManager;Lcom/android/internal/telephony/SimSlotManager$1;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager;->mSwitcher:Lcom/android/internal/telephony/SimSlotManager$Switcher;

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/internal/telephony/SimSlotManager$BootCompletedReceiver;

    invoke-direct {v3, p0, v6}, Lcom/android/internal/telephony/SimSlotManager$BootCompletedReceiver;-><init>(Lcom/android/internal/telephony/SimSlotManager;Lcom/android/internal/telephony/SimSlotManager$1;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .end local v0           #filter:Landroid/content/IntentFilter;
    :goto_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "SSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RUIM state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SimSlotManager;->mCdma:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager;->mCdma:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0, v8, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForRUIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lcom/android/internal/telephony/SimSlotManager$SimSlot;

    invoke-direct {v2, p0, v7}, Lcom/android/internal/telephony/SimSlotManager$SimSlot;-><init>(Lcom/android/internal/telephony/SimSlotManager;I)V

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager;->mSlot1:Lcom/android/internal/telephony/SimSlotManager$SimSlot;

    new-instance v2, Lcom/android/internal/telephony/SimSlotManager$SimSlot;

    invoke-direct {v2, p0, v8}, Lcom/android/internal/telephony/SimSlotManager$SimSlot;-><init>(Lcom/android/internal/telephony/SimSlotManager;I)V

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager;->mSlot2:Lcom/android/internal/telephony/SimSlotManager$SimSlot;

    :cond_2
    :goto_3
    new-instance v2, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;-><init>(Lcom/android/internal/telephony/SimSlotManager;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager;->mDualSettingMgr:Lcom/android/internal/telephony/SimSlotManager$DualSettingMgr;

    return-void

    .end local v1           #sp:Landroid/content/SharedPreferences;
    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v7}, Lcom/android/internal/telephony/Phone;->getPhoneInstance(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager;->mCdma:Lcom/android/internal/telephony/cdma/CDMAPhone;

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager;->mCdma:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager;->mContext:Landroid/content/Context;

    goto/16 :goto_1

    .restart local v1       #sp:Landroid/content/SharedPreferences;
    :cond_5
    iput-boolean v5, p0, Lcom/android/internal/telephony/SimSlotManager;->mWMReady:Z

    goto :goto_2

    :cond_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/android/internal/telephony/SimSlotManager$SimSlot;

    invoke-direct {v2, p0, v5}, Lcom/android/internal/telephony/SimSlotManager$SimSlot;-><init>(Lcom/android/internal/telephony/SimSlotManager;I)V

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager;->mSlot1:Lcom/android/internal/telephony/SimSlotManager$SimSlot;

    new-instance v2, Lcom/android/internal/telephony/SimSlotManager$SimSlot;

    invoke-direct {v2, p0, v7}, Lcom/android/internal/telephony/SimSlotManager$SimSlot;-><init>(Lcom/android/internal/telephony/SimSlotManager;I)V

    iput-object v2, p0, Lcom/android/internal/telephony/SimSlotManager;->mSlot2:Lcom/android/internal/telephony/SimSlotManager$SimSlot;

    goto :goto_3
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/SimSlotManager;)Lcom/android/internal/telephony/cdma/CDMAPhone;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager;->mCdma:Lcom/android/internal/telephony/cdma/CDMAPhone;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/SimSlotManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/SimSlotManager;->mWMReady:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/SimSlotManager;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SimSlotManager;->doSlotIdMapping(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/SimSlotManager;->mOobeFinish:Z

    return v0
.end method

.method static synthetic access$1302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    sput-boolean p0, Lcom/android/internal/telephony/SimSlotManager;->mOobeFinish:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/SimSlotManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/SimSlotManager;->tryPwrupSwitch()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/SimSlotManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/SimSlotManager;)Lcom/android/internal/telephony/gsm/GSMPhone;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager;->mGsm:Lcom/android/internal/telephony/gsm/GSMPhone;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/SimSlotManager;)Lcom/android/internal/telephony/gsm/GSMPhone;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager;->mSubGsm:Lcom/android/internal/telephony/gsm/GSMPhone;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/SimSlotManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/SimSlotManager;->mPhoneTypeOfSlot1:I

    return v0
.end method

.method private doSlotIdMapping(I)I
    .locals 1
    .parameter "slotId"

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    shl-int/lit8 p1, p1, 0x1

    :cond_0
    return p1
.end method

.method public static getInstance()Lcom/android/internal/telephony/SimSlotManager;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/SimSlotManager;->sMe:Lcom/android/internal/telephony/SimSlotManager;

    return-object v0
.end method

.method private switchSlot()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const-string v2, "SSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request switching slot, current slot1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/SimSlotManager;->mPhoneTypeOfSlot1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager;->mSwitcher:Lcom/android/internal/telephony/SimSlotManager$Switcher;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SimSlotManager$Switcher;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "SSM"

    const-string v2, "Switcher is running, can not switch again"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/SimSlotManager;->mPhoneTypeOfSlot1:I

    if-ne v2, v1, :cond_1

    const/4 v2, 0x2

    iput v2, p0, Lcom/android/internal/telephony/SimSlotManager;->mPhoneTypeOfSlot1:I

    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager;->mGSMUimTypeQueryer:Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->clearQueryFlag()V

    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager;->mSwitcher:Lcom/android/internal/telephony/SimSlotManager$Switcher;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SimSlotManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SimSlotManager$Switcher;->start(Landroid/os/Message;)V

    const-string v2, "SSM"

    const-string v3, "Cancel Monitor"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SimSlotManager;->removeMessages(I)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.basewin.braodcast.state"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v2, "state"

    const/16 v3, 0x9

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/telephony/SimSlotManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    iput v1, p0, Lcom/android/internal/telephony/SimSlotManager;->mPhoneTypeOfSlot1:I

    goto :goto_1
.end method

.method private tryPwrupSwitch()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const-string v6, "SSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tryPwrupSwitch mPwrup "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/telephony/SimSlotManager;->mPwrup:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mWMReady "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/telephony/SimSlotManager;->mWMReady:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v6, p0, Lcom/android/internal/telephony/SimSlotManager;->mPwrup:Z

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/android/internal/telephony/SimSlotManager;->mWMReady:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/SimSlotManager;->mSlot1:Lcom/android/internal/telephony/SimSlotManager$SimSlot;

    invoke-virtual {v6}, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->isIdentifyDone()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/telephony/SimSlotManager;->mPwrup:Z

    const/4 v2, 0x0

    .local v2, flag:Z
    iget v6, p0, Lcom/android/internal/telephony/SimSlotManager;->mLastSlot:I

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/SimSlotManager;->mSlot1:Lcom/android/internal/telephony/SimSlotManager$SimSlot;

    invoke-virtual {v6}, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->cardIsChanged()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    const-string v6, "SSM"

    const-string v7, "No record or card is not changed, assign slot1 to CDMA"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v2, :cond_6

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .local v5, intent:Landroid/content/Intent;
    const-string v6, "android.intent.action.PWRUP_SLOT_SWITCH"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "slot1"

    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "duration"

    const/16 v7, 0xf

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/internal/telephony/SimSlotManager;->mSlot1:Lcom/android/internal/telephony/SimSlotManager$SimSlot;

    invoke-virtual {v6}, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->getCdmaMccMnc()Ljava/lang/String;

    move-result-object v0

    .local v0, cdmaMccMnc:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/SimSlotManager;->mSlot1:Lcom/android/internal/telephony/SimSlotManager$SimSlot;

    invoke-virtual {v6}, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->getGsmMccMnc()Ljava/lang/String;

    move-result-object v3

    .local v3, gsmMccMnc:Ljava/lang/String;
    const-string v1, ""

    .local v1, cdmaOp:Ljava/lang/String;
    const-string v4, ""

    .local v4, gsmOp:Ljava/lang/String;
    if-ne v1, v0, :cond_4

    const-string v6, "cdma"

    const-string v7, "CDMA"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    if-ne v4, v3, :cond_5

    const-string v6, "gsm"

    const-string v7, "GSM"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    const-string v6, "monitor"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v6, 0x1000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/internal/telephony/SimSlotManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .end local v0           #cdmaMccMnc:Ljava/lang/String;
    .end local v1           #cdmaOp:Ljava/lang/String;
    .end local v2           #flag:Z
    .end local v3           #gsmMccMnc:Ljava/lang/String;
    .end local v4           #gsmOp:Ljava/lang/String;
    .end local v5           #intent:Landroid/content/Intent;
    :cond_1
    :goto_3
    return-void

    .restart local v2       #flag:Z
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/SimSlotManager;->mSlot1:Lcom/android/internal/telephony/SimSlotManager$SimSlot;

    invoke-virtual {v6}, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->isDualmodeCard()Z

    move-result v6

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/android/internal/telephony/SimSlotManager;->mLastSlot:I

    if-ne v6, v9, :cond_3

    const-string v6, "SSM"

    const-string v7, "Make user to select"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const-string v6, "SSM"

    const-string v7, "choose as last time"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .restart local v0       #cdmaMccMnc:Ljava/lang/String;
    .restart local v1       #cdmaOp:Ljava/lang/String;
    .restart local v3       #gsmMccMnc:Ljava/lang/String;
    .restart local v4       #gsmOp:Ljava/lang/String;
    .restart local v5       #intent:Landroid/content/Intent;
    :cond_4
    const-string v6, "cdma"

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_5
    const-string v6, "gsm"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .end local v0           #cdmaMccMnc:Ljava/lang/String;
    .end local v1           #cdmaOp:Ljava/lang/String;
    .end local v3           #gsmMccMnc:Ljava/lang/String;
    .end local v4           #gsmOp:Ljava/lang/String;
    .end local v5           #intent:Landroid/content/Intent;
    :cond_6
    iget-object v6, p0, Lcom/android/internal/telephony/SimSlotManager;->mSlot1:Lcom/android/internal/telephony/SimSlotManager$SimSlot;

    invoke-virtual {v6}, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->isDualmodeCard()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/SimSlotManager;->startMonitor()V

    goto :goto_3
.end method

.method private updateRecord()V
    .locals 4

    .prologue
    const-string v1, "SSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRecord phone type of slot1 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/SimSlotManager;->mPhoneTypeOfSlot1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/SimSlotManager;->mContext:Landroid/content/Context;

    const-string v2, "SimSlotManager"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, e:Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.basewin.ssm.slot1phone"

    iget v2, p0, Lcom/android/internal/telephony/SimSlotManager;->mPhoneTypeOfSlot1:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public cancelPIN(I)V
    .locals 3
    .parameter "phoneType"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SimSlotManager;->getSlotIdByPhoneType(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SimSlotManager;->getSimSlot(I)Lcom/android/internal/telephony/SimSlotManager$SimSlot;

    move-result-object v0

    .local v0, slot:Lcom/android/internal/telephony/SimSlotManager$SimSlot;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "cancel pin when slot is not created"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->cancelPIN()V

    return-void
.end method

.method public confirmPIN(I)V
    .locals 3
    .parameter "phoneType"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SimSlotManager;->getSlotIdByPhoneType(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SimSlotManager;->getSimSlot(I)Lcom/android/internal/telephony/SimSlotManager$SimSlot;

    move-result-object v0

    .local v0, slot:Lcom/android/internal/telephony/SimSlotManager$SimSlot;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "confirm pin when slot is not created"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->confirmPIN()V

    return-void
.end method

.method public getPINCode(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneType"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SimSlotManager;->getSlotIdByPhoneType(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SimSlotManager;->getSimSlot(I)Lcom/android/internal/telephony/SimSlotManager$SimSlot;

    move-result-object v0

    .local v0, slot:Lcom/android/internal/telephony/SimSlotManager$SimSlot;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "get pin when slot is not created"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->getPINCode()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPhoneForSlot(I)Lcom/android/internal/telephony/PhoneBase;
    .locals 2
    .parameter "slot"

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    if-ne p1, v1, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/SimSlotManager;->mPhoneTypeOfSlot1:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager;->mCdma:Lcom/android/internal/telephony/cdma/CDMAPhone;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager;->mGsm:Lcom/android/internal/telephony/gsm/GSMPhone;

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/SimSlotManager;->mPhoneTypeOfSlot1:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager;->mGsm:Lcom/android/internal/telephony/gsm/GSMPhone;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager;->mCdma:Lcom/android/internal/telephony/cdma/CDMAPhone;

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_5

    if-ne p1, v1, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager;->mGsm:Lcom/android/internal/telephony/gsm/GSMPhone;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager;->mSubGsm:Lcom/android/internal/telephony/gsm/GSMPhone;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager;->mCdma:Lcom/android/internal/telephony/cdma/CDMAPhone;

    goto :goto_0
.end method

.method public getPhoneTypeById(I)I
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_3

    if-ne p1, v0, :cond_2

    iget v2, p0, Lcom/android/internal/telephony/SimSlotManager;->mPhoneTypeOfSlot1:I

    if-ne v2, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/internal/telephony/SimSlotManager;->mPhoneTypeOfSlot1:I

    if-ne v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_5

    if-ne p1, v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSimSlot(I)Lcom/android/internal/telephony/SimSlotManager$SimSlot;
    .locals 1
    .parameter "slotId"

    .prologue
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager;->mSlot1:Lcom/android/internal/telephony/SimSlotManager$SimSlot;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager;->mSlot2:Lcom/android/internal/telephony/SimSlotManager$SimSlot;

    goto :goto_0
.end method

.method public getSlotIdByPhoneType(I)I
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_3

    if-ne p1, v0, :cond_2

    iget v2, p0, Lcom/android/internal/telephony/SimSlotManager;->mPhoneTypeOfSlot1:I

    if-ne v2, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/internal/telephony/SimSlotManager;->mPhoneTypeOfSlot1:I

    if-ne v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eq p1, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/high16 v11, 0x1000

    const/4 v10, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/SimSlotManager;->getPhoneForSlot(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    .local v5, state:I
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "SSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_RESWITCH_HINT service state "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cdma state "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/SimSlotManager;->mCdma:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " gsm State "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/SimSlotManager;->mGsm:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eq v5, v10, :cond_0

    if-eqz v5, :cond_0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .local v3, intent:Landroid/content/Intent;
    const-string v6, "android.intent.action.PWRUP_SLOT_SWITCH"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "autodetect"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v6, "attach"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v3, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/internal/telephony/SimSlotManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .end local v3           #intent:Landroid/content/Intent;
    .end local v5           #state:I
    :pswitch_2
    iget-object v6, p0, Lcom/android/internal/telephony/SimSlotManager;->mGsm:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .local v1, gsmState:I
    if-eq v1, v10, :cond_0

    if-eqz v1, :cond_0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .local v2, i:Landroid/content/Intent;
    const-string v6, "com.android.phone"

    const-string v7, "com.android.phone.NetworkSetting"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "autoLoadNetwork"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v2, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/internal/telephony/SimSlotManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v1           #gsmState:I
    .end local v2           #i:Landroid/content/Intent;
    :pswitch_3
    const-string v6, "SSM"

    const-string v7, "EVENT_SWITCH_DONE"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, ar:Landroid/os/AsyncResult;
    const/16 v4, 0xb

    .local v4, result:I
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_2

    const/16 v4, 0xc

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/android/internal/telephony/SimSlotManager;->mPhoneTypeOfSlot1:I

    if-ne v6, v9, :cond_3

    iput v8, p0, Lcom/android/internal/telephony/SimSlotManager;->mPhoneTypeOfSlot1:I

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/SimSlotManager;->updateRecord()V

    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.basewin.braodcast.state"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "state"

    const/16 v7, 0xa

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "result"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/internal/telephony/SimSlotManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v3           #intent:Landroid/content/Intent;
    :cond_3
    iput v9, p0, Lcom/android/internal/telephony/SimSlotManager;->mPhoneTypeOfSlot1:I

    goto :goto_1

    :cond_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/android/internal/telephony/SimSlotManager;->mPhoneTypeOfSlot1:I

    if-ne v6, v8, :cond_5

    iput v8, p0, Lcom/android/internal/telephony/SimSlotManager;->mPhoneTypeOfSlot1:I

    goto :goto_1

    :cond_5
    const/4 v6, 0x4

    iput v6, p0, Lcom/android/internal/telephony/SimSlotManager;->mPhoneTypeOfSlot1:I

    goto :goto_1

    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v4           #result:I
    :pswitch_4
    const-string v6, "SSM"

    const-string v7, "EVENT_UPDATE_SLOT_DONE"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/telephony/SimSlotManager;->tryPwrupSwitch()V

    goto/16 :goto_0

    :pswitch_5
    const-string v6, "SSM"

    const-string v7, "EVENT_ON_RUIM_READY"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/internal/telephony/SimSlotManager;->mSlot1:Lcom/android/internal/telephony/SimSlotManager$SimSlot;

    iget-object v7, p0, Lcom/android/internal/telephony/SimSlotManager;->mCdma:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {p0, v10, p1}, Lcom/android/internal/telephony/SimSlotManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->identifyPhone(Lcom/android/internal/telephony/PhoneBase;Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_6
    const-string v6, "SSM"

    const-string v7, "EVENT_ON_SIM_READY"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/telephony/SimSlotManager;->startGSMUimTypeQuery()V

    goto/16 :goto_0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isGsmHasInvalidCard(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager;->mGSMUimTypeQueryer:Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->isInvalidCard(I)Z

    move-result v0

    return v0
.end method

.method public isSwitchable(I)Z
    .locals 3
    .parameter "slotId"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager;->mCdma:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .local v0, phone:Lcom/android/internal/telephony/Phone;
    iget v1, p0, Lcom/android/internal/telephony/SimSlotManager;->mPhoneTypeOfSlot1:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager;->mGsm:Lcom/android/internal/telephony/gsm/GSMPhone;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SimSlotManager;->getSimSlot(I)Lcom/android/internal/telephony/SimSlotManager$SimSlot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->isDualmodeCard()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/SimSlotManager;->mSwitcher:Lcom/android/internal/telephony/SimSlotManager$Switcher;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SimSlotManager$Switcher;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSwitching()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager;->mSwitcher:Lcom/android/internal/telephony/SimSlotManager$Switcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimSlotManager$Switcher;->isRunning()Z

    move-result v0

    return v0
.end method

.method phoneTypeRIL2SSM(I)I
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    if-ne p1, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_3

    if-ne p1, v0, :cond_2

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method phoneTypeSSM2RIL(I)I
    .locals 3
    .parameter "ssmPhoneType"

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    if-ne p1, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_3

    if-ne p1, v0, :cond_2

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public preparePIN(ILjava/lang/String;)V
    .locals 3
    .parameter "phoneType"
    .parameter "code"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SimSlotManager;->getSlotIdByPhoneType(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SimSlotManager;->getSimSlot(I)Lcom/android/internal/telephony/SimSlotManager$SimSlot;

    move-result-object v0

    .local v0, slot:Lcom/android/internal/telephony/SimSlotManager$SimSlot;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "preapre pin when slot is not created"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/SimSlotManager$SimSlot;->preparePIN(Ljava/lang/String;)V

    return-void
.end method

.method public setPhoneTypeForSlot(II)V
    .locals 4
    .parameter "slotId"
    .parameter "phoneType"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SimSlotManager;->getPhoneTypeById(I)I

    move-result v0

    .local v0, currPhone:I
    const-string v1, "SSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPhoneTypeForSlot slotId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phoneType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, p2, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/SimSlotManager;->switchSlot()Z

    :cond_0
    return-void
.end method

.method public startGSMUimTypeQuery()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager;->mGSMUimTypeQueryer:Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->start()V

    return-void
.end method

.method public startGSMUimTypeQueryEx(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SimSlotManager;->mGSMUimTypeQueryer:Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SimSlotManager$GSMUimTypeQuery;->startEx(I)Z

    move-result v0

    return v0
.end method

.method public startManualGsmNetworkSelection()V
    .locals 3

    .prologue
    const/16 v1, 0xe

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SimSlotManager;->removeMessages(I)V

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SimSlotManager;->removeMessages(I)V

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SimSlotManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/SimSlotManager;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public startMonitor()V
    .locals 3

    .prologue
    const/16 v2, 0xd

    const-string v0, "SSM"

    const-string v1, "Start Monitor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SimSlotManager;->removeMessages(I)V

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SimSlotManager;->removeMessages(I)V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SimSlotManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v1, 0xea60

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/SimSlotManager;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public stopManualGsmNetworkSelection()V
    .locals 1

    .prologue
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SimSlotManager;->removeMessages(I)V

    return-void
.end method
