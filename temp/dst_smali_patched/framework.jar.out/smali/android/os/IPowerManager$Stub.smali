.class public abstract Landroid/os/IPowerManager$Stub;
.super Landroid/os/Binder;
.source "IPowerManager.java"

# interfaces
.implements Landroid/os/IPowerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IPowerManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IPowerManager"

.field static final TRANSACTION_acquireLevelWakeLock:I = 0x21

.field static final TRANSACTION_acquireWakeLock:I = 0x1

.field static final TRANSACTION_clearUserActivityTimeout:I = 0x8

.field static final TRANSACTION_crash:I = 0x10

.field static final TRANSACTION_fetchCurrentBrightnessValue:I = 0x1c

.field static final TRANSACTION_getProximitySensorActive:I = 0x1a

.field static final TRANSACTION_getSupportedWakeLockFlags:I = 0xa

.field static final TRANSACTION_goToSleep:I = 0x3

.field static final TRANSACTION_goToSleepWithReason:I = 0x4

.field static final TRANSACTION_isScreenOn:I = 0xe

.field static final TRANSACTION_lowLevelReboot_system:I = 0x1e

.field static final TRANSACTION_lowLevelShutdownEFSSync:I = 0x1f

.field static final TRANSACTION_lowLevelShutdownEFSSync_wait:I = 0x20

.field static final TRANSACTION_lowLevelShutdown_system:I = 0x1d

.field static final TRANSACTION_preventScreenOn:I = 0xd

.field static final TRANSACTION_reboot:I = 0xf

.field static final TRANSACTION_releaseWakeLock:I = 0x5

.field static final TRANSACTION_setAblActive:I = 0x15

.field static final TRANSACTION_setAttentionLight:I = 0x12

.field static final TRANSACTION_setAutoBrightnessAdjustment:I = 0x13

.field static final TRANSACTION_setAutoBrightnessOffset:I = 0x19

.field static final TRANSACTION_setBacklightBrightness:I = 0x11

.field static final TRANSACTION_setMaximumScreenOffTimeount:I = 0xc

.field static final TRANSACTION_setNightMode:I = 0x14

.field static final TRANSACTION_setPokeLock:I = 0x9

.field static final TRANSACTION_setSpew:I = 0x17

.field static final TRANSACTION_setStayOnSetting:I = 0xb

.field static final TRANSACTION_timeSinceScreenOn:I = 0x16

.field static final TRANSACTION_updateWakeLockWorkSource:I = 0x2

.field static final TRANSACTION_userActivity:I = 0x6

.field static final TRANSACTION_userActivityWithForce:I = 0x7

.field static final TRANSACTION_userActivityWithScreenDelay:I = 0x1b

.field static final TRANSACTION_watchdog:I = 0x18


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/IPowerManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.os.IPowerManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IPowerManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/os/IPowerManager;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/IPowerManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/IPowerManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 20
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
    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    :sswitch_0
    const-string v3, "android.os.IPowerManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_1
    const-string v3, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .local v6, _arg1:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/WorkSource;

    .local v8, _arg3:Landroid/os/WorkSource;
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7, v8}, Landroid/os/IPowerManager$Stub;->acquireWakeLock(ILandroid/os/IBinder;Ljava/lang/String;Landroid/os/WorkSource;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto :goto_0

    .end local v8           #_arg3:Landroid/os/WorkSource;
    :cond_0
    const/4 v8, 0x0

    .restart local v8       #_arg3:Landroid/os/WorkSource;
    goto :goto_1

    .end local v4           #_arg0:I
    .end local v6           #_arg1:Landroid/os/IBinder;
    .end local v7           #_arg2:Ljava/lang/String;
    .end local v8           #_arg3:Landroid/os/WorkSource;
    :sswitch_2
    const-string v3, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .local v4, _arg0:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/WorkSource;

    .local v6, _arg1:Landroid/os/WorkSource;
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/os/IPowerManager$Stub;->updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto :goto_0

    .end local v6           #_arg1:Landroid/os/WorkSource;
    :cond_1
    const/4 v6, 0x0

    .restart local v6       #_arg1:Landroid/os/WorkSource;
    goto :goto_2

    .end local v4           #_arg0:Landroid/os/IBinder;
    .end local v6           #_arg1:Landroid/os/WorkSource;
    :sswitch_3
    const-string v3, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .local v4, _arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPowerManager$Stub;->goToSleep(J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto :goto_0

    .end local v4           #_arg0:J
    :sswitch_4
    const-string v3, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .restart local v4       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/IPowerManager$Stub;->goToSleepWithReason(JI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:J
    .end local v6           #_arg1:I
    :sswitch_5
    const-string v3, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .local v4, _arg0:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/os/IPowerManager$Stub;->releaseWakeLock(Landroid/os/IBinder;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Landroid/os/IBinder;
    .end local v6           #_arg1:I
    :sswitch_6
    const-string v3, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .local v4, _arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v6, 0x1

    .local v6, _arg1:Z
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/IPowerManager$Stub;->userActivity(JZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v6           #_arg1:Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_3

    .end local v4           #_arg0:J
    :sswitch_7
    const-string v3, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .restart local v4       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v6, 0x1

    .restart local v6       #_arg1:Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v7, 0x1

    .local v7, _arg2:Z
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/os/IPowerManager$Stub;->userActivityWithForce(JZZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v6           #_arg1:Z
    .end local v7           #_arg2:Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_4

    .restart local v6       #_arg1:Z
    :cond_4
    const/4 v7, 0x0

    goto :goto_5

    .end local v4           #_arg0:J
    .end local v6           #_arg1:Z
    :sswitch_8
    const-string v3, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .restart local v4       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .local v16, _arg1:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v4, v5, v1, v2}, Landroid/os/IPowerManager$Stub;->clearUserActivityTimeout(JJ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:J
    .end local v16           #_arg1:J
    :sswitch_9
    const-string v3, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .local v6, _arg1:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, _arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/IPowerManager$Stub;->setPokeLock(ILandroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:I
    .end local v6           #_arg1:Landroid/os/IBinder;
    .end local v7           #_arg2:Ljava/lang/String;
    :sswitch_a
    const-string v3, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->getSupportedWakeLockFlags()I

    move-result v18

    .local v18, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v18           #_result:I
    :sswitch_b
    const-string v3, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPowerManager$Stub;->setStayOnSetting(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:I
    :sswitch_c
    const-string v3, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPowerManager$Stub;->setMaximumScreenOffTimeount(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:I
    :sswitch_d
    const-string v3, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    const/4 v4, 0x1

    .local v4, _arg0:Z
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPowerManager$Stub;->preventScreenOn(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Z
    :cond_5
    const/4 v4, 0x0

    goto :goto_6

    :sswitch_e
    const-string v3, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isScreenOn()Z

    move-result v18

    .local v18, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v18, :cond_6

    const/4 v3, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v3, 0x0

    goto :goto_7

    .end local v18           #_result:Z
    :sswitch_f
    const-string v3, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPowerManager$Stub;->reboot(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Ljava/lang/String;
    :sswitch_10
    const-string v3, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPowerManager$Stub;->crash(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Ljava/lang/String;
    :sswitch_11
    const-string v3, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPowerManager$Stub;->setBacklightBrightness(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:I
    :sswitch_12
    const-string v3, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    const/4 v4, 0x1

    .local v4, _arg0:Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/os/IPowerManager$Stub;->setAttentionLight(ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Z
    .end local v6           #_arg1:I
    :cond_7
    const/4 v4, 0x0

    goto :goto_8

    :sswitch_13
    const-string v3, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .local v4, _arg0:F
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPowerManager$Stub;->setAutoBrightnessAdjustment(F)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:F
    :sswitch_14
    const-string v3, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPowerManager$Stub;->setNightMode(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:I
    :sswitch_15
    const-string v3, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPowerManager$Stub;->setAblActive(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:I
    :sswitch_16
    const-string v3, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->timeSinceScreenOn()J

    move-result-wide v18

    .local v18, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v18           #_result:J
    :sswitch_17
    const-string v3, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    const/4 v4, 0x1

    .local v4, _arg0:Z
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPowerManager$Stub;->setSpew(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Z
    :cond_8
    const/4 v4, 0x0

    goto :goto_9

    :sswitch_18
    const-string v3, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->watchdog()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_19
    const-string v3, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/os/IPowerManager$Stub;->setAutoBrightnessOffset(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:I
    .end local v6           #_arg1:Ljava/lang/String;
    :sswitch_1a
    const-string v3, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->getProximitySensorActive()Z

    move-result v18

    .local v18, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v18, :cond_9

    const/4 v3, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_9
    const/4 v3, 0x0

    goto :goto_a

    .end local v18           #_result:Z
    :sswitch_1b
    const-string v3, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .local v4, _arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    const/4 v6, 0x1

    .local v6, _arg1:Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, _arg4:I
    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/os/IPowerManager$Stub;->userActivityWithScreenDelay(JZIII)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v6           #_arg1:Z
    .end local v7           #_arg2:I
    .end local v8           #_arg3:I
    .end local v9           #_arg4:I
    :cond_a
    const/4 v6, 0x0

    goto :goto_b

    .end local v4           #_arg0:J
    :sswitch_1c
    const-string v3, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->fetchCurrentBrightnessValue()I

    move-result v18

    .local v18, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v18           #_result:I
    :sswitch_1d
    const-string v3, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->lowLevelShutdown_system()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_1e
    const-string v3, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPowerManager$Stub;->lowLevelReboot_system(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Ljava/lang/String;
    :sswitch_1f
    const-string v3, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->lowLevelShutdownEFSSync()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_20
    const-string v3, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPowerManager$Stub;->lowLevelShutdownEFSSync_wait(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:I
    :sswitch_21
    const-string v3, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .local v6, _arg1:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b

    sget-object v3, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/WorkSource;

    .local v8, _arg3:Landroid/os/WorkSource;
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9       #_arg4:I
    move-object/from16 v10, p0

    move v11, v4

    move-object v12, v6

    move-object v13, v7

    move-object v14, v8

    move v15, v9

    invoke-virtual/range {v10 .. v15}, Landroid/os/IPowerManager$Stub;->acquireLevelWakeLock(ILandroid/os/IBinder;Ljava/lang/String;Landroid/os/WorkSource;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v8           #_arg3:Landroid/os/WorkSource;
    .end local v9           #_arg4:I
    :cond_b
    const/4 v8, 0x0

    .restart local v8       #_arg3:Landroid/os/WorkSource;
    goto :goto_c

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
