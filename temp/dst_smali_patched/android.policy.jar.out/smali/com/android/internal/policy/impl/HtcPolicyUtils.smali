.class Lcom/android/internal/policy/impl/HtcPolicyUtils;
.super Ljava/lang/Object;
.source "HtcPolicyUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/HtcPolicyUtils$LaunchActivityRunnable;,
        Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;
    }
.end annotation


# static fields
.field private static final DEBUG_ALL:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DEBUG_PHONE:Z = false

.field static final TAG:Ljava/lang/String; = "HtcPolicyUtils"

.field static final TAG_PREFIX:Ljava/lang/String; = "HtcPolicyUtils-"


# instance fields
.field phone:Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    or-int/lit8 v0, v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/HtcPolicyUtils;->DEBUG_PHONE:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;-><init>(Lcom/android/internal/policy/impl/HtcPolicyUtils;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/HtcPolicyUtils;->phone:Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/policy/impl/HtcPolicyUtils;->DEBUG_PHONE:Z

    return v0
.end method

.method public static getDefaultLauncher(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .local v2, resInfo:Landroid/content/pm/ResolveInfo;
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v3, :cond_0

    const-string v3, "HtcPolicyUtils"

    const-string v4, "there is no home app?"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .local v1, name:Ljava/lang/String;
    const-string v3, "HtcPolicyUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "default launcher = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final getForegroundAppName()Ljava/lang/String;
    .locals 5

    .prologue
    const-string v0, ""

    .local v0, appName:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getTopActivityName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_0

    const-string v2, "HtcPolicyUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current foreground appName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "HtcPolicyUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final injectTranslatedKeyEvent(Landroid/view/KeyEvent;II)V
    .locals 15
    .parameter "keyEvent"
    .parameter "keyAction"
    .parameter "code"

    .prologue
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    .local v2, downTime:J
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    .local v4, eventTime:J
    move/from16 v6, p1

    .local v6, action:I
    const/4 v8, 0x0

    .local v8, repeatCount:I
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v9

    .local v9, metaState:I
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v10

    .local v10, deviceId:I
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v11

    .local v11, scancode:I
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getSource()I

    move-result v13

    .local v13, source:I
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getFlags()I

    move-result v14

    .local v14, flags:I
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    move/from16 v0, p2

    if-eq v0, v7, :cond_0

    new-instance v1, Landroid/view/KeyEvent;

    or-int/lit8 v12, v14, 0x8

    move/from16 v7, p2

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .local v1, translatedEvent:Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v7

    const/4 v12, 0x0

    invoke-virtual {v7, v1, v12}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .end local v1           #translatedEvent:Landroid/view/KeyEvent;
    :cond_0
    return-void
.end method

.method public static launchActivitybyIntent(Lcom/android/internal/policy/impl/PhoneWindowManager$PWMUtil;Landroid/content/Intent;)V
    .locals 3
    .parameter "util"
    .parameter "intent"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$PWMUtil;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .local v0, handler:Landroid/os/Handler;
    if-nez v0, :cond_0

    const-string v1, "HtcPolicyUtils"

    const-string v2, "handler is null, return"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/android/internal/policy/impl/HtcPolicyUtils$LaunchActivityRunnable;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$PWMUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/android/internal/policy/impl/HtcPolicyUtils$LaunchActivityRunnable;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
