.class public abstract Lcom/android/internal/telephony/ITelephonyRegistry$Stub;
.super Landroid/os/Binder;
.source "ITelephonyRegistry.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephonyRegistry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephonyRegistry"

.field static final TRANSACTION_HtcNotifyDataConnection:I = 0x13

.field static final TRANSACTION_htcNotifyCallDisconnected:I = 0xf

.field static final TRANSACTION_htcNotifyDataConnection:I = 0xd

.field static final TRANSACTION_htcNotifyPreciseCallStateChanged:I = 0x10

.field static final TRANSACTION_htcNotifySeparateServiceState:I = 0xe

.field static final TRANSACTION_listen:I = 0x1

.field static final TRANSACTION_notifyCWDataConnection:I = 0x11

.field static final TRANSACTION_notifyCallForwardingChanged:I = 0x6

.field static final TRANSACTION_notifyCallForwardingChangedExt:I = 0x18

.field static final TRANSACTION_notifyCallState:I = 0x2

.field static final TRANSACTION_notifyCallStateExt:I = 0x14

.field static final TRANSACTION_notifyCellInfo:I = 0xc

.field static final TRANSACTION_notifyCellLocation:I = 0xa

.field static final TRANSACTION_notifyCellLocationExt:I = 0x1c

.field static final TRANSACTION_notifyDataActivity:I = 0x7

.field static final TRANSACTION_notifyDataActivityExt:I = 0x19

.field static final TRANSACTION_notifyDataConnection:I = 0x8

.field static final TRANSACTION_notifyDataConnectionExt:I = 0x1a

.field static final TRANSACTION_notifyDataConnectionFailed:I = 0x9

.field static final TRANSACTION_notifyDataConnectionFailedExt:I = 0x1b

.field static final TRANSACTION_notifyDataConnectionLTE:I = 0x12

.field static final TRANSACTION_notifyMessageWaitingChanged:I = 0x5

.field static final TRANSACTION_notifyMessageWaitingChangedExt:I = 0x17

.field static final TRANSACTION_notifyOtaspChanged:I = 0xb

.field static final TRANSACTION_notifyServiceState:I = 0x3

.field static final TRANSACTION_notifyServiceStateExt:I = 0x15

.field static final TRANSACTION_notifySignalStrength:I = 0x4

.field static final TRANSACTION_notifySignalStrengthExt:I = 0x16


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/telephony/ITelephonyRegistry;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 25
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

    move-result v1

    :goto_0
    return v1

    :sswitch_0
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneStateListener;

    move-result-object v3

    .local v3, _arg1:Lcom/android/internal/telephony/IPhoneStateListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v5, 0x1

    .local v5, _arg3:Z
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    goto :goto_0

    .end local v5           #_arg3:Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Lcom/android/internal/telephony/IPhoneStateListener;
    .end local v4           #_arg2:I
    :sswitch_2
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallState(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    goto :goto_0

    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    :sswitch_3
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ServiceState;

    .local v2, _arg0:Landroid/telephony/ServiceState;
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyServiceState(Landroid/telephony/ServiceState;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    goto :goto_0

    .end local v2           #_arg0:Landroid/telephony/ServiceState;
    :cond_1
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/telephony/ServiceState;
    goto :goto_2

    .end local v2           #_arg0:Landroid/telephony/ServiceState;
    :sswitch_4
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SignalStrength;

    .local v2, _arg0:Landroid/telephony/SignalStrength;
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifySignalStrength(Landroid/telephony/SignalStrength;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    goto/16 :goto_0

    .end local v2           #_arg0:Landroid/telephony/SignalStrength;
    :cond_2
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/telephony/SignalStrength;
    goto :goto_3

    .end local v2           #_arg0:Landroid/telephony/SignalStrength;
    :sswitch_5
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyMessageWaitingChanged(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    goto/16 :goto_0

    .end local v2           #_arg0:I
    :sswitch_6
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    .local v2, _arg0:Z
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallForwardingChanged(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    goto/16 :goto_0

    .end local v2           #_arg0:Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_4

    :sswitch_7
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataActivity(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    goto/16 :goto_0

    .end local v2           #_arg0:I
    :sswitch_8
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v3, 0x1

    .local v3, _arg1:Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, _arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, _arg4:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/LinkProperties;

    .local v7, _arg5:Landroid/net/LinkProperties;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Landroid/net/LinkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/LinkCapabilities;

    .local v8, _arg6:Landroid/net/LinkCapabilities;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, _arg7:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    const/4 v10, 0x1

    .local v10, _arg8:Z
    :goto_8
    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    goto/16 :goto_0

    .end local v3           #_arg1:Z
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v5           #_arg3:Ljava/lang/String;
    .end local v6           #_arg4:Ljava/lang/String;
    .end local v7           #_arg5:Landroid/net/LinkProperties;
    .end local v8           #_arg6:Landroid/net/LinkCapabilities;
    .end local v9           #_arg7:I
    .end local v10           #_arg8:Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_5

    .restart local v3       #_arg1:Z
    .restart local v4       #_arg2:Ljava/lang/String;
    .restart local v5       #_arg3:Ljava/lang/String;
    .restart local v6       #_arg4:Ljava/lang/String;
    :cond_5
    const/4 v7, 0x0

    .restart local v7       #_arg5:Landroid/net/LinkProperties;
    goto :goto_6

    :cond_6
    const/4 v8, 0x0

    .restart local v8       #_arg6:Landroid/net/LinkCapabilities;
    goto :goto_7

    .restart local v9       #_arg7:I
    :cond_7
    const/4 v10, 0x0

    goto :goto_8

    .end local v2           #_arg0:I
    .end local v3           #_arg1:Z
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v5           #_arg3:Ljava/lang/String;
    .end local v6           #_arg4:Ljava/lang/String;
    .end local v7           #_arg5:Landroid/net/LinkProperties;
    .end local v8           #_arg6:Landroid/net/LinkCapabilities;
    .end local v9           #_arg7:I
    :sswitch_9
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    goto/16 :goto_0

    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Ljava/lang/String;
    :sswitch_a
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .local v2, _arg0:Landroid/os/Bundle;
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellLocation(Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    goto/16 :goto_0

    .end local v2           #_arg0:Landroid/os/Bundle;
    :cond_8
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/os/Bundle;
    goto :goto_9

    .end local v2           #_arg0:Landroid/os/Bundle;
    :sswitch_b
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyOtaspChanged(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    goto/16 :goto_0

    .end local v2           #_arg0:I
    :sswitch_c
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellInfo;

    .local v2, _arg0:Landroid/telephony/CellInfo;
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellInfo(Landroid/telephony/CellInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    goto/16 :goto_0

    .end local v2           #_arg0:Landroid/telephony/CellInfo;
    :cond_9
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/telephony/CellInfo;
    goto :goto_a

    .end local v2           #_arg0:Landroid/telephony/CellInfo;
    :sswitch_d
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    const/4 v3, 0x1

    .local v3, _arg1:Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #_arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .local v6, _arg4:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, _arg5:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, _arg6:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, _arg7:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .local v10, _arg8:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .local v11, _arg9:J
    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v12}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->htcNotifyDataConnection(IZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    goto/16 :goto_0

    .end local v3           #_arg1:Z
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v5           #_arg3:Ljava/lang/String;
    .end local v6           #_arg4:[Ljava/lang/String;
    .end local v7           #_arg5:Ljava/lang/String;
    .end local v8           #_arg6:I
    .end local v9           #_arg7:Ljava/lang/String;
    .end local v10           #_arg8:Ljava/lang/String;
    .end local v11           #_arg9:J
    :cond_a
    const/4 v3, 0x0

    goto :goto_b

    .end local v2           #_arg0:I
    :sswitch_e
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v1, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/telephony/ServiceState;

    .local v2, _arg0:[Landroid/telephony/ServiceState;
    sget-object v1, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/telephony/ServiceState;

    .local v3, _arg1:[Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->htcNotifySeparateServiceState([Landroid/telephony/ServiceState;[Landroid/telephony/ServiceState;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    goto/16 :goto_0

    .end local v2           #_arg0:[Landroid/telephony/ServiceState;
    .end local v3           #_arg1:[Landroid/telephony/ServiceState;
    :sswitch_f
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->htcNotifyCallDisconnected(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    goto/16 :goto_0

    .end local v2           #_arg0:Ljava/lang/String;
    :sswitch_10
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->htcNotifyPreciseCallStateChanged(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    goto/16 :goto_0

    .end local v2           #_arg0:I
    :sswitch_11
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCWDataConnection(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    goto/16 :goto_0

    .end local v2           #_arg0:I
    :sswitch_12
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #_arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/LinkProperties;

    .local v6, _arg4:Landroid/net/LinkProperties;
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    const/4 v7, 0x1

    .local v7, _arg5:Z
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8       #_arg6:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    const/4 v9, 0x1

    .local v9, _arg7:Z
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, _arg8:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .local v11, _arg9:Ljava/lang/String;
    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataConnectionLTE(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/net/LinkProperties;ZIZILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    goto/16 :goto_0

    .end local v6           #_arg4:Landroid/net/LinkProperties;
    .end local v7           #_arg5:Z
    .end local v8           #_arg6:I
    .end local v9           #_arg7:Z
    .end local v10           #_arg8:I
    .end local v11           #_arg9:Ljava/lang/String;
    :cond_b
    const/4 v6, 0x0

    .restart local v6       #_arg4:Landroid/net/LinkProperties;
    goto :goto_c

    :cond_c
    const/4 v7, 0x0

    goto :goto_d

    .restart local v7       #_arg5:Z
    .restart local v8       #_arg6:I
    :cond_d
    const/4 v9, 0x0

    goto :goto_e

    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:I
    .end local v5           #_arg3:Ljava/lang/String;
    .end local v6           #_arg4:Landroid/net/LinkProperties;
    .end local v7           #_arg5:Z
    .end local v8           #_arg6:I
    :sswitch_13
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    const/4 v3, 0x1

    .local v3, _arg1:Z
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #_arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, _arg4:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f

    sget-object v1, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/LinkProperties;

    .local v7, _arg5:Landroid/net/LinkProperties;
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Landroid/net/LinkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/LinkCapabilities;

    .local v8, _arg6:Landroid/net/LinkCapabilities;
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, _arg7:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11

    const/4 v10, 0x1

    .local v10, _arg8:Z
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, _arg9:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .local v24, _arg10:Ljava/lang/String;
    move-object/from16 v13, p0

    move v14, v2

    move v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    move/from16 v23, v11

    invoke-virtual/range {v13 .. v24}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->HtcNotifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    goto/16 :goto_0

    .end local v3           #_arg1:Z
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v5           #_arg3:Ljava/lang/String;
    .end local v6           #_arg4:Ljava/lang/String;
    .end local v7           #_arg5:Landroid/net/LinkProperties;
    .end local v8           #_arg6:Landroid/net/LinkCapabilities;
    .end local v9           #_arg7:I
    .end local v10           #_arg8:Z
    .end local v11           #_arg9:I
    .end local v24           #_arg10:Ljava/lang/String;
    :cond_e
    const/4 v3, 0x0

    goto :goto_f

    .restart local v3       #_arg1:Z
    .restart local v4       #_arg2:Ljava/lang/String;
    .restart local v5       #_arg3:Ljava/lang/String;
    .restart local v6       #_arg4:Ljava/lang/String;
    :cond_f
    const/4 v7, 0x0

    .restart local v7       #_arg5:Landroid/net/LinkProperties;
    goto :goto_10

    :cond_10
    const/4 v8, 0x0

    .restart local v8       #_arg6:Landroid/net/LinkCapabilities;
    goto :goto_11

    .restart local v9       #_arg7:I
    :cond_11
    const/4 v10, 0x0

    goto :goto_12

    .end local v2           #_arg0:I
    .end local v3           #_arg1:Z
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v5           #_arg3:Ljava/lang/String;
    .end local v6           #_arg4:Ljava/lang/String;
    .end local v7           #_arg5:Landroid/net/LinkProperties;
    .end local v8           #_arg6:Landroid/net/LinkCapabilities;
    .end local v9           #_arg7:I
    :sswitch_14
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, _arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallStateExt(ILjava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    goto/16 :goto_0

    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:I
    :sswitch_15
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_12

    sget-object v1, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ServiceState;

    .local v2, _arg0:Landroid/telephony/ServiceState;
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyServiceStateExt(Landroid/telephony/ServiceState;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    goto/16 :goto_0

    .end local v2           #_arg0:Landroid/telephony/ServiceState;
    .end local v3           #_arg1:I
    :cond_12
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/telephony/ServiceState;
    goto :goto_13

    .end local v2           #_arg0:Landroid/telephony/ServiceState;
    :sswitch_16
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_13

    sget-object v1, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SignalStrength;

    .local v2, _arg0:Landroid/telephony/SignalStrength;
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifySignalStrengthExt(Landroid/telephony/SignalStrength;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    goto/16 :goto_0

    .end local v2           #_arg0:Landroid/telephony/SignalStrength;
    .end local v3           #_arg1:I
    :cond_13
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/telephony/SignalStrength;
    goto :goto_14

    .end local v2           #_arg0:Landroid/telephony/SignalStrength;
    :sswitch_17
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_14

    const/4 v2, 0x1

    .local v2, _arg0:Z
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyMessageWaitingChangedExt(ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    goto/16 :goto_0

    .end local v2           #_arg0:Z
    .end local v3           #_arg1:I
    :cond_14
    const/4 v2, 0x0

    goto :goto_15

    :sswitch_18
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_15

    const/4 v2, 0x1

    .restart local v2       #_arg0:Z
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallForwardingChangedExt(ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    goto/16 :goto_0

    .end local v2           #_arg0:Z
    .end local v3           #_arg1:I
    :cond_15
    const/4 v2, 0x0

    goto :goto_16

    :sswitch_19
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataActivityExt(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    goto/16 :goto_0

    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    :sswitch_1a
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_16

    const/4 v3, 0x1

    .local v3, _arg1:Z
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #_arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #_arg4:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_17

    sget-object v1, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/LinkProperties;

    .restart local v7       #_arg5:Landroid/net/LinkProperties;
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_18

    sget-object v1, Landroid/net/LinkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/LinkCapabilities;

    .restart local v8       #_arg6:Landroid/net/LinkCapabilities;
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9       #_arg7:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_19

    const/4 v10, 0x1

    .restart local v10       #_arg8:Z
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .local v11, _arg9:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .local v24, _arg10:I
    move-object/from16 v13, p0

    move v14, v2

    move v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    move-object/from16 v23, v11

    invoke-virtual/range {v13 .. v24}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataConnectionExt(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZLjava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    goto/16 :goto_0

    .end local v3           #_arg1:Z
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v5           #_arg3:Ljava/lang/String;
    .end local v6           #_arg4:Ljava/lang/String;
    .end local v7           #_arg5:Landroid/net/LinkProperties;
    .end local v8           #_arg6:Landroid/net/LinkCapabilities;
    .end local v9           #_arg7:I
    .end local v10           #_arg8:Z
    .end local v11           #_arg9:Ljava/lang/String;
    .end local v24           #_arg10:I
    :cond_16
    const/4 v3, 0x0

    goto :goto_17

    .restart local v3       #_arg1:Z
    .restart local v4       #_arg2:Ljava/lang/String;
    .restart local v5       #_arg3:Ljava/lang/String;
    .restart local v6       #_arg4:Ljava/lang/String;
    :cond_17
    const/4 v7, 0x0

    .restart local v7       #_arg5:Landroid/net/LinkProperties;
    goto :goto_18

    :cond_18
    const/4 v8, 0x0

    .restart local v8       #_arg6:Landroid/net/LinkCapabilities;
    goto :goto_19

    .restart local v9       #_arg7:I
    :cond_19
    const/4 v10, 0x0

    goto :goto_1a

    .end local v2           #_arg0:I
    .end local v3           #_arg1:Z
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v5           #_arg3:Ljava/lang/String;
    .end local v6           #_arg4:Ljava/lang/String;
    .end local v7           #_arg5:Landroid/net/LinkProperties;
    .end local v8           #_arg6:Landroid/net/LinkCapabilities;
    .end local v9           #_arg7:I
    :sswitch_1b
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, _arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataConnectionFailedExt(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    goto/16 :goto_0

    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:I
    :sswitch_1c
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1a

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .local v2, _arg0:Landroid/os/Bundle;
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellLocationExt(Landroid/os/Bundle;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    goto/16 :goto_0

    .end local v2           #_arg0:Landroid/os/Bundle;
    .end local v3           #_arg1:I
    :cond_1a
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/os/Bundle;
    goto :goto_1b

    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
