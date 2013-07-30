.class public Landroid/telephony/PhoneStateListener;
.super Ljava/lang/Object;
.source "PhoneStateListener.java"


# static fields
.field public static final LISTEN_CALL_DISCONNECTED:I = -0x80000000

.field public static final LISTEN_CALL_FORWARDING_INDICATOR:I = 0x8

.field public static final LISTEN_CALL_STATE:I = 0x20

.field public static final LISTEN_CELL_INFO:I = 0x400

.field public static final LISTEN_CELL_LOCATION:I = 0x10

.field public static final LISTEN_DATA_ACTIVITY:I = 0x80

.field public static final LISTEN_DATA_CONNECTION_STATE:I = 0x40

.field public static final LISTEN_MESSAGE_WAITING_INDICATOR:I = 0x4

.field public static final LISTEN_NONE:I = 0x0

.field public static final LISTEN_OTASP_CHANGED:I = 0x200

.field public static final LISTEN_PRECISE_CALL_STATE:I = 0x40000000

.field public static final LISTEN_SEPARATE_SERVICE_STATE:I = 0x20000000

.field public static final LISTEN_SERVICE_STATE:I = 0x1

.field public static final LISTEN_SIGNAL_STRENGTH:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LISTEN_SIGNAL_STRENGTHS:I = 0x100


# instance fields
.field callback:Lcom/android/internal/telephony/IPhoneStateListener;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/telephony/PhoneStateListener$1;

    invoke-direct {v0, p0}, Landroid/telephony/PhoneStateListener$1;-><init>(Landroid/telephony/PhoneStateListener;)V

    iput-object v0, p0, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v0, Landroid/telephony/PhoneStateListener$2;

    invoke-direct {v0, p0}, Landroid/telephony/PhoneStateListener$2;-><init>(Landroid/telephony/PhoneStateListener;)V

    iput-object v0, p0, Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onCallDisconnected(Ljava/lang/String;)V
    .locals 0
    .parameter "incomingNumber"

    .prologue
    return-void
.end method

.method public onCallForwardingIndicatorChanged(Z)V
    .locals 0
    .parameter "cfi"

    .prologue
    return-void
.end method

.method public onCallForwardingIndicatorChangedExt(ZI)V
    .locals 0
    .parameter "cfi"
    .parameter "phoneType"

    .prologue
    return-void
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 0
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    return-void
.end method

.method public onCallStateChangedExt(ILjava/lang/String;I)V
    .locals 0
    .parameter "state"
    .parameter "incomingNumber"
    .parameter "phoneType"

    .prologue
    return-void
.end method

.method public onCellInfoChanged(Landroid/telephony/CellInfo;)V
    .locals 0
    .parameter "cellInfo"

    .prologue
    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 0
    .parameter "location"

    .prologue
    return-void
.end method

.method public onCellLocationChangedExt(Landroid/telephony/CellLocation;I)V
    .locals 0
    .parameter "location"
    .parameter "phoneType"

    .prologue
    return-void
.end method

.method public onDataActivity(I)V
    .locals 0
    .parameter "direction"

    .prologue
    return-void
.end method

.method public onDataActivityExt(II)V
    .locals 0
    .parameter "direction"
    .parameter "phoneType"

    .prologue
    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 0
    .parameter "state"
    .parameter "networkType"

    .prologue
    return-void
.end method

.method public onDataConnectionStateChangedExt(II)V
    .locals 0
    .parameter "state"
    .parameter "phoneType"

    .prologue
    return-void
.end method

.method public onDataConnectionStateChangedExt(III)V
    .locals 0
    .parameter "state"
    .parameter "networkType"
    .parameter "phoneType"

    .prologue
    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 0
    .parameter "mwi"

    .prologue
    return-void
.end method

.method public onMessageWaitingIndicatorChangedEnhanced(I)V
    .locals 0
    .parameter "count"

    .prologue
    return-void
.end method

.method public onMessageWaitingIndicatorChangedExt(ZI)V
    .locals 0
    .parameter "mwi"
    .parameter "phoneType"

    .prologue
    return-void
.end method

.method public onOtaspChanged(I)V
    .locals 0
    .parameter "otaspMode"

    .prologue
    return-void
.end method

.method public onPreciseCallStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    return-void
.end method

.method public onSeparateServiceStateChanged([Landroid/telephony/ServiceState;[Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "voiceServiceState"
    .parameter "dataServiceState"

    .prologue
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "serviceState"

    .prologue
    return-void
.end method

.method public onServiceStateChangedExt(Landroid/telephony/ServiceState;I)V
    .locals 0
    .parameter "serviceState"
    .parameter "phoneType"

    .prologue
    return-void
.end method

.method public onSignalStrengthChanged(I)V
    .locals 0
    .parameter "asu"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 0
    .parameter "signalStrength"

    .prologue
    return-void
.end method

.method public onSignalStrengthsChangedExt(Landroid/telephony/SignalStrength;I)V
    .locals 0
    .parameter "signalStrength"
    .parameter "phoneType"

    .prologue
    return-void
.end method
