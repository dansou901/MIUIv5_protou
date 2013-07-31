.class Lcom/android/server/TelephonyRegistry;
.super Lcom/android/internal/telephony/ITelephonyRegistry$Stub;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TelephonyRegistry$1;,
        Lcom/android/server/TelephonyRegistry$RegistryInfo;,
        Lcom/android/server/TelephonyRegistry$Record;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field static final PHONE_STATE_PERMISSION_MASK:I = 0xec

.field private static final TAG:Ljava/lang/String; = "TelephonyRegistry"


# instance fields
.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mCallForwarding:Z

.field private mCallIncomingNumber:Ljava/lang/String;

.field private mCallState:I

.field private mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

.field private mCellInfo:Landroid/telephony/CellInfo;

.field private mCellLocation:Landroid/os/Bundle;

.field private mConnectedApns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDataActivity:I

.field private mDataConnectionApn:Ljava/lang/String;

.field private mDataConnectionInterfaceName:Ljava/lang/String;

.field private mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

.field private mDataConnectionLinkProperties:Landroid/net/LinkProperties;

.field private mDataConnectionNetworkType:I

.field private mDataConnectionPossible:Z

.field private mDataConnectionReason:Ljava/lang/String;

.field private mDataConnectionState:I

.field private mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

.field private mMessageWaiting:I

.field private mOtaspMode:I

.field private mPreciseCallState:I

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/TelephonyRegistry$Record;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mServiceStateData:[Landroid/telephony/ServiceState;

.field private mServiceStateVoice:[Landroid/telephony/ServiceState;

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    iput v3, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:I

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mServiceStateVoice:[Landroid/telephony/ServiceState;

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mServiceStateData:[Landroid/telephony/ServiceState;

    new-instance v1, Landroid/telephony/SignalStrength;

    invoke-direct {v1}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:I

    iput-boolean v2, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    iput-boolean v2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionInterfaceName:Ljava/lang/String;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    iput v3, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Landroid/telephony/CellInfo;

    invoke-static {}, Landroid/telephony/CellLocation;->getEmpty()Landroid/telephony/CellLocation;

    move-result-object v0

    .local v0, location:Landroid/telephony/CellLocation;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    :cond_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v1, Lcom/android/server/TelephonyRegistry$RegistryInfo;

    invoke-direct {v1, p0, v3}, Lcom/android/server/TelephonyRegistry$RegistryInfo;-><init>(Lcom/android/server/TelephonyRegistry;I)V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/android/server/TelephonyRegistry$RegistryInfo;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;-><init>(Lcom/android/server/TelephonyRegistry;I)V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/android/server/TelephonyRegistry$RegistryInfo;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;-><init>(Lcom/android/server/TelephonyRegistry;I)V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    goto :goto_0
.end method

.method private HtcBroadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZILjava/lang/String;)V
    .locals 5
    .parameter "state"
    .parameter "isDataConnectivityPossible"
    .parameter "reason"
    .parameter "apn"
    .parameter "apnType"
    .parameter "linkProperties"
    .parameter "linkCapabilities"
    .parameter "roaming"
    .parameter "errorCause"
    .parameter "apnCarrier"

    .prologue
    const/4 v4, 0x1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    const-string v2, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(I)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone$DataState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-nez p2, :cond_0

    const-string v2, "networkUnvailable"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    if-eqz p3, :cond_1

    const-string v2, "reason"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    if-eqz p6, :cond_2

    const-string v2, "linkProperties"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .local v0, iface:Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v2, "iface"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .end local v0           #iface:Ljava/lang/String;
    :cond_2
    if-eqz p7, :cond_3

    const-string v2, "linkCapabilities"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_3
    if-eqz p8, :cond_4

    const-string v2, "networkRoaming"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_4
    const-string v2, "apn"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "apnType"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "entitleError"

    invoke-virtual {v1, v2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p10, :cond_5

    const-string v2, "apnCarrier"

    invoke-virtual {v1, v2, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private broadcastCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;I)V

    return-void
.end method

.method private broadcastCallStateChanged(ILjava/lang/String;I)V
    .locals 5
    .parameter "state"
    .parameter "incomingNumber"
    .parameter "phoneType"

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, ident:J
    if-nez p1, :cond_3

    :try_start_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOff()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .local v2, intent:Landroid/content/Intent;
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_0
    invoke-static {p3}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    const/high16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(I)Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone$State;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "incoming_number"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string v3, "phone_type"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOn()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .restart local v2       #intent:Landroid/content/Intent;
    :cond_4
    const-string v3, "android.intent.action.PHONE_STATE_EXT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_5
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v2       #intent:Landroid/content/Intent;
    const-string v3, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(I)Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone$State;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "incoming_number"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method

.method private broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "reason"
    .parameter "apnType"

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "reason"
    .parameter "apnType"
    .parameter "phoneType"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "apnType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "phone_type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;Z)V
    .locals 11
    .parameter "state"
    .parameter "isDataConnectivityPossible"
    .parameter "reason"
    .parameter "apn"
    .parameter "apnType"
    .parameter "linkProperties"
    .parameter "linkCapabilities"
    .parameter "roaming"

    .prologue
    const/4 v9, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v10

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZLjava/lang/String;I)V

    return-void
.end method

.method private broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZLjava/lang/String;I)V
    .locals 5
    .parameter "state"
    .parameter "isDataConnectivityPossible"
    .parameter "reason"
    .parameter "apn"
    .parameter "apnType"
    .parameter "linkProperties"
    .parameter "linkCapabilities"
    .parameter "roaming"
    .parameter "apnCarrier"
    .parameter "phoneType"

    .prologue
    const/4 v4, 0x1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    const-string v2, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(I)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone$DataState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-nez p2, :cond_0

    const-string v2, "networkUnvailable"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    if-eqz p3, :cond_1

    const-string v2, "reason"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    if-eqz p6, :cond_2

    const-string v2, "linkProperties"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .local v0, iface:Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v2, "iface"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .end local v0           #iface:Ljava/lang/String;
    :cond_2
    if-eqz p7, :cond_3

    const-string v2, "linkCapabilities"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_3
    if-eqz p8, :cond_4

    const-string v2, "networkRoaming"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_4
    const-string v2, "apn"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "apnType"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const-string v2, "phone_type"

    invoke-virtual {v1, v2, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_6
    if-eqz p9, :cond_7

    const-string v2, "apnCarrier"

    invoke-virtual {v1, v2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_7
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private broadcastDataConnectionStateChangedLTE(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/net/LinkProperties;ZZLjava/lang/String;)V
    .locals 5
    .parameter "apnType"
    .parameter "ipVersion"
    .parameter "state"
    .parameter "apn"
    .parameter "linkProperties"
    .parameter "isDataConnectivityPossible"
    .parameter "roaming"
    .parameter "reason"

    .prologue
    const/4 v4, 0x1

    const-string v2, "TelephonyRegistry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastDataConnectionStateChangedLTE() ++   apnType="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", ipVersion="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", state="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", apn="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", isDataConnectivityPossible= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", roaming= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", reason= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", lp="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p5, :cond_6

    invoke-virtual {p5}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    if-nez p6, :cond_0

    const-string v1, "networkUnvailable"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    if-eqz p8, :cond_1

    const-string v1, "reason"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string v1, "state"

    invoke-static {p3}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataStateLTE(I)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone$DataState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p4, :cond_2

    const-string v1, "apn"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const-string v1, "apnType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p7, :cond_3

    const-string v1, "networkRoaming"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3
    if-eqz p2, :cond_4

    const-string v1, "ipVersion"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    if-eqz p5, :cond_5

    const-string v1, "linkProperties"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_5
    const-string v1, "TelephonyRegistry"

    const-string v2, "[BCST]---------------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "TelephonyRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BCST] STATE_CHANGE_REASON_KEY(reason)= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "TelephonyRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BCST] DATA_APN_KEY(apn)= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,DATA_APN_TYPES_KEY= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "TelephonyRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BCST] IP_VERSION= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "TelephonyRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BCST] DATA_APN_TYPE_STATE(state)= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataStateLTE(I)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone$DataState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "TelephonyRegistry"

    const-string v2, "[BCST] ---------------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "TelephonyRegistry"

    const-string v2, "[QCTMM]broadcastDataConnectionStateChangedLTE()  -- "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void

    .end local v0           #intent:Landroid/content/Intent;
    :cond_6
    const-string v1, "null"

    goto/16 :goto_0
.end method

.method private broadcastServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .parameter "state"

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->broadcastServiceStateChanged(Landroid/telephony/ServiceState;I)V

    return-void
.end method

.method private broadcastServiceStateChanged(Landroid/telephony/ServiceState;I)V
    .locals 6
    .parameter "state"
    .parameter "phoneType"

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .local v1, ident:J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/internal/app/IBatteryStats;->notePhoneState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .local v3, intent:Landroid/content/Intent;
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    const/high16 v4, 0x2000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, data:Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v4, "phone_type"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void

    .end local v0           #data:Landroid/os/Bundle;
    .end local v3           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .restart local v3       #intent:Landroid/content/Intent;
    :cond_1
    const-string v4, "android.intent.action.SERVICE_STATE_EXT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.SERVICE_STATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v3       #intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0       #data:Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_2

    .end local v0           #data:Landroid/os/Bundle;
    .end local v3           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;)V
    .locals 1
    .parameter "signalStrength"

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;I)V

    return-void
.end method

.method private broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;I)V
    .locals 6
    .parameter "signalStrength"
    .parameter "phoneType"

    .prologue
    const/high16 v5, 0x2000

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .local v1, ident:J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4, p1}, Lcom/android/internal/app/IBatteryStats;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .local v3, intent:Landroid/content/Intent;
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "android.intent.action.SIG_STR"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, data:Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/SignalStrength;->fillInNotifierBundle(Landroid/os/Bundle;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v4, "phone_type"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void

    .end local v0           #data:Landroid/os/Bundle;
    .end local v3           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .restart local v3       #intent:Landroid/content/Intent;
    :cond_1
    const-string v4, "com.htc.intent.action.SIG_STR_EXT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.SIG_STR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0       #data:Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/SignalStrength;->fillInNotifierBundle(Landroid/os/Bundle;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_2

    .end local v0           #data:Landroid/os/Bundle;
    .end local v3           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private checkListenerPermission(I)V
    .locals 3
    .parameter "events"

    .prologue
    const/4 v2, 0x0

    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    and-int/lit16 v0, p1, 0xec

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private checkNotifyPermission(Ljava/lang/String;)Z
    .locals 3
    .parameter "method"

    .prologue
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Modify Phone State Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, msg:Ljava/lang/String;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private generateServiceStateList([Landroid/telephony/ServiceState;)[Landroid/telephony/ServiceState;
    .locals 4
    .parameter "serviceStateList"

    .prologue
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    array-length v2, p1

    new-array v0, v2, [Landroid/telephony/ServiceState;

    .local v0, generatedList:[Landroid/telephony/ServiceState;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    new-instance v2, Landroid/telephony/ServiceState;

    aget-object v3, p1, v1

    invoke-direct {v2, v3}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private handleRemoveListLocked()V
    .locals 3

    .prologue
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .local v0, b:Landroid/os/IBinder;
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_0

    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private remove(Landroid/os/IBinder;)V
    .locals 4
    .parameter "binder"

    .prologue
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, recordCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    monitor-exit v3

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v3

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #recordCount:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private sendCellLocationExt(Lcom/android/server/TelephonyRegistry$Record;Landroid/os/Bundle;I)V
    .locals 3
    .parameter "r"
    .parameter "cellLocation"
    .parameter "phoneType"

    .prologue
    :try_start_0
    invoke-static {p3}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V

    :cond_0
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v1, v2, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChangedExt(Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method private sendSignalStrengthExt(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/SignalStrength;I)V
    .locals 3
    .parameter "r"
    .parameter "signalStrength"
    .parameter "phoneType"

    .prologue
    :try_start_0
    invoke-static {p3}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v2, Landroid/telephony/SignalStrength;

    invoke-direct {v2, p2}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    :cond_0
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v2, Landroid/telephony/SignalStrength;

    invoke-direct {v2, p2}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v1, v2, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChangedExt(Landroid/telephony/SignalStrength;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public HtcNotifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZILjava/lang/String;)V
    .locals 17
    .parameter "state"
    .parameter "isDataConnectivityPossible"
    .parameter "reason"
    .parameter "apn"
    .parameter "apnType"
    .parameter "linkProperties"
    .parameter "linkCapabilities"
    .parameter "networkType"
    .parameter "roaming"
    .parameter "errorCause"
    .parameter "apnCarrier"

    .prologue
    const-string v2, "notifyDataConnection()"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "TelephonyRegistry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyDataConnection: state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isDataConnectivityPossible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reason=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' apn=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' apnType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " networkType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " roaming="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " errorCause="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p10

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "preConn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    const/4 v15, 0x0

    .local v15, modified:Z
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    move/from16 v0, p1

    if-eq v2, v0, :cond_1

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    const/4 v15, 0x1

    :cond_1
    :goto_1
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    move/from16 v0, p8

    if-eq v2, v0, :cond_2

    move/from16 v0, p8

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    const/4 v15, 0x1

    :cond_2
    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/TelephonyRegistry$Record;

    .local v16, r:Lcom/android/server/TelephonyRegistry$Record;
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_3

    :try_start_1
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    invoke-interface {v2, v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v13

    .local v13, ex:Landroid/os/RemoteException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v13           #ex:Landroid/os/RemoteException;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v16           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    const/4 v15, 0x1

    goto/16 :goto_1

    .restart local v14       #i$:Ljava/util/Iterator;
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .end local v14           #i$:Ljava/util/Iterator;
    :cond_6
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v2 .. v12}, Lcom/android/server/TelephonyRegistry;->HtcBroadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump telephony.registry from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, recordCount:I
    const-string v3, "last known state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCallState="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCallIncomingNumber="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mServiceState="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mSignalStrength="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mMessageWaiting="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCallForwarding="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataActivity="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionState="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionPossible="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionReason="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionApn="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionLinkProperties="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionLinkCapabilities="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCellLocation="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCellInfo="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Landroid/telephony/CellInfo;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registrations: count="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .local v1, r:Lcom/android/server/TelephonyRegistry$Record;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v1, Lcom/android/server/TelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " 0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #r:Lcom/android/server/TelephonyRegistry$Record;
    .end local v2           #recordCount:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #recordCount:I
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public htcNotifyCallDisconnected(Ljava/lang/String;)V
    .locals 5
    .parameter "number"

    .prologue
    const-string v3, "notifyCallState()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_2

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_1

    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallDisconnected(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_2

    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1       #i:I
    :cond_2
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public htcNotifyDataConnection(IZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter "state"
    .parameter "isDataConnectivityPossible"
    .parameter "reason"
    .parameter "apn"
    .parameter "apnTypes"
    .parameter "interfaceName"
    .parameter "networkType"
    .parameter "gateway"
    .parameter "ipAddress"
    .parameter "stateTimeStamp"

    .prologue
    return-void
.end method

.method public htcNotifyPreciseCallStateChanged(I)V
    .locals 6
    .parameter "state"

    .prologue
    const-string v3, "notifyCallState()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:I

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_2

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v5, 0x4000

    and-int/2addr v3, v5

    if-eqz v3, :cond_1

    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:I

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseCallStateChanged(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_2

    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1       #i:I
    :cond_2
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public htcNotifySeparateServiceState([Landroid/telephony/ServiceState;[Landroid/telephony/ServiceState;)V
    .locals 5
    .parameter "voiceState"
    .parameter "dataState"

    .prologue
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "notifySeparateServiceState()"

    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    if-eqz p1, :cond_2

    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mServiceStateVoice:[Landroid/telephony/ServiceState;

    :cond_2
    if-eqz p2, :cond_3

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mServiceStateData:[Landroid/telephony/ServiceState;

    :cond_3
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_5

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .local v1, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v2, v1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    const/high16 v4, 0x2000

    and-int/2addr v2, v4

    if-eqz v2, :cond_4

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/TelephonyRegistry;->sendServiceState(Lcom/android/server/TelephonyRegistry$Record;[Landroid/telephony/ServiceState;[Landroid/telephony/ServiceState;)V

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v1           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_5
    monitor-exit v3

    goto :goto_0

    .end local v0           #i:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    .locals 14
    .parameter "pkgForDebug"
    .parameter "callback"
    .parameter "events"
    .parameter "notifyNow"

    .prologue
    if-eqz p3, :cond_47

    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkListenerPermission(I)V

    iget-object v10, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v10

    const/4 v6, 0x0

    .local v6, r:Lcom/android/server/TelephonyRegistry$Record;
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .local v2, b:Landroid/os/IBinder;
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .local v1, N:I
    const/4 v5, 0x0

    .local v5, i:I
    move-object v7, v6

    .end local v6           #r:Lcom/android/server/TelephonyRegistry$Record;
    .local v7, r:Lcom/android/server/TelephonyRegistry$Record;
    :goto_0
    if-ge v5, v1, :cond_1f

    :try_start_1
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/TelephonyRegistry$Record;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v7           #r:Lcom/android/server/TelephonyRegistry$Record;
    .restart local v6       #r:Lcom/android/server/TelephonyRegistry$Record;
    :try_start_2
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v2, v9, :cond_1e

    :goto_1
    iget v9, v6, Lcom/android/server/TelephonyRegistry$Record;->events:I

    xor-int v9, v9, p3

    and-int v8, p3, v9

    .local v8, send:I
    move/from16 v0, p3

    iput v0, v6, Lcom/android/server/TelephonyRegistry$Record;->events:I

    if-eqz p4, :cond_1d

    and-int/lit8 v9, p3, 0x1

    if-eqz v9, :cond_2

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v9

    if-eqz v9, :cond_23

    :cond_0
    :try_start_3
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_20

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v11, Landroid/telephony/ServiceState;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    invoke-direct {v11, v12}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    :cond_1
    :goto_2
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v11, Landroid/telephony/ServiceState;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    invoke-direct {v11, v12}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChangedExt(Landroid/telephony/ServiceState;I)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_22

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v11, Landroid/telephony/ServiceState;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    invoke-direct {v11, v12}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChangedExt(Landroid/telephony/ServiceState;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    :goto_3
    const/high16 v9, 0x2000

    and-int v9, v9, p3

    if-eqz v9, :cond_3

    :try_start_4
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mServiceStateVoice:[Landroid/telephony/ServiceState;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mServiceStateData:[Landroid/telephony/ServiceState;

    invoke-virtual {p0, v6, v9, v11}, Lcom/android/server/TelephonyRegistry;->sendServiceState(Lcom/android/server/TelephonyRegistry$Record;[Landroid/telephony/ServiceState;[Landroid/telephony/ServiceState;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    and-int/lit8 v9, p3, 0x2

    if-eqz v9, :cond_6

    :try_start_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_28

    :cond_4
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_24

    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v9}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v4

    .local v4, gsmSignalStrength:I
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v11, 0x63

    if-ne v4, v11, :cond_5

    const/4 v4, -0x1

    .end local v4           #gsmSignalStrength:I
    :cond_5
    invoke-interface {v9, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_6
    :goto_4
    and-int/lit8 v9, p3, 0x4

    if-eqz v9, :cond_9

    :try_start_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-nez v9, :cond_7

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_2d

    :cond_7
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_2a

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-boolean v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mMessageWaiting:Z

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V

    :cond_8
    :goto_5
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-boolean v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mMessageWaiting:Z

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChangedExt(ZI)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_2c

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-boolean v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mMessageWaiting:Z

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChangedExt(ZI)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_9
    :goto_6
    and-int/lit8 v9, p3, 0x8

    if-eqz v9, :cond_c

    :try_start_7
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-nez v9, :cond_a

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_32

    :cond_a
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_2f

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-boolean v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallForwarding:Z

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V

    :cond_b
    :goto_7
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-boolean v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallForwarding:Z

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChangedExt(ZI)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_31

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-boolean v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallForwarding:Z

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChangedExt(ZI)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_c
    :goto_8
    and-int/lit8 v9, p3, 0x10

    if-eqz v9, :cond_f

    :try_start_8
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-nez v9, :cond_d

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v9

    if-eqz v9, :cond_36

    :cond_d
    :try_start_9
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_33

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v11, Landroid/os/Bundle;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCellLocation:Landroid/os/Bundle;

    invoke-direct {v11, v12}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V

    :cond_e
    :goto_9
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v11, Landroid/os/Bundle;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCellLocation:Landroid/os/Bundle;

    invoke-direct {v11, v12}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChangedExt(Landroid/os/Bundle;I)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_35

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v11, Landroid/os/Bundle;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCellLocation:Landroid/os/Bundle;

    invoke-direct {v11, v12}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChangedExt(Landroid/os/Bundle;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_5

    :cond_f
    :goto_a
    and-int/lit8 v9, p3, 0x20

    if-eqz v9, :cond_12

    :try_start_a
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-nez v9, :cond_10

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_3a

    :cond_10
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_37

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallIncomingNumber:Ljava/lang/String;

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    :cond_11
    :goto_b
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallIncomingNumber:Ljava/lang/String;

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v13, v13, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChangedExt(ILjava/lang/String;I)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_39

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallIncomingNumber:Ljava/lang/String;

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v13, v13, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChangedExt(ILjava/lang/String;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_7

    :cond_12
    :goto_c
    and-int/lit8 v9, p3, 0x40

    if-eqz v9, :cond_15

    :try_start_b
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-nez v9, :cond_13

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_3e

    :cond_13
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_3b

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V

    :cond_14
    :goto_d
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v13, v13, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChangedExt(III)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_3d

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v13, v13, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChangedExt(III)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_8

    :cond_15
    :goto_e
    move/from16 v0, p3

    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_18

    :try_start_c
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-nez v9, :cond_16

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_42

    :cond_16
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_3f

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataActivity:I

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V

    :cond_17
    :goto_f
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataActivity:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivityExt(II)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_41

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataActivity:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivityExt(II)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_9

    :cond_18
    :goto_10
    move/from16 v0, p3

    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_1b

    :try_start_d
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-nez v9, :cond_19

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_46

    :cond_19
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_43

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    :cond_1a
    :goto_11
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChangedExt(Landroid/telephony/SignalStrength;I)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_45

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChangedExt(Landroid/telephony/SignalStrength;I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_a

    :cond_1b
    :goto_12
    move/from16 v0, p3

    and-int/lit16 v9, v0, 0x200

    if-eqz v9, :cond_1c

    :try_start_e
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v11, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onOtaspChanged(I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_b

    :cond_1c
    :goto_13
    move/from16 v0, p3

    and-int/lit16 v9, v0, 0x400

    if-eqz v9, :cond_1d

    :try_start_f
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v11, Landroid/telephony/CellInfo;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Landroid/telephony/CellInfo;

    invoke-direct {v11, v12}, Landroid/telephony/CellInfo;-><init>(Landroid/telephony/CellInfo;)V

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Landroid/telephony/CellInfo;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_c

    :cond_1d
    :goto_14
    :try_start_10
    monitor-exit v10
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .end local v1           #N:I
    .end local v2           #b:Landroid/os/IBinder;
    .end local v5           #i:I
    .end local v6           #r:Lcom/android/server/TelephonyRegistry$Record;
    .end local v8           #send:I
    :goto_15
    return-void

    .restart local v1       #N:I
    .restart local v2       #b:Landroid/os/IBinder;
    .restart local v5       #i:I
    .restart local v6       #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_1e
    add-int/lit8 v5, v5, 0x1

    move-object v7, v6

    .end local v6           #r:Lcom/android/server/TelephonyRegistry$Record;
    .restart local v7       #r:Lcom/android/server/TelephonyRegistry$Record;
    goto/16 :goto_0

    :cond_1f
    :try_start_11
    new-instance v6, Lcom/android/server/TelephonyRegistry$Record;

    const/4 v9, 0x0

    invoke-direct {v6, v9}, Lcom/android/server/TelephonyRegistry$Record;-><init>(Lcom/android/server/TelephonyRegistry$1;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .end local v7           #r:Lcom/android/server/TelephonyRegistry$Record;
    .restart local v6       #r:Lcom/android/server/TelephonyRegistry$Record;
    :try_start_12
    iput-object v2, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v0, p2

    iput-object v0, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iput-object p1, v6, Lcom/android/server/TelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .end local v1           #N:I
    .end local v2           #b:Landroid/os/IBinder;
    .end local v5           #i:I
    :catchall_0
    move-exception v9

    :goto_16
    monitor-exit v10
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    throw v9

    .restart local v1       #N:I
    .restart local v2       #b:Landroid/os/IBinder;
    .restart local v5       #i:I
    .restart local v8       #send:I
    :cond_20
    :try_start_13
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_21

    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_21

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v11, Landroid/telephony/ServiceState;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    invoke-direct {v11, v12}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v3

    .local v3, ex:Landroid/os/RemoteException;
    :try_start_14
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_3

    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_21
    :try_start_15
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v11, Landroid/telephony/ServiceState;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    invoke-direct {v11, v12}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto/16 :goto_2

    :cond_22
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v11, Landroid/telephony/ServiceState;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    invoke-direct {v11, v12}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChangedExt(Landroid/telephony/ServiceState;I)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_0

    goto/16 :goto_3

    :cond_23
    :try_start_16
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v11, Landroid/telephony/ServiceState;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    invoke-direct {v11, v12}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v3

    .restart local v3       #ex:Landroid/os/RemoteException;
    :try_start_17
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto/16 :goto_3

    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_24
    :try_start_18
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_26

    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_26

    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v9}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v4

    .restart local v4       #gsmSignalStrength:I
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v11, 0x63

    if-ne v4, v11, :cond_25

    const/4 v4, -0x1

    .end local v4           #gsmSignalStrength:I
    :cond_25
    invoke-interface {v9, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_2

    goto/16 :goto_4

    :catch_2
    move-exception v3

    .restart local v3       #ex:Landroid/os/RemoteException;
    :try_start_19
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    goto/16 :goto_4

    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_26
    :try_start_1a
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v9}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v4

    .restart local v4       #gsmSignalStrength:I
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v11, 0x63

    if-ne v4, v11, :cond_27

    const/4 v4, -0x1

    .end local v4           #gsmSignalStrength:I
    :cond_27
    invoke-interface {v9, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V

    goto/16 :goto_4

    :cond_28
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v9}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v4

    .restart local v4       #gsmSignalStrength:I
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v11, 0x63

    if-ne v4, v11, :cond_29

    const/4 v4, -0x1

    .end local v4           #gsmSignalStrength:I
    :cond_29
    invoke-interface {v9, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_2

    goto/16 :goto_4

    :cond_2a
    :try_start_1b
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_2b

    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_2b

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-boolean v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mMessageWaiting:Z

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_3

    goto/16 :goto_5

    :catch_3
    move-exception v3

    .restart local v3       #ex:Landroid/os/RemoteException;
    :try_start_1c
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    goto/16 :goto_6

    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_2b
    :try_start_1d
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-boolean v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mMessageWaiting:Z

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V

    goto/16 :goto_5

    :cond_2c
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-boolean v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mMessageWaiting:Z

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChangedExt(ZI)V

    goto/16 :goto_6

    :cond_2d
    iget v9, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:I

    if-nez v9, :cond_2e

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/4 v11, 0x0

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V

    :goto_17
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v11, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:I

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChangedEnhanced(I)V

    goto/16 :goto_6

    :cond_2e
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/4 v11, 0x1

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_3

    goto :goto_17

    :cond_2f
    :try_start_1e
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_30

    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_30

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-boolean v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallForwarding:Z

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_4

    goto/16 :goto_7

    :catch_4
    move-exception v3

    .restart local v3       #ex:Landroid/os/RemoteException;
    :try_start_1f
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    goto/16 :goto_8

    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_30
    :try_start_20
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-boolean v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallForwarding:Z

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V

    goto/16 :goto_7

    :cond_31
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_c

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-boolean v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallForwarding:Z

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChangedExt(ZI)V

    goto/16 :goto_8

    :cond_32
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-boolean v11, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_20} :catch_4

    goto/16 :goto_8

    :cond_33
    :try_start_21
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_34

    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_34

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v11, Landroid/os/Bundle;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCellLocation:Landroid/os/Bundle;

    invoke-direct {v11, v12}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_21} :catch_5

    goto/16 :goto_9

    :catch_5
    move-exception v3

    .restart local v3       #ex:Landroid/os/RemoteException;
    :try_start_22
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    goto/16 :goto_a

    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_34
    :try_start_23
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v11, Landroid/os/Bundle;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCellLocation:Landroid/os/Bundle;

    invoke-direct {v11, v12}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V

    goto/16 :goto_9

    :cond_35
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_f

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v11, Landroid/os/Bundle;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCellLocation:Landroid/os/Bundle;

    invoke-direct {v11, v12}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChangedExt(Landroid/os/Bundle;I)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_23} :catch_5

    goto/16 :goto_a

    :cond_36
    :try_start_24
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v11, Landroid/os/Bundle;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    invoke-direct {v11, v12}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_24} :catch_6

    goto/16 :goto_a

    :catch_6
    move-exception v3

    .restart local v3       #ex:Landroid/os/RemoteException;
    :try_start_25
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    goto/16 :goto_a

    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_37
    :try_start_26
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_38

    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_38

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallIncomingNumber:Ljava/lang/String;

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_26} :catch_7

    goto/16 :goto_b

    :catch_7
    move-exception v3

    .restart local v3       #ex:Landroid/os/RemoteException;
    :try_start_27
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    goto/16 :goto_c

    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_38
    :try_start_28
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_11

    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_11

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallIncomingNumber:Ljava/lang/String;

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    goto/16 :goto_b

    :cond_39
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_12

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallIncomingNumber:Ljava/lang/String;

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v13, v13, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChangedExt(ILjava/lang/String;I)V

    goto/16 :goto_c

    :cond_3a
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v11, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_28} :catch_7

    goto/16 :goto_c

    :cond_3b
    :try_start_29
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_3c

    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_3c

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_29} :catch_8

    goto/16 :goto_d

    :catch_8
    move-exception v3

    .restart local v3       #ex:Landroid/os/RemoteException;
    :try_start_2a
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    goto/16 :goto_e

    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_3c
    :try_start_2b
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_14

    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_14

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V

    goto/16 :goto_d

    :cond_3d
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_15

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v13, v13, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChangedExt(III)V

    goto/16 :goto_e

    :cond_3e
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v11, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    iget v12, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2b} :catch_8

    goto/16 :goto_e

    :cond_3f
    :try_start_2c
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_40

    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_40

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataActivity:I

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2c} :catch_9

    goto/16 :goto_f

    :catch_9
    move-exception v3

    .restart local v3       #ex:Landroid/os/RemoteException;
    :try_start_2d
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0

    goto/16 :goto_10

    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_40
    :try_start_2e
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_17

    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_17

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataActivity:I

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V

    goto/16 :goto_f

    :cond_41
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_18

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataActivity:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivityExt(II)V

    goto/16 :goto_10

    :cond_42
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v11, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_2e} :catch_9

    goto/16 :goto_10

    :cond_43
    :try_start_2f
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_44

    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_44

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_2f} :catch_a

    goto/16 :goto_11

    :catch_a
    move-exception v3

    .restart local v3       #ex:Landroid/os/RemoteException;
    :try_start_30
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_0

    goto/16 :goto_12

    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_44
    :try_start_31
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_1a

    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_1a

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    goto/16 :goto_11

    :cond_45
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_1b

    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChangedExt(Landroid/telephony/SignalStrength;I)V

    goto/16 :goto_12

    :cond_46
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_31} :catch_a

    goto/16 :goto_12

    :catch_b
    move-exception v3

    .restart local v3       #ex:Landroid/os/RemoteException;
    :try_start_32
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_13

    .end local v3           #ex:Landroid/os/RemoteException;
    :catch_c
    move-exception v3

    .restart local v3       #ex:Landroid/os/RemoteException;
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_0

    goto/16 :goto_14

    .end local v1           #N:I
    .end local v2           #b:Landroid/os/IBinder;
    .end local v3           #ex:Landroid/os/RemoteException;
    .end local v5           #i:I
    .end local v6           #r:Lcom/android/server/TelephonyRegistry$Record;
    .end local v8           #send:I
    :cond_47
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_15

    .restart local v1       #N:I
    .restart local v2       #b:Landroid/os/IBinder;
    .restart local v5       #i:I
    .restart local v7       #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7           #r:Lcom/android/server/TelephonyRegistry$Record;
    .restart local v6       #r:Lcom/android/server/TelephonyRegistry$Record;
    goto/16 :goto_16
.end method

.method public notifyCWDataConnection(I)V
    .locals 3
    .parameter "state"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CW_ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(I)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone$DataState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public notifyCallForwardingChanged(Z)V
    .locals 6
    .parameter "cfi"

    .prologue
    const-string v3, "notifyCallForwardingChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_1

    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyCallForwardingChangedExt(ZI)V
    .locals 6
    .parameter "cfi"
    .parameter "phoneType"

    .prologue
    const-string v3, "notifyCallForwardingChangedExt()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v3, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyCallForwardingChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    :cond_1
    const/4 v3, 0x1

    if-ne p2, v3, :cond_5

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-boolean p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallForwarding:Z

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_2
    if-ltz v1, :cond_7

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_4

    :try_start_1
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V

    :cond_3
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChangedExt(ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .end local v1           #i:I
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_5
    const/4 v3, 0x5

    if-ne p2, v3, :cond_6

    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-boolean p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallForwarding:Z

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_6
    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    :try_start_3
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-boolean p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallForwarding:Z

    goto :goto_1

    .restart local v1       #i:I
    .restart local v2       #r:Lcom/android/server/TelephonyRegistry$Record;
    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_3

    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_7
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyCallState(ILjava/lang/String;)V
    .locals 6
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const-string v3, "notifyCallState()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_1

    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public notifyCallStateExt(ILjava/lang/String;I)V
    .locals 7
    .parameter "state"
    .parameter "incomingNumber"
    .parameter "phoneType"

    .prologue
    const-string v3, "notifyCallStateExt()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v3, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyCallStateExt: state= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,phoneType= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    invoke-static {p3}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    :cond_1
    const/4 v3, 0x1

    if-ne p3, v3, :cond_5

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p2, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallIncomingNumber:Ljava/lang/String;

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_2
    if-ltz v1, :cond_a

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_4

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v3, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v3, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    if-nez v3, :cond_7

    const-string v3, "TelephonyRegistry"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyCallStateExt/onCallStateChanged: Both IDLE, state= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    :cond_3
    :goto_3
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChangedExt(ILjava/lang/String;I)V

    const-string v3, "TelephonyRegistry"

    const-string v5, "notifyCallStateExt: do callback function. "

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .end local v1           #i:I
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_5
    const/4 v3, 0x5

    if-ne p3, v3, :cond_6

    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p2, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallIncomingNumber:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_6
    const/4 v3, 0x2

    if-ne p3, v3, :cond_2

    :try_start_3
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p2, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallIncomingNumber:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .restart local v1       #i:I
    .restart local v2       #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_7
    if-eqz p1, :cond_3

    :try_start_4
    const-string v3, "TelephonyRegistry"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyCallStateExt/onCallStateChanged: state= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    :try_start_5
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_8
    :try_start_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v3, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v3, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    if-nez v3, :cond_9

    const-string v3, "TelephonyRegistry"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyCallStateExt/onCallStateChanged: Both IDLE, state= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    goto :goto_3

    :cond_9
    if-eqz p1, :cond_3

    const-string v3, "TelephonyRegistry"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyCallStateExt/onCallStateChanged: state= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_3

    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_a
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public notifyCellInfo(Landroid/telephony/CellInfo;)V
    .locals 6
    .parameter "cellInfo"

    .prologue
    const-string v3, "notifyCellInfo()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Landroid/telephony/CellInfo;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_1

    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/telephony/CellInfo;

    invoke-direct {v5, p1}, Landroid/telephony/CellInfo;-><init>(Landroid/telephony/CellInfo;)V

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Landroid/telephony/CellInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyCellLocation(Landroid/os/Bundle;)V
    .locals 6
    .parameter "cellLocation"

    .prologue
    const-string v3, "notifyCellLocation()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_1

    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyCellLocationExt(Landroid/os/Bundle;I)V
    .locals 4
    .parameter "cellLocation"
    .parameter "phoneType"

    .prologue
    const-string v2, "notifyCellLocationExt()"

    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    const/4 v2, 0x1

    if-ne p2, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p1, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCellLocation:Landroid/os/Bundle;

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_2
    if-ltz v0, :cond_5

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .local v1, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v2, v1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_2

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/TelephonyRegistry;->sendCellLocationExt(Lcom/android/server/TelephonyRegistry$Record;Landroid/os/Bundle;I)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .end local v0           #i:I
    .end local v1           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_3
    const/4 v2, 0x5

    if-ne p2, v2, :cond_4

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p1, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCellLocation:Landroid/os/Bundle;

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_4
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p1, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCellLocation:Landroid/os/Bundle;

    goto :goto_1

    .restart local v0       #i:I
    :cond_5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public notifyDataActivity(I)V
    .locals 6
    .parameter "state"

    .prologue
    const-string v3, "notifyDataActivity()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1

    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyDataActivityExt(II)V
    .locals 5
    .parameter "state"
    .parameter "phoneType"

    .prologue
    const-string v3, "notifyDataActivityExt()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    :cond_1
    const/4 v3, 0x1

    if-ne p2, v3, :cond_5

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataActivity:I

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_2
    if-ltz v1, :cond_7

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_4

    :try_start_1
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V

    :cond_3
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivityExt(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .end local v1           #i:I
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_5
    const/4 v3, 0x5

    if-ne p2, v3, :cond_6

    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataActivity:I

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_6
    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    :try_start_3
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataActivity:I

    goto :goto_1

    .restart local v1       #i:I
    .restart local v2       #r:Lcom/android/server/TelephonyRegistry$Record;
    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_3

    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_7
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZ)V
    .locals 14
    .parameter "state"
    .parameter "isDataConnectivityPossible"
    .parameter "reason"
    .parameter "apn"
    .parameter "apnType"
    .parameter "linkProperties"
    .parameter "linkCapabilities"
    .parameter "networkType"
    .parameter "roaming"

    .prologue
    const-string v1, "notifyDataConnection()"

    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v2

    const/4 v12, 0x0

    .local v12, modified:Z
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    :try_start_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    if-eq v1, p1, :cond_1

    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    const/4 v12, 0x1

    :cond_1
    :goto_1
    move/from16 v0, p2

    iput-boolean v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    move/from16 v0, p8

    if-eq v1, v0, :cond_2

    move/from16 v0, p8

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    const/4 v12, 0x1

    :cond_2
    if-eqz v12, :cond_6

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/TelephonyRegistry$Record;

    .local v13, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v1, v13, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_3

    :try_start_1
    iget-object v1, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v10

    .local v10, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, v13, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v10           #ex:Landroid/os/RemoteException;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_4
    :try_start_3
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    const/4 v12, 0x1

    goto :goto_1

    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_5
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .end local v11           #i$:Ljava/util/Iterator;
    :cond_6
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, p0

    move v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;Z)V

    goto/16 :goto_0
.end method

.method public notifyDataConnectionExt(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZLjava/lang/String;I)V
    .locals 17
    .parameter "state"
    .parameter "isDataConnectivityPossible"
    .parameter "reason"
    .parameter "apn"
    .parameter "apnType"
    .parameter "linkProperties"
    .parameter "linkCapabilities"
    .parameter "networkType"
    .parameter "roaming"
    .parameter "apnCarrier"
    .parameter "phoneType"

    .prologue
    const-string v2, "notifyDataConnectionExt()"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "TelephonyRegistry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyDataConnectionExt: state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isDataConnectivityPossible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reason=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' apn=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' apnType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " networkType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " roaming="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " phoneType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p11

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    const/4 v15, 0x0

    .local v15, modified:Z
    :try_start_0
    invoke-static/range {p11 .. p11}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    move/from16 v0, p1

    if-eq v2, v0, :cond_1

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    const/4 v15, 0x1

    :cond_1
    :goto_1
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    move/from16 v0, p8

    if-eq v2, v0, :cond_2

    move/from16 v0, p8

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    const/4 v15, 0x1

    :cond_2
    const/4 v2, 0x1

    move/from16 v0, p11

    if-ne v0, v2, :cond_9

    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    #getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$100(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    #getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$100(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v2, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    move/from16 v0, p1

    if-eq v2, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p1

    iput v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    const/4 v15, 0x1

    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p2

    iput-boolean v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionPossible:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v0, p3

    iput-object v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionReason:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v0, p6

    #setter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v2, v0}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$202(Lcom/android/server/TelephonyRegistry$RegistryInfo;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v0, p7

    #setter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v2, v0}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$302(Lcom/android/server/TelephonyRegistry$RegistryInfo;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v2, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    move/from16 v0, p8

    if-eq v2, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p8

    iput v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    const/4 v15, 0x1

    :cond_4
    :goto_3
    const-string v2, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyDataConnectionExt, modified="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v15, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_5
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/TelephonyRegistry$Record;

    .local v16, r:Lcom/android/server/TelephonyRegistry$Record;
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_5

    :try_start_1
    invoke-static/range {p11 .. p11}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    invoke-interface {v2, v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V

    const-string v2, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callback:onDataConnectionStateChanged(state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", networkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v2, 0x1

    move/from16 v0, p11

    if-ne v0, v2, :cond_f

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v4, v4, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v5, v5, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    move/from16 v0, p11

    invoke-interface {v2, v4, v5, v0}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChangedExt(III)V

    const-string v2, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callback:onDataConnectionStateChangedExt-GSM(state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v5, v5, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", networkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v5, v5, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,phoneType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p11

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v13

    .local v13, ex:Landroid/os/RemoteException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .end local v13           #ex:Landroid/os/RemoteException;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v16           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    const/4 v15, 0x1

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    #getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$100(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    #getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$100(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p1

    iput v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    const/4 v15, 0x1

    goto/16 :goto_2

    :cond_9
    const/4 v2, 0x5

    move/from16 v0, p11

    if-ne v0, v2, :cond_c

    const-string v2, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyDataConnectionExt,mSubGsmRegistryInfo.mDataConnectionState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v5, v5, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyDataConnectionExt,apnType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_b

    const-string v2, "TelephonyRegistry"

    const-string v4, "notifyDataConnectionExt,state =DATA_CONNECTED"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    #getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$100(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    #getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$100(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v2, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    move/from16 v0, p1

    if-eq v2, v0, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p1

    iput v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    const/4 v15, 0x1

    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p2

    iput-boolean v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionPossible:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v0, p3

    iput-object v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionReason:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v0, p6

    #setter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v2, v0}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$202(Lcom/android/server/TelephonyRegistry$RegistryInfo;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v0, p7

    #setter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v2, v0}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$302(Lcom/android/server/TelephonyRegistry$RegistryInfo;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    const-string v2, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyDataConnectionExt,mSubGsmRegistryInfo.mDataConnectionNetworkType= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v5, v5, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v2, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    move/from16 v0, p8

    if-eq v2, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p8

    iput v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    const/4 v15, 0x1

    goto/16 :goto_3

    :cond_b
    const-string v2, "TelephonyRegistry"

    const-string v4, "notifyDataConnectionExt,state !=DATA_CONNECTED"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    #getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$100(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    #getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$100(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "TelephonyRegistry"

    const-string v4, "notifyDataConnectionExt, APN list is empty"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p1

    iput v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    const/4 v15, 0x1

    goto/16 :goto_5

    :cond_c
    const/4 v2, 0x2

    move/from16 v0, p11

    if-ne v0, v2, :cond_4

    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    #getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$100(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    #getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$100(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v2, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    move/from16 v0, p1

    if-eq v2, v0, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p1

    iput v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    const/4 v15, 0x1

    :cond_d
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p2

    iput-boolean v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionPossible:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v0, p3

    iput-object v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionReason:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v0, p6

    #setter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v2, v0}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$202(Lcom/android/server/TelephonyRegistry$RegistryInfo;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v0, p7

    #setter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v2, v0}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$302(Lcom/android/server/TelephonyRegistry$RegistryInfo;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v2, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    move/from16 v0, p8

    if-eq v2, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p8

    iput v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    const/4 v15, 0x1

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    #getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$100(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    #getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$100(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p1

    iput v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v15, 0x1

    goto :goto_6

    .restart local v14       #i$:Ljava/util/Iterator;
    .restart local v16       #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_f
    const/4 v2, 0x5

    move/from16 v0, p11

    if-ne v0, v2, :cond_10

    :try_start_4
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v4, v4, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v5, v5, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    move/from16 v0, p11

    invoke-interface {v2, v4, v5, v0}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChangedExt(III)V

    const-string v2, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callback:onDataConnectionStateChangedExt-Sub GSM(state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v5, v5, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", networkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v5, v5, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,phoneType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p11

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_10
    const/4 v2, 0x2

    move/from16 v0, p11

    if-ne v0, v2, :cond_5

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v4, v4, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v5, v5, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    move/from16 v0, p11

    invoke-interface {v2, v4, v5, v0}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChangedExt(III)V

    const-string v2, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callback:onDataConnectionStateChangedExt-CDMA(state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v5, v5, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", networkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v5, v5, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,phoneType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p11

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_4

    .end local v16           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_11
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .end local v14           #i$:Ljava/util/Iterator;
    :cond_12
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v2 .. v12}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZLjava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "reason"
    .parameter "apnType"

    .prologue
    const-string v0, "notifyDataConnectionFailed()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyDataConnectionFailedExt(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "reason"
    .parameter "apnType"
    .parameter "phoneType"

    .prologue
    const-string v0, "notifyDataConnectionFailedExt()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public notifyDataConnectionLTE(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/net/LinkProperties;ZIZLjava/lang/String;)V
    .locals 13
    .parameter "apnType"
    .parameter "ipVersion"
    .parameter "state"
    .parameter "apn"
    .parameter "linkProperties"
    .parameter "isDataConnectivityPossible"
    .parameter "networkType"
    .parameter "roaming"
    .parameter "reason"

    .prologue
    const-string v1, "TelephonyRegistry"

    const-string v2, "notifyDataConnectionLTE"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "notifyDataConnection()"

    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v2

    const/4 v1, 0x2

    move/from16 v0, p3

    if-ne v0, v1, :cond_3

    :try_start_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    move/from16 v0, p3

    if-eq v1, v0, :cond_1

    move/from16 v0, p3

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    :cond_1
    :goto_1
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn:Ljava/lang/String;

    move/from16 v0, p6

    iput-boolean v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    move/from16 v0, p7

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v11, v1, -0x1

    .local v11, i:I
    :goto_2
    if-ltz v11, :cond_4

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/TelephonyRegistry$Record;

    .local v12, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v1, v12, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_2

    :try_start_1
    const-string v1, "TelephonyRegistry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "r.callback.onDataConnectionStateChanged apn mDataConnectionState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,networkType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v12, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    move/from16 v0, p7

    invoke-interface {v1, v3, v0}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_3
    add-int/lit8 v11, v11, -0x1

    goto :goto_2

    .end local v11           #i:I
    .end local v12           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move/from16 v0, p3

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .restart local v11       #i:I
    .restart local v12       #r:Lcom/android/server/TelephonyRegistry$Record;
    :catch_0
    move-exception v10

    .local v10, ex:Landroid/os/RemoteException;
    :try_start_3
    iget-object v1, v12, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_3

    .end local v10           #ex:Landroid/os/RemoteException;
    .end local v12           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_4
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionStateChangedLTE(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/net/LinkProperties;ZZLjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public notifyMessageWaitingChanged(I)V
    .locals 6
    .parameter "count"

    .prologue
    const-string v3, "notifyMessageWaitingChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:I

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:I

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChangedEnhanced(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyMessageWaitingChangedExt(ZI)V
    .locals 6
    .parameter "mwi"
    .parameter "phoneType"

    .prologue
    const-string v3, "notifyMessageWaitingChangedExt()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v3, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyMessageWaitingChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_1
    const/4 v3, 0x1

    if-ne p2, v3, :cond_5

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-boolean p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mMessageWaiting:Z

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_2
    if-ltz v1, :cond_7

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_4

    :try_start_1
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V

    :cond_3
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChangedExt(ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .end local v1           #i:I
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_5
    const/4 v3, 0x5

    if-ne p2, v3, :cond_6

    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-boolean p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mMessageWaiting:Z

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_6
    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    :try_start_3
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-boolean p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mMessageWaiting:Z

    goto :goto_1

    .restart local v1       #i:I
    .restart local v2       #r:Lcom/android/server/TelephonyRegistry$Record;
    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_3

    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_7
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyOtaspChanged(I)V
    .locals 6
    .parameter "otaspMode"

    .prologue
    const-string v3, "notifyOtaspChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_1

    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onOtaspChanged(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyServiceState(Landroid/telephony/ServiceState;)V
    .locals 6
    .parameter "state"

    .prologue
    const-string v3, "notifyServiceState()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    if-nez v2, :cond_4

    monitor-exit v4

    goto :goto_0

    :cond_4
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    :try_start_2
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/telephony/ServiceState;

    invoke-direct {v5, p1}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    :try_start_3
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_5
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->broadcastServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_0
.end method

.method public notifyServiceStateExt(Landroid/telephony/ServiceState;I)V
    .locals 5
    .parameter "state"
    .parameter "phoneType"

    .prologue
    const-string v2, "notifyServiceStateExt()"

    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "TelephonyRegistry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyServiceState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    :cond_1
    const/4 v2, 0x1

    if-ne p2, v2, :cond_4

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p1, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_2
    if-ltz v0, :cond_6

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .local v1, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v2, v1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/TelephonyRegistry;->sendServiceStateExt(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/ServiceState;I)V

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .end local v0           #i:I
    .end local v1           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_4
    const/4 v2, 0x5

    if-ne p2, v2, :cond_5

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p1, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_5
    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    :try_start_1
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p1, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    goto :goto_1

    .restart local v0       #i:I
    :cond_6
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastServiceStateChanged(Landroid/telephony/ServiceState;I)V

    goto :goto_0
.end method

.method public notifySignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 7
    .parameter "signalStrength"

    .prologue
    const-string v4, "notifySignalStrength()"

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .local v3, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_2

    :try_start_1
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v6, Landroid/telephony/SignalStrength;

    invoke-direct {v6, p1}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v4, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_2
    :try_start_2
    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    :try_start_3
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    .local v1, gsmSignalStrength:I
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v6, 0x63

    if-ne v1, v6, :cond_3

    const/4 v1, -0x1

    .end local v1           #gsmSignalStrength:I
    :cond_3
    invoke-interface {v4, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    :try_start_4
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #r:Lcom/android/server/TelephonyRegistry$Record;
    :catch_1
    move-exception v0

    .restart local v0       #ex:Landroid/os/RemoteException;
    :try_start_5
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v3           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_4
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;)V

    goto :goto_0
.end method

.method public notifySignalStrengthExt(Landroid/telephony/SignalStrength;I)V
    .locals 7
    .parameter "signalStrength"
    .parameter "phoneType"

    .prologue
    const-string v4, "notifySignalStrengthExt()"

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_0
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    :cond_1
    const/4 v4, 0x1

    if-ne p2, v4, :cond_6

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p1, v4, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_2
    if-ltz v2, :cond_8

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .local v3, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_3

    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/TelephonyRegistry;->sendSignalStrengthExt(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/SignalStrength;I)V

    :cond_3
    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_5

    :try_start_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    .local v1, gsmSignalStrength:I
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v6, 0x63

    if-ne v1, v6, :cond_4

    const/4 v1, -0x1

    .end local v1           #gsmSignalStrength:I
    :cond_4
    invoke-interface {v4, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .end local v2           #i:I
    .end local v3           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_6
    const/4 v4, 0x5

    if-ne p2, v4, :cond_7

    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p1, v4, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :cond_7
    const/4 v4, 0x2

    if-ne p2, v4, :cond_2

    :try_start_3
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p1, v4, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    goto :goto_1

    .restart local v2       #i:I
    .restart local v3       #r:Lcom/android/server/TelephonyRegistry$Record;
    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_3

    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v3           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_8
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;I)V

    goto :goto_0
.end method

.method public sendServiceState(Lcom/android/server/TelephonyRegistry$Record;[Landroid/telephony/ServiceState;[Landroid/telephony/ServiceState;)V
    .locals 4
    .parameter "r"
    .parameter "voiceState"
    .parameter "dataState"

    .prologue
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-direct {p0, p2}, Lcom/android/server/TelephonyRegistry;->generateServiceStateList([Landroid/telephony/ServiceState;)[Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-direct {p0, p3}, Lcom/android/server/TelephonyRegistry;->generateServiceStateList([Landroid/telephony/ServiceState;)[Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onSeparateServiceStateChanged([Landroid/telephony/ServiceState;[Landroid/telephony/ServiceState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public sendServiceStateExt(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/ServiceState;I)V
    .locals 3
    .parameter "r"
    .parameter "state"
    .parameter "phoneType"

    .prologue
    :try_start_0
    invoke-static {p3}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v2, Landroid/telephony/ServiceState;

    invoke-direct {v2, p2}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    :cond_0
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v2, Landroid/telephony/ServiceState;

    invoke-direct {v2, p2}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v1, v2, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChangedExt(Landroid/telephony/ServiceState;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_0
.end method
