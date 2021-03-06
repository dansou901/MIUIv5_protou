.class public Lcom/htc/service/HtcHardwareManager;
.super Ljava/lang/Object;
.source "HtcHardwareManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcHardwareManager"


# instance fields
.field private mService:Landroid/os/IHtcHardwareService;


# direct methods
.method public constructor <init>(Landroid/os/IHtcHardwareService;)V
    .locals 0
    .parameter "service"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/service/HtcHardwareManager;->mService:Landroid/os/IHtcHardwareService;

    return-void
.end method


# virtual methods
.method public UsbMiscControl_IPT(I)I
    .locals 3
    .parameter "iMode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/HtcHardwareManager;->mService:Landroid/os/IHtcHardwareService;

    invoke-interface {v1, p1}, Landroid/os/IHtcHardwareService;->UsbMiscControl_IPT(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcHardwareManager"

    const-string v2, "UsbMiscControl_IPT: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getCapsLedState()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/HtcHardwareManager;->mService:Landroid/os/IHtcHardwareService;

    invoke-interface {v1}, Landroid/os/IHtcHardwareService;->getCapsLedState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcHardwareManager"

    const-string v2, "getCapsLedState: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getFnLedState()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/HtcHardwareManager;->mService:Landroid/os/IHtcHardwareService;

    invoke-interface {v1}, Landroid/os/IHtcHardwareService;->getFnLedState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcHardwareManager"

    const-string v2, "getFnLedState: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getHeadsetType()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/HtcHardwareManager;->mService:Landroid/os/IHtcHardwareService;

    invoke-interface {v1}, Landroid/os/IHtcHardwareService;->getHeadsetType()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcHardwareManager"

    const-string v2, "getHeadsetType: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v1, "error_state"

    goto :goto_0
.end method

.method public isSupportBeats()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public setBeatsState(ZZLjava/lang/String;)V
    .locals 0
    .parameter "effectOn"
    .parameter "appPlay"
    .parameter "appName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    return-void
.end method

.method public setHeadsetTTYType(Ljava/lang/String;)V
    .locals 3
    .parameter "type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/HtcHardwareManager;->mService:Landroid/os/IHtcHardwareService;

    invoke-interface {v1, p1}, Landroid/os/IHtcHardwareService;->setHeadsetTTYType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcHardwareManager"

    const-string v2, "setHeadsetTTYType: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
