.class public abstract Lcom/awox/dtcpmiddlelayer/IDTCPService$Stub;
.super Landroid/os/Binder;
.source "IDTCPService.java"

# interfaces
.implements Lcom/awox/dtcpmiddlelayer/IDTCPService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/awox/dtcpmiddlelayer/IDTCPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/awox/dtcpmiddlelayer/IDTCPService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.awox.dtcpmiddlelayer.IDTCPService"

.field static final TRANSACTION_FillBuffer:I = 0x2

.field static final TRANSACTION_registerDTCPServiceCallback:I = 0x1

.field static final TRANSACTION_setFileSize:I = 0x3

.field static final TRANSACTION_startDTCPServer:I = 0x4

.field static final TRANSACTION_stopDTCPServer:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.awox.dtcpmiddlelayer.IDTCPService"

    invoke-virtual {p0, p0, v0}, Lcom/awox/dtcpmiddlelayer/IDTCPService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/awox/dtcpmiddlelayer/IDTCPService;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.awox.dtcpmiddlelayer.IDTCPService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/awox/dtcpmiddlelayer/IDTCPService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/awox/dtcpmiddlelayer/IDTCPService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/awox/dtcpmiddlelayer/IDTCPService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/awox/dtcpmiddlelayer/IDTCPService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    :sswitch_0
    const-string v5, "com.awox.dtcpmiddlelayer.IDTCPService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v5, "com.awox.dtcpmiddlelayer.IDTCPService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub;->asInterface(Landroid/os/IBinder;)Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB;

    move-result-object v2

    .local v2, _arg1:Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB;
    invoke-virtual {p0, v0, v2}, Lcom/awox/dtcpmiddlelayer/IDTCPService$Stub;->registerDTCPServiceCallback(ILcom/awox/dtcpmiddlelayer/IDTCPServiceCB;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0           #_arg0:I
    .end local v2           #_arg1:Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB;
    :sswitch_2
    const-string v5, "com.awox.dtcpmiddlelayer.IDTCPService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .local v0, _arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .local v3, _arg2:[B
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/awox/dtcpmiddlelayer/IDTCPService$Stub;->FillBuffer(JI[B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .end local v0           #_arg0:J
    .end local v2           #_arg1:I
    .end local v3           #_arg2:[B
    :sswitch_3
    const-string v5, "com.awox.dtcpmiddlelayer.IDTCPService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .restart local v0       #_arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/awox/dtcpmiddlelayer/IDTCPService$Stub;->setFileSize(J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0           #_arg0:J
    :sswitch_4
    const-string v5, "com.awox.dtcpmiddlelayer.IDTCPService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/awox/dtcpmiddlelayer/IDTCPService$Stub;->startDTCPServer()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_5
    const-string v5, "com.awox.dtcpmiddlelayer.IDTCPService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/awox/dtcpmiddlelayer/IDTCPService$Stub;->stopDTCPServer()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
