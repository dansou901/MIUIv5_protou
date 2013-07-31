.class Lcom/android/server/StatusBarManagerService$StatusRecord;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StatusBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusRecord"
.end annotation


# instance fields
.field pkg:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/StatusBarManagerService;

.field token:Landroid/os/IBinder;


# direct methods
.method private constructor <init>(Lcom/android/server/StatusBarManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/server/StatusBarManagerService$StatusRecord;->this$0:Lcom/android/server/StatusBarManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/StatusBarManagerService;Lcom/android/server/StatusBarManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/StatusBarManagerService$StatusRecord;-><init>(Lcom/android/server/StatusBarManagerService;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 5

    .prologue
    .line 104
    const-string v0, "StatusBarManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binder died for pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/StatusBarManagerService$StatusRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService$StatusRecord;->this$0:Lcom/android/server/StatusBarManagerService;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/StatusBarManagerService$StatusRecord;->token:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/StatusBarManagerService$StatusRecord;->pkg:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/StatusBarManagerService;->setStatus(ILandroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 106
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService$StatusRecord;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 107
    return-void
.end method
