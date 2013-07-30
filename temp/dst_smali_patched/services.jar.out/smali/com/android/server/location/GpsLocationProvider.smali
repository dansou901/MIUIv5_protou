.class public Lcom/android/server/location/GpsLocationProvider;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/LocationProviderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GpsLocationProvider$GpsNetworkThread;,
        Lcom/android/server/location/GpsLocationProvider$GpsLocationProviderThread;,
        Lcom/android/server/location/GpsLocationProvider$ProviderHandler;,
        Lcom/android/server/location/GpsLocationProvider$Listener;,
        Lcom/android/server/location/GpsLocationProvider$Injector;
    }
.end annotation


# static fields
.field private static final ADD_LISTENER:I = 0x8

.field private static final AFLT_TIMEOUT:I = 0xdbba0

.field private static final AGPS_DATA_CONNECTION_CLOSED:I = 0x0

.field private static final AGPS_DATA_CONNECTION_OPEN:I = 0x2

.field private static final AGPS_DATA_CONNECTION_OPENING:I = 0x1

.field private static final AGPS_REF_LOCATION_TYPE_GSM_CELLID:I = 0x1

.field private static final AGPS_REF_LOCATION_TYPE_UMTS_CELLID:I = 0x2

.field private static final AGPS_REG_LOCATION_TYPE_MAC:I = 0x3

.field private static final AGPS_RIL_REQUEST_REFLOC_CELLID:I = 0x1

.field private static final AGPS_RIL_REQUEST_REFLOC_MAC:I = 0x2

.field private static final AGPS_RIL_REQUEST_SETID_IMSI:I = 0x1

.field private static final AGPS_RIL_REQUEST_SETID_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_IMSI:I = 0x1

.field private static final AGPS_SETID_TYPE_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_NONE:I = 0x0

.field private static final AGPS_TYPE_C2K:I = 0x2

.field private static final AGPS_TYPE_SUPL:I = 0x1

.field private static final ALARM_TIMEOUT:Ljava/lang/String; = "com.android.internal.location.ALARM_TIMEOUT"

.field private static final ALARM_WAKEUP:Ljava/lang/String; = "com.android.internal.location.ALARM_WAKEUP"

.field private static final ALMANAC_MASK:I = 0x1

.field private static final CHECK_LOCATION:I = 0x1

.field private static final CUSTOMIZE_MULTIRAB:Ljava/lang/String; = "ro.ril.multirab.throttling"

.field private static final DEBUG:Z = true

.field private static final DOWNLOAD_XTRA_DATA:I = 0x6

.field private static final ENABLE:I = 0x2

.field private static final ENABLE_TRACKING:I = 0x3

.field private static final EPHEMERIS_MASK:I = 0x0

.field private static final GPS_AGPS_DATA_CONNECTED:I = 0x3

.field private static final GPS_AGPS_DATA_CONN_DONE:I = 0x4

.field private static final GPS_AGPS_DATA_CONN_FAILED:I = 0x5

.field private static final GPS_CAPABILITY_MSA:I = 0x4

.field private static final GPS_CAPABILITY_MSB:I = 0x2

.field private static final GPS_CAPABILITY_ON_DEMAND_TIME:I = 0x10

.field private static final GPS_CAPABILITY_SCHEDULING:I = 0x1

.field private static final GPS_CAPABILITY_SINGLE_SHOT:I = 0x8

.field private static final GPS_DELETE_ALL:I = -0x1

.field private static final GPS_DELETE_ALMANAC:I = 0x2

.field private static final GPS_DELETE_ALMANAC_CORR:I = 0x1000

.field private static final GPS_DELETE_ALMANAC_CORR_GLO:I = 0x40000

.field private static final GPS_DELETE_ALMANAC_GLO:I = 0x8000

.field private static final GPS_DELETE_CELLDB_INFO:I = 0x800

.field private static final GPS_DELETE_EPHEMERIS:I = 0x1

.field private static final GPS_DELETE_EPHEMERIS_GLO:I = 0x4000

.field private static final GPS_DELETE_FREQ_BIAS_EST:I = 0x2000

.field private static final GPS_DELETE_HEALTH:I = 0x40

.field private static final GPS_DELETE_IONO:I = 0x10

.field private static final GPS_DELETE_POSITION:I = 0x4

.field private static final GPS_DELETE_RTI:I = 0x400

.field private static final GPS_DELETE_SADATA:I = 0x200

.field private static final GPS_DELETE_SVDIR:I = 0x80

.field private static final GPS_DELETE_SVDIR_GLO:I = 0x10000

.field private static final GPS_DELETE_SVSTEER:I = 0x100

.field private static final GPS_DELETE_SVSTEER_GLO:I = 0x20000

.field private static final GPS_DELETE_TIME:I = 0x8

.field private static final GPS_DELETE_TIME_GLO:I = 0x100000

.field private static final GPS_DELETE_TIME_GPS:I = 0x80000

.field private static final GPS_DELETE_UTC:I = 0x20

.field private static final GPS_POLLING_THRESHOLD_INTERVAL:I = 0x2710

.field private static final GPS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field private static final GPS_POSITION_MODE_MS_ASSISTED_AFLT:I = 0x3

.field private static final GPS_POSITION_MODE_MS_BASED:I = 0x1

.field private static final GPS_POSITION_MODE_STANDALONE:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_PERIODIC:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_SINGLE:I = 0x1

.field private static final GPS_RELEASE_AGPS_DATA_CONN:I = 0x2

.field private static final GPS_REQUEST_AGPS_DATA_CONN:I = 0x1

.field private static final GPS_STATUS_ENGINE_OFF:I = 0x4

.field private static final GPS_STATUS_ENGINE_ON:I = 0x3

.field private static final GPS_STATUS_NONE:I = 0x0

.field private static final GPS_STATUS_SESSION_BEGIN:I = 0x1

.field private static final GPS_STATUS_SESSION_END:I = 0x2

.field private static final INJECT_NTP_TIME:I = 0x5

.field private static final LOCATION_HAS_ACCURACY:I = 0x10

.field private static final LOCATION_HAS_ALTITUDE:I = 0x2

.field private static final LOCATION_HAS_BEARING:I = 0x8

.field private static final LOCATION_HAS_LAT_LONG:I = 0x1

.field private static final LOCATION_HAS_SPEED:I = 0x4

.field private static final LOCATION_HAS_UNCER_ALONG:I = 0x40

.field private static final LOCATION_HAS_UNCER_ALTITUDE:I = 0x100

.field private static final LOCATION_HAS_UNCER_ANGLE:I = 0x20

.field private static final LOCATION_HAS_UNCER_PERPEN:I = 0x80

.field private static final LOCATION_INVALID:I = 0x0

.field private static final LPSDEBUG:Z = false

.field private static final MAX_SVS:I = 0x20

.field private static final NO_FIX_TIMEOUT:I = 0xea60

.field private static final NTP_INTERVAL:J = 0x5265c00L

.field private static NTP_RETRY_COUNTER:I = 0x0

.field private static final NTP_RETRY_MAXIMUM:I = 0x3

.field private static final PROPERTIES_FILE:Ljava/lang/String; = "/etc/gps.conf"

.field private static final PROPERTIES_FILE_def:Ljava/lang/String; = "/etc/gps.conf_default"

.field private static final RECENT_FIX_TIMEOUT:J = 0x2710L

.field private static final REMOVE_LISTENER:I = 0x9

.field private static final REQUEST_SINGLE_SHOT:I = 0xa

.field private static final RETRY_INTERVAL:J = 0x493e0L

.field private static final RPC_LOC_API_ENGINE_BUSY:I = 0x6

.field private static final RPC_LOC_API_GENERAL_FAILURE:I = 0x1

.field private static final RPC_LOC_API_INVALID_HANDLE:I = 0x4

.field private static final RPC_LOC_API_INVALID_PARAMETER:I = 0x5

.field private static final RPC_LOC_API_PHONE_OFFLINE:I = 0x7

.field private static final RPC_LOC_API_SUCCESS:I = 0x0

.field private static final RPC_LOC_API_TIMEOUT:I = 0x8

.field private static final RPC_LOC_API_UNSUPPORTED:I = 0x2

.field private static final SUPL_CERT_INJECTED_PATH:Ljava/lang/String; = "/data/misc/"

.field private static final SUPL_CERT_INJECTED_SUFFIX:Ljava/lang/String; = "_injected"

.field private static final TAG:Ljava/lang/String; = "GpsLocationProvider"

.field private static final UPDATE_LOCATION:I = 0x7

.field private static final UPDATE_NETWORK_STATE:I = 0x4

.field private static final USED_FOR_FIX_MASK:I = 0x2

.field private static final VERBOSE:Z = true

.field private static final WAKELOCK_AGPS_KEY:Ljava/lang/String; = "GpsLocationProvider_AGPS"

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "GpsLocationProvider"

.field private static final XTRA_ALARM_TIMEOUT:Ljava/lang/String; = "com.android.internal.location.XTRA_ALARM_TIMEOUT"

.field private static XTRA_RETRY_COUNTER:I = 0x0

.field private static final XTRA_RETRY_MAXIMUM:I = 0x3

.field private static mAllowBackDoorListener:Z = false

.field private static mHTCPrivacySetting:Z = false

.field private static mHtcAllowAPCount:I = 0x0

.field private static final strFQDN:Ljava/lang/String; = "FQDN"

.field private static final strFQDNTemplate:Ljava/lang/String; = "h-slp.mnc%03d.mcc%03d.pub.3gppnetwork.org"


# instance fields
.field private IsQuickBootPowerOff:Z

.field private Is_MULTI_RAB_TRAFFIC_support:Z

.field private final WAKELOCK_AGPS_TIMEOUT_MSEC:J

.field private XTRA_INTERVAL:J

.field private enableAgps:Z

.field private mAGPSWakeLockEnable:Z

.field private mAGpsApn:Ljava/lang/String;

.field private mAGpsDataConnectionIpAddr:I

.field private mAGpsDataConnectionState:I

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mAllowHTCListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/location/GpsLocationProvider$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReciever:Landroid/content/BroadcastReceiver;

.field private mC2KServerHost:Ljava/lang/String;

.field private mC2KServerPort:I

.field private final mClientUids:Landroid/util/SparseIntArray;

.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDefaultAgpsPositionMode:I

.field private mDisableAgps:Z

.field private mDisableAgpsWhenRoaming:Z

.field private mDisableAgpsWhenWimax:Z

.field private mDisableXtraDownload:Z

.field private mDownloadXtraDataPending:Z

.field private mECMState:Z

.field private mECMStateUpdate:Z

.field private mEnableAflt:Z

.field private mEnableExtraCommand_set_pde_ip_port:Z

.field private volatile mEnabled:Z

.field private mEngineCapabilities:I

.field private mEngineOn:Z

.field private mFixInterval:I

.field private mFixRequestTime:J

.field private final mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

.field private mHandler:Landroid/os/Handler;

.field private final mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

.field private mInjectNtpTimePending:Z

.field private mIsWimax:Z

.field private mLastAFLTFixTime:J

.field private mLastFixTime:J

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/location/GpsLocationProvider$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocation:Landroid/location/Location;

.field private mLocationExtras:Landroid/os/Bundle;

.field private mLocationFlags:I

.field private final mLocationManager:Landroid/location/ILocationManager;

.field private final mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

.field private mNavigating:Z

.field private final mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private mNetworkAvailable:Z

.field private mNetworkHandler:Landroid/os/Handler;

.field private final mNetworkThread:Ljava/lang/Thread;

.field private mNmeaBuffer:[B

.field private final mNtpTime:Landroid/util/NtpTrustedTime;

.field private mPendingListenerMessages:I

.field private mPendingMessageBits:I

.field private mPeriodicTimeInjection:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneType:Ljava/lang/String;

.field private mPositionMode:I

.field private mProperties:Ljava/util/Properties;

.field private mQosAccuracy:I

.field private mQosTimeoutAgps:I

.field private mQosTimeoutStandalone:I

.field private mRoaming:Z

.field private mSingleShot:Z

.field private mSnrs:[F

.field private mStarted:Z

.field private mStatus:I

.field private mStatusUpdateTime:J

.field private mSuplServerHost:Ljava/lang/String;

.field private mSuplServerPort:I

.field private mSuplTlsHost:Ljava/lang/String;

.field private mSupportsXtra:Z

.field private mSvAzimuths:[F

.field private mSvCount:I

.field private mSvElevations:[F

.field private mSvMasks:[I

.field private mSvs:[I

.field private mTTFF:I

.field private final mThread:Ljava/lang/Thread;

.field private final mTimeoutIntent:Landroid/app/PendingIntent;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakeLock_AGPS:Landroid/os/PowerManager$WakeLock;

.field private final mWakeupIntent:Landroid/app/PendingIntent;

.field private mxtraAlarmTimeout:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput v0, Lcom/android/server/location/GpsLocationProvider;->XTRA_RETRY_COUNTER:I

    sput v0, Lcom/android/server/location/GpsLocationProvider;->NTP_RETRY_COUNTER:I

    sput v0, Lcom/android/server/location/GpsLocationProvider;->mHtcAllowAPCount:I

    sput-boolean v0, Lcom/android/server/location/GpsLocationProvider;->mAllowBackDoorListener:Z

    sput-boolean v0, Lcom/android/server/location/GpsLocationProvider;->mHTCPrivacySetting:Z

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->class_init_native()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;)V
    .locals 32
    .parameter "context"
    .parameter "locationManager"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mLocationFlags:I

    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/location/GpsLocationProvider;->mStatusUpdateTime:J

    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:Z

    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Z

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GpsLocationProvider;->mDisableXtraDownload:Z

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GpsLocationProvider;->mDisableAgps:Z

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GpsLocationProvider;->mECMState:Z

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GpsLocationProvider;->mECMStateUpdate:Z

    const/16 v28, 0x3e8

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GpsLocationProvider;->enableAgps:Z

    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/location/GpsLocationProvider;->mLastAFLTFixTime:J

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GpsLocationProvider;->mRoaming:Z

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GpsLocationProvider;->mIsWimax:Z

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GpsLocationProvider;->mEnableAflt:Z

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GpsLocationProvider;->mDisableAgpsWhenRoaming:Z

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GpsLocationProvider;->mDisableAgpsWhenWimax:Z

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GpsLocationProvider;->mEnableExtraCommand_set_pde_ip_port:Z

    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mDefaultAgpsPositionMode:I

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mQosAccuracy:I

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mQosTimeoutStandalone:I

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mQosTimeoutAgps:I

    new-instance v28, Landroid/location/Location;

    const-string v29, "gps"

    invoke-direct/range {v28 .. v29}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    new-instance v28, Landroid/os/Bundle;

    invoke-direct/range {v28 .. v28}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    new-instance v28, Ljava/util/concurrent/CountDownLatch;

    const/16 v29, 0x1

    invoke-direct/range {v28 .. v29}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v28, 0x7530

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/location/GpsLocationProvider;->WAKELOCK_AGPS_TIMEOUT_MSEC:J

    new-instance v28, Landroid/util/SparseIntArray;

    invoke-direct/range {v28 .. v28}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    const-wide/32 v28, 0x5265c00

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/location/GpsLocationProvider;->XTRA_INTERVAL:J

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GpsLocationProvider;->Is_MULTI_RAB_TRAFFIC_support:Z

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GpsLocationProvider;->IsQuickBootPowerOff:Z

    new-instance v28, Lcom/android/server/location/GpsLocationProvider$1;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/location/GpsLocationProvider$1;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v28, Lcom/android/server/location/GpsLocationProvider$2;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/location/GpsLocationProvider$2;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    new-instance v28, Lcom/android/server/location/GpsLocationProvider$3;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/location/GpsLocationProvider$3;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    new-instance v28, Lcom/android/server/location/GpsLocationProvider$4;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/location/GpsLocationProvider$4;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    const/16 v28, 0x20

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    const/16 v28, 0x20

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    const/16 v28, 0x20

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    const/16 v28, 0x20

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    const/16 v28, 0x3

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/16 v28, 0x78

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-static/range {p1 .. p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mLocationManager:Landroid/location/ILocationManager;

    new-instance v28, Lcom/android/internal/location/GpsNetInitiatedHandler;

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string v29, "power"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/PowerManager;

    .local v19, powerManager:Landroid/os/PowerManager;
    const/16 v28, 0x1

    const-string v29, "GpsLocationProvider"

    move-object/from16 v0, v19

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const/16 v28, 0x1

    const-string v29, "GpsLocationProvider_AGPS"

    move-object/from16 v0, v19

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mWakeLock_AGPS:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock_AGPS:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string v29, "alarm"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/app/AlarmManager;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    new-instance v30, Landroid/content/Intent;

    const-string v31, "com.android.internal.location.ALARM_WAKEUP"

    invoke-direct/range {v30 .. v31}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v31, 0x0

    invoke-static/range {v28 .. v31}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    new-instance v30, Landroid/content/Intent;

    const-string v31, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-direct/range {v30 .. v31}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v31, 0x0

    invoke-static/range {v28 .. v31}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    new-instance v27, Landroid/content/Intent;

    const-string v28, "com.android.internal.location.XTRA_ALARM_TIMEOUT"

    const/16 v29, 0x0

    invoke-direct/range {v27 .. v29}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v27, xtraAlarmTimeout:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v27

    move/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mxtraAlarmTimeout:Landroid/app/PendingIntent;

    new-instance v16, Landroid/content/IntentFilter;

    invoke-direct/range {v16 .. v16}, Landroid/content/IntentFilter;-><init>()V

    .local v16, intentFilter:Landroid/content/IntentFilter;
    const-string v28, "android.intent.action.DATA_SMS_RECEIVED"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v28, "sms"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v28, "localhost"

    const-string v29, "7275"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v16, Landroid/content/IntentFilter;

    .end local v16           #intentFilter:Landroid/content/IntentFilter;
    invoke-direct/range {v16 .. v16}, Landroid/content/IntentFilter;-><init>()V

    .restart local v16       #intentFilter:Landroid/content/IntentFilter;
    const-string v28, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_0
    const-string v28, "application/vnd.omaloc-supl-init"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v28, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/net/ConnectivityManager;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string v28, "ro.ril.multirab.throttling"

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_6

    const/4 v5, 0x1

    .local v5, bSetPropertyMultiRAB:Z
    :goto_1
    const-string v28, "GpsLocationProvider"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "bSetPropertyMultiRAB:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v5, v0, :cond_0

    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GpsLocationProvider;->Is_MULTI_RAB_TRAFFIC_support:Z

    :cond_0
    const-string v28, "batteryinfo"

    invoke-static/range {v28 .. v28}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider;->native_init()Z

    new-instance v28, Ljava/util/Properties;

    invoke-direct/range {v28 .. v28}, Ljava/util/Properties;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v28, "ro.cid"

    invoke-static/range {v28 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, cid:Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "/etc/gps.conf_"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .local v17, pathName:Ljava/lang/String;
    :try_start_1
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v11, file:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v28

    if-nez v28, :cond_1

    const-string v28, "GpsLocationProvider"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " not exist. Fall back to "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "/etc/gps.conf_default"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "."

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v17, "/etc/gps.conf_default"

    new-instance v11, Ljava/io/File;

    .end local v11           #file:Ljava/io/File;
    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v11       #file:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v28

    if-nez v28, :cond_1

    const-string v28, "GpsLocationProvider"

    const-string v29, "/etc/gps.conf_default not exist. Fall back to /etc/gps.conf."

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v17, "/etc/gps.conf"

    new-instance v11, Ljava/io/File;

    .end local v11           #file:Ljava/io/File;
    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v11       #file:Ljava/io/File;
    :cond_1
    new-instance v21, Ljava/io/FileInputStream;

    move-object/from16 v0, v21

    invoke-direct {v0, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .local v21, stream:Ljava/io/FileInputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/FileInputStream;->close()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/location/GpsLocationProvider;->PrintAGPSConfig(Ljava/util/Properties;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v28, v0

    const-string v29, "SUPL_HOST"

    invoke-virtual/range {v28 .. v29}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v28, v0

    const-string v29, "SUPL_PORT"

    invoke-virtual/range {v28 .. v29}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .local v18, portString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    move-object/from16 v28, v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v28, :cond_2

    if-eqz v18, :cond_2

    :try_start_2
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v28, v0

    const-string v29, "C2K_HOST"

    invoke-virtual/range {v28 .. v29}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v28, v0

    const-string v29, "C2K_PORT"

    invoke-virtual/range {v28 .. v29}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    move-object/from16 v28, v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v28, :cond_3

    if-eqz v18, :cond_3

    :try_start_4
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mC2KServerPort:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_3
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v28, v0

    const-string v29, "AGPS_WAKELOCK"

    invoke-virtual/range {v28 .. v29}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v20

    .local v20, strAGPSWakeLockEnable:Ljava/lang/String;
    if-eqz v20, :cond_8

    :try_start_6
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GpsLocationProvider;->mAGPSWakeLockEnable:Z
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :goto_4
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v28, v0

    const-string v29, "SUPL_TLS_HOST"

    invoke-virtual/range {v28 .. v29}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mSuplTlsHost:Ljava/lang/String;

    const-string v28, "GpsLocationProvider"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "mSuplTlsHost: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mSuplTlsHost:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "."

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v23, "SuplRootCert"

    .local v23, suplCert0:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, cert_idx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v28, v0

    const-string v29, "SUPL_TLS_CERT"

    invoke-virtual/range {v28 .. v29}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .local v22, suplCert:Ljava/lang/String;
    if-nez v22, :cond_4

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "SUPL_TLS_CERT_"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    :cond_4
    :goto_5
    if-eqz v22, :cond_a

    new-instance v12, Ljava/io/File;

    move-object/from16 v0, v22

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v12, file_cert:Ljava/io/File;
    const/16 v28, 0x800

    move/from16 v0, v28

    new-array v9, v0, [B

    .local v9, data:[B
    const/4 v8, 0x0

    .local v8, count:I
    new-instance v13, Ljava/io/File;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "/data/misc/"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "_injected"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v13, file_injected:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    move-result v28

    if-nez v28, :cond_5

    :try_start_8
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .local v14, in:Ljava/io/FileInputStream;
    invoke-virtual {v14, v9}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    if-lez v6, :cond_9

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v28

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v9, v8, v1}, Lcom/android/server/location/GpsLocationProvider;->native_inject_supl_cert([BILjava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    move-result v15

    .local v15, inject_result:I
    if-nez v15, :cond_5

    :try_start_9
    invoke-virtual {v13}, Ljava/io/File;->createNewFile()Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .end local v14           #in:Ljava/io/FileInputStream;
    .end local v15           #inject_result:I
    :cond_5
    :goto_7
    add-int/lit8 v6, v6, 0x1

    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "SUPL_TLS_CERT_"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    move-result-object v22

    goto :goto_5

    .end local v5           #bSetPropertyMultiRAB:Z
    .end local v6           #cert_idx:I
    .end local v7           #cid:Ljava/lang/String;
    .end local v8           #count:I
    .end local v9           #data:[B
    .end local v11           #file:Ljava/io/File;
    .end local v12           #file_cert:Ljava/io/File;
    .end local v13           #file_injected:Ljava/io/File;
    .end local v17           #pathName:Ljava/lang/String;
    .end local v18           #portString:Ljava/lang/String;
    .end local v20           #strAGPSWakeLockEnable:Ljava/lang/String;
    .end local v21           #stream:Ljava/io/FileInputStream;
    .end local v22           #suplCert:Ljava/lang/String;
    .end local v23           #suplCert0:Ljava/lang/String;
    :catch_0
    move-exception v10

    .local v10, e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v28, "GpsLocationProvider"

    const-string v29, "Malformed SUPL init mime type"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v10           #e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_1

    .restart local v5       #bSetPropertyMultiRAB:Z
    .restart local v7       #cid:Ljava/lang/String;
    .restart local v11       #file:Ljava/io/File;
    .restart local v17       #pathName:Ljava/lang/String;
    .restart local v18       #portString:Ljava/lang/String;
    .restart local v21       #stream:Ljava/io/FileInputStream;
    :catch_1
    move-exception v10

    .local v10, e:Ljava/lang/NumberFormatException;
    :try_start_b
    const-string v28, "GpsLocationProvider"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "unable to parse SUPL_PORT: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_2

    .end local v10           #e:Ljava/lang/NumberFormatException;
    .end local v11           #file:Ljava/io/File;
    .end local v18           #portString:Ljava/lang/String;
    .end local v21           #stream:Ljava/io/FileInputStream;
    :catch_2
    move-exception v10

    .local v10, e:Ljava/io/IOException;
    const-string v28, "GpsLocationProvider"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Could not open GPS configuration file "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v10           #e:Ljava/io/IOException;
    :cond_7
    :goto_8
    new-instance v28, Lcom/android/server/location/GpsLocationProvider$GpsNetworkThread;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/location/GpsLocationProvider$GpsNetworkThread;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mNetworkThread:Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mNetworkThread:Ljava/lang/Thread;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Thread;->start()V

    new-instance v28, Lcom/android/server/location/GpsLocationProvider$GpsLocationProviderThread;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/location/GpsLocationProvider$GpsLocationProviderThread;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mThread:Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mThread:Ljava/lang/Thread;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Thread;->start()V

    :goto_9
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_a

    const-string v28, "GpsLocationProvider"

    const-string v29, "DOWNLOAD_XTRA_DATA after 2 minutes"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    const-wide/32 v30, 0x1d4c0

    add-long v24, v28, v30

    .local v24, triggerTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mxtraAlarmTimeout:Landroid/app/PendingIntent;

    move-object/from16 v30, v0

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-wide/from16 v2, v24

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const-string v28, "GpsLocationProvider"

    const-string v29, "end of constructor"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .end local v24           #triggerTime:J
    .restart local v11       #file:Ljava/io/File;
    .restart local v18       #portString:Ljava/lang/String;
    .restart local v21       #stream:Ljava/io/FileInputStream;
    :catch_3
    move-exception v10

    .local v10, e:Ljava/lang/NumberFormatException;
    :try_start_d
    const-string v28, "GpsLocationProvider"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "unable to parse C2K_PORT: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .end local v10           #e:Ljava/lang/NumberFormatException;
    .restart local v20       #strAGPSWakeLockEnable:Ljava/lang/String;
    :catch_4
    move-exception v10

    .restart local v10       #e:Ljava/lang/NumberFormatException;
    const-string v28, "GpsLocationProvider"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "unable to parse AGPS_WAKELOCK: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .end local v10           #e:Ljava/lang/NumberFormatException;
    :cond_8
    const-string v28, "GpsLocationProvider"

    const-string v29, "AGPS_WAKELOCK not set, default to disable"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GpsLocationProvider;->mAGPSWakeLockEnable:Z
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    goto/16 :goto_4

    .restart local v6       #cert_idx:I
    .restart local v8       #count:I
    .restart local v9       #data:[B
    .restart local v12       #file_cert:Ljava/io/File;
    .restart local v13       #file_injected:Ljava/io/File;
    .restart local v14       #in:Ljava/io/FileInputStream;
    .restart local v22       #suplCert:Ljava/lang/String;
    .restart local v23       #suplCert0:Ljava/lang/String;
    :cond_9
    move-object/from16 v28, v23

    goto/16 :goto_6

    .restart local v15       #inject_result:I
    :catch_5
    move-exception v10

    .local v10, e:Ljava/io/IOException;
    :try_start_e
    const-string v28, "GpsLocationProvider"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Could not create injected file "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    goto/16 :goto_7

    .end local v10           #e:Ljava/io/IOException;
    .end local v14           #in:Ljava/io/FileInputStream;
    .end local v15           #inject_result:I
    :catch_6
    move-exception v10

    .restart local v10       #e:Ljava/io/IOException;
    :try_start_f
    const-string v28, "GpsLocationProvider"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Could not open certificate file "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .end local v8           #count:I
    .end local v9           #data:[B
    .end local v10           #e:Ljava/io/IOException;
    .end local v12           #file_cert:Ljava/io/File;
    .end local v13           #file_injected:Ljava/io/File;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v28, v0

    const-string v29, "ENABLE_AFLT"

    invoke-virtual/range {v28 .. v29}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .local v26, value:Ljava/lang/String;
    const-string v28, "true"

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_14

    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GpsLocationProvider;->mEnableAflt:Z

    :cond_b
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v28, v0

    const-string v29, "DEFAULT_AGPS_MODE"

    invoke-virtual/range {v28 .. v29}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v28, "GpsLocationProvider"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, " DEFAULT_AGPS_MODE: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "."

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v28, "MS_ASSISTED"

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_15

    const/16 v28, 0x2

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mDefaultAgpsPositionMode:I

    :cond_c
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v28, v0

    const-string v29, "DISABLE_AGPS_WHEN_ROAMING"

    invoke-virtual/range {v28 .. v29}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v28, "true"

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_16

    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GpsLocationProvider;->mDisableAgpsWhenRoaming:Z

    :cond_d
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v28, v0

    const-string v29, "DISABLE_AGPS_WHEN_WIMAX"

    invoke-virtual/range {v28 .. v29}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v28, "true"

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_17

    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GpsLocationProvider;->mDisableAgpsWhenWimax:Z

    :cond_e
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v28, v0

    const-string v29, "ENABLE_EXTRA_COMMAND_SET_PDE_IP_PORT"

    invoke-virtual/range {v28 .. v29}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v28, "true"

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_18

    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GpsLocationProvider;->mEnableExtraCommand_set_pde_ip_port:Z

    :cond_f
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v28, v0

    const-string v29, "QOS_ACCURACY"

    invoke-virtual/range {v28 .. v29}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    move-result-object v26

    if-eqz v26, :cond_10

    :try_start_10
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mQosAccuracy:I
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2

    :cond_10
    :goto_f
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v28, v0

    const-string v29, "QOS_TIMEOUT_STANDALONE"

    invoke-virtual/range {v28 .. v29}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_2

    move-result-object v26

    if-eqz v26, :cond_11

    :try_start_12
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mQosTimeoutStandalone:I
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_8
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2

    :cond_11
    :goto_10
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v28, v0

    const-string v29, "QOS_TIMEOUT_AGPS"

    invoke-virtual/range {v28 .. v29}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_2

    move-result-object v26

    if-eqz v26, :cond_12

    :try_start_14
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mQosTimeoutAgps:I
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_14} :catch_9
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_2

    :cond_12
    :goto_11
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v28, v0

    const-string v29, "XTRA_INTERVAL"

    invoke-virtual/range {v28 .. v29}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_2

    move-result-object v26

    if-eqz v26, :cond_13

    :try_start_16
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    mul-int/lit8 v28, v28, 0x3c

    move/from16 v0, v28

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/location/GpsLocationProvider;->XTRA_INTERVAL:J
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_16} :catch_b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_2

    :cond_13
    :goto_12
    :try_start_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v28, v0

    const-string v29, "PHONE_TYPE"

    const-string v30, "UNDEFINE"

    invoke-virtual/range {v28 .. v30}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mPhoneType:Ljava/lang/String;

    const-string v28, "CDMA"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mPhoneType:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_7

    const-string v28, "GpsLocationProvider"

    const-string v29, "Detect DEFAULT_PHONE_TYPE: UMTS/UNDEFINE to set_privacy_lock(0) when boot"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/location/GpsLocationProvider;->native_set_privacy_lock(I)V

    goto/16 :goto_8

    :cond_14
    const-string v28, "false"

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_b

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GpsLocationProvider;->mEnableAflt:Z

    goto/16 :goto_a

    :cond_15
    const-string v28, "MS_BASED"

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_c

    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mDefaultAgpsPositionMode:I

    goto/16 :goto_b

    :cond_16
    const-string v28, "false"

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_d

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GpsLocationProvider;->mDisableAgpsWhenRoaming:Z

    goto/16 :goto_c

    :cond_17
    const-string v28, "false"

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_e

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GpsLocationProvider;->mDisableAgpsWhenWimax:Z

    goto/16 :goto_d

    :cond_18
    const-string v28, "false"

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_f

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GpsLocationProvider;->mEnableExtraCommand_set_pde_ip_port:Z

    goto/16 :goto_e

    :catch_7
    move-exception v10

    .local v10, e:Ljava/lang/NumberFormatException;
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mQosAccuracy:I

    goto/16 :goto_f

    .end local v10           #e:Ljava/lang/NumberFormatException;
    :catch_8
    move-exception v10

    .restart local v10       #e:Ljava/lang/NumberFormatException;
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mQosTimeoutStandalone:I

    goto/16 :goto_10

    .end local v10           #e:Ljava/lang/NumberFormatException;
    :catch_9
    move-exception v10

    .restart local v10       #e:Ljava/lang/NumberFormatException;
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mQosTimeoutAgps:I
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_2

    goto/16 :goto_11

    .end local v6           #cert_idx:I
    .end local v10           #e:Ljava/lang/NumberFormatException;
    .end local v11           #file:Ljava/io/File;
    .end local v18           #portString:Ljava/lang/String;
    .end local v20           #strAGPSWakeLockEnable:Ljava/lang/String;
    .end local v21           #stream:Ljava/io/FileInputStream;
    .end local v22           #suplCert:Ljava/lang/String;
    .end local v23           #suplCert0:Ljava/lang/String;
    .end local v26           #value:Ljava/lang/String;
    :catch_a
    move-exception v10

    .local v10, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_9

    .end local v10           #e:Ljava/lang/InterruptedException;
    .restart local v6       #cert_idx:I
    .restart local v11       #file:Ljava/io/File;
    .restart local v18       #portString:Ljava/lang/String;
    .restart local v20       #strAGPSWakeLockEnable:Ljava/lang/String;
    .restart local v21       #stream:Ljava/io/FileInputStream;
    .restart local v22       #suplCert:Ljava/lang/String;
    .restart local v23       #suplCert0:Ljava/lang/String;
    .restart local v26       #value:Ljava/lang/String;
    :catch_b
    move-exception v28

    goto/16 :goto_12
.end method

.method private PrintAGPSConfig(Ljava/util/Properties;)V
    .locals 4
    .parameter "mProperties"

    .prologue
    const-string v0, "Cust_AGPS_Setting"

    .local v0, TAG2:Ljava/lang/String;
    const-string v2, "NTP_SERVER"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, mString:Ljava/lang/String;
    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NTP_SERVER > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v2, "XTRA_SERVER_1"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XTRA_SERVER1 > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v2, "XTRA_SERVER_2"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XTRA_SERVER2 > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v2, "XTRA_SERVER_3"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XTRA_SERVER3 > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v2, "SUPL_HOST"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SUPL_HOST > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v2, "SUPL_PORT"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SUPL_PORT > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string v2, "SUPL_TLS_HOST"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SUPL_TLS_HOST > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string v2, "SUPL_TLS_CERT"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SUPL_TLS_CERT > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const-string v2, "SUPL_TLS_CERT1"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SUPL_TLS_CERT1 > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const-string v2, "SUPL_TLS_CERT2"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SUPL_TLS_CERT2 > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const-string v2, "SUPL_TLS_CERT3"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SUPL_TLS_CERT3 > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const-string v2, "SUPL_TLS_CERT4"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SUPL_TLS_CERT4 > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const-string v2, "C2K_HOST"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "C2K_HOST > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const-string v2, "C2K_PORT"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "C2K_PORT > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const-string v2, "DEFAULT_AGPS_MODE"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_AGPS_MODE > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const-string v2, "DISABLE_AGPS_WHEN_ROAMING"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DISABLE_AGPS_WHEN_ROAMING > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const-string v2, "DISABLE_AGPS_WHEN_WIMAX"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DISABLE_AGPS_WHEN_WIMAX > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const-string v2, "QOS_ACCURACY"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QOS_ACCURACY > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const-string v2, "QOS_TIMEOUT_STANDALONE"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QOS_TIMEOUT_STANDALONE > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    const-string v2, "QOS_TIMEOUT_AGPS"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QOS_TIMEOUT_AGPS > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    const-string v2, "ENABLE_EXTRA_COMMAND_SET_PDE_IP_PORT"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ENABLE_EXTRA_COMMAND_SET_PDE_IP_PORT > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    const-string v2, "PHONE_TYPE"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PHONE_TYPE > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    const-string v2, "SUPL_VER"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SUPL_VER > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/location/GpsLocationProvider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider;->mRoaming:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/location/GpsLocationProvider;->mAllowBackDoorListener:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    sput-boolean p0, Lcom/android/server/location/GpsLocationProvider;->mAllowBackDoorListener:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/server/location/GpsLocationProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/location/GpsLocationProvider;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->startNavigating(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->hibernate()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/server/location/GpsLocationProvider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider;->IsQuickBootPowerOff:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mECMState:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/location/GpsLocationProvider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider;->mECMState:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/android/server/location/GpsLocationProvider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider;->mECMStateUpdate:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplTlsHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->checkSmsSuplInit(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/location/GpsLocationProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplTlsHost:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->checkWapSuplInit(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/location/GpsLocationProvider;IILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->Is_MULTI_RAB_TRAFFIC_support:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/location/GpsLocationProvider;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->native_send_ni_response(II)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleEnable()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleDisable()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/location/GpsLocationProvider;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleEnableLocationTracking(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleRequestSingleShot()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/location/GpsLocationProvider;ILandroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->handleUpdateNetworkState(ILandroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleInjectNtpTime()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleDownloadXtraData()V

    return-void
.end method

.method static synthetic access$3302(Lcom/android/server/location/GpsLocationProvider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/server/location/GpsLocationProvider;Landroid/location/Location;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleUpdateLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/location/GpsLocationProvider;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleAddListener(I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/location/GpsLocationProvider;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleRemoveListener(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/location/GpsLocationProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingMessageBits:I

    return v0
.end method

.method static synthetic access$3872(Lcom/android/server/location/GpsLocationProvider;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingMessageBits:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingMessageBits:I

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/location/GpsLocationProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    return v0
.end method

.method static synthetic access$3910(Lcom/android/server/location/GpsLocationProvider;)I
    .locals 2
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/location/GpsLocationProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->initialize()V

    return-void
.end method

.method static synthetic access$4102(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/location/GpsLocationProvider;ILjava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/location/GpsLocationProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/location/GpsLocationProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerPort:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/location/GpsLocationProvider;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->native_set_supl_tls_host(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method private checkSmsSuplInit(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v1

    .local v1, messages:[Landroid/telephony/SmsMessage;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v2

    .local v2, supl_init:[B
    array-length v3, v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->native_agps_ni_message([BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2           #supl_init:[B
    :cond_0
    return-void
.end method

.method private checkWapSuplInit(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    const-string v1, "data"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .local v0, supl_init:[B
    array-length v1, v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/GpsLocationProvider;->native_agps_ni_message([BI)V

    return-void
.end method

.method private static native class_init_native()V
.end method

.method private deleteAidingData(Landroid/os/Bundle;)Z
    .locals 3
    .parameter "extras"

    .prologue
    if-nez p1, :cond_1

    const/4 v0, -0x1

    .local v0, flags:I
    :cond_0
    :goto_0
    if-eqz v0, :cond_17

    const-string v1, "GpsLocationProvider"

    const-string v2, "<<---- deleteAidingData ---->>"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->native_delete_aiding_data(I)V

    const/4 v1, 0x1

    :goto_1
    return v1

    .end local v0           #flags:I
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #flags:I
    const-string v1, "ephemeris"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    const-string v1, "almanac"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x2

    :cond_3
    const-string v1, "position"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x4

    :cond_4
    const-string v1, "time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x8

    :cond_5
    const-string v1, "iono"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    or-int/lit8 v0, v0, 0x10

    :cond_6
    const-string v1, "utc"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x20

    :cond_7
    const-string v1, "health"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    or-int/lit8 v0, v0, 0x40

    :cond_8
    const-string v1, "svdir"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    or-int/lit16 v0, v0, 0x80

    :cond_9
    const-string v1, "svsteer"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    or-int/lit16 v0, v0, 0x100

    :cond_a
    const-string v1, "sadata"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    or-int/lit16 v0, v0, 0x200

    :cond_b
    const-string v1, "rti"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    or-int/lit16 v0, v0, 0x400

    :cond_c
    const-string v1, "celldb-info"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    or-int/lit16 v0, v0, 0x800

    :cond_d
    const-string v1, "almanac-corr"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    or-int/lit16 v0, v0, 0x1000

    :cond_e
    const-string v1, "freq-bias-est"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    or-int/lit16 v0, v0, 0x2000

    :cond_f
    const-string v1, "ephemeris-GLO"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    or-int/lit16 v0, v0, 0x4000

    :cond_10
    const-string v1, "almanac-GLO"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const v1, 0x8000

    or-int/2addr v0, v1

    :cond_11
    const-string v1, "svdir-GLO"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    :cond_12
    const-string v1, "svsteer-GLO"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    :cond_13
    const-string v1, "almanac-corr-GLO"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    :cond_14
    const-string v1, "time-gps"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    :cond_15
    const-string v1, "time-GLO"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/high16 v1, 0x10

    or-int/2addr v0, v1

    :cond_16
    const-string v1, "all"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_17
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method private getSelectedApn()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .local v6, apn:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "apn"

    aput-object v4, v2, v5

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v6

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private handleAddListener(I)V
    .locals 7
    .parameter "uid"

    .prologue
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .local v1, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_0

    const-string v3, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duplicate add listener for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    :goto_0
    return-void

    :cond_0
    const-string v3, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addListener("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Landroid/util/SparseIntArray;->put(II)V

    iget-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, p1}, Lcom/android/internal/app/IBatteryStats;->noteStartGps(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v4

    goto :goto_0

    .end local v1           #name:Ljava/lang/String;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1       #name:Ljava/lang/String;
    .restart local v2       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "GpsLocationProvider"

    const-string v5, "RemoteException in addListener"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private handleDisable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "GpsLocationProvider"

    const-string v1, "handleDisable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    sget v0, Lcom/android/server/location/GpsLocationProvider;->XTRA_RETRY_COUNTER:I

    if-lez v0, :cond_1

    sput v2, Lcom/android/server/location/GpsLocationProvider;->XTRA_RETRY_COUNTER:I

    :cond_1
    sget v0, Lcom/android/server/location/GpsLocationProvider;->NTP_RETRY_COUNTER:I

    if-lez v0, :cond_2

    sput v2, Lcom/android/server/location/GpsLocationProvider;->NTP_RETRY_COUNTER:I

    :cond_2
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_cleanup()V

    goto :goto_0
.end method

.method private handleDownloadXtraData()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v8

    :try_start_0
    const-string v7, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[handleDownloadXtraData] mNetworkAvailable:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mDisableXtraDownload:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableXtraDownload:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mNavigating:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mEngineOn:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableXtraDownload:Z

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    if-eqz v7, :cond_1

    :cond_0
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Z

    const-string v7, "GpsLocationProvider"

    const-string v9, "[handleDownloadXtraData] pending until Network available or GPS Engine stop"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    :goto_0
    return-void

    :cond_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v11, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Z

    new-instance v6, Lcom/android/server/location/GpsXtraDownloader;

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-direct {v6, v7, v8}, Lcom/android/server/location/GpsXtraDownloader;-><init>(Landroid/content/Context;Ljava/util/Properties;)V

    .local v6, xtraDownloader:Lcom/android/server/location/GpsXtraDownloader;
    invoke-virtual {v6}, Lcom/android/server/location/GpsXtraDownloader;->downloadXtraData()[B

    move-result-object v0

    .local v0, data:[B
    if-eqz v0, :cond_5

    const-string v7, "GpsLocationProvider"

    const-string v8, "[handleDownloadXtraData] native_inject_xtra_data +"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v7, v0

    invoke-direct {p0, v0, v7}, Lcom/android/server/location/GpsLocationProvider;->native_inject_xtra_data([BI)I

    move-result v3

    .local v3, inject_result:I
    const-string v7, "GpsLocationProvider"

    const-string v8, "[handleDownloadXtraData] native_inject_xtra_data -"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v3, v12, :cond_2

    const/4 v7, 0x5

    if-eq v3, v7, :cond_2

    const/4 v7, 0x6

    if-eq v3, v7, :cond_2

    const/16 v7, 0x8

    if-ne v3, v7, :cond_4

    :cond_2
    sget v7, Lcom/android/server/location/GpsLocationProvider;->XTRA_RETRY_COUNTER:I

    if-le v7, v13, :cond_3

    iget-wide v1, p0, Lcom/android/server/location/GpsLocationProvider;->XTRA_INTERVAL:J

    .local v1, delay:J
    sput v11, Lcom/android/server/location/GpsLocationProvider;->XTRA_RETRY_COUNTER:I

    const-string v7, "GpsLocationProvider"

    const-string v8, "[handleDownloadXtraData] XTRA inject retry over XTRA_RETRY_MAXIMUM , after 24Hrs"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3           #inject_result:I
    :goto_1
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[handleDownloadXtraData] Next XTRA interval is:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    add-long v4, v7, v1

    .local v4, triggerTime:J
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mxtraAlarmTimeout:Landroid/app/PendingIntent;

    invoke-virtual {v7, v12, v4, v5, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .end local v0           #data:[B
    .end local v1           #delay:J
    .end local v4           #triggerTime:J
    .end local v6           #xtraDownloader:Lcom/android/server/location/GpsXtraDownloader;
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .restart local v0       #data:[B
    .restart local v3       #inject_result:I
    .restart local v6       #xtraDownloader:Lcom/android/server/location/GpsXtraDownloader;
    :cond_3
    const-wide/32 v1, 0x493e0

    .restart local v1       #delay:J
    sget v7, Lcom/android/server/location/GpsLocationProvider;->XTRA_RETRY_COUNTER:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/android/server/location/GpsLocationProvider;->XTRA_RETRY_COUNTER:I

    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[handleDownloadXtraData] XTRA inject got failed, retry DOWNLOAD_XTRA_DATA counter:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/server/location/GpsLocationProvider;->XTRA_RETRY_COUNTER:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", after 5 Mins"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v1           #delay:J
    :cond_4
    iget-wide v1, p0, Lcom/android/server/location/GpsLocationProvider;->XTRA_INTERVAL:J

    .restart local v1       #delay:J
    sput v11, Lcom/android/server/location/GpsLocationProvider;->XTRA_RETRY_COUNTER:I

    goto :goto_1

    .end local v1           #delay:J
    .end local v3           #inject_result:I
    :cond_5
    sget v7, Lcom/android/server/location/GpsLocationProvider;->XTRA_RETRY_COUNTER:I

    if-le v7, v13, :cond_6

    iget-wide v1, p0, Lcom/android/server/location/GpsLocationProvider;->XTRA_INTERVAL:J

    .restart local v1       #delay:J
    sput v11, Lcom/android/server/location/GpsLocationProvider;->XTRA_RETRY_COUNTER:I

    const-string v7, "GpsLocationProvider"

    const-string v8, "[handleDownloadXtraData] XTRA download over XTRA_RETRY_MAXIMUM , after 24Hrs"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v1           #delay:J
    :cond_6
    const-wide/32 v1, 0x493e0

    .restart local v1       #delay:J
    sget v7, Lcom/android/server/location/GpsLocationProvider;->XTRA_RETRY_COUNTER:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/android/server/location/GpsLocationProvider;->XTRA_RETRY_COUNTER:I

    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[handleDownloadXtraData] XTRA download got failed, retry DOWNLOAD_XTRA_DATA counter:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/server/location/GpsLocationProvider;->XTRA_RETRY_COUNTER:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", after 5 Mins"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private handleEnable()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const-string v0, "GpsLocationProvider"

    const-string v1, "handleEnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_init()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_supports_xtra()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEnable: mSupportsXtra = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mDownloadXtraDataPending = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    if-ne v0, v3, :cond_2

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Z

    if-ne v0, v3, :cond_2

    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    const-string v1, "FQDN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    invoke-direct {p0, v3, v0, v1}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    const-string v1, "FQDN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerPort:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    :cond_4
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplTlsHost:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplTlsHost:Ljava/lang/String;

    const-string v1, "FQDN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplTlsHost:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->native_set_supl_tls_host(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "GpsLocationProvider"

    const-string v1, "Failed to enable location provider"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private handleEnableLocationTracking(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    invoke-direct {p0, v2}, Lcom/android/server/location/GpsLocationProvider;->startNavigating(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    goto :goto_0
.end method

.method private handleInjectNtpTime()V
    .locals 18

    .prologue
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v1}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v14

    const-wide/32 v16, 0x5265c00

    cmp-long v1, v14, v16

    if-ltz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v1}, Landroid/util/NtpTrustedTime;->forceRefresh()Z

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v1}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v14

    const-wide/32 v16, 0x5265c00

    cmp-long v1, v14, v16

    if-gez v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v1}, Landroid/util/NtpTrustedTime;->getCachedNtpTime()J

    move-result-wide v2

    .local v2, time:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v1}, Landroid/util/NtpTrustedTime;->getCachedNtpTimeReference()J

    move-result-wide v4

    .local v4, timeReference:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v1}, Landroid/util/NtpTrustedTime;->getCacheCertainty()J

    move-result-wide v7

    .local v7, certainty:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .local v12, now:J
    const-string v1, "GpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "NTP server returned: "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v14, " ("

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v14, Ljava/util/Date;

    invoke-direct {v14, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v14, ") reference: "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v14, " certainty: "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v14, " system time offset: "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v14, v2, v12

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    long-to-int v6, v7

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_inject_time(JJI)I

    move-result v11

    .local v11, inject_result:I
    const/4 v1, 0x1

    if-eq v11, v1, :cond_3

    const/4 v1, 0x5

    if-eq v11, v1, :cond_3

    const/4 v1, 0x6

    if-eq v11, v1, :cond_3

    const/16 v1, 0x8

    if-ne v11, v1, :cond_5

    :cond_3
    sget v1, Lcom/android/server/location/GpsLocationProvider;->NTP_RETRY_COUNTER:I

    const/4 v6, 0x3

    if-le v1, v6, :cond_4

    const-wide/32 v9, 0x5265c00

    .local v9, delay:J
    const/4 v1, 0x0

    sput v1, Lcom/android/server/location/GpsLocationProvider;->NTP_RETRY_COUNTER:I

    const-string v1, "GpsLocationProvider"

    const-string v6, "[handleInjectNtpTime] NTP inject retry over NTP_RETRY_MAXIMUM , after 24Hrs"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2           #time:J
    .end local v4           #timeReference:J
    .end local v7           #certainty:J
    .end local v11           #inject_result:I
    .end local v12           #now:J
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/location/GpsLocationProvider;->mPeriodicTimeInjection:Z

    if-eqz v1, :cond_0

    const-string v1, "GpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "requestTime next time: "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x5

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x5

    invoke-static {v6, v14}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v1, v6, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .end local v9           #delay:J
    .restart local v2       #time:J
    .restart local v4       #timeReference:J
    .restart local v7       #certainty:J
    .restart local v11       #inject_result:I
    .restart local v12       #now:J
    :cond_4
    const-wide/32 v9, 0x493e0

    .restart local v9       #delay:J
    sget v1, Lcom/android/server/location/GpsLocationProvider;->NTP_RETRY_COUNTER:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/server/location/GpsLocationProvider;->NTP_RETRY_COUNTER:I

    const-string v1, "GpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[handleInjectNtpTime] NTP inject got failed, retry counter: "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v14, Lcom/android/server/location/GpsLocationProvider;->NTP_RETRY_COUNTER:I

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v14, " , after 5 Mins"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v9           #delay:J
    :cond_5
    const-wide/32 v9, 0x5265c00

    .restart local v9       #delay:J
    const/4 v1, 0x0

    sput v1, Lcom/android/server/location/GpsLocationProvider;->NTP_RETRY_COUNTER:I

    goto :goto_1

    .end local v2           #time:J
    .end local v4           #timeReference:J
    .end local v7           #certainty:J
    .end local v9           #delay:J
    .end local v11           #inject_result:I
    .end local v12           #now:J
    :cond_6
    const-string v1, "GpsLocationProvider"

    const-string v6, "requestTime failed"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lcom/android/server/location/GpsLocationProvider;->NTP_RETRY_COUNTER:I

    const/4 v6, 0x3

    if-le v1, v6, :cond_7

    const-wide/32 v9, 0x5265c00

    .restart local v9       #delay:J
    const/4 v1, 0x0

    sput v1, Lcom/android/server/location/GpsLocationProvider;->NTP_RETRY_COUNTER:I

    const-string v1, "GpsLocationProvider"

    const-string v6, "[handleInjectNtpTime] NTP download over NTP_RETRY_MAXIMUM , after 24Hrs"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v9           #delay:J
    :cond_7
    const-wide/32 v9, 0x493e0

    .restart local v9       #delay:J
    sget v1, Lcom/android/server/location/GpsLocationProvider;->NTP_RETRY_COUNTER:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/server/location/GpsLocationProvider;->NTP_RETRY_COUNTER:I

    const-string v1, "GpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[handleInjectNtpTime] NTP download got failed, retry INJECT_NTP_TIME counter:"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v14, Lcom/android/server/location/GpsLocationProvider;->NTP_RETRY_COUNTER:I

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v14, ", after 5 Mins"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private handleRemoveListener(I)V
    .locals 7
    .parameter "uid"

    .prologue
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .local v1, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_0

    const-string v3, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unneeded remove listener for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    :goto_0
    return-void

    :cond_0
    const-string v3, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeListener("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->delete(I)V

    iget-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, p1}, Lcom/android/internal/app/IBatteryStats;->noteStopGps(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v4

    goto :goto_0

    .end local v1           #name:Ljava/lang/String;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1       #name:Ljava/lang/String;
    .restart local v2       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "GpsLocationProvider"

    const-string v5, "RemoteException in removeListener"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private handleRequestSingleShot()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->startNavigating(Z)V

    return-void
.end method

.method private handleUpdateLocation(Landroid/location/Location;)V
    .locals 6
    .parameter "location"

    .prologue
    const-string v0, "GpsLocationProvider"

    const-string v1, "handleUpdateLocation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_inject_location(DDF)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "GpsLocationProvider"

    const-string v1, "location.hasAccuracy() is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleUpdateNetworkState(ILandroid/net/NetworkInfo;)V
    .locals 13
    .parameter "state"
    .parameter "info"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne p1, v10, :cond_7

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    const-string v8, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateNetworkState "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v5, :cond_8

    const-string v5, "available"

    :goto_1
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " info: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "mobile_data"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_9

    move v1, v6

    .local v1, dataEnabled:Z
    :goto_2
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_a

    if-eqz v1, :cond_a

    move v2, v6

    .local v2, networkAvailable:Z
    :goto_3
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    const/4 v8, 0x6

    if-ne v5, v8, :cond_0

    iget-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    iput-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mIsWimax:Z

    .end local v1           #dataEnabled:Z
    .end local v2           #networkAvailable:Z
    :cond_0
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-ne v5, v12, :cond_5

    iget v5, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    if-ne v5, v6, :cond_5

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .local v0, apnName:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .local v4, tm:Landroid/telephony/TelephonyManager;
    iget-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v5, :cond_b

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    if-eq v5, v10, :cond_1

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_b

    :cond_1
    iget-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mIsWimax:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableAgpsWhenWimax:Z

    if-nez v5, :cond_b

    :cond_2
    if-nez v0, :cond_3

    const-string v0, "dummy-apn"

    :cond_3
    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    const-string v5, "GpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mAGpsDataConnectionIpAddr "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    const-string v5, "GpsLocationProvider"

    const-string v6, "call requestRouteToHost"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    iget v6, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:I

    invoke-virtual {v5, v12, v6}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v3

    .local v3, route_result:Z
    if-nez v3, :cond_4

    const-string v5, "GpsLocationProvider"

    const-string v6, "call requestRouteToHost failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3           #route_result:Z
    :cond_4
    const-string v5, "GpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "call native_agps_data_conn_open. mAGpsApn = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_open(Ljava/lang/String;)V

    iput v10, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    .end local v0           #apnName:Ljava/lang/String;
    .end local v4           #tm:Landroid/telephony/TelephonyManager;
    :cond_5
    :goto_4
    iget-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:Z

    if-eqz v5, :cond_c

    const-string v5, "GpsLocationProvider"

    const-string v6, "mInjectNtpTimePending(TRUE): send message: INJECT_NTP_TIME "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x5

    invoke-direct {p0, v5, v7, v11}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    :goto_5
    iget-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Z

    if-eqz v5, :cond_d

    const-string v5, "GpsLocationProvider"

    const-string v6, "mDownloadXtraDataPending(TRUE): send message: DOWNLOAD_XTRA_DATA "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x6

    invoke-direct {p0, v5, v7, v11}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    :cond_6
    :goto_6
    return-void

    :cond_7
    move v5, v7

    goto/16 :goto_0

    :cond_8
    const-string v5, "unavailable"

    goto/16 :goto_1

    :cond_9
    move v1, v7

    goto/16 :goto_2

    .restart local v1       #dataEnabled:Z
    :cond_a
    move v2, v7

    goto/16 :goto_3

    .end local v1           #dataEnabled:Z
    .restart local v0       #apnName:Ljava/lang/String;
    .restart local v4       #tm:Landroid/telephony/TelephonyManager;
    :cond_b
    const-string v5, "GpsLocationProvider"

    const-string v6, "call native_agps_data_conn_failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    iput v7, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed()V

    goto :goto_4

    .end local v0           #apnName:Ljava/lang/String;
    .end local v4           #tm:Landroid/telephony/TelephonyManager;
    :cond_c
    const-string v5, "GpsLocationProvider"

    const-string v6, "mInjectNtpTimePending(FALSE)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_d
    const-string v5, "GpsLocationProvider"

    const-string v6, "mDownloadXtraDataPending(FALSE)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method private hasCapability(I)Z
    .locals 1
    .parameter "capability"

    .prologue
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineCapabilities:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hibernate()V
    .locals 8

    .prologue
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .local v0, now:J
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget v6, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private initialize()V
    .locals 4

    .prologue
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.htc.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.htc.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.internal.location.XTRA_ALARM_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->native_is_supported()Z

    move-result v0

    return v0
.end method

.method private native native_agps_data_conn_closed()V
.end method

.method private native native_agps_data_conn_failed()V
.end method

.method private native native_agps_data_conn_open(Ljava/lang/String;)V
.end method

.method private native native_agps_ni_message([BI)V
.end method

.method private native native_agps_set_id(ILjava/lang/String;)V
.end method

.method private native native_agps_set_ref_location_cellid(IIIII)V
.end method

.method private native native_cleanup()V
.end method

.method private native native_delete_aiding_data(I)V
.end method

.method private native native_get_internal_state()Ljava/lang/String;
.end method

.method private native native_init()Z
.end method

.method private native native_inject_location(DDF)V
.end method

.method private native native_inject_supl_cert([BILjava/lang/String;)I
.end method

.method private native native_inject_time(JJI)I
.end method

.method private native native_inject_xtra_data([BI)I
.end method

.method private static native native_is_supported()Z
.end method

.method private native native_read_nmea([BI)I
.end method

.method private native native_read_sv_status([I[F[F[F[I)I
.end method

.method private native native_send_ni_response(II)V
.end method

.method private native native_set_agps_server(ILjava/lang/String;I)V
.end method

.method private native native_set_position_mode(IIIII)Z
.end method

.method private native native_set_privacy_lock(I)V
.end method

.method private native native_set_qos_time_out(II)Z
.end method

.method private native native_set_supl_tls_host(Ljava/lang/String;)V
.end method

.method private native native_start()Z
.end method

.method private native native_stop()Z
.end method

.method private native native_supports_xtra()Z
.end method

.method private native native_update_network_state(ZIZZLjava/lang/String;Ljava/lang/String;)V
.end method

.method private reportAGpsStatus(III)V
    .locals 12
    .parameter "type"
    .parameter "status"
    .parameter "ipaddr"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v5, "GpsLocationProvider"

    const-string v6, "GPS_REQUEST_AGPS_DATA_CONN"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->Is_MULTI_RAB_TRAFFIC_support:Z

    if-eqz v5, :cond_1

    const-string v5, "GpsLocationProvider"

    const-string v6, "reportAGpsStatus: Calling disable MRTT by requestSetMultiRABTrafficThrottling(3 , 1) "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "htctelephony"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    .local v1, ihtcPhoneInterface:Lcom/android/internal/telephony/IHtcTelephony;
    if-eqz v1, :cond_1

    const/4 v5, 0x3

    const/4 v6, 0x1

    :try_start_0
    invoke-interface {v1, v5, v6}, Lcom/android/internal/telephony/IHtcTelephony;->requestSetMultiRABTrafficThrottling(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #ihtcPhoneInterface:Lcom/android/internal/telephony/IHtcTelephony;
    :cond_1
    :goto_1
    iput v9, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    iget-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mAGPSWakeLockEnable:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock_AGPS:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_2
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string v6, "enableSUPL"

    invoke-virtual {v5, v8, v6}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v2

    .local v2, result:I
    iput p3, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:I

    const-string v5, "GpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mConnMgr.startUsingNetworkFeature result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_7

    const-string v5, "GpsLocationProvider"

    const-string v6, "Phone.APN_ALREADY_ACTIVE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .local v4, tm:Landroid/telephony/TelephonyManager;
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    if-nez v5, :cond_3

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    if-eq v5, v11, :cond_3

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    if-eqz v5, :cond_6

    :cond_3
    const-string v5, "GpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAGpsDataConnectionIpAddr "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    const-string v5, "GpsLocationProvider"

    const-string v6, "call requestRouteToHost"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    iget v6, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:I

    invoke-virtual {v5, v10, v6}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v3

    .local v3, route_result:Z
    if-nez v3, :cond_4

    const-string v5, "GpsLocationProvider"

    const-string v6, "call requestRouteToHost failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3           #route_result:Z
    :cond_4
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_open(Ljava/lang/String;)V

    const-string v5, "GpsLocationProvider"

    const-string v6, "[reportAGpsStatus] mAGpsDataConnectionState:AGPS_DATA_CONNECTION_OPEN"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v11, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    .end local v4           #tm:Landroid/telephony/TelephonyManager;
    :cond_5
    :goto_2
    iget-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mAGPSWakeLockEnable:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock_AGPS:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .end local v2           #result:I
    .restart local v1       #ihtcPhoneInterface:Lcom/android/internal/telephony/IHtcTelephony;
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #ihtcPhoneInterface:Lcom/android/internal/telephony/IHtcTelephony;
    .restart local v2       #result:I
    .restart local v4       #tm:Landroid/telephony/TelephonyManager;
    :cond_6
    const-string v5, "GpsLocationProvider"

    const-string v6, "mAGpsApn not set when receiving Phone.APN_ALREADY_ACTIVE"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v8, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed()V

    goto :goto_2

    .end local v4           #tm:Landroid/telephony/TelephonyManager;
    :cond_7
    if-ne v2, v9, :cond_8

    const-string v5, "GpsLocationProvider"

    const-string v6, "Phone.APN_REQUEST_STARTED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mAGPSWakeLockEnable:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock_AGPS:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v6, 0x7530

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_2

    :cond_8
    const-string v5, "GpsLocationProvider"

    const-string v6, "startUsingNetworkFeature failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v8, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed()V

    goto :goto_2

    .end local v2           #result:I
    :pswitch_1
    const-string v5, "GpsLocationProvider"

    const-string v6, "GPS_RELEASE_AGPS_DATA_CONN"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string v6, "enableSUPL"

    invoke-virtual {v5, v8, v6}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_closed()V

    iput v8, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    :cond_9
    iget-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->Is_MULTI_RAB_TRAFFIC_support:Z

    if-eqz v5, :cond_0

    const-string v5, "GpsLocationProvider"

    const-string v6, "reportAGpsStatus: Calling enable MRTT by requestSetMultiRABTrafficThrottling(3 , 0) "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "htctelephony"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    .restart local v1       #ihtcPhoneInterface:Lcom/android/internal/telephony/IHtcTelephony;
    if-eqz v1, :cond_0

    const/4 v5, 0x3

    const/4 v6, 0x0

    :try_start_1
    invoke-interface {v1, v5, v6}, Lcom/android/internal/telephony/IHtcTelephony;->requestSetMultiRABTrafficThrottling(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #ihtcPhoneInterface:Lcom/android/internal/telephony/IHtcTelephony;
    :pswitch_2
    const-string v5, "GpsLocationProvider"

    const-string v6, "GPS_AGPS_DATA_CONNECTED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_3
    const-string v5, "GpsLocationProvider"

    const-string v6, "GPS_AGPS_DATA_CONN_DONE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_4
    const-string v5, "GpsLocationProvider"

    const-string v6, "GPS_AGPS_DATA_CONN_FAILED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private reportLocation(IDDDFFFJIFFFFFF)V
    .locals 14
    .parameter "flags"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "altitude"
    .parameter "speed"
    .parameter "bearing"
    .parameter "accuracy"
    .parameter "timestamp"
    .parameter "source"
    .parameter "speed_v"
    .parameter "speed_h"
    .parameter "uncertainty_angle"
    .parameter "uncertainty_along"
    .parameter "uncertainty_perpendicular"
    .parameter "uncertainty_altitude"

    .prologue
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    monitor-enter v11

    :try_start_0
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationFlags:I

    and-int/lit8 v10, p1, 0x1

    const/4 v12, 0x1

    if-ne v10, v12, :cond_0

    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-wide/from16 v0, p2

    invoke-virtual {v10, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-wide/from16 v0, p4

    invoke-virtual {v10, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-wide/from16 v0, p11

    invoke-virtual {v10, v0, v1}, Landroid/location/Location;->setTime(J)V

    :cond_0
    and-int/lit8 v10, p1, 0x2

    const/4 v12, 0x2

    if-ne v10, v12, :cond_2

    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-wide/from16 v0, p6

    invoke-virtual {v10, v0, v1}, Landroid/location/Location;->setAltitude(D)V

    :goto_0
    and-int/lit8 v10, p1, 0x4

    const/4 v12, 0x4

    if-ne v10, v12, :cond_3

    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p8

    invoke-virtual {v10, v0}, Landroid/location/Location;->setSpeed(F)V

    :goto_1
    and-int/lit8 v10, p1, 0x8

    const/16 v12, 0x8

    if-ne v10, v12, :cond_4

    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p9

    invoke-virtual {v10, v0}, Landroid/location/Location;->setBearing(F)V

    :goto_2
    and-int/lit8 v10, p1, 0x10

    const/16 v12, 0x10

    if-ne v10, v12, :cond_5

    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p10

    invoke-virtual {v10, v0}, Landroid/location/Location;->setAccuracy(F)V

    :goto_3
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    iget-object v12, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    invoke-virtual {v10, v12}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationManager:Landroid/location/ILocationManager;

    iget-object v12, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    const/4 v13, 0x0

    invoke-interface {v10, v12, v13}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_4
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    iget-wide v10, p0, Lcom/android/server/location/GpsLocationProvider;->mLastAFLTFixTime:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    iget-wide v10, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    iput-wide v10, p0, Lcom/android/server/location/GpsLocationProvider;->mLastAFLTFixTime:J

    :cond_1
    iget v10, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    if-nez v10, :cond_8

    and-int/lit8 v10, p1, 0x1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_8

    iget-wide v10, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    iget-wide v12, p0, Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J

    sub-long/2addr v10, v12

    long-to-int v10, v10

    iput v10, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    const-string v10, "GpsLocationProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TTFF: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v10, :cond_8

    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v11

    :try_start_3
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    .local v8, size:I
    sget v10, Lcom/android/server/location/GpsLocationProvider;->mHtcAllowAPCount:I

    if-lez v10, :cond_e

    sget-boolean v10, Lcom/android/server/location/GpsLocationProvider;->mHTCPrivacySetting:Z

    if-nez v10, :cond_e

    iget-object v12, p0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    monitor-enter v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    .local v9, sizeAllow:I
    const/4 v6, 0x0

    .local v6, j:I
    :goto_5
    if-ge v6, v9, :cond_6

    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .local v3, htclistener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_start_5
    iget-object v10, v3, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    iget v13, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    invoke-interface {v10, v13}, Landroid/location/IGpsStatusListener;->onFirstFix(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .end local v3           #htclistener:Lcom/android/server/location/GpsLocationProvider$Listener;
    .end local v6           #j:I
    .end local v8           #size:I
    .end local v9           #sizeAllow:I
    :cond_2
    :try_start_6
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v10}, Landroid/location/Location;->removeAltitude()V

    goto/16 :goto_0

    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v10

    :cond_3
    :try_start_7
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v10}, Landroid/location/Location;->removeSpeed()V

    goto/16 :goto_1

    :cond_4
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v10}, Landroid/location/Location;->removeBearing()V

    goto/16 :goto_2

    :cond_5
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v10}, Landroid/location/Location;->removeAccuracy()V

    goto/16 :goto_3

    :catch_0
    move-exception v2

    .local v2, e:Landroid/os/RemoteException;
    const-string v10, "GpsLocationProvider"

    const-string v12, "RemoteException calling reportLocation"

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_4

    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v3       #htclistener:Lcom/android/server/location/GpsLocationProvider$Listener;
    .restart local v6       #j:I
    .restart local v8       #size:I
    .restart local v9       #sizeAllow:I
    :catch_1
    move-exception v2

    .restart local v2       #e:Landroid/os/RemoteException;
    :try_start_8
    const-string v10, "GpsLocationProvider"

    const-string v13, "RemoteException in stopNavigating"

    invoke-static {v10, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, -0x1

    goto :goto_6

    .end local v2           #e:Landroid/os/RemoteException;
    .end local v3           #htclistener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :cond_6
    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .end local v6           #j:I
    .end local v9           #sizeAllow:I
    :cond_7
    :try_start_9
    monitor-exit v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .end local v8           #size:I
    :cond_8
    iget-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShot:Z

    if-eqz v10, :cond_9

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    :cond_9
    iget-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v10, :cond_c

    iget v10, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_c

    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v10

    if-nez v10, :cond_a

    iget v10, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    const v11, 0xea60

    if-ge v10, v11, :cond_a

    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v10, v11}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_a
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v5, intent:Landroid/content/Intent;
    const-string v10, "enabled"

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v10, :cond_b

    const-string v10, "GpsLocationProvider"

    const-string v11, "[GICON] +++++ GPS_FIX_CHANGE_ACTION +++++  (true)"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_b
    const/4 v10, 0x2

    iget v11, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    invoke-direct {p0, v10, v11}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    const-string v10, "GpsLocationProvider"

    const-string v11, "GPS_FIX_CHANGE_ACTION: android.location.GPS_FIX_CHANGE EXTRA_GPS_ENABLED: enabled"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5           #intent:Landroid/content/Intent;
    :cond_c
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v10

    if-nez v10, :cond_d

    iget-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v10, :cond_d

    iget v10, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    const/16 v11, 0x2710

    if-le v10, v11, :cond_d

    const-string v10, "GpsLocationProvider"

    const-string v11, "got fix, hibernating"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->hibernate()V

    :cond_d
    return-void

    .restart local v8       #size:I
    :catchall_1
    move-exception v10

    :try_start_a
    monitor-exit v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v10

    .end local v8           #size:I
    :catchall_2
    move-exception v10

    monitor-exit v11
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v10

    .restart local v8       #size:I
    :cond_e
    const/4 v4, 0x0

    .local v4, i:I
    :goto_7
    if-ge v4, v8, :cond_7

    :try_start_c
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .local v7, listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_start_d
    iget-object v10, v7, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    iget v12, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    invoke-interface {v10, v12}, Landroid/location/IGpsStatusListener;->onFirstFix(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_2

    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :catch_2
    move-exception v2

    .restart local v2       #e:Landroid/os/RemoteException;
    :try_start_e
    const-string v10, "GpsLocationProvider"

    const-string v12, "RemoteException in stopNavigating"

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    add-int/lit8 v8, v8, -0x1

    goto :goto_8
.end method

.method private reportNmea(J)V
    .locals 13
    .parameter "timestamp"

    .prologue
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v10

    :try_start_0
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, size:I
    if-lez v7, :cond_1

    iget-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    array-length v11, v11

    invoke-direct {p0, v9, v11}, Lcom/android/server/location/GpsLocationProvider;->native_read_nmea([BI)I

    move-result v4

    .local v4, length:I
    new-instance v6, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    const/4 v11, 0x0

    invoke-direct {v6, v9, v11, v4}, Ljava/lang/String;-><init>([BII)V

    .local v6, nmea:Ljava/lang/String;
    sget v9, Lcom/android/server/location/GpsLocationProvider;->mHtcAllowAPCount:I

    if-lez v9, :cond_2

    sget-boolean v9, Lcom/android/server/location/GpsLocationProvider;->mHTCPrivacySetting:Z

    if-nez v9, :cond_2

    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .local v8, sizeAllow:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    if-ge v3, v8, :cond_0

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v1, htclistener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_start_2
    iget-object v9, v1, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v9, p1, p2, v6}, Landroid/location/IGpsStatusListener;->onNmeaReceived(JLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v9, "GpsLocationProvider"

    const-string v12, "RemoteException in reportNmea"

    invoke-static {v9, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #htclistener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :cond_0
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v3           #j:I
    .end local v4           #length:I
    .end local v6           #nmea:Ljava/lang/String;
    .end local v8           #sizeAllow:I
    :cond_1
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    .restart local v4       #length:I
    .restart local v6       #nmea:Ljava/lang/String;
    :catchall_0
    move-exception v9

    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v9

    .end local v4           #length:I
    .end local v6           #nmea:Ljava/lang/String;
    .end local v7           #size:I
    :catchall_1
    move-exception v9

    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v9

    .restart local v4       #length:I
    .restart local v6       #nmea:Ljava/lang/String;
    .restart local v7       #size:I
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v7, :cond_1

    :try_start_7
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .local v5, listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_start_8
    iget-object v9, v5, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v9, p1, p2, v6}, Landroid/location/IGpsStatusListener;->onNmeaReceived(JLjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_1
    move-exception v0

    .restart local v0       #e:Landroid/os/RemoteException;
    :try_start_9
    const-string v9, "GpsLocationProvider"

    const-string v11, "RemoteException in reportNmea"

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    add-int/lit8 v7, v7, -0x1

    goto :goto_3
.end method

.method private reportStatus(I)V
    .locals 14
    .parameter "status"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const-string v10, "GpsLocationProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "reportStatus status: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v11

    :try_start_0
    iget-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    .local v9, wasNavigating:Z
    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eq v9, v10, :cond_9

    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, size:I
    sget v10, Lcom/android/server/location/GpsLocationProvider;->mHtcAllowAPCount:I

    if-lez v10, :cond_3

    sget-boolean v10, Lcom/android/server/location/GpsLocationProvider;->mHTCPrivacySetting:Z

    if-nez v10, :cond_3

    iget-object v12, p0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    monitor-enter v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, sizeAllow:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    if-ge v4, v7, :cond_1

    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .local v1, htclistener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_start_2
    iget-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v10, :cond_0

    iget-object v10, v1, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v10}, Landroid/location/IGpsStatusListener;->onGpsStarted()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v1           #htclistener:Lcom/android/server/location/GpsLocationProvider$Listener;
    .end local v4           #j:I
    .end local v6           #size:I
    .end local v7           #sizeAllow:I
    :pswitch_0
    const/4 v10, 0x1

    :try_start_3
    iput-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    goto :goto_0

    .end local v9           #wasNavigating:Z
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v10

    .restart local v9       #wasNavigating:Z
    :pswitch_1
    const/4 v10, 0x0

    :try_start_4
    iput-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    goto :goto_0

    :pswitch_2
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    goto :goto_0

    :pswitch_3
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .restart local v1       #htclistener:Lcom/android/server/location/GpsLocationProvider$Listener;
    .restart local v4       #j:I
    .restart local v6       #size:I
    .restart local v7       #sizeAllow:I
    :cond_0
    :try_start_5
    iget-object v10, v1, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v10}, Landroid/location/IGpsStatusListener;->onGpsStopped()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    :try_start_6
    const-string v10, "GpsLocationProvider"

    const-string v13, "RemoteException in reportStatus"

    invoke-static {v10, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #htclistener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :cond_1
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v4           #j:I
    .end local v7           #sizeAllow:I
    :cond_2
    :try_start_7
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    add-int/lit8 v2, v10, -0x1

    .local v2, i:I
    :goto_3
    if-ltz v2, :cond_7

    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .local v8, uid:I
    iget-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v10, v8}, Lcom/android/internal/app/IBatteryStats;->noteStartGps(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    :goto_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .end local v2           #i:I
    .end local v8           #uid:I
    :catchall_1
    move-exception v10

    :try_start_8
    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v10

    :cond_3
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_5
    if-ge v2, v6, :cond_2

    iget-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-nez v10, :cond_4

    iget-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-nez v10, :cond_2

    :cond_4
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .local v5, listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_start_a
    iget-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v10, :cond_5

    iget-object v10, v5, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v10}, Landroid/location/IGpsStatusListener;->onGpsStarted()V

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    iget-object v10, v5, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v10}, Landroid/location/IGpsStatusListener;->onGpsStopped()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    .restart local v0       #e:Landroid/os/RemoteException;
    :try_start_b
    const-string v10, "GpsLocationProvider"

    const-string v12, "RemoteException in reportStatus"

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    .end local v0           #e:Landroid/os/RemoteException;
    .end local v5           #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    .restart local v8       #uid:I
    :cond_6
    :try_start_c
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v10, v8}, Lcom/android/internal/app/IBatteryStats;->noteStopGps(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_4

    .end local v2           #i:I
    .end local v8           #uid:I
    :catch_2
    move-exception v0

    .restart local v0       #e:Landroid/os/RemoteException;
    :try_start_d
    const-string v10, "GpsLocationProvider"

    const-string v12, "RemoteException in reportStatus"

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_7
    iget-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-nez v10, :cond_8

    iget-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-nez v10, :cond_9

    :cond_8
    const-string v10, "GpsLocationProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[GICON] ### GPS_ENABLED_CHANGE_ACTION ###  ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    const-string v10, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, intent:Landroid/content/Intent;
    const-string v10, "enabled"

    iget-boolean v12, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    invoke-virtual {v3, v10, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v10, "GpsLocationProvider"

    const-string v12, "GPS_ENABLED_CHANGE_ACTION: android.location.GPS_ENABLED_CHANGE EXTRA_GPS_ENABLED: enabled"

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3           #intent:Landroid/content/Intent;
    .end local v6           #size:I
    :cond_9
    const-string v10, "GpsLocationProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[reportStatus] mNavigating:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mEngineOn:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mDownloadXtraDataPending:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-nez v10, :cond_a

    iget-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    if-nez v10, :cond_a

    iget-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Z

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x6

    invoke-virtual {v10, v12}, Landroid/os/Handler;->removeMessages(I)V

    const-string v10, "GpsLocationProvider"

    const-string v12, "[reportStatus] trigger DOWNLOAD_XTRA_DATA"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    iget-object v12, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x6

    invoke-static {v12, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_a
    monitor-exit v11
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private reportSvStatus()V
    .locals 21

    .prologue
    const-string v1, "GpsLocationProvider"

    const-string v3, "reportSvStatus"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_read_sv_status([I[F[F[F[I)I

    move-result v2

    .local v2, svCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    monitor-enter v18

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v16

    .local v16, size:I
    sget v1, Lcom/android/server/location/GpsLocationProvider;->mHtcAllowAPCount:I

    if-lez v1, :cond_2

    sget-boolean v1, Lcom/android/server/location/GpsLocationProvider;->mHTCPrivacySetting:Z

    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    monitor-enter v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v17

    .local v17, sizeAllow:I
    const/4 v14, 0x0

    .local v14, j:I
    :goto_0
    move/from16 v0, v17

    if-ge v14, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v11, htclistener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_start_2
    iget-object v1, v11, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/16 v20, 0x2

    aget v9, v9, v20

    invoke-interface/range {v1 .. v9}, Landroid/location/IGpsStatusListener;->onSvStatusChanged(I[I[F[F[FIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :catch_0
    move-exception v10

    .local v10, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v1, "GpsLocationProvider"

    const-string v3, "RemoteException in reportSvInfo"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v16, v16, -0x1

    goto :goto_1

    .end local v10           #e:Landroid/os/RemoteException;
    .end local v11           #htclistener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :cond_0
    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v14           #j:I
    .end local v17           #sizeAllow:I
    :cond_1
    :try_start_4
    monitor-exit v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-string v1, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SV count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ephemerisMask: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " almanacMask: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    if-ge v12, v2, :cond_6

    const-string v3, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sv: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    aget v4, v4, v12

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " snr: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    aget v4, v4, v12

    const/high16 v5, 0x4120

    div-float/2addr v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " elev: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    aget v4, v4, v12

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " azimuth: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    aget v4, v4, v12

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v5, 0x0

    aget v1, v1, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    aget v6, v6, v12

    add-int/lit8 v6, v6, -0x1

    shl-int/2addr v5, v6

    and-int/2addr v1, v5

    if-nez v1, :cond_3

    const-string v1, "  "

    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v5, 0x1

    aget v1, v1, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    aget v6, v6, v12

    add-int/lit8 v6, v6, -0x1

    shl-int/2addr v5, v6

    and-int/2addr v1, v5

    if-nez v1, :cond_4

    const-string v1, "  "

    :goto_4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v5, 0x2

    aget v1, v1, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    aget v6, v6, v12

    add-int/lit8 v6, v6, -0x1

    shl-int/2addr v5, v6

    and-int/2addr v1, v5

    if-nez v1, :cond_5

    const-string v1, ""

    :goto_5
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .end local v12           #i:I
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1

    .end local v16           #size:I
    :catchall_1
    move-exception v1

    monitor-exit v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1

    .restart local v16       #size:I
    :cond_2
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_6
    move/from16 v0, v16

    if-ge v12, v0, :cond_1

    :try_start_7
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .local v15, listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_start_8
    iget-object v1, v15, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/16 v19, 0x2

    aget v9, v9, v19

    invoke-interface/range {v1 .. v9}, Landroid/location/IGpsStatusListener;->onSvStatusChanged(I[I[F[F[FIII)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    :goto_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :catch_1
    move-exception v10

    .restart local v10       #e:Landroid/os/RemoteException;
    :try_start_9
    const-string v1, "GpsLocationProvider"

    const-string v3, "RemoteException in reportSvInfo"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    add-int/lit8 v16, v16, -0x1

    goto :goto_7

    .end local v10           #e:Landroid/os/RemoteException;
    .end local v15           #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :cond_3
    const-string v1, " E"

    goto/16 :goto_3

    :cond_4
    const-string v1, " A"

    goto/16 :goto_4

    :cond_5
    const-string v1, "U"

    goto :goto_5

    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_7

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2710

    cmp-long v1, v3, v5

    if-lez v1, :cond_7

    const-string v1, "GpsLocationProvider"

    const-string v3, "[GICON] ----- GPS_FIX_CHANGE_ACTION -----  (false)"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Landroid/content/Intent;

    const-string v1, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v13, intent:Landroid/content/Intent;
    const-string v1, "enabled"

    const/4 v3, 0x0

    invoke-virtual {v13, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    const-string v1, "GpsLocationProvider"

    const-string v3, "GPS_FIX_CHANGE_ACTION: android.location.GPS_FIX_CHANGE EXTRA_GPS_ENABLED: enabled"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v13           #intent:Landroid/content/Intent;
    :cond_7
    return-void
.end method

.method private requestRefLocation(I)V
    .locals 10
    .parameter "flags"

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x3

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .local v8, phone:Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, v9, :cond_3

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v6

    check-cast v6, Landroid/telephony/gsm/GsmCellLocation;

    .local v6, gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v6, :cond_2

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, v9, :cond_2

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_2

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .local v2, mcc:I
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .local v3, mnc:I
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v7

    .local v7, networkType:I
    if-eq v7, v5, :cond_0

    const/16 v0, 0x8

    if-eq v7, v0, :cond_0

    const/16 v0, 0x9

    if-eq v7, v0, :cond_0

    const/16 v0, 0xa

    if-ne v7, v0, :cond_1

    :cond_0
    const/4 v1, 0x2

    .local v1, type:I
    :goto_0
    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_agps_set_ref_location_cellid(IIIII)V

    .end local v1           #type:I
    .end local v2           #mcc:I
    .end local v3           #mnc:I
    .end local v6           #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    .end local v7           #networkType:I
    :goto_1
    return-void

    .restart local v2       #mcc:I
    .restart local v3       #mnc:I
    .restart local v6       #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v7       #networkType:I
    :cond_1
    const/4 v1, 0x1

    .restart local v1       #type:I
    goto :goto_0

    .end local v1           #type:I
    .end local v2           #mcc:I
    .end local v3           #mnc:I
    .end local v7           #networkType:I
    :cond_2
    const-string v0, "GpsLocationProvider"

    const-string v4, "Error getting cell location info."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v6           #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    :cond_3
    const-string v0, "GpsLocationProvider"

    const-string v4, "CDMA not supported."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private requestSetID(I)V
    .locals 6
    .parameter "flags"

    .prologue
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .local v2, phone:Landroid/telephony/TelephonyManager;
    const/4 v3, 0x0

    .local v3, type:I
    const-string v0, ""

    .local v0, data:Ljava/lang/String;
    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .local v1, data_temp:Ljava/lang/String;
    if-nez v1, :cond_1

    .end local v1           #data_temp:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct {p0, v3, v0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_set_id(ILjava/lang/String;)V

    return-void

    .restart local v1       #data_temp:Ljava/lang/String;
    :cond_1
    move-object v0, v1

    const/4 v3, 0x1

    goto :goto_0

    .end local v1           #data_temp:Ljava/lang/String;
    :cond_2
    and-int/lit8 v4, p1, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #data_temp:Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v0, v1

    const/4 v3, 0x2

    goto :goto_0
.end method

.method private requestUtcTime()V
    .locals 3

    .prologue
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    return-void
.end method

.method private sendMessage(IILjava/lang/Object;)V
    .locals 5
    .parameter "message"
    .parameter "arg"
    .parameter "obj"

    .prologue
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingMessageBits:I

    const/4 v3, 0x1

    shl-int/2addr v3, p1

    or-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingMessageBits:I

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .local v0, m:Landroid/os/Message;
    if-nez v0, :cond_0

    const-string v1, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[GPSHD] null message from pool: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p2, v0, Landroid/os/Message;->arg1:I

    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[GPSHD] sendmessage failure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v2

    return-void

    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setEngineCapabilities(I)V
    .locals 1
    .parameter "capabilities"

    .prologue
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineCapabilities:I

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPeriodicTimeInjection:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPeriodicTimeInjection:Z

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->requestUtcTime()V

    :cond_0
    return-void
.end method

.method private startNavigating(Z)V
    .locals 14
    .parameter "singleShot"

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v2, 0x0

    const-string v0, "GpsLocationProvider"

    const-string v1, "startNavigating =D1="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->IsQuickBootPowerOff:Z

    if-eqz v0, :cond_1

    const-string v0, "GpsLocationProvider"

    const-string v1, "startNavigating: Skip request due to Quick boot power off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mECMState:Z

    if-eqz v0, :cond_2

    iput-boolean v12, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    const-string v0, "GpsLocationProvider"

    const-string v1, "HANDLE_EMERGENCY_CALL in startNavigating(): mECMState(TRUE) then return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-nez v0, :cond_0

    iput-boolean v12, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShot:Z

    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    const/4 v7, 0x1

    .local v7, enableAgps:Z
    const/4 v6, 0x1

    .local v6, bypassWirelessSetting:Z
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bypass Google\'s location service setting check: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v6, :cond_8

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_gps_enabled"

    invoke-static {v0, v1, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v7, 0x0

    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AGPS status: ["

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, "], dsable APGS due to setting config"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    if-eqz v7, :cond_d

    if-eqz p1, :cond_b

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_b

    iput v13, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    :goto_2
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .local v9, tm:Landroid/telephony/TelephonyManager;
    const/16 v4, 0x32

    .local v4, accuracy:I
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, v13, :cond_e

    const/16 v5, 0x3e80

    .local v5, timeout_standalone:I
    const/16 v8, 0x3e80

    .local v8, timeout_agps:I
    :goto_3
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mQosAccuracy:I

    if-lez v0, :cond_4

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider;->mQosAccuracy:I

    :cond_4
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mQosTimeoutStandalone:I

    if-lez v0, :cond_5

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mQosTimeoutStandalone:I

    mul-int/lit16 v5, v0, 0x3e8

    :cond_5
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mQosTimeoutAgps:I

    if-lez v0, :cond_6

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mQosTimeoutAgps:I

    mul-int/lit16 v8, v0, 0x3e8

    :cond_6
    invoke-direct {p0, v12}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    .local v3, interval:I
    :goto_4
    invoke-direct {p0, v5, v8}, Lcom/android/server/location/GpsLocationProvider;->native_set_qos_time_out(II)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "GpsLocationProvider"

    const-string v1, "set_qos_time_out failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const-string v0, "GpsLocationProvider"

    const-string v1, "set_agps_qos_time_out complete"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_set_position_mode(IIIII)Z

    move-result v0

    if-nez v0, :cond_10

    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    const-string v0, "GpsLocationProvider"

    const-string v1, "set_position_mode failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v3           #interval:I
    .end local v4           #accuracy:I
    .end local v5           #timeout_standalone:I
    .end local v8           #timeout_agps:I
    .end local v9           #tm:Landroid/telephony/TelephonyManager;
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mRoaming:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableAgpsWhenRoaming:Z

    if-eqz v0, :cond_9

    const/4 v7, 0x0

    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AGPS status: ["

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, "], dsable APGS due to Roaming"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_9
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mIsWimax:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableAgpsWhenWimax:Z

    if-eqz v0, :cond_a

    const/4 v7, 0x0

    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AGPS status: ["

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, "], dsable APGS due to Wimax"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_a
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableAgps:Z

    if-eqz v0, :cond_3

    const/4 v7, 0x0

    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AGPS status: ["

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, "], due to diable ExtraCommand"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_b
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnableAflt:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    if-eqz v0, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v10, p0, Lcom/android/server/location/GpsLocationProvider;->mLastAFLTFixTime:J

    sub-long/2addr v0, v10

    const-wide/32 v10, 0xdbba0

    cmp-long v0, v0, v10

    if-lez v0, :cond_c

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLastAFLTFixTime:J

    goto/16 :goto_2

    :cond_c
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDefaultAgpsPositionMode:I

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    goto/16 :goto_2

    :cond_d
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " mPositionMode: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v10, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, "."

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    goto/16 :goto_2

    .restart local v4       #accuracy:I
    .restart local v9       #tm:Landroid/telephony/TelephonyManager;
    :cond_e
    const v5, 0xea60

    .restart local v5       #timeout_standalone:I
    const v8, 0x15ba8

    .restart local v8       #timeout_agps:I
    goto/16 :goto_3

    :cond_f
    const/16 v3, 0x3e8

    goto/16 :goto_4

    .restart local v3       #interval:I
    :cond_10
    const-string v0, "GpsLocationProvider"

    const-string v1, "set_position_mode complete"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_start()Z

    move-result v0

    if-nez v0, :cond_11

    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    const-string v0, "GpsLocationProvider"

    const-string v1, "native_start failed in startNavigating()  <Fail>"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_11
    const-string v0, "GpsLocationProvider"

    const-string v1, "reset SV count to zero"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v12, v2}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J

    invoke-direct {p0, v12}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    const v1, 0xea60

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v10, 0xea60

    add-long/2addr v1, v10

    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v13, v1, v2, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0
.end method

.method private stopNavigating()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "GpsLocationProvider"

    const-string v1, "stopNavigating"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mECMStateUpdate:Z

    if-eqz v0, :cond_0

    const-string v0, "GpsLocationProvider"

    const-string v1, "HANDLE_EMERGENCY_CALL in stopNavigating(): mECMState(TRUE) then return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_stop()Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShot:Z

    const-string v0, "GpsLocationProvider"

    const-string v1, "stopNavigating: native_stop+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_stop()Z

    const-string v0, "GpsLocationProvider"

    const-string v1, "stopNavigating: native_stop-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationFlags:I

    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    :cond_1
    return-void
.end method

.method private updateStatus(II)V
    .locals 2
    .parameter "status"
    .parameter "svCount"

    .prologue
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    if-eq p2, v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    iput p2, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v1, "satellites"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatusUpdateTime:J

    :cond_1
    return-void
.end method

.method private xtraDownloadRequest()V
    .locals 3

    .prologue
    const-string v0, "GpsLocationProvider"

    const-string v1, "xtraDownloadRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addListener(I)V
    .locals 4
    .parameter "uid"

    .prologue
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->IsQuickBootPowerOff:Z

    if-eqz v1, :cond_0

    const-string v1, "GpsLocationProvider"

    const-string v2, "addListener: Skip request due to Quick boot power off"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    :try_start_0
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .local v0, m:Landroid/os/Message;
    if-nez v0, :cond_1

    const-string v1, "GpsLocationProvider"

    const-string v3, "[GPSHD] null message from pool: 8"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "GpsLocationProvider"

    const-string v3, "[GPSHD] sendmessage failure: 8"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    monitor-exit v2

    goto :goto_0

    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disable()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    monitor-enter v1

    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enable()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    monitor-enter v1

    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableLocationTracking(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    const-string v0, "GpsLocationProvider"

    const-string v1, "enableLocationTracking ++"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    monitor-enter v1

    const/4 v2, 0x3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v2, v0, v3}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAccuracy()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method getClientUids()Landroid/util/SparseIntArray;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public getGpsStatusProvider()Landroid/location/IGpsStatusProvider;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    return-object v0
.end method

.method public getInternalState()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, s:Ljava/lang/StringBuilder;
    const-string v1, "  mFixInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mEngineCapabilities=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineCapabilities:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SCHED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "MSB "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "MSA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "SINGLE_SHOT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "ON_DEMAND_TIME "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, ")\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_get_internal_state()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "gps"

    return-object v0
.end method

.method getNavigating()Z
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    return v0
.end method

.method public getNetInitiatedListener()Landroid/location/INetInitiatedListener;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    return-object v0
.end method

.method public getPowerRequirement()I
    .locals 1

    .prologue
    const/4 v0, 0x3

    return v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .locals 2
    .parameter "extras"

    .prologue
    if-eqz p1, :cond_0

    const-string v0, "satellites"

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    return v0
.end method

.method public getStatusUpdateTime()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatusUpdateTime:J

    return-wide v0
.end method

.method public hasMonetaryCost()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    return v0
.end method

.method public meetsCriteria(Landroid/location/Criteria;)Z
    .locals 2
    .parameter "criteria"

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeListener(I)V
    .locals 4
    .parameter "uid"

    .prologue
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    :try_start_0
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .local v0, m:Landroid/os/Message;
    if-nez v0, :cond_0

    const-string v1, "GpsLocationProvider"

    const-string v3, "[GPSHD] null message from pool: 9"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "GpsLocationProvider"

    const-string v3, "[GPSHD] sendmessage failure: 9"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v2

    return-void

    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reportNiNotification(IIIIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 11
    .parameter "notificationId"
    .parameter "niType"
    .parameter "notifyFlags"
    .parameter "timeout"
    .parameter "defaultResponse"
    .parameter "requestorId"
    .parameter "text"
    .parameter "requestorIdEncoding"
    .parameter "textEncoding"
    .parameter "extras"

    .prologue
    const-string v8, "GpsLocationProvider"

    const-string v9, "reportNiNotification: entered"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "notificationId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", niType: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", notifyFlags: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", timeout: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", defaultResponse: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestorId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p6

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", text: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p7

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", requestorIdEncoding: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p8

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", textEncoding: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->Is_MULTI_RAB_TRAFFIC_support:Z

    if-eqz v8, :cond_0

    const-string v8, "GpsLocationProvider"

    const-string v9, "reportNiNotification: Calling disable MRTT by requestSetMultiRABTrafficThrottling(3 , 1) "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "htctelephony"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v6

    .local v6, ihtcPhoneInterface:Lcom/android/internal/telephony/IHtcTelephony;
    if-eqz v6, :cond_0

    const/4 v8, 0x3

    const/4 v9, 0x1

    :try_start_0
    invoke-interface {v6, v8, v9}, Lcom/android/internal/telephony/IHtcTelephony;->requestSetMultiRABTrafficThrottling(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6           #ihtcPhoneInterface:Lcom/android/internal/telephony/IHtcTelephony;
    :cond_0
    :goto_0
    new-instance v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    invoke-direct {v7}, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;-><init>()V

    .local v7, notification:Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    iput p1, v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    iput p2, v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    and-int/lit8 v8, p3, 0x1

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    and-int/lit8 v8, p3, 0x2

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    :goto_2
    iput-boolean v8, v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    and-int/lit8 v8, p3, 0x4

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    :goto_3
    iput-boolean v8, v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    iput p4, v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    move/from16 v0, p5

    iput v0, v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    move-object/from16 v0, p6

    iput-object v0, v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    move-object/from16 v0, p7

    iput-object v0, v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    move/from16 v0, p8

    iput v0, v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    move/from16 v0, p9

    iput v0, v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .local v1, bundle:Landroid/os/Bundle;
    if-nez p10, :cond_1

    const-string p10, ""

    :cond_1
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .local v4, extraProp:Ljava/util/Properties;
    :try_start_1
    new-instance v8, Ljava/io/StringReader;

    move-object/from16 v0, p10

    invoke-direct {v8, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    invoke-virtual {v4}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .local v3, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v3           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v4           #extraProp:Ljava/util/Properties;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #notification:Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    .restart local v6       #ihtcPhoneInterface:Lcom/android/internal/telephony/IHtcTelephony;
    :catch_0
    move-exception v2

    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v2           #e:Landroid/os/RemoteException;
    .end local v6           #ihtcPhoneInterface:Lcom/android/internal/telephony/IHtcTelephony;
    .restart local v7       #notification:Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    goto :goto_3

    .restart local v1       #bundle:Landroid/os/Bundle;
    .restart local v4       #extraProp:Ljava/util/Properties;
    :catch_1
    move-exception v2

    .local v2, e:Ljava/io/IOException;
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "reportNiNotification cannot parse extras data: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p10

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .end local v2           #e:Ljava/io/IOException;
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_5
    iput-object v1, v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->extras:Landroid/os/Bundle;

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v8, v7}, Lcom/android/internal/location/GpsNetInitiatedHandler;->handleNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    return-void
.end method

.method public requestSingleShotFix()Z
    .locals 4

    .prologue
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const-string v1, "GpsLocationProvider"

    const-string v2, "requestSingleShotFix ++"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v2

    const/4 v1, 0x1

    goto :goto_0

    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requiresCell()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public requiresNetwork()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public requiresSatellite()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 11
    .parameter "command"
    .parameter "extras"

    .prologue
    const/4 v10, 0x6

    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, identity:J
    const/4 v3, 0x0

    .local v3, result:Z
    const-string v5, "GpsLocationProvider"

    const-string v6, "sendExtraCommand ++"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "delete_aiding_data"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/location/GpsLocationProvider;->deleteAidingData(Landroid/os/Bundle;)Z

    move-result v3

    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_1
    const-string v5, "force_time_injection"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-direct {p0, v5, v8, v6}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const-string v5, "force_xtra_injection"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->xtraDownloadRequest()V

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const-string v5, "set_pde_ip_port"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mEnableExtraCommand_set_pde_ip_port:Z

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .local v4, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    if-ne v5, v7, :cond_6

    const-string v5, "ip"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    if-nez v5, :cond_4

    const-string v5, "0.0.0.0"

    iput-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    :cond_4
    const-string v5, "port"

    invoke-virtual {p2, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerPort:I

    iget-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerPort:I

    invoke-direct {p0, v7, v5, v6}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    :cond_5
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_6
    const-string v5, "ip"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-nez v5, :cond_7

    const-string v5, "0.0.0.0"

    iput-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    :cond_7
    const-string v5, "port"

    invoke-virtual {p2, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    iget-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    invoke-direct {p0, v9, v5, v6}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    goto :goto_1

    .end local v4           #tm:Landroid/telephony/TelephonyManager;
    :cond_8
    const-string v5, "set_privacy_lock"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v5, "enable_lock"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .local v2, mPrivacySetting:I
    if-ne v2, v9, :cond_9

    sput-boolean v8, Lcom/android/server/location/GpsLocationProvider;->mHTCPrivacySetting:Z

    const-string v5, "GpsLocationProvider"

    const-string v6, "[LPS] sendExtraCommand: set_privacy_lock: mHTCPrivacySetting = false "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const-string v5, "CDMA"

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mPhoneType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    sget-boolean v5, Lcom/android/server/location/GpsLocationProvider;->mHTCPrivacySetting:Z

    if-nez v5, :cond_c

    sget v5, Lcom/android/server/location/GpsLocationProvider;->mHtcAllowAPCount:I

    if-lez v5, :cond_b

    const-string v5, "GpsLocationProvider"

    const-string v6, "[LPS] sendExtraCommand: (mHTCPrivacySetting = false) and (mHtcAllowAPCount > 0)  SKIP to Lock NV#452 "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_9
    if-nez v2, :cond_a

    sput-boolean v9, Lcom/android/server/location/GpsLocationProvider;->mHTCPrivacySetting:Z

    const-string v5, "GpsLocationProvider"

    const-string v6, "[LPS] sendExtraCommand: set_privacy_lock: mHTCPrivacySetting = true "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_a
    const-string v5, "GpsLocationProvider"

    const-string v6, "[LPS] sendExtraCommand: set_privacy_lock: mHTCPrivacySetting => Incorrect value !!!   <FAIL>"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_b
    invoke-direct {p0, v9}, Lcom/android/server/location/GpsLocationProvider;->native_set_privacy_lock(I)V

    goto :goto_3

    :cond_c
    invoke-direct {p0, v8}, Lcom/android/server/location/GpsLocationProvider;->native_set_privacy_lock(I)V

    goto :goto_3

    :cond_d
    const-string v5, "GpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PHONE_TYPE=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mPhoneType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], ignore set_privacy_lock("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v2           #mPrivacySetting:I
    :cond_e
    const-string v5, "disable_xtra_download"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    iput-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableXtraDownload:Z

    const/4 v3, 0x1

    sget v5, Lcom/android/server/location/GpsLocationProvider;->XTRA_RETRY_COUNTER:I

    if-lez v5, :cond_0

    sput v8, Lcom/android/server/location/GpsLocationProvider;->XTRA_RETRY_COUNTER:I

    goto/16 :goto_0

    :cond_f
    const-string v5, "enable_xtra_download"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableXtraDownload:Z

    const-string v5, "GpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[sendExtraCommand] enable_xtra_download mDownloadXtraDataPending:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Z

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-static {v6, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_10
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_11
    const-string v5, "disable_backdoor_gps_request"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    sget v5, Lcom/android/server/location/GpsLocationProvider;->mHtcAllowAPCount:I

    add-int/lit8 v5, v5, -0x1

    sput v5, Lcom/android/server/location/GpsLocationProvider;->mHtcAllowAPCount:I

    const-string v5, "GpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LPS] sendExtraCommand: disable_backdoor_gps_request.  --->(XXXXX)  , mHtcAllowAPCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/server/location/GpsLocationProvider;->mHtcAllowAPCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v5, Lcom/android/server/location/GpsLocationProvider;->mHtcAllowAPCount:I

    if-gez v5, :cond_12

    const-string v5, "GpsLocationProvider"

    const-string v6, "[LPS] sendExtraCommand: disable_backdoor_gps_request , mHtcAllowAPCount already < 0 ...... (CHECK) !!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput v8, Lcom/android/server/location/GpsLocationProvider;->mHtcAllowAPCount:I

    :cond_12
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mPhoneType:Ljava/lang/String;

    const-string v6, "CDMA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    sget-boolean v5, Lcom/android/server/location/GpsLocationProvider;->mHTCPrivacySetting:Z

    if-nez v5, :cond_13

    sget v5, Lcom/android/server/location/GpsLocationProvider;->mHtcAllowAPCount:I

    if-nez v5, :cond_13

    const-string v5, "GpsLocationProvider"

    const-string v6, "[LPS] sendExtraCommand: disable_backdoor_gps_request , No mHtcAllowAP & mHTCPrivacySetting is disable ==>  Lock NV#452"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v9}, Lcom/android/server/location/GpsLocationProvider;->native_set_privacy_lock(I)V

    :cond_13
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_14
    const-string v5, "enable_backdoor_gps_request"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    sget v5, Lcom/android/server/location/GpsLocationProvider;->mHtcAllowAPCount:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/android/server/location/GpsLocationProvider;->mHtcAllowAPCount:I

    const-string v5, "GpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LPS] sendExtraCommand: enable_backdoor_gps_request.   --->(OOOOO)  , mHtcAllowAPCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/server/location/GpsLocationProvider;->mHtcAllowAPCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mPhoneType:Ljava/lang/String;

    const-string v6, "CDMA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    sget-boolean v5, Lcom/android/server/location/GpsLocationProvider;->mHTCPrivacySetting:Z

    if-nez v5, :cond_15

    sget v5, Lcom/android/server/location/GpsLocationProvider;->mHtcAllowAPCount:I

    if-lez v5, :cond_15

    const-string v5, "GpsLocationProvider"

    const-string v6, "[LPS] sendExtraCommand: enable_backdoor_gps_request , Have mHtcAllowAP & mHTCPrivacySetting is disable ==> Un-Lock NV#452"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v8}, Lcom/android/server/location/GpsLocationProvider;->native_set_privacy_lock(I)V

    :cond_15
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_16
    const-string v5, "disable_backdoor_gps_listener"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    sput-boolean v8, Lcom/android/server/location/GpsLocationProvider;->mAllowBackDoorListener:Z

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_17
    const-string v5, "enable_backdoor_gps_listener"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    sput-boolean v9, Lcom/android/server/location/GpsLocationProvider;->mAllowBackDoorListener:Z

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_18
    const-string v5, "enable_agps"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    const-string v5, "GpsLocationProvider"

    const-string v6, "ExtraCommand: enable_agps"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableAgps:Z

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_19
    const-string v5, "disable_agps"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    const-string v5, "GpsLocationProvider"

    const-string v6, "ExtraCommand: disable_agps"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableAgps:Z

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_1a
    const-string v5, "GpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendExtraCommand: unknown command "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setMinTime(JLandroid/os/WorkSource;)V
    .locals 6
    .parameter "minTime"
    .parameter "ws"

    .prologue
    const/4 v2, 0x0

    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMinTime "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    long-to-int v0, p1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "GpsLocationProvider"

    const-string v1, "setMinTime: native_set_position_mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x32

    .local v4, accuracy:I
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mQosAccuracy:I

    if-lez v0, :cond_0

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider;->mQosAccuracy:I

    :cond_0
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    move-object v0, p0

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_set_position_mode(IIIII)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "GpsLocationProvider"

    const-string v1, "set_position_mode failed in setMinTime()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4           #accuracy:I
    :cond_1
    return-void
.end method

.method public supportsAltitude()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public supportsBearing()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public supportsSpeed()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public updateLocation(Landroid/location/Location;)V
    .locals 2
    .parameter "location"

    .prologue
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    return-void
.end method

.method public updateNetworkState(ILandroid/net/NetworkInfo;)V
    .locals 3
    .parameter "state"
    .parameter "info"

    .prologue
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+ synchronized updateNetworkState  info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    return-void
.end method
