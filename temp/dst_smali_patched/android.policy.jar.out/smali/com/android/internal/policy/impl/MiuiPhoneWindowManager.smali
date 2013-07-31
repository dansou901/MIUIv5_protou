.class public Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;
.super Lcom/android/internal/policy/impl/PhoneWindowManager;
.source "MiuiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MiuiSettingsObserver;,
        Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;,
        Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MagnifierInputEventReceiver;,
        Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$StatusBarInputEventReceiver;
    }
.end annotation


# static fields
.field private static final BTN_MOUSE:I = 0x110

.field private static final KEEP_TORCH_ON_THRESHOLD:I = 0x1388

.field private static final SCREEN_OFF_VIBRATION_IN_MS:I = 0x3e8

.field static final TYPE_LAYER_MULTIPLIER:I = 0x2710

.field static final TYPE_LAYER_OFFSET:I = 0x3e8

.field private static sPhoneWindowManager:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;


# instance fields
.field private mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private mBackPressed:Z

.field private mBinder:Landroid/os/Binder;

.field mCameraKeyWakeScreen:Z

.field private mDisableProximitor:Z

.field private mDownX:I

.field private mDownY:I

.field private mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

.field private mHasCameraFlash:Z

.field private mHomeDownWhileScreenOn:Z

.field private mHomePressed:Z

.field private mIsStatusBarVisibleInFullscreen:Z

.field private mIsTouchDown:Z

.field private mMagnifier:Lcom/android/internal/policy/impl/MagnifierPopupWindow;

.field private mMagnifierInputChannel:Landroid/view/InputChannel;

.field private mMagnifierInputEventReceiver:Landroid/view/InputEventReceiver;

.field private mMenuPressed:Z

.field private mMiuiBootMsgDialog:Landroid/app/Dialog;

.field private mMsgText:Landroid/widget/TextView;

.field mPowerLongPressOriginal:Ljava/lang/Runnable;

.field private mProximitySensor:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

.field mScreenButtonsDisabled:Z

.field private mScreenKeyLongPress:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

.field private mScreenOffReason:I

.field private final mScreenOffToKeepTorchOnRunnable:Ljava/lang/Runnable;

.field mScreenshotReceiver:Landroid/content/BroadcastReceiver;

.field private mShortcutTriggered:Z

.field private mShowMagnifier:Z

.field mShowMagnifierReceiver:Landroid/content/BroadcastReceiver;

.field private mSoftKeyboardRect:Landroid/graphics/Rect;

.field private mSoftKeyboardWinToken:Landroid/os/IBinder;

.field mStatusBarExitFullscreenReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusBarInputChannel:Landroid/view/InputChannel;

.field private mStatusBarInputEventReceiver:Landroid/view/InputEventReceiver;

.field private mTimeOfTorchTurnedOn:J

.field private mTorchEnabled:Z

.field private mTorchStateReceiver:Landroid/content/BroadcastReceiver;

.field mTrackballWakeScreen:Z

.field private mVolumeDownPressed:Z

.field mVolumeKeyWakeScreen:Z

.field private mVolumeUpPressed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->sPhoneWindowManager:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->getPowerLongPress()Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mPowerLongPressOriginal:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mTorchStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;-><init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mScreenOffToKeepTorchOnRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mBinder:Landroid/os/Binder;

    new-instance v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$5;-><init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarExitFullscreenReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$6;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$6;-><init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mScreenshotReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$7;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$7;-><init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mShowMagnifierReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHasCameraFlash:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mTorchEnabled:Z

    new-instance v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;-><init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mTorchEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->setStatusBarInFullscreen(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMsgText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMsgText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mIsStatusBarVisibleInFullscreen:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mDownX:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mDownX:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mDownY:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mDownY:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mIsTouchDown:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mIsTouchDown:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mShowMagnifier:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mShowMagnifier:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mShortcutTriggered:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mShortcutTriggered:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method public static getInstance()Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->sPhoneWindowManager:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    return-object v0
.end method

.method static getStatusBarManagerService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 3

    .prologue
    const-string v1, "statusbar"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .local v0, service:Lcom/android/internal/statusbar/IStatusBarService;
    if-nez v0, :cond_0

    const-string v1, "WindowManager"

    const-string v2, "Unable to find IStatusBarService interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method static getWindownManagerService()Landroid/view/IWindowManager;
    .locals 3

    .prologue
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .local v0, service:Landroid/view/IWindowManager;
    if-nez v0, :cond_0

    const-string v1, "WindowManager"

    const-string v2, "Unable to find IWindowManager interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private releaseScreenOnProximitySensor()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mSystemReady:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mDisableProximitor:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mProximitySensor:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->release()Z

    move-result v0

    goto :goto_0
.end method

.method private setStatusBarInFullscreen(Z)V
    .locals 5
    .parameter "show"

    .prologue
    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mIsStatusBarVisibleInFullscreen:Z

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz p1, :cond_0

    const/high16 v1, 0x2000

    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mBinder:Landroid/os/Binder;

    const-string v4, "android"

    invoke-interface {v2, v1, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private setTorch(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mTorchEnabled:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.TOGGLE_TORCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "miui.intent.extra.IS_ENABLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .parameter "win"
    .parameter "attrs"

    .prologue
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x4000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    goto :goto_0
.end method

.method checkProcessRunning(Ljava/lang/String;)Z
    .locals 7
    .parameter "processName"

    .prologue
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, am:Landroid/app/ActivityManager;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .local v3, procs:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .local v2, info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .parameter "win"
    .parameter "attrs"

    .prologue
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x4000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    goto :goto_0
.end method

.method public finishAnimationLw()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .local v1, statusBar:Landroid/view/WindowManagerPolicy$WindowState;
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mIsStatusBarVisibleInFullscreen:Z

    if-eqz v2, :cond_0

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    :cond_0
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishAnimationLw()I

    move-result v0

    .local v0, result:I
    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lmiui/app/ExtraStatusBarManager;->isExpandableUnderFullscreen(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mIsStatusBarVisibleInFullscreen:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarInputChannel:Landroid/view/InputChannel;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const-string v3, "StatusBarView"

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarInputChannel:Landroid/view/InputChannel;

    new-instance v2, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$StatusBarInputEventReceiver;

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarInputChannel:Landroid/view/InputChannel;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$StatusBarInputEventReceiver;-><init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarInputEventReceiver:Landroid/view/InputEventReceiver;

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarInputChannel:Landroid/view/InputChannel;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v2}, Landroid/view/InputChannel;->dispose()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarInputChannel:Landroid/view/InputChannel;

    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarInputEventReceiver:Landroid/view/InputEventReceiver;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarInputEventReceiver:Landroid/view/InputEventReceiver;

    invoke-virtual {v2}, Landroid/view/InputEventReceiver;->dispose()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarInputEventReceiver:Landroid/view/InputEventReceiver;

    goto :goto_0
.end method

.method getMagnifier()Lcom/android/internal/policy/impl/MagnifierPopupWindow;
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMagnifier:Lcom/android/internal/policy/impl/MagnifierPopupWindow;

    if-nez v1, :cond_0

    const/16 v1, 0xbb5

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x2710

    add-int/lit16 v0, v1, 0x3e8

    .local v0, maxLayer:I
    new-instance v1, Lcom/android/internal/policy/impl/MagnifierPopupWindow;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/android/internal/policy/impl/MagnifierPopupWindow;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMagnifier:Lcom/android/internal/policy/impl/MagnifierPopupWindow;

    .end local v0           #maxLayer:I
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMagnifier:Lcom/android/internal/policy/impl/MagnifierPopupWindow;

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSoftKeyboardRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rect"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mSoftKeyboardRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getSoftKeyboardToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mSoftKeyboardWinToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public hideBootMessages()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$9;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$9;-><init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Landroid/os/LocalPowerManager;)V
    .locals 6
    .parameter "context"
    .parameter "windowManager"
    .parameter "windowManagerFuncs"
    .parameter "powerManager"

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Landroid/os/LocalPowerManager;)V

    sput-object p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->sPhoneWindowManager:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mSoftKeyboardRect:Landroid/graphics/Rect;

    new-instance v2, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MiuiSettingsObserver;

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MiuiSettingsObserver;-><init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Landroid/os/Handler;)V

    .local v2, settingsObserver:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MiuiSettingsObserver;
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MiuiSettingsObserver;->observe()V

    new-instance v3, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$2;-><init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)V

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->setPowerLongPress(Ljava/lang/Runnable;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.CAPTURE_SCREENSHOT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mScreenshotReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v3, "com.miui.app.ExtraStatusBarManager.EXIT_FULLSCREEN"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarExitFullscreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .local v1, pm:Landroid/content/pm/PackageManager;
    const-string v3, "android.hardware.camera.flash"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHasCameraFlash:Z

    new-instance v3, Lmiui/util/HapticFeedbackUtil;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const-string v4, "Magnifier"

    invoke-interface {v3, v4}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMagnifierInputChannel:Landroid/view/InputChannel;

    new-instance v3, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MagnifierInputEventReceiver;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMagnifierInputChannel:Landroid/view/InputChannel;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MagnifierInputEventReceiver;-><init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMagnifierInputEventReceiver:Landroid/view/InputEventReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.SHOW_MAGNIFIER"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mShowMagnifierReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    const-string v3, "miui.intent.action.TOGGLE_TORCH"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .restart local v0       #filter:Landroid/content/IntentFilter;
    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mTorchStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 12
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    const-wide/16 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .local v2, keyCode:I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    .local v4, repeatCount:I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v10

    if-nez v10, :cond_2

    move v0, v7

    .local v0, down:Z
    :goto_0
    if-eqz v0, :cond_0

    if-nez v4, :cond_0

    iget-object v10, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    invoke-virtual {v10, p1}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->setWin(Landroid/view/WindowManagerPolicy$WindowState;)V

    :cond_0
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mShortcutTriggered:Z

    if-nez v10, :cond_1

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mSystemReady:Z

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mProximitySensor:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    invoke-virtual {v10, p2}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->shouldBeBlocked(Landroid/view/KeyEvent;)Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_1
    move-wide v6, v8

    :goto_1
    return-wide v6

    .end local v0           #down:Z
    :cond_2
    move v0, v6

    goto :goto_0

    .restart local v0       #down:Z
    :cond_3
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mScreenButtonsDisabled:Z

    if-eqz v10, :cond_4

    sparse-switch v2, :sswitch_data_0

    :cond_4
    const/4 v10, 0x3

    if-ne v2, v10, :cond_9

    iget-object v10, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v10

    if-eqz v10, :cond_b

    if-eqz v0, :cond_b

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHasCameraFlash:Z

    if-eqz v10, :cond_b

    if-nez v4, :cond_6

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mScreenOnFully:Z

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHomeDownWhileScreenOn:Z

    :cond_5
    :goto_2
    move-wide v6, v8

    goto :goto_1

    :sswitch_0
    move-wide v6, v8

    goto :goto_1

    :cond_6
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mTorchEnabled:Z

    if-eqz v10, :cond_7

    rem-int/lit8 v10, v4, 0xa

    const/4 v11, 0x6

    if-ne v10, v11, :cond_7

    iget-object v10, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    :cond_7
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHomeDownWhileScreenOn:Z

    if-eqz v10, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mTorchEnabled:Z

    if-nez v10, :cond_8

    move v6, v7

    :cond_8
    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->setTorch(Z)V

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mTorchEnabled:Z

    if-eqz v6, :cond_5

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mShortcutTriggered:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mTimeOfTorchTurnedOn:J

    iget-object v6, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mScreenOffToKeepTorchOnRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0x1388

    invoke-virtual {v6, v7, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_9
    const/4 v10, 0x4

    if-ne v2, v10, :cond_b

    if-eqz v0, :cond_b

    iget-object v10, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v10

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "enable_snapshot_screenlock"

    invoke-static {v10, v11, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .local v5, snapshotFlag:I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v10

    if-eqz v10, :cond_b

    if-eqz v5, :cond_b

    iget-object v10, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v10

    if-nez v10, :cond_b

    iget-object v10, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .local v3, packageManager:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .local v1, intent:Landroid/content/Intent;
    const/high16 v10, 0x1000

    invoke-virtual {v1, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v10, 0x800

    invoke-virtual {v1, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v10, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "captureAfterLaunch"

    invoke-virtual {v1, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v10, "android.intent.extras.CAMERA_FACING"

    invoke-virtual {v1, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v3, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_a

    iget-object v6, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->keyguardDone(Z)V

    iget-object v6, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_a
    move-wide v6, v8

    goto/16 :goto_1

    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #packageManager:Landroid/content/pm/PackageManager;
    .end local v5           #snapshotFlag:I
    :cond_b
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v6

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .locals 22
    .parameter "event"
    .parameter "policyFlags"
    .parameter "isScreenOn"

    .prologue
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    .local v10, keyCode:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v18

    if-nez v18, :cond_6

    const/4 v6, 0x1

    .local v6, down:Z
    :goto_0
    const/high16 v18, 0x100

    and-int v18, v18, p2

    if-eqz v18, :cond_7

    const/4 v8, 0x1

    .local v8, isInjected:Z
    :goto_1
    if-nez v6, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->remove()V

    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mScreenButtonsDisabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    sparse-switch v10, :sswitch_data_0

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMenuPressed:Z

    move/from16 v18, v0

    if-nez v18, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mBackPressed:Z

    move/from16 v18, v0

    if-nez v18, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mVolumeUpPressed:Z

    move/from16 v18, v0

    if-nez v18, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mVolumeDownPressed:Z

    move/from16 v18, v0

    if-nez v18, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHomePressed:Z

    move/from16 v18, v0

    if-nez v18, :cond_2

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mShortcutTriggered:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->init()V

    :cond_2
    const/16 v18, 0x52

    move/from16 v0, v18

    if-ne v10, v0, :cond_a

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMenuPressed:Z

    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mShortcutTriggered:Z

    move/from16 v18, v0

    if-nez v18, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mSystemReady:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mBackPressed:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mVolumeUpPressed:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->releaseScreenOnProximitySensor()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mShortcutTriggered:Z

    :cond_4
    if-eqz p3, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v11

    .local v11, keyguardActive:Z
    :goto_4
    if-nez p3, :cond_5

    if-eqz v8, :cond_f

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    move/from16 v18, v0

    if-eqz v18, :cond_14

    if-eqz v11, :cond_14

    const/16 v18, 0x1b

    move/from16 v0, v18

    if-ne v10, v0, :cond_14

    if-nez v6, :cond_14

    const/16 v18, 0x4

    .end local v11           #keyguardActive:Z
    :goto_5
    return v18

    .end local v6           #down:Z
    .end local v8           #isInjected:Z
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_0

    .restart local v6       #down:Z
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_1

    .restart local v8       #isInjected:Z
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v18

    if-nez v18, :cond_0

    sparse-switch v10, :sswitch_data_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->remove()V

    goto/16 :goto_2

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    move-object/from16 v18, v0

    const-string v19, "screen_key_long_press_menu"

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->send(Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    move-object/from16 v18, v0

    const-string v19, "screen_key_long_press_home"

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->send(Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    move-object/from16 v18, v0

    const-string v19, "screen_key_long_press_back"

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->send(Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_3
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHomePressed:Z

    :sswitch_4
    const/16 v18, 0x0

    goto :goto_5

    :sswitch_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHomePressed:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    if-nez v6, :cond_9

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHomePressed:Z

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->callInterceptPowerKeyUp(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    new-instance v19, Landroid/content/Intent;

    const-string v20, "com.miui.app.ExtraStatusBarManager.TRIGGER_TOGGLE_SCREEN_BUTTONS"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_9
    const/16 v18, 0x0

    goto :goto_5

    :cond_a
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v10, v0, :cond_b

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mBackPressed:Z

    goto/16 :goto_3

    :cond_b
    const/16 v18, 0x18

    move/from16 v0, v18

    if-ne v10, v0, :cond_c

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mVolumeUpPressed:Z

    goto/16 :goto_3

    :cond_c
    const/16 v18, 0x19

    move/from16 v0, v18

    if-ne v10, v0, :cond_d

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mVolumeDownPressed:Z

    goto/16 :goto_3

    :cond_d
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v10, v0, :cond_3

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHomePressed:Z

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v11

    goto/16 :goto_4

    .restart local v11       #keyguardActive:Z
    :cond_f
    const/4 v9, 0x1

    .local v9, isWakeKey:Z
    const/4 v2, 0x0

    .local v2, allowToWake:Z
    sparse-switch v10, :sswitch_data_2

    const/4 v9, 0x0

    :cond_10
    :goto_6
    if-eqz v9, :cond_14

    if-eqz v2, :cond_13

    if-eqz v6, :cond_11

    const/16 v18, 0x0

    goto/16 :goto_5

    :sswitch_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mTrackballWakeScreen:Z

    goto :goto_6

    :sswitch_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    goto :goto_6

    :sswitch_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mVolumeKeyWakeScreen:Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mScreenOffReason:I

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    const/4 v2, 0x0

    goto :goto_6

    :cond_11
    if-eqz v11, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v18, v0

    const/16 v19, 0x1a

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onWakeKeyWhenKeyguardShowingTq(IZ)Z

    const/16 v18, 0x0

    goto/16 :goto_5

    :cond_12
    const/16 v18, 0x2

    goto/16 :goto_5

    :cond_13
    and-int/lit8 p2, p2, -0x4

    .end local v2           #allowToWake:Z
    .end local v9           #isWakeKey:Z
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mShortcutTriggered:Z

    move/from16 v18, v0

    if-nez v18, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMenuPressed:Z

    move/from16 v18, v0

    if-eqz v18, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mVolumeUpPressed:Z

    move/from16 v18, v0

    if-eqz v18, :cond_15

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mShortcutTriggered:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->setMaxBacklightBrightness()V

    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mShortcutTriggered:Z

    move/from16 v18, v0

    if-nez v18, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMenuPressed:Z

    move/from16 v18, v0

    if-eqz v18, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mVolumeDownPressed:Z

    move/from16 v18, v0

    if-eqz v18, :cond_16

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mShortcutTriggered:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->getScreenshotChordLongPress()Ljava/lang/Runnable;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->getScreenshotChordLongPress()Ljava/lang/Runnable;

    move-result-object v19

    const-wide/16 v20, 0x0

    invoke-virtual/range {v18 .. v21}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_16
    if-eqz v6, :cond_20

    const/16 v18, 0x1a

    move/from16 v0, v18

    if-ne v10, v0, :cond_1d

    const/16 v16, 0x1

    .local v16, stopNotification:Z
    :goto_7
    if-nez v16, :cond_18

    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->getWindownManagerService()Landroid/view/IWindowManager;

    move-result-object v17

    .local v17, wm:Landroid/view/IWindowManager;
    if-eqz v17, :cond_18

    invoke-interface/range {v17 .. v17}, Landroid/view/IWindowManager;->isKeyguardLocked()Z

    move-result v18

    if-eqz v18, :cond_18

    const/16 v18, 0x19

    move/from16 v0, v18

    if-eq v10, v0, :cond_17

    const/16 v18, 0x18

    move/from16 v0, v18

    if-eq v10, v0, :cond_17

    const/16 v18, 0xa4

    move/from16 v0, v18

    if-ne v10, v0, :cond_18

    :cond_17
    const/16 v16, 0x1

    .end local v17           #wm:Landroid/view/IWindowManager;
    :cond_18
    if-eqz v16, :cond_19

    invoke-static {}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->getStatusBarManagerService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v15

    .local v15, statusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v15, :cond_19

    invoke-interface {v15}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed()V

    .end local v15           #statusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_19
    const/16 v18, 0x1a

    move/from16 v0, v18

    if-eq v10, v0, :cond_1a

    const/16 v18, 0x19

    move/from16 v0, v18

    if-eq v10, v0, :cond_1a

    const/16 v18, 0xa4

    move/from16 v0, v18

    if-ne v10, v0, :cond_1b

    :cond_1a
    new-instance v7, Landroid/content/Intent;

    const-string v18, "android.intent.action.KEYCODE_MUTE"

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v7, i:Landroid/content/Intent;
    const/high16 v18, 0x4000

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v7           #i:Landroid/content/Intent;
    :cond_1b
    const/16 v18, 0x19

    move/from16 v0, v18

    if-eq v10, v0, :cond_1c

    const/16 v18, 0x18

    move/from16 v0, v18

    if-ne v10, v0, :cond_1f

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .local v5, cr:Landroid/content/ContentResolver;
    const-string v18, "remote_control_proc_name"

    move-object/from16 v0, v18

    invoke-static {v5, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .local v13, proc:Ljava/lang/String;
    const-string v18, "remote_control_pkg_name"

    move-object/from16 v0, v18

    invoke-static {v5, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .local v12, pkg:Ljava/lang/String;
    if-eqz v13, :cond_1f

    if-eqz v12, :cond_1f

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .local v3, c:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->checkProcessRunning(Ljava/lang/String;)Z

    move-result v14

    .local v14, running:Z
    if-eqz v14, :cond_1e

    new-instance v7, Landroid/content/Intent;

    const-string v18, "miui.intent.action.REMOTE_CONTROL"

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v7       #i:Landroid/content/Intent;
    invoke-virtual {v7, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v18, 0x4000

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v18, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/16 v18, 0x0

    goto/16 :goto_5

    .end local v3           #c:J
    .end local v5           #cr:Landroid/content/ContentResolver;
    .end local v7           #i:Landroid/content/Intent;
    .end local v12           #pkg:Ljava/lang/String;
    .end local v13           #proc:Ljava/lang/String;
    .end local v14           #running:Z
    .end local v16           #stopNotification:Z
    :cond_1d
    const/16 v16, 0x0

    goto/16 :goto_7

    .restart local v3       #c:J
    .restart local v5       #cr:Landroid/content/ContentResolver;
    .restart local v12       #pkg:Ljava/lang/String;
    .restart local v13       #proc:Ljava/lang/String;
    .restart local v14       #running:Z
    .restart local v16       #stopNotification:Z
    :cond_1e
    const-string v18, "remote_control_proc_name"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v5, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v18, "remote_control_pkg_name"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v5, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #c:J
    .end local v5           #cr:Landroid/content/ContentResolver;
    .end local v12           #pkg:Ljava/lang/String;
    .end local v13           #proc:Ljava/lang/String;
    .end local v14           #running:Z
    .end local v16           #stopNotification:Z
    :cond_1f
    :goto_8
    invoke-super/range {p0 .. p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    move-result v18

    goto/16 :goto_5

    :cond_20
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v0, v10, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v18

    if-eqz v18, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mTorchEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mScreenOffToKeepTorchOnRunnable:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mScreenOnFully:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1f

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mTimeOfTorchTurnedOn:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    const-wide/16 v20, 0x1388

    cmp-long v18, v18, v20

    if-gez v18, :cond_1f

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->setTorch(Z)V

    goto :goto_8

    .restart local v16       #stopNotification:Z
    :catch_0
    move-exception v18

    goto :goto_8

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x1a -> :sswitch_5
        0x52 -> :sswitch_4
        0x54 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x52 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x18 -> :sswitch_8
        0x19 -> :sswitch_8
        0x1b -> :sswitch_7
        0x110 -> :sswitch_6
    .end sparse-switch
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .parameter "win"
    .parameter "attrs"
    .parameter "attached"

    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "InputMethod"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    .local v0, softKeyboardRect:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mSoftKeyboardRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mSoftKeyboardWinToken:Landroid/os/IBinder;

    .end local v0           #softKeyboardRect:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method onScreenShotMessageSend(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    .local v0, level:I
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mShowMagnifier:Z

    if-nez v1, :cond_0

    const v0, 0x3d478

    :cond_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/os/Message;->arg1:I

    return-void
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .locals 1
    .parameter "win"
    .parameter "effectId"
    .parameter "always"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v0, p2}, Lmiui/util/HapticFeedbackUtil;->isSupportedEffect(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v0, p2, p3}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZ)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .parameter "win"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_window_loaded"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiui/provider/ExtraSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    return-void
.end method

.method public screenTurnedOff(I)V
    .locals 2
    .parameter "why"

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mVolumeUpPressed:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mVolumeDownPressed:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMenuPressed:Z

    iput p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mScreenOffReason:I

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->releaseScreenOnProximitySensor()Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mTimeOfTorchTurnedOn:J

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mScreenOffToKeepTorchOnRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurnedOff(I)V

    return-void
.end method

.method public screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 3
    .parameter "screenOnListener"

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    new-instance v1, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$3;-><init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onScreenTurnedOn(Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mSystemReady:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mDisableProximitor:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_screen_on_proximity_sensor"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiui/provider/ExtraSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mProximitySensor:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->aquire()V

    :cond_1
    return-void
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .locals 2
    .parameter "msg"
    .parameter "always"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$8;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$8;-><init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public systemReady()V
    .locals 3

    .prologue
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->systemReady()V

    new-instance v0, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mProximitySensor:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    return-void
.end method
