.class Landroid/bluetooth/BluetoothDeviceProfileState$2;
.super Ljava/lang/Object;
.source "BluetoothDeviceProfileState.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDeviceProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothDeviceProfileState;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$2;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 287
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$2;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    monitor-enter v1

    .line 288
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$2;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2
    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, p2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1502(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 289
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$2;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mAutoConnectionPending:Z
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1600(Landroid/bluetooth/BluetoothDeviceProfileState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$2;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v2, 0x65

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    .line 291
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$2;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/4 v2, 0x0

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mAutoConnectionPending:Z
    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1602(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z

    .line 293
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$2;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHfpConnectionPending:Z
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1700(Landroid/bluetooth/BluetoothDeviceProfileState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$2;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    .line 295
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$2;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/4 v2, 0x0

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHfpConnectionPending:Z
    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1702(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z

    .line 297
    :cond_1
    monitor-exit v1

    .line 298
    return-void

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(I)V
    .locals 3
    .parameter "profile"

    .prologue
    .line 300
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$2;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    monitor-enter v1

    .line 301
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$2;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/4 v2, 0x0

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1502(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 302
    monitor-exit v1

    .line 303
    return-void

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
