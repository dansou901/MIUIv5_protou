.class public interface abstract Lmiui/net/ICloudManagerService;
.super Ljava/lang/Object;
.source "ICloudManagerService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/net/ICloudManagerService$Stub;
    }
.end annotation


# virtual methods
.method public abstract cancelNotification(ILmiui/net/ICloudManagerResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract checkUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmiui/net/ICloudManagerResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAccessToken(Ljava/lang/String;Lmiui/net/ICloudManagerResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getActivatedPhone(Lmiui/net/ICloudManagerResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getActivatedSimUser(Lmiui/net/ICloudManagerResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getActivatedStatus(Lmiui/net/ICloudManagerResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getFindDeviceToken(Lmiui/net/ICloudManagerResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSimAuthToken(Ljava/lang/String;Lmiui/net/ICloudManagerResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSmsGateway(Lmiui/net/ICloudManagerResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSubSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Lmiui/net/ICloudManagerResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getUserSecurity(Lmiui/net/ICloudManagerResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract invalidateAccessToken(Ljava/lang/String;Ljava/lang/String;Lmiui/net/ICloudManagerResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract invalidateUserSecurity(Ljava/lang/String;Ljava/lang/String;Lmiui/net/ICloudManagerResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startActivateSim(Lmiui/net/ICloudManagerResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
