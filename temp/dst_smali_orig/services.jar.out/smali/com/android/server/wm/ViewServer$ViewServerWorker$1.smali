.class Lcom/android/server/wm/ViewServer$ViewServerWorker$1;
.super Ljava/lang/Object;
.source "ViewServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/ViewServer$ViewServerWorker;->lockDeviceRotation(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wm/ViewServer$ViewServerWorker;

.field final synthetic val$lock:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ViewServer$ViewServerWorker;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker$1;->this$1:Lcom/android/server/wm/ViewServer$ViewServerWorker;

    iput-object p2, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker$1;->val$lock:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    :try_start_0
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .local v1, wm:Landroid/view/IWindowManager;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker$1;->val$lock:Ljava/lang/String;

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->freezeRotation(I)V

    .end local v1           #wm:Landroid/view/IWindowManager;
    :cond_0
    :goto_0
    return-void

    .restart local v1       #wm:Landroid/view/IWindowManager;
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker$1;->val$lock:Ljava/lang/String;

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Landroid/view/IWindowManager;->thawRotation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1           #wm:Landroid/view/IWindowManager;
    :catch_0
    move-exception v0

    .local v0, exc:Landroid/os/RemoteException;
    const-string v2, "ViewServer"

    const-string v3, "Unable to save auto-rotate setting"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
