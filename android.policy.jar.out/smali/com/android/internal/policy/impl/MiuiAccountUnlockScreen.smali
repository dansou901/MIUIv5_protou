.class public Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;
.super Landroid/widget/RelativeLayout;
.source "MiuiAccountUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$ViewHolder;
    }
.end annotation


# static fields
.field private static final AWAKE_POKE_MILLIS:I = 0x7530

.field private static final CLOSE_FIND_DEVICE_ACTION:Ljava/lang/String; = "com.xiaomi.action.DISABLE_FIND_DEVICE"

.field private static final FIND_DEVICE_WAKE_TIME:I = 0xea60

.field private static final LOCK_PATTERN_CLASS:Ljava/lang/String; = "com.android.settings.ChooseLockGeneric"

.field private static final LOCK_PATTERN_PACKAGE:Ljava/lang/String; = "com.android.settings"


# instance fields
.field private mAccounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private mAirplaneMode:Landroid/widget/Button;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCancel:Landroid/widget/Button;

.field private mCheckingDialog:Landroid/app/ProgressDialog;

.field private mConnectReceiver:Landroid/content/BroadcastReceiver;

.field private mCurAccount:Landroid/accounts/Account;

.field private mForgotPassword:Z

.field private mGoogleAccountSize:I

.field private mGoogleIcon:Landroid/graphics/drawable/Drawable;

.field private mInstructions:Landroid/widget/TextView;

.field private mIsLockedBySimChange:Z

.field private mIsSimChecking:Z

.field private mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

.field private mLockDeviceIcon:Landroid/widget/ImageView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private mLogin:Landroid/widget/Spinner;

.field private mOk:Landroid/widget/Button;

.field private mOpenConnection:Landroid/widget/Button;

.field private mPassword:Landroid/widget/EditText;

.field private mTopHeader:Landroid/widget/TextView;

.field private mUpdateLockDeviceRunnable:Ljava/lang/Runnable;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mXiaomiIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;Z)V
    .locals 7
    .parameter "context"
    .parameter "configuration"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "lockPatternUtils"
    .parameter "forgotPassword"

    .prologue
    const/4 v5, 0x1

    .line 142
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mAccounts:Ljava/util/ArrayList;

    .line 345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mIsSimChecking:Z

    .line 616
    new-instance v0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$8;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$8;-><init>(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mConnectReceiver:Landroid/content/BroadcastReceiver;

    .line 671
    new-instance v0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$9;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$9;-><init>(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mUpdateLockDeviceRunnable:Ljava/lang/Runnable;

    .line 143
    iput-object p4, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 144
    iput-object p5, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 145
    iput-boolean p6, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mForgotPassword:Z

    .line 146
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->setFocusable(Z)V

    .line 147
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->setFocusableInTouchMode(Z)V

    .line 149
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x603000f

    invoke-virtual {v0, v1, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 152
    const v0, 0x60b0098

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mTopHeader:Landroid/widget/TextView;

    .line 153
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mTopHeader:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x60c0021

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 156
    const v0, 0x60b0003

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mAirplaneMode:Landroid/widget/Button;

    .line 157
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mAirplaneMode:Landroid/widget/Button;

    new-instance v1, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    const v0, 0x60b00c8

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mOpenConnection:Landroid/widget/Button;

    .line 167
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mOpenConnection:Landroid/widget/Button;

    new-instance v1, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$2;-><init>(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    const v0, 0x1020006

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mLockDeviceIcon:Landroid/widget/ImageView;

    .line 191
    const v0, 0x60b0051

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mInstructions:Landroid/widget/TextView;

    .line 192
    const v0, 0x60b0056

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mLogin:Landroid/widget/Spinner;

    .line 193
    const v0, 0x60b0069

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    .line 194
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    new-instance v1, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$3;-><init>(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 202
    const v0, 0x60b003d

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCancel:Landroid/widget/Button;

    .line 203
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    const v0, 0x60b0061

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mOk:Landroid/widget/Button;

    .line 206
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mOk:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->isLockedBySimChange()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mIsLockedBySimChange:Z

    .line 209
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->findAccounts()V

    .line 210
    new-instance v6, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$4;

    invoke-direct {v6, p0, p1}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$4;-><init>(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;Landroid/content/Context;)V

    .line 251
    .local v6, ba:Landroid/widget/BaseAdapter;
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mLogin:Landroid/widget/Spinner;

    invoke-virtual {v0, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 253
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mLogin:Landroid/widget/Spinner;

    new-instance v1, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$5;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$5;-><init>(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 267
    iput-object p3, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 269
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p5

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    .line 272
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->updateLockDevice()V

    .line 273
    return-void

    .line 153
    .end local v6           #ba:Landroid/widget/BaseAdapter;
    :cond_0
    const v0, 0x60c001c

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->setAirplaneMode(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mIsLockedBySimChange:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mIsLockedBySimChange:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;I)Landroid/text/Spannable;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->generateCoolInstructionSpannable(I)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mInstructions:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->postOnCheckPasswordResult(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->getProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mLogin:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->updateLockDevice()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mUpdateLockDeviceRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mIsSimChecking:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mIsSimChecking:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mAccounts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mGoogleAccountSize:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mGoogleIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mXiaomiIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;Landroid/accounts/Account;)Landroid/accounts/Account;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCurAccount:Landroid/accounts/Account;

    return-object p1
.end method

.method private asyncCheckPassword()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 565
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x7530

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 566
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 567
    .local v6, password:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCurAccount:Landroid/accounts/Account;

    if-nez v0, :cond_0

    .line 568
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->postOnCheckPasswordResult(Z)V

    .line 601
    :goto_0
    return-void

    .line 571
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->getProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 572
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 573
    .local v2, options:Landroid/os/Bundle;
    const-string v0, "password"

    invoke-virtual {v2, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCurAccount:Landroid/accounts/Account;

    new-instance v4, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$7;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$7;-><init>(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)V

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->confirmCredentials(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0
.end method

.method private findAccounts()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 462
    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v4

    .line 463
    .local v4, authens:[Landroid/accounts/AuthenticatorDescription;
    move-object v2, v4

    .local v2, arr$:[Landroid/accounts/AuthenticatorDescription;
    array-length v7, v2

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v5, v2, v6

    .line 465
    .local v5, desp:Landroid/accounts/AuthenticatorDescription;
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mContext:Landroid/content/Context;

    iget-object v9, v5, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 466
    .local v3, authContext:Landroid/content/Context;
    iget-object v8, v5, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    const-string v9, "com.google"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 467
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, v5, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mGoogleIcon:Landroid/graphics/drawable/Drawable;

    .line 463
    .end local v3           #authContext:Landroid/content/Context;
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 468
    .restart local v3       #authContext:Landroid/content/Context;
    :cond_1
    iget-object v8, v5, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    const-string v9, "com.xiaomi"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 469
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, v5, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mXiaomiIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 471
    .end local v3           #authContext:Landroid/content/Context;
    :catch_0
    move-exception v8

    goto :goto_1

    .line 476
    .end local v5           #desp:Landroid/accounts/AuthenticatorDescription;
    :cond_2
    const/4 v1, 0x0

    .line 477
    .local v1, accounts:[Landroid/accounts/Account;
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mIsLockedBySimChange:Z

    if-nez v8, :cond_3

    .line 478
    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    const-string v9, "com.google"

    invoke-virtual {v8, v9}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 479
    array-length v8, v1

    iput v8, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mGoogleAccountSize:I

    .line 481
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v7, v2

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v7, :cond_3

    aget-object v0, v2, v6

    .line 482
    .local v0, a:Landroid/accounts/Account;
    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mAccounts:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 486
    .end local v0           #a:Landroid/accounts/Account;
    .end local v2           #arr$:[Landroid/accounts/Account;
    :cond_3
    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    const-string v9, "com.xiaomi"

    invoke-virtual {v8, v9}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 487
    move-object v2, v1

    .restart local v2       #arr$:[Landroid/accounts/Account;
    array-length v7, v2

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v7, :cond_4

    aget-object v0, v2, v6

    .line 488
    .restart local v0       #a:Landroid/accounts/Account;
    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mAccounts:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 491
    .end local v0           #a:Landroid/accounts/Account;
    :cond_4
    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mAccounts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_5

    .line 494
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mIsLockedBySimChange:Z

    if-eqz v8, :cond_6

    .line 495
    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8, v11}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 496
    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8, v11}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 497
    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 502
    :cond_5
    :goto_4
    return-void

    .line 499
    :cond_6
    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v8, v11}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->forgotPattern(Z)V

    goto :goto_4

    .line 472
    .end local v1           #accounts:[Landroid/accounts/Account;
    .local v2, arr$:[Landroid/accounts/AuthenticatorDescription;
    .restart local v5       #desp:Landroid/accounts/AuthenticatorDescription;
    :catch_1
    move-exception v8

    goto :goto_1
.end method

.method private generateCoolInstructionSpannable(I)Landroid/text/Spannable;
    .locals 5
    .parameter "resId"

    .prologue
    .line 287
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 288
    .local v1, ret:Landroid/text/Spannable;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 289
    .local v0, firstReturnCharPos:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 290
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x60d0099

    invoke-direct {v2, v3, v4}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    const/4 v3, 0x0

    const/16 v4, 0x21

    invoke-interface {v1, v2, v3, v0, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 292
    :cond_0
    return-object v1
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_0

    .line 681
    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v0
.end method

.method private getProgressDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 605
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mContext:Landroid/content/Context;

    const v2, 0x60d0041

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    .line 606
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mContext:Landroid/content/Context;

    const v2, 0x60c001b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 608
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 609
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 610
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 341
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 342
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isLockedBySimChange()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 333
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraSettings$Secure;->PERMANENTLY_LOCK_SIM_CHANGE:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 337
    .local v0, permanentlyLockBySimChange:I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private postOnCheckPasswordResult(Z)V
    .locals 1
    .parameter "success"

    .prologue
    .line 409
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->postOnCheckPasswordResult(ZZ)V

    .line 410
    return-void
.end method

.method private postOnCheckPasswordResult(ZZ)V
    .locals 2
    .parameter "success"
    .parameter "showLock"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mLogin:Landroid/widget/Spinner;

    new-instance v1, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$6;-><init>(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;ZZ)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->post(Ljava/lang/Runnable;)Z

    .line 445
    return-void
.end method

.method private setAirplaneMode(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    const/4 v2, 0x1

    .line 347
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 351
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 352
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 353
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 354
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 355
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mIsSimChecking:Z

    .line 356
    return-void

    .line 347
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateLockDevice()V
    .locals 4

    .prologue
    const v1, 0x60c001d

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 505
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mAirplaneMode:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 507
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mLogin:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 508
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 509
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mOk:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 510
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCancel:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mOpenConnection:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 512
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mInstructions:Landroid/widget/TextView;

    const v1, 0x60c0141

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->generateCoolInstructionSpannable(I)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mLockDeviceIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 554
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mTopHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 555
    return-void

    .line 514
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->isConnectivityActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 515
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mAirplaneMode:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 516
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mLogin:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 517
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 518
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mOk:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 519
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->updateLoginAndCancelButton()V

    .line 520
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mOpenConnection:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 521
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mForgotPassword:Z

    if-eqz v0, :cond_1

    .line 522
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mInstructions:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->generateCoolInstructionSpannable(I)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mLockDeviceIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 525
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mInstructions:Landroid/widget/TextView;

    const v1, 0x60c013e

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->generateCoolInstructionSpannable(I)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 530
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mIsSimChecking:Z

    if-eqz v0, :cond_3

    .line 531
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mInstructions:Landroid/widget/TextView;

    const v1, 0x60c013d

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->generateCoolInstructionSpannable(I)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mAirplaneMode:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 533
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mLogin:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 534
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 535
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mOk:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 536
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCancel:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 537
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mOpenConnection:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 538
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mLockDeviceIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 540
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mAirplaneMode:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 541
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mLogin:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 542
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 543
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mOk:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 544
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->updateLoginAndCancelButton()V

    .line 545
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mOpenConnection:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 546
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mLockDeviceIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 547
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mForgotPassword:Z

    if-eqz v0, :cond_4

    .line 548
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mInstructions:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->generateCoolInstructionSpannable(I)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 551
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mInstructions:Landroid/widget/TextView;

    const v1, 0x60c013f

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->generateCoolInstructionSpannable(I)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private updateLoginAndCancelButton()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 276
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mForgotPassword:Z

    if-nez v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCancel:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mOk:Landroid/widget/Button;

    const v1, 0x602010c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 284
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCancel:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mOk:Landroid/widget/Button;

    const v1, 0x60200b7

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 282
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mContext:Landroid/content/Context;

    const v1, 0x60b0017

    invoke-static {v0, v1}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 322
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x7530

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 324
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 327
    return-void
.end method

.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 389
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 393
    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 394
    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 395
    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 396
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 449
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 451
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 456
    :goto_0
    const/4 v0, 0x1

    .line 458
    :goto_1
    return v0

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->forgotPattern(Z)V

    goto :goto_0

    .line 458
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public isConnectivityActive()Z
    .locals 4

    .prologue
    .line 558
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 560
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 561
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 297
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 298
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 299
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mConnectReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 302
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 401
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mOk:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 402
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->asyncCheckPassword()V

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCancel:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->forgotPattern(Z)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mConnectReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 307
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mUpdateLockDeviceRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 308
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 309
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 372
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onPause()V

    .line 373
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 374
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 375
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onResume()V

    .line 385
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 330
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasWindowFocus"

    .prologue
    .line 313
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 314
    if-eqz p1, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mLogin:Landroid/widget/Spinner;

    const v1, 0x60200cc

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    .line 319
    :goto_0
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mLogin:Landroid/widget/Spinner;

    const v1, 0x60200ca

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    goto :goto_0
.end method
