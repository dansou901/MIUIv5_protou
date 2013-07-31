.class public Landroid/hardware/usb/IUsbManagerProxy;
.super Ljava/lang/Object;
.source "IUsbManagerProxy.java"


# instance fields
.field private mService:Landroid/hardware/usb/IUsbManager;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/IUsbManager;)V
    .locals 0
    .parameter "service"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/usb/IUsbManagerProxy;->mService:Landroid/hardware/usb/IUsbManager;

    return-void
.end method


# virtual methods
.method public clearDefaults(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/hardware/usb/IUsbManagerProxy;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0, p1}, Landroid/hardware/usb/IUsbManager;->clearDefaults(Ljava/lang/String;)V

    return-void
.end method

.method public grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    .locals 1
    .parameter "accessory"
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/hardware/usb/IUsbManagerProxy;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/usb/IUsbManager;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    return-void
.end method

.method public grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    .locals 1
    .parameter "device"
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/hardware/usb/IUsbManagerProxy;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/usb/IUsbManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    return-void
.end method

.method public hasDefaults(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/hardware/usb/IUsbManagerProxy;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0, p1}, Landroid/hardware/usb/IUsbManager;->hasDefaults(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;)V
    .locals 1
    .parameter "accessory"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/hardware/usb/IUsbManagerProxy;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/usb/IUsbManager;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;)V

    return-void
.end method

.method public setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V
    .locals 1
    .parameter "device"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/hardware/usb/IUsbManagerProxy;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/usb/IUsbManager;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V

    return-void
.end method
