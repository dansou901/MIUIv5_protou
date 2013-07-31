.class Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;
.super Ljava/lang/Object;
.source "MiuiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenKeyLongPressRunnable"
.end annotation


# instance fields
.field private mCloseAppWhiteList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKey:Ljava/lang/String;

.field private mSent:Z

.field private mWin:Landroid/view/WindowManagerPolicy$WindowState;

.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)V
    .locals 2
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mCloseAppWhiteList:Ljava/util/HashSet;

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mCloseAppWhiteList:Ljava/util/HashSet;

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mCloseAppWhiteList:Ljava/util/HashSet;

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mCloseAppWhiteList:Ljava/util/HashSet;

    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mCloseAppWhiteList:Ljava/util/HashSet;

    const-string v1, "com.android.mms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mCloseAppWhiteList:Ljava/util/HashSet;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mCloseAppWhiteList:Ljava/util/HashSet;

    const-string v1, "com.miui.home"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mCloseAppWhiteList:Ljava/util/HashSet;

    const-string v1, "com.miui.fmradio"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;-><init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)V

    return-void
.end method

.method private closeApp()Z
    .locals 17

    .prologue
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v11, :cond_0

    const/4 v11, 0x0

    :goto_0
    return v11

    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v11}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    iget-object v8, v11, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .local v8, packageName:Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v11}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, className:Ljava/lang/String;
    const/16 v11, 0x2f

    invoke-virtual {v4, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .local v7, index:I
    if-ltz v7, :cond_1

    new-instance v5, Landroid/content/ComponentName;

    add-int/lit8 v11, v7, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v4, v11, v12}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {v5, v8, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v5, componentName:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget-object v11, v11, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .local v9, pm:Landroid/content/pm/PackageManager;
    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {v9, v5, v11}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .local v1, activityInfo:Landroid/content/pm/ActivityInfo;
    invoke-virtual {v1, v9}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x0

    invoke-virtual {v9, v8, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .local v3, applicationInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v3, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .end local v1           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v3           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v5           #componentName:Landroid/content/ComponentName;
    .end local v9           #pm:Landroid/content/pm/PackageManager;
    :cond_1
    :goto_1
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    iget-object v12, v12, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface {v11, v12, v13, v14}, Landroid/app/IActivityManager;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget-object v11, v11, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v12, "activity"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .local v2, am:Landroid/app/ActivityManager;
    invoke-virtual {v2, v8}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget-object v11, v11, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget-object v12, v12, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const v13, 0x60c0146

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_2

    .end local v10           #title:Ljava/lang/String;
    :goto_3
    aput-object v10, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    const/4 v11, 0x1

    goto/16 :goto_0

    .end local v2           #am:Landroid/app/ActivityManager;
    .restart local v10       #title:Ljava/lang/String;
    :catch_0
    move-exception v6

    .local v6, e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .end local v6           #e:Landroid/os/RemoteException;
    .restart local v2       #am:Landroid/app/ActivityManager;
    :cond_2
    move-object v10, v8

    goto :goto_3

    .end local v2           #am:Landroid/app/ActivityManager;
    .restart local v5       #componentName:Landroid/content/ComponentName;
    .restart local v9       #pm:Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v11

    goto :goto_1
.end method

.method private launchApp(Landroid/content/Intent;)Z
    .locals 1
    .parameter "intent"

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchGoogleNow()Z
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.google.android.googlequicksearchbox"

    const-string v2, "com.google.android.googlequicksearchbox.SearchActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->launchApp(Landroid/content/Intent;)Z

    move-result v1

    goto :goto_0
.end method

.method private launchRecentPanel()Z
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    const-string v3, "recentapps"

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .local v1, statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_1
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_1
.end method

.method private launchVoiceAssistant()Z
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ASSIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->launchApp(Landroid/content/Intent;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public init()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mSent:Z

    return-void
.end method

.method public remove()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mShortcutTriggered:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$800(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mKey:Ljava/lang/String;

    invoke-static {v2, v3}, Lmiui/provider/ExtraSettings$System;->getScreenKeyLongPressAction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v2, "none"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .local v1, result:Z
    const-string v2, "voice_assistant"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->launchVoiceAssistant()Z

    move-result v1

    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4, v4}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    const/4 v3, 0x1

    #setter for: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mShortcutTriggered:Z
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$802(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Z)Z

    goto :goto_0

    :cond_3
    const-string v2, "recent_panel"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->launchRecentPanel()Z

    move-result v1

    goto :goto_1

    :cond_4
    const-string v2, "google_now"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->launchGoogleNow()Z

    move-result v1

    goto :goto_1

    :cond_5
    const-string v2, "close_app"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->closeApp()Z

    move-result v1

    goto :goto_1
.end method

.method public send(Ljava/lang/String;)V
    .locals 4
    .parameter "key"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mSent:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->remove()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mSent:Z

    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mKey:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_key_long_press_timeout"

    const/16 v3, 0x1f4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setWin(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .parameter "win"

    .prologue
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mCloseAppWhiteList:Ljava/util/HashSet;

    iget-object v2, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x63

    if-le v1, v2, :cond_1

    :cond_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x3e8

    if-lt v1, v2, :cond_2

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7cf

    if-gt v1, v2, :cond_2

    :cond_1
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    :cond_2
    return-void

    .end local v0           #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
