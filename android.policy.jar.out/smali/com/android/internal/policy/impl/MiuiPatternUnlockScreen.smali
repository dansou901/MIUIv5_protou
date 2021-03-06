.class Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;
.super Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;
.source "MiuiPatternUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$UnlockPatternListener;
    }
.end annotation


# static fields
.field private static final MIN_PATTERN_BEFORE_POKE_WAKELOCK:I = 0x2

.field private static final PATTERN_CLEAR_TIMEOUT_MS:I = 0x7d0

.field private static final UNLOCK_PATTERN_WAKE_INTERVAL_FIRST_DOTS_MS:I = 0x7d0

.field private static final UNLOCK_PATTERN_WAKE_INTERVAL_MS:I = 0x1b58


# instance fields
.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCancelPatternRunnable:Ljava/lang/Runnable;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private final mEmergencyCallListener:Landroid/view/View$OnClickListener;

.field private final mErrorMsg:Landroid/widget/TextView;

.field private mFailedPatternAttemptsSinceLastTimeout:I

.field private final mForgotPatternListener:Landroid/view/View$OnClickListener;

.field private mLastPokeTime:J

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockPatternView:Lcom/android/internal/widget/MiuiLockPatternView;

.field private mTotalFailedPatternAttempts:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;I)V
    .locals 9
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "totalFailedAttempts"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 104
    invoke-direct {p0, p1, p4}, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 45
    iput v5, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    .line 46
    iput v5, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mTotalFailedPatternAttempts:I

    .line 47
    iput-object v8, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 61
    const-wide/16 v6, -0x1b58

    iput-wide v6, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLastPokeTime:J

    .line 66
    new-instance v3, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mCancelPatternRunnable:Ljava/lang/Runnable;

    .line 72
    new-instance v3, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$2;-><init>(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mForgotPatternListener:Landroid/view/View$OnClickListener;

    .line 79
    new-instance v3, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$3;-><init>(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mEmergencyCallListener:Landroid/view/View$OnClickListener;

    .line 105
    iput-object p3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 106
    iput-object p5, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 107
    iput p6, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mTotalFailedPatternAttempts:I

    .line 108
    rem-int/lit8 v3, p6, 0x5

    iput v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    .line 111
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 113
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v3, 0x6030057

    invoke-static {p1, v3, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->addUnlockView(Landroid/view/View;)V

    .line 115
    const v3, 0x60b00b8

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mErrorMsg:Landroid/widget/TextView;

    .line 116
    const v3, 0x60b00c5

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MiuiLockPatternView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/MiuiLockPatternView;

    .line 118
    const v3, 0x60b00c4

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    .line 119
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mEmergencyCallListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/MiuiLockPatternView;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/MiuiLockPatternView;->setSaveEnabled(Z)V

    .line 122
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/MiuiLockPatternView;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/MiuiLockPatternView;->setFocusable(Z)V

    .line 123
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/MiuiLockPatternView;

    new-instance v6, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$UnlockPatternListener;

    invoke-direct {v6, p0, v8}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$UnlockPatternListener;-><init>(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$1;)V

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/MiuiLockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 126
    iget-object v6, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/MiuiLockPatternView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Lcom/android/internal/widget/MiuiLockPatternView;->setInStealthMode(Z)V

    .line 129
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/MiuiLockPatternView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/MiuiLockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 131
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->setFocusableInTouchMode(Z)V

    .line 133
    const v3, 0x60b00bd

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 134
    .local v0, emergenceCallButton:Landroid/view/View;
    const v3, 0x60b00be

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 135
    .local v1, forgotPasscodeButton:Landroid/view/View;
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mEmergencyCallListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mForgotPatternListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    const v3, 0x60202da

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->setUnlockScreenInputAreaBackground(I)V

    .line 139
    return-void

    .end local v0           #emergenceCallButton:Landroid/view/View;
    .end local v1           #forgotPasscodeButton:Landroid/view/View;
    :cond_0
    move v3, v5

    .line 126
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;)Lcom/android/internal/widget/MiuiLockPatternView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/MiuiLockPatternView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mCancelPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$508(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mTotalFailedPatternAttempts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mTotalFailedPatternAttempts:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    return p1
.end method

.method static synthetic access$608(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->handleAttemptLockout(J)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->hideOverlayDialog()V

    return-void
.end method

.method private handleAttemptLockout(J)V
    .locals 8
    .parameter "elapsedRealtimeDeadline"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/MiuiLockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MiuiLockPatternView;->setEnabled(Z)V

    .line 276
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/MiuiLockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/MiuiLockPatternView;->clearPattern()V

    .line 277
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->showOverlayDialog()V

    .line 278
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 279
    .local v6, elapsedRealtime:J
    new-instance v0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$4;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$4;-><init>(Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;JJ)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen$4;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 293
    return-void
.end method

.method private hideOverlayDialog()V
    .locals 2

    .prologue
    .line 306
    const v0, 0x60b00c0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 307
    return-void
.end method

.method private showOverlayDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 296
    const v1, 0x60b00c0

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 297
    const v1, 0x60b00be

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 298
    .local v0, forgotPasscodeButton:Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mEnableFallback:Z

    if-eqz v1, :cond_0

    .line 299
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 303
    :goto_0
    return-void

    .line 301
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 204
    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 205
    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 206
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/MiuiLockPatternView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MiuiLockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 207
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 147
    .local v0, result:Z
    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLastPokeTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1af4

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 150
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLastPokeTime:J

    .line 151
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 153
    :cond_0
    return v0
.end method

.method public displayErrorMsg(I)V
    .locals 1
    .parameter "errorMsgResourceId"

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->displayErrorMsg(Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public displayErrorMsg(Ljava/lang/String;)V
    .locals 2
    .parameter "errorMsg"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mErrorMsg:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mErrorMsg:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    return-void
.end method

.method public hideErrorMsg()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mErrorMsg:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyboardChange(Z)V
    .locals 0
    .parameter "isKeyboardOpen"

    .prologue
    .line 157
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 170
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->hideErrorMsg()V

    .line 190
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/MiuiLockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/MiuiLockPatternView;->enableInput()V

    .line 191
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/MiuiLockPatternView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/MiuiLockPatternView;->setEnabled(Z)V

    .line 192
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->hideOverlayDialog()V

    .line 193
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/MiuiLockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/MiuiLockPatternView;->clearPattern()V

    .line 196
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 197
    .local v0, deadline:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 198
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->handleAttemptLockout(J)V

    .line 200
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasWindowFocus"

    .prologue
    .line 211
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/MiuiCommonUnlockScreen;->onWindowFocusChanged(Z)V

    .line 212
    if-eqz p1, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiPatternUnlockScreen;->onResume()V

    .line 216
    :cond_0
    return-void
.end method
