.class Lcom/android/internal/policy/impl/MiuiGlobalActions;
.super Ljava/lang/Object;
.source "MiuiGlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;,
        Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction;,
        Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;,
        Lcom/android/internal/policy/impl/MiuiGlobalActions$Action;,
        Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;
    }
.end annotation


# static fields
.field private static final DIALOG_DISMISS_DELAY:I = 0x12c

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final SHOW_SILENT_TOGGLE:Z = true

.field private static final TAG:Ljava/lang/String; = "GlobalActions"


# instance fields
.field private mAdapter:Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;

.field private mAirplaneModeOn:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction;

.field private mAirplaneState:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mDialog:Landroid/app/AlertDialog;

.field private final mDialogLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mHandler:Landroid/os/Handler;

.field private mIsWaitingForEcmExit:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/MiuiGlobalActions$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardShowing:Z

.field private mMuteToggle:Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private mSecurityHelper:Lmiui/security/ChooseLockSettingsHelper;

.field private mSilentModeAction:Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;

.field private final mToken:Landroid/os/IBinder;

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 4
    .parameter "context"
    .parameter "windowManagerFuncs"

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mToken:Landroid/os/IBinder;

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mKeyguardShowing:Z

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDeviceProvisioned:Z

    sget-object v2, Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mIsWaitingForEcmExit:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mSecurityHelper:Lmiui/security/ChooseLockSettingsHelper;

    new-instance v2, Lcom/android/internal/policy/impl/MiuiGlobalActions$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/MiuiGlobalActions$1;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialogLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    new-instance v2, Lcom/android/internal/policy/impl/MiuiGlobalActions$6;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/MiuiGlobalActions$6;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/internal/policy/impl/MiuiGlobalActions$7;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/MiuiGlobalActions$7;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v2, Lcom/android/internal/policy/impl/MiuiGlobalActions$8;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/MiuiGlobalActions$8;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/internal/policy/impl/MiuiGlobalActions$9;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/MiuiGlobalActions$9;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    const v3, 0x1030073

    invoke-direct {v2, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    new-instance v2, Lmiui/security/ChooseLockSettingsHelper;

    invoke-direct {v2, p1}, Lmiui/security/ChooseLockSettingsHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mSecurityHelper:Lmiui/security/ChooseLockSettingsHelper;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/MiuiGlobalActions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/MiuiGlobalActions;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->changeAirplaneModeSystemSetting(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/MiuiGlobalActions;Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;)Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mKeyguardShowing:Z

    return v0
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .locals 4
    .parameter "on"

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createDialog()Landroid/app/AlertDialog;
    .locals 10

    .prologue
    new-instance v0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;

    new-instance v0, Lcom/android/internal/policy/impl/MiuiGlobalActions$2;

    const v2, 0x602006f

    const v3, 0x6020070

    const v4, 0x60c0014

    const v5, 0x60c0013

    const v6, 0x60c0012

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/MiuiGlobalActions$2;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;IIIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/policy/impl/MiuiGlobalActions$3;

    const v2, 0x6020073

    const v3, 0x60c0011

    invoke-direct {v1, p0, v2, v3}, Lcom/android/internal/policy/impl/MiuiGlobalActions$3;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/policy/impl/MiuiGlobalActions$4;

    const v2, 0x6020074

    const v3, 0x60c000d

    invoke-direct {v1, p0, v2, v3}, Lcom/android/internal/policy/impl/MiuiGlobalActions$4;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/internal/policy/impl/MiuiGlobalActions$5;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->getMuteIconResId()I

    move-result v1

    const v2, 0x60c0029

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/MiuiGlobalActions$5;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;II)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mMuteToggle:Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mMuteToggle:Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;Lcom/android/internal/policy/impl/MiuiGlobalActions$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;

    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    const v1, 0x60d003f

    invoke-direct {v7, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .local v7, ab:Landroid/app/AlertDialog$Builder;
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;

    invoke-virtual {v7, v0, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .local v8, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v8}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    .local v9, window:Landroid/view/Window;
    const/16 v0, 0x7d8

    invoke-virtual {v9, v0}, Landroid/view/Window;->setType(I)V

    const/16 v0, 0x11

    invoke-virtual {v9, v0}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {v8, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object v8
.end method

.method private getMuteIconResId()I
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .local v0, silentModeOn:Z
    :goto_0
    if-eqz v0, :cond_1

    const v1, 0x6020072

    :goto_1
    return v1

    .end local v0           #silentModeOn:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0       #silentModeOn:Z
    :cond_1
    const v1, 0x6020071

    goto :goto_1
.end method

.method private prepareDialog()V
    .locals 17

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mMuteToggle:Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->getMuteIconResId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->setIcon(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;->notifyDataSetChanged()V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mKeyguardShowing:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    :goto_0
    new-instance v11, Landroid/content/IntentFilter;

    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v11, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v11, filter:Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x100

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/WindowManager;

    .local v16, winMgr:Landroid/view/WindowManager;
    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    .local v10, defaultDisplay:Landroid/view/Display;
    invoke-virtual {v10}, Landroid/view/Display;->getRawWidth()I

    move-result v2

    invoke-virtual {v10}, Landroid/view/Display;->getRawHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v15

    .local v15, width:I
    invoke-virtual {v10}, Landroid/view/Display;->getRawWidth()I

    move-result v2

    invoke-virtual {v10}, Landroid/view/Display;->getRawHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v12

    .local v12, height:I
    div-int/lit8 v2, v15, 0x3

    div-int/lit8 v3, v12, 0x3

    invoke-static {v2, v3}, Landroid/view/Surface;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v8

    .local v8, backgroundOriginal:Landroid/graphics/Bitmap;
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, blurBgBitmap:Landroid/graphics/Bitmap;
    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    const/16 v2, 0xa

    invoke-static {v8, v1, v2}, Lmiui/util/ImageUtils;->fastBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v9

    .local v9, currentScreenRotationDegree:I
    if-eqz v9, :cond_0

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .local v6, matrix:Landroid/graphics/Matrix;
    mul-int/lit8 v2, v9, 0x5a

    rsub-int v2, v2, 0x168

    int-to-float v2, v2

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .end local v6           #matrix:Landroid/graphics/Matrix;
    :cond_0
    const/4 v2, 0x2

    new-array v14, v2, [Landroid/graphics/drawable/Drawable;

    .local v14, layers:[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v3, v14, v2

    const/4 v2, 0x1

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v4, -0x5100

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v3, v14, v2

    new-instance v13, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v13, v14}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .local v13, layerDrawable:Landroid/graphics/drawable/LayerDrawable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .end local v1           #blurBgBitmap:Landroid/graphics/Bitmap;
    .end local v8           #backgroundOriginal:Landroid/graphics/Bitmap;
    .end local v9           #currentScreenRotationDegree:I
    .end local v10           #defaultDisplay:Landroid/view/Display;
    .end local v11           #filter:Landroid/content/IntentFilter;
    .end local v12           #height:I
    .end local v13           #layerDrawable:Landroid/graphics/drawable/LayerDrawable;
    .end local v14           #layers:[Landroid/graphics/drawable/Drawable;
    .end local v15           #width:I
    .end local v16           #winMgr:Landroid/view/WindowManager;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;

    invoke-virtual {v1, p2}, Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/MiuiGlobalActions$Action;

    move-result-object v1

    instance-of v1, v1, Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;

    if-nez v1, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;

    invoke-virtual {v1, p2}, Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/MiuiGlobalActions$Action;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/MiuiGlobalActions$Action;->onPress()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "click_global_action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5
    .parameter "dialog"

    .prologue
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialogLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mKeyguardShowing:Z

    if-eqz v2, :cond_0

    const-string v2, "statusbar"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .local v1, statusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #statusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialog:Landroid/app/AlertDialog;

    return-void

    .restart local v1       #statusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public showDialog(ZZ)V
    .locals 5
    .parameter "keyguardShowing"
    .parameter "isDeviceProvisioned"

    .prologue
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mKeyguardShowing:Z

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDeviceProvisioned:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->createDialog()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->prepareDialog()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialogLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mKeyguardShowing:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_1
    const-string v2, "statusbar"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .local v1, statusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    const/high16 v2, 0x800

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
