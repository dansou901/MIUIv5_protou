.class Lcom/android/server/MountService;
.super Landroid/os/storage/IMountService$Stub;
.source "MountService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MountService$UnmountObbAction;,
        Lcom/android/server/MountService$MountObbAction;,
        Lcom/android/server/MountService$ObbAction;,
        Lcom/android/server/MountService$ObbActionHandler;,
        Lcom/android/server/MountService$MountServiceBinderListener;,
        Lcom/android/server/MountService$MountServiceHandler;,
        Lcom/android/server/MountService$ShutdownCallBack;,
        Lcom/android/server/MountService$UmsEnableCallBack;,
        Lcom/android/server/MountService$UnmountCallBack;,
        Lcom/android/server/MountService$DefaultContainerConnection;,
        Lcom/android/server/MountService$ObbState;,
        Lcom/android/server/MountService$VoldResponseCode;,
        Lcom/android/server/MountService$VolumeState;
    }
.end annotation


# static fields
.field private static final CRYPTO_ALGORITHM_KEY_SIZE:I = 0x80

#the value of this static final field might be set in the static constructor
.field private static final DEBUG_EVENTS:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DEBUG_OBB:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DEBUG_UNMOUNT:Z = false

.field static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName; = null

.field private static final H_UNMOUNT_MS:I = 0x3

.field private static final H_UNMOUNT_PM_DONE:I = 0x2

.field private static final H_UNMOUNT_PM_UPDATE:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final LOCAL_LOGD:Z = false

.field private static final MAX_CONTAINERS:I = 0xfa

.field private static final MAX_UNMOUNT_RETRIES:I = 0x4

.field private static final OBB_FLUSH_MOUNT_STATE:I = 0x5

.field private static final OBB_MCS_BOUND:I = 0x2

.field private static final OBB_MCS_RECONNECT:I = 0x4

.field private static final OBB_MCS_UNBIND:I = 0x3

.field private static final OBB_RUN_ACTION:I = 0x1

.field private static final PBKDF2_HASH_ROUNDS:I = 0x400

.field private static final RETRY_UNMOUNT_DELAY:I = 0x1e

.field public static final SD_ENCRYPTION_256:Ljava/lang/String; = "sd_encryption_256"

.field private static Share_SD_only:Z = false

.field private static final TAG:Ljava/lang/String; = "MountService"

.field private static final TAG_STORAGE:Ljava/lang/String; = "storage"

.field private static final TAG_STORAGE_LIST:Ljava/lang/String; = "StorageList"

.field private static final VOLD_TAG:Ljava/lang/String; = "VoldConnector"

.field private static final WATCHDOG_ENABLE:Z = false

.field private static boot_initISO:Z = false

.field private static final startModemLink:Ljava/lang/String; = "com.htc.android.startML"


# instance fields
.field private flag3lm:Z

.field private final mAsecMountSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

.field private mBootTimeMount:Z

.field private mBooted:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field private mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field private mContext:Landroid/content/Context;

.field private final mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

.field private mEmulateExternalStorage:Z

.field private mExternalStoragePath:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mKeyStore:Landroid/security/KeyStore;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/MountService$MountServiceBinderListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

.field private final mObbMounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/MountService$ObbState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mObbPathToStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/MountService$ObbState;",
            ">;"
        }
    .end annotation
.end field

.field private mPms:Lcom/android/server/pm/PackageManagerService;

.field private mPrimaryVolume:Landroid/os/storage/StorageVolume;

.field private mReady:Z

.field private mRemovableStoragePath:Ljava/lang/String;

.field private mSendUmsConnectedOnBoot:Z

.field private mUmsAvailable:Z

.field private mUmsCond:Ljava/util/concurrent/locks/Condition;

.field private mUmsEnabling:Z

.field private mUmsProceedLock:Ljava/util/concurrent/locks/Lock;

.field private mUmsProceeding:Z

.field private mUsbDeviceStoragePath:Ljava/lang/String;

.field private final mVolumeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumeStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field

.field private sdcard_fuse:Z

.field private sharing:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 120
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/MountService;->LOCAL_LOGD:Z

    .line 121
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/MountService;->DEBUG_UNMOUNT:Z

    .line 122
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    .line 123
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/MountService;->DEBUG_OBB:Z

    .line 139
    sput-boolean v1, Lcom/android/server/MountService;->Share_SD_only:Z

    .line 238
    sput-boolean v1, Lcom/android/server/MountService;->boot_initISO:Z

    .line 333
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/MountService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v9, 0x0

    .line 1658
    invoke-direct {p0}, Landroid/os/storage/IMountService$Stub;-><init>()V

    .line 131
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/MountService;->mKeyStore:Landroid/security/KeyStore;

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    .line 204
    iput-object v4, p0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mVolumeMap:Ljava/util/HashMap;

    .line 212
    iput-boolean v9, p0, Lcom/android/server/MountService;->mUmsAvailable:Z

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    .line 216
    iput-boolean v9, p0, Lcom/android/server/MountService;->mBooted:Z

    .line 217
    iput-boolean v9, p0, Lcom/android/server/MountService;->mBootTimeMount:Z

    .line 218
    iput-boolean v9, p0, Lcom/android/server/MountService;->mReady:Z

    .line 219
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    .line 220
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    .line 221
    iput-boolean v9, p0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    .line 223
    iput-boolean v9, p0, Lcom/android/server/MountService;->mEmulateExternalStorage:Z

    .line 225
    iput-boolean v9, p0, Lcom/android/server/MountService;->flag3lm:Z

    .line 227
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mUmsProceedLock:Ljava/util/concurrent/locks/Lock;

    .line 228
    iget-object v0, p0, Lcom/android/server/MountService;->mUmsProceedLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/MountService;->mUmsCond:Ljava/util/concurrent/locks/Condition;

    .line 229
    iput-boolean v9, p0, Lcom/android/server/MountService;->mUmsProceeding:Z

    .line 236
    iput v9, p0, Lcom/android/server/MountService;->sharing:I

    .line 239
    iput-boolean v9, p0, Lcom/android/server/MountService;->sdcard_fuse:Z

    .line 246
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    .line 264
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    .line 265
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    .line 336
    new-instance v0, Lcom/android/server/MountService$DefaultContainerConnection;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$DefaultContainerConnection;-><init>(Lcom/android/server/MountService;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

    .line 353
    iput-object v4, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    .line 534
    new-instance v0, Lcom/android/server/MountService$1;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$1;-><init>(Lcom/android/server/MountService;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1659
    iput-object p1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    .line 1660
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/MountService;->mRemovableStoragePath:Ljava/lang/String;

    .line 1661
    invoke-static {}, Landroid/os/Environment;->getUsbDeviceDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/MountService;->mUsbDeviceStoragePath:Ljava/lang/String;

    .line 1662
    const-string v0, "MountService"

    const-string v1, "Share_SD_only"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    sput-boolean v3, Lcom/android/server/MountService;->Share_SD_only:Z

    .line 1664
    const-string v0, "true"

    const-string v1, "persist.fuse_sdcard"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1665
    const-string v0, "MountService"

    const-string v1, "Fuse enabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    iput-boolean v3, p0, Lcom/android/server/MountService;->sdcard_fuse:Z

    .line 1668
    :cond_0
    invoke-direct {p0}, Lcom/android/server/MountService;->readStorageList()V

    .line 1670
    iget-object v0, p0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_1

    .line 1671
    iget-object v0, p0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;

    .line 1672
    iget-object v0, p0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/MountService;->mEmulateExternalStorage:Z

    .line 1673
    iget-boolean v0, p0, Lcom/android/server/MountService;->mEmulateExternalStorage:Z

    if-eqz v0, :cond_1

    .line 1674
    const-string v0, "MountService"

    const-string v1, "using emulated external storage"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;

    const-string v2, "mounted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1680
    :cond_1
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 1682
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 1683
    .local v6, filter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1685
    iget-object v0, p0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1686
    const-string v0, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1690
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sd_encryption"

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 1692
    .local v7, sdEncrypted:I
    if-ne v7, v3, :cond_3

    .line 1693
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1696
    :cond_3
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/MountService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1698
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MountService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1699
    iget-object v0, p0, Lcom/android/server/MountService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1700
    new-instance v0, Lcom/android/server/MountService$MountServiceHandler;

    iget-object v1, p0, Lcom/android/server/MountService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/MountService$MountServiceHandler;-><init>(Lcom/android/server/MountService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    .line 1703
    new-instance v0, Lcom/android/server/MountService$ObbActionHandler;

    iget-object v1, p0, Lcom/android/server/MountService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/MountService$ObbActionHandler;-><init>(Lcom/android/server/MountService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    .line 1710
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    const-string v2, "vold"

    const/16 v3, 0x1f4

    const-string v4, "VoldConnector"

    const/16 v5, 0x19

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 1711
    iput-boolean v9, p0, Lcom/android/server/MountService;->mReady:Z

    .line 1712
    new-instance v8, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v1, "VoldConnector"

    invoke-direct {v8, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1713
    .local v8, thread:Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 1719
    return-void
.end method

.method private UmsProceedingDone()V
    .locals 2

    .prologue
    .line 1855
    iget-object v0, p0, Lcom/android/server/MountService;->mUmsProceedLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1857
    :try_start_0
    const-string v0, "MountService"

    const-string v1, "Finish to proceed Ums"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService;->mUmsProceeding:Z

    .line 1860
    iget-object v0, p0, Lcom/android/server/MountService;->mUmsCond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1862
    iget-object v0, p0, Lcom/android/server/MountService;->mUmsProceedLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1864
    return-void

    .line 1862
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/MountService;->mUmsProceedLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic access$000(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 117
    sget-boolean v0, Lcom/android/server/MountService;->DEBUG_OBB:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/MountService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/android/server/MountService;->mBootTimeMount:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 117
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/MountService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/server/MountService;->initISO()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/MountService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/MountService;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/MountService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/server/MountService;->mEmulateExternalStorage:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/MountService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/MountService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/MountService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->sendUmsIntent(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/MountService;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->notifyShareAvailabilityChange(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1900()Z
    .locals 1

    .prologue
    .line 117
    sget-boolean v0, Lcom/android/server/MountService;->LOCAL_LOGD:Z

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 117
    sget-boolean v0, Lcom/android/server/MountService;->DEBUG_UNMOUNT:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/MountService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    return-object v0
.end method

.method static synthetic access$2200()Z
    .locals 1

    .prologue
    .line 117
    sget-boolean v0, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/MountService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/MountService;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doGetShareMethodAvailable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/server/MountService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/server/MountService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/android/server/MountService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/android/server/MountService;->mReady:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/MountService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForUmsProceeding()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/MountService;Ljava/lang/String;ZZ)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 117
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/MountService;->doUnmountVolume(Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/MountService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3100()Z
    .locals 1

    .prologue
    .line 117
    sget-boolean v0, Lcom/android/server/MountService;->Share_SD_only:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/MountService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/server/MountService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/android/server/MountService;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/MountService;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->removeObbStateLocked(Lcom/android/server/MountService$ObbState;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/MountService;)Lcom/android/server/MountService$DefaultContainerConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/server/MountService;->mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/MountService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/MountService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/MountService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 117
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/MountService;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->addObbStateLocked(Lcom/android/server/MountService$ObbState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/MountService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/server/MountService;->UmsProceedingDone()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/MountService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 117
    sget-boolean v0, Lcom/android/server/MountService;->boot_initISO:Z

    return v0
.end method

.method static synthetic access$802(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    sput-boolean p0, Lcom/android/server/MountService;->boot_initISO:Z

    return p0
.end method

.method static synthetic access$902(Lcom/android/server/MountService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/android/server/MountService;->mBooted:Z

    return p1
.end method

.method private addObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    .locals 7
    .parameter "obbState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2804
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2805
    .local v0, binder:Landroid/os/IBinder;
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2807
    .local v4, obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    if-nez v4, :cond_1

    .line 2808
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2809
    .restart local v4       #obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2819
    :cond_0
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2821
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->link()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2836
    iget-object v5, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v6, p1, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2837
    return-void

    .line 2811
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/MountService$ObbState;

    .line 2812
    .local v3, o:Lcom/android/server/MountService$ObbState;
    iget-object v5, v3, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2813
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Attempt to add ObbState twice. This indicates an error in the MountService logic."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2822
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #o:Lcom/android/server/MountService$ObbState;
    :catch_0
    move-exception v1

    .line 2827
    .local v1, e:Landroid/os/RemoteException;
    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2828
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2829
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2833
    :cond_3
    throw v1
.end method

.method private doFormatVolume(Ljava/lang/String;)I
    .locals 9
    .parameter "path"

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 1380
    :try_start_0
    iget-object v4, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sd_encryption"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 1382
    invoke-direct {p0}, Lcom/android/server/MountService;->getEncKey()Ljava/lang/String;

    move-result-object v2

    .line 1384
    .local v2, key:Ljava/lang/String;
    sget-boolean v4, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v4, :cond_0

    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encryptVolume: Encrypting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1386
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "volume"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "encrypt"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1404
    .end local v2           #key:Ljava/lang/String;
    :goto_0
    return v3

    .line 1391
    :catch_0
    move-exception v4

    .line 1395
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "volume"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "format"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1397
    :catch_1
    move-exception v1

    .line 1398
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 1399
    .local v0, code:I
    const/16 v3, 0x191

    if-ne v0, v3, :cond_2

    .line 1400
    const/4 v3, -0x2

    goto :goto_0

    .line 1401
    :cond_2
    const/16 v3, 0x193

    if-ne v0, v3, :cond_3

    .line 1402
    const/4 v3, -0x4

    goto :goto_0

    .line 1404
    :cond_3
    const/4 v3, -0x1

    goto :goto_0

    .line 1387
    .end local v0           #code:I
    .end local v1           #e:Lcom/android/server/NativeDaemonConnectorException;
    .restart local v2       #key:Ljava/lang/String;
    :catch_2
    move-exception v4

    goto :goto_0
.end method

.method private doGetShareMethodAvailable(Ljava/lang/String;)Z
    .locals 12
    .parameter "method"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1131
    :try_start_0
    iget-object v9, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "share status "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1137
    .local v5, rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1138
    .local v3, line:Ljava/lang/String;
    const-string v9, " "

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1139
    .local v6, tok:[Ljava/lang/String;
    array-length v9, v6

    const/4 v10, 0x3

    if-ge v9, v10, :cond_1

    .line 1140
    const-string v8, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Malformed response to share status "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #line:Ljava/lang/String;
    .end local v5           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #tok:[Ljava/lang/String;
    :cond_0
    :goto_0
    return v7

    .line 1132
    :catch_0
    move-exception v1

    .line 1133
    .local v1, ex:Lcom/android/server/NativeDaemonConnectorException;
    const-string v8, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to determine whether share method "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is available."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1146
    .end local v1           #ex:Lcom/android/server/NativeDaemonConnectorException;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #line:Ljava/lang/String;
    .restart local v5       #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6       #tok:[Ljava/lang/String;
    :cond_1
    const/4 v9, 0x0

    :try_start_1
    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 1151
    .local v0, code:I
    const/16 v9, 0xd2

    if-ne v0, v9, :cond_2

    .line 1152
    const/4 v9, 0x2

    aget-object v9, v6, v9

    const-string v10, "available"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v7, v8

    .line 1153
    goto :goto_0

    .line 1147
    .end local v0           #code:I
    :catch_1
    move-exception v4

    .line 1148
    .local v4, nfe:Ljava/lang/NumberFormatException;
    const-string v9, "MountService"

    const-string v10, "Error parsing code %s"

    new-array v8, v8, [Ljava/lang/Object;

    aget-object v11, v6, v7

    aput-object v11, v8, v7

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1156
    .end local v4           #nfe:Ljava/lang/NumberFormatException;
    .restart local v0       #code:I
    :cond_2
    const-string v9, "MountService"

    const-string v10, "Unexpected response code %d"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v7

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1160
    .end local v0           #code:I
    .end local v3           #line:Ljava/lang/String;
    .end local v6           #tok:[Ljava/lang/String;
    :cond_3
    const-string v8, "MountService"

    const-string v9, "Got an empty response"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doGetVolumeShared(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "path"
    .parameter "method"

    .prologue
    const/4 v2, 0x0

    .line 1412
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "volume"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "shared"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1418
    .local v0, event:Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v3

    const/16 v4, 0xd4

    if-ne v3, v4, :cond_0

    .line 1419
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "enabled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    .line 1421
    .end local v0           #event:Lcom/android/server/NativeDaemonEvent;
    :cond_0
    :goto_0
    return v2

    .line 1413
    :catch_0
    move-exception v1

    .line 1414
    .local v1, ex:Lcom/android/server/NativeDaemonConnectorException;
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read response to volume shared "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doMountVolume(Ljava/lang/String;)I
    .locals 14
    .parameter "path"

    .prologue
    .line 1193
    const/4 v6, 0x0

    .line 1194
    .local v6, rc:I
    const/4 v8, 0x0

    .line 1197
    .local v8, sd_encryption:Z
    :try_start_0
    iget-object v9, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "sd_encryption"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    const/4 v8, 0x1

    .line 1204
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1205
    .local v5, parent:Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {p0, v5}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "mounted"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1206
    invoke-direct {p0, v5}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v6

    .line 1207
    if-eqz v6, :cond_1

    .line 1208
    const-string v9, "MountService"

    const-string v10, "Failed to mount parent %s when trying to mount %s (%d)"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    const/4 v12, 0x1

    aput-object p1, v11, v12

    const/4 v12, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    .line 1277
    .end local v6           #rc:I
    .local v7, rc:I
    :goto_1
    return v7

    .line 1197
    .end local v5           #parent:Ljava/lang/String;
    .end local v7           #rc:I
    .restart local v6       #rc:I
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 1213
    .restart local v5       #parent:Ljava/lang/String;
    :cond_1
    sget-boolean v9, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v9, :cond_2

    const-string v9, "MountService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doMountVolume: Mouting "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    :cond_2
    :try_start_1
    const-string v3, "null"

    .line 1217
    .local v3, key:Ljava/lang/String;
    const-string v4, "null"

    .line 1219
    .local v4, old_key:Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 1220
    iget-object v9, p0, Lcom/android/server/MountService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v9}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v9

    sget-object v10, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v9, v10, :cond_4

    .line 1221
    iget-object v9, p0, Lcom/android/server/MountService;->mKeyStore:Landroid/security/KeyStore;

    const-string v10, "sd_encryption"

    invoke-virtual {v9, v10}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1222
    new-instance v4, Ljava/lang/String;

    .end local v4           #old_key:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/MountService;->mKeyStore:Landroid/security/KeyStore;

    const-string v10, "sd_encryption"

    invoke-virtual {v9, v10}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/lang/String;-><init>([B)V

    .line 1224
    .restart local v4       #old_key:Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lcom/android/server/MountService;->mKeyStore:Landroid/security/KeyStore;

    const-string v10, "sd_encryption_256"

    invoke-virtual {v9, v10}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1225
    new-instance v3, Ljava/lang/String;

    .end local v3           #key:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/MountService;->mKeyStore:Landroid/security/KeyStore;

    const-string v10, "sd_encryption_256"

    invoke-virtual {v9, v10}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/lang/String;-><init>([B)V

    .line 1237
    .restart local v3       #key:Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v11, "volume"

    const/4 v9, 0x5

    new-array v12, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v13, "mount_encrypted"

    aput-object v13, v12, v9

    const/4 v9, 0x1

    aput-object p1, v12, v9

    const/4 v9, 0x2

    aput-object v3, v12, v9

    const/4 v9, 0x3

    aput-object v4, v12, v9

    const/4 v13, 0x4

    if-eqz v8, :cond_6

    const-string v9, "on"

    :goto_2
    aput-object v9, v12, v13

    invoke-virtual {v10, v11, v12}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .end local v3           #key:Ljava/lang/String;
    .end local v4           #old_key:Ljava/lang/String;
    :cond_5
    :goto_3
    move v7, v6

    .line 1277
    .end local v6           #rc:I
    .restart local v7       #rc:I
    goto :goto_1

    .line 1237
    .end local v7           #rc:I
    .restart local v3       #key:Ljava/lang/String;
    .restart local v4       #old_key:Ljava/lang/String;
    .restart local v6       #rc:I
    :cond_6
    const-string v9, "off"
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1238
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #old_key:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1242
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v0, 0x0

    .line 1243
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 1244
    .local v1, code:I
    const/16 v9, 0x191

    if-ne v1, v9, :cond_7

    .line 1248
    const/4 v6, -0x2

    .line 1272
    :goto_4
    if-eqz v0, :cond_5

    .line 1273
    invoke-direct {p0, v0, p1}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1249
    :cond_7
    const/16 v9, 0x192

    if-ne v1, v9, :cond_9

    .line 1250
    sget-boolean v9, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v9, :cond_8

    const-string v9, "MountService"

    const-string v10, " updating volume state :: media nofs"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    :cond_8
    const-string v9, "nofs"

    invoke-direct {p0, p1, v9}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    const-string v0, "android.intent.action.MEDIA_NOFS"

    .line 1256
    const/4 v6, -0x3

    goto :goto_4

    .line 1257
    :cond_9
    const/16 v9, 0x193

    if-ne v1, v9, :cond_b

    .line 1258
    sget-boolean v9, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v9, :cond_a

    const-string v9, "MountService"

    const-string v10, "updating volume state media corrupt"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    :cond_a
    const-string v9, "unmountable"

    invoke-direct {p0, p1, v9}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    const-string v0, "android.intent.action.MEDIA_UNMOUNTABLE"

    .line 1264
    const/4 v6, -0x4

    goto :goto_4

    .line 1266
    :cond_b
    const/4 v6, -0x1

    goto :goto_4

    .line 1199
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #code:I
    .end local v2           #e:Lcom/android/server/NativeDaemonConnectorException;
    .end local v5           #parent:Ljava/lang/String;
    :catch_1
    move-exception v9

    goto/16 :goto_0
.end method

.method private doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11
    .parameter "path"
    .parameter "method"
    .parameter "enable"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 681
    const-string v3, "ums"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 682
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Method %s not supported"

    new-array v5, v10, [Ljava/lang/Object;

    aput-object p2, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 686
    :cond_0
    if-eqz p3, :cond_3

    .line 687
    sget-boolean v3, Lcom/android/server/MountService;->Share_SD_only:Z

    if-nez v3, :cond_2

    .line 688
    iget v3, p0, Lcom/android/server/MountService;->sharing:I

    if-nez v3, :cond_3

    .line 689
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 690
    const-string v3, "MountService"

    const-string v4, "Mount volume while sharing is false"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iput v9, p0, Lcom/android/server/MountService;->sharing:I

    .line 692
    const-string v3, "ums"

    invoke-direct {p0, v3, v8}, Lcom/android/server/MountService;->notifyShareAvailabilityChange(Ljava/lang/String;Z)V

    .line 743
    :cond_1
    :goto_0
    return-void

    .line 699
    :cond_2
    iget v3, p0, Lcom/android/server/MountService;->sharing:I

    if-nez v3, :cond_3

    .line 700
    const-string v3, "MountService"

    const-string v4, "Mount volume while sharing is false"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iput v9, p0, Lcom/android/server/MountService;->sharing:I

    .line 702
    const-string v3, "ums"

    invoke-direct {p0, v3, v8}, Lcom/android/server/MountService;->notifyShareAvailabilityChange(Ljava/lang/String;Z)V

    goto :goto_0

    .line 709
    :cond_3
    if-eqz p3, :cond_6

    .line 711
    :try_start_0
    const-string v1, "null"

    .line 712
    .local v1, key:Ljava/lang/String;
    const-string v2, "null"

    .line 713
    .local v2, old_key:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/MountService;->mKeyStore:Landroid/security/KeyStore;

    const-string v4, "sd_encryption"

    invoke-virtual {v3, v4}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 714
    new-instance v2, Ljava/lang/String;

    .end local v2           #old_key:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/MountService;->mKeyStore:Landroid/security/KeyStore;

    const-string v4, "sd_encryption"

    invoke-virtual {v3, v4}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 715
    .restart local v2       #old_key:Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/server/MountService;->mKeyStore:Landroid/security/KeyStore;

    const-string v4, "sd_encryption_256"

    invoke-virtual {v3, v4}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 716
    new-instance v1, Ljava/lang/String;

    .end local v1           #key:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/MountService;->mKeyStore:Landroid/security/KeyStore;

    const-string v4, "sd_encryption_256"

    invoke-virtual {v3, v4}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    .line 717
    .restart local v1       #key:Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "volume"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "share_encrypted"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    const/4 v6, 0x3

    aput-object v1, v5, v6

    const/4 v6, 0x4

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 721
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #old_key:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 722
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v3, "MountService"

    const-string v4, "Failed to share/unshare"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 723
    const-string v3, "MountService"

    const-string v4, "sharing = %d "

    new-array v5, v10, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/server/MountService;->sharing:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    sget-boolean v3, Lcom/android/server/MountService;->Share_SD_only:Z

    if-nez v3, :cond_8

    .line 725
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 726
    iget v3, p0, Lcom/android/server/MountService;->sharing:I

    if-nez v3, :cond_7

    .line 727
    iput v9, p0, Lcom/android/server/MountService;->sharing:I

    .line 728
    const-string v3, "ums"

    invoke-direct {p0, v3, v8}, Lcom/android/server/MountService;->notifyShareAvailabilityChange(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 719
    .end local v0           #e:Lcom/android/server/NativeDaemonConnectorException;
    :cond_6
    :try_start_1
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "volume"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "unshare"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 730
    .restart local v0       #e:Lcom/android/server/NativeDaemonConnectorException;
    :cond_7
    iput v9, p0, Lcom/android/server/MountService;->sharing:I

    goto/16 :goto_0

    .line 735
    :cond_8
    iget v3, p0, Lcom/android/server/MountService;->sharing:I

    if-nez v3, :cond_9

    .line 736
    iput v9, p0, Lcom/android/server/MountService;->sharing:I

    .line 737
    const-string v3, "ums"

    invoke-direct {p0, v3, v8}, Lcom/android/server/MountService;->notifyShareAvailabilityChange(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 739
    :cond_9
    iput v9, p0, Lcom/android/server/MountService;->sharing:I

    goto/16 :goto_0
.end method

.method private doUnmountVolume(Ljava/lang/String;ZZ)I
    .locals 9
    .parameter "path"
    .parameter "force"
    .parameter "removeEncryption"

    .prologue
    const/16 v3, 0x194

    const/4 v4, 0x0

    .line 1292
    invoke-virtual {p0, p1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "mounted_ro"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1334
    :goto_0
    return v3

    .line 1303
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->gc()V

    .line 1306
    iget-object v5, p0, Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1307
    sget-boolean v5, Lcom/android/server/MountService;->DEBUG_UNMOUNT:Z

    if-eqz v5, :cond_1

    const-string v5, "MountService"

    const-string v6, "Updating external media status on PackageManager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    :cond_1
    iget-object v5, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5, v4, v4}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    .line 1311
    :cond_2
    :try_start_0
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v5, "volume"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "unmount"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-direct {v0, v5, v6}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1312
    .local v0, cmd:Lcom/android/server/NativeDaemonConnector$Command;
    if-eqz p3, :cond_5

    .line 1313
    const-string v5, "force_and_revert"

    invoke-virtual {v0, v5}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1317
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v5, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;

    .line 1319
    iget-object v5, p0, Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1320
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1321
    :try_start_1
    iget-object v6, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 1322
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    move v3, v4

    .line 1324
    goto :goto_0

    .line 1314
    :cond_5
    if-eqz p2, :cond_3

    .line 1315
    :try_start_2
    const-string v5, "force"

    invoke-virtual {v0, v5}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1325
    .end local v0           #cmd:Lcom/android/server/NativeDaemonConnector$Command;
    :catch_0
    move-exception v2

    .line 1328
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 1329
    .local v1, code:I
    if-ne v1, v3, :cond_6

    .line 1330
    const/4 v3, -0x5

    goto :goto_0

    .line 1322
    .end local v1           #code:I
    .end local v2           #e:Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0       #cmd:Lcom/android/server/NativeDaemonConnector$Command;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1331
    .end local v0           #cmd:Lcom/android/server/NativeDaemonConnector$Command;
    .restart local v1       #code:I
    .restart local v2       #e:Lcom/android/server/NativeDaemonConnectorException;
    :cond_6
    const/16 v3, 0x195

    if-ne v1, v3, :cond_7

    .line 1332
    const/4 v3, -0x7

    goto :goto_0

    .line 1334
    :cond_7
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private findChilds(Ljava/lang/String;)[Ljava/lang/String;
    .locals 12
    .parameter "path"

    .prologue
    .line 2140
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumeMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    .line 2142
    .local v2, mntVol:Landroid/os/storage/StorageVolume;
    if-nez v2, :cond_0

    .line 2143
    const/4 v6, 0x0

    .line 2167
    :goto_0
    return-object v6

    .line 2145
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2146
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v7

    .line 2147
    :try_start_0
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 2148
    .local v5, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v5, :cond_3

    .line 2150
    :try_start_1
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageVolume;

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2148
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2153
    :cond_2
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageVolume;

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getLevelId()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageVolume;

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getLevelId()Ljava/lang/String;

    move-result-object v6

    const-string v10, "-"

    invoke-virtual {v6, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2155
    .local v3, parentLevel:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getLevelId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2156
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageVolume;

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 2158
    .end local v3           #parentLevel:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2159
    .local v0, ex:Ljava/lang/NullPointerException;
    :try_start_2
    const-string v8, "MountService"

    const-string v9, "The levelId of the storage %s is null"

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v6, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageVolume;

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2165
    .end local v0           #ex:Ljava/lang/NullPointerException;
    .end local v1           #i:I
    .end local v5           #size:I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .restart local v1       #i:I
    .restart local v5       #size:I
    :cond_3
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2167
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    goto/16 :goto_0

    .line 2161
    :catch_1
    move-exception v6

    goto :goto_2
.end method

.method private findParent(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "path"

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 1168
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumeMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    .line 1170
    .local v2, mntVol:Landroid/os/storage/StorageVolume;
    if-nez v2, :cond_0

    move-object v5, v6

    .line 1189
    :goto_0
    return-object v5

    .line 1174
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getLevelId()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getLevelId()Ljava/lang/String;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1175
    .local v3, parentLevel:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1176
    :try_start_1
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1177
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 1178
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageVolume;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getLevelId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1179
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageVolume;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    monitor-exit v7

    goto :goto_0

    .line 1181
    .end local v1           #i:I
    .end local v4           #size:I
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1182
    .end local v3           #parentLevel:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1183
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v5, "MountService"

    const-string v7, "The levelId of the storage %s is null"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #ex:Ljava/lang/NullPointerException;
    :goto_2
    move-object v5, v6

    .line 1189
    goto :goto_0

    .line 1177
    .restart local v1       #i:I
    .restart local v3       #parentLevel:Ljava/lang/String;
    .restart local v4       #size:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1181
    :cond_2
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 1185
    .end local v1           #i:I
    .end local v3           #parentLevel:Ljava/lang/String;
    .end local v4           #size:I
    :catch_1
    move-exception v5

    goto :goto_2
.end method

.method private getEncKey()Ljava/lang/String;
    .locals 12

    .prologue
    .line 1344
    iget-object v9, p0, Lcom/android/server/MountService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v9}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v9

    sget-object v10, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v9, v10, :cond_0

    .line 1345
    iget-object v9, p0, Lcom/android/server/MountService;->mKeyStore:Landroid/security/KeyStore;

    const-string v10, "sd_encryption_256"

    invoke-virtual {v9, v10}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1346
    new-instance v1, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/MountService;->mKeyStore:Landroid/security/KeyStore;

    const-string v10, "sd_encryption_256"

    invoke-virtual {v9, v10}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/lang/String;-><init>([B)V

    .line 1373
    :goto_0
    return-object v1

    .line 1352
    :cond_0
    :try_start_0
    const-string v9, "AES"

    invoke-static {v9}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v7

    .line 1353
    .local v7, skg:Ljavax/crypto/KeyGenerator;
    const-string v9, "SHA1PRNG"

    invoke-static {v9}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v8

    .line 1354
    .local v8, srng:Ljava/security/SecureRandom;
    const/16 v9, 0x100

    invoke-virtual {v7, v9, v8}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1359
    invoke-virtual {v7}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v6

    .line 1360
    .local v6, sk_x:Ljavax/crypto/SecretKey;
    invoke-interface {v6}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v4

    .line 1361
    .local v4, retKey_x:[B
    invoke-static {v4}, Landroid/security/SystemKeyStore;->toHexString([B)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/16 v11, 0x8

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1365
    .local v2, encKey_x:Ljava/lang/String;
    invoke-virtual {v7}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v5

    .line 1366
    .local v5, sk:Ljavax/crypto/SecretKey;
    invoke-interface {v5}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    .line 1370
    .local v3, retKey:[B
    invoke-static {v3}, Landroid/security/SystemKeyStore;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 1372
    .local v1, encKey:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/MountService;->mKeyStore:Landroid/security/KeyStore;

    const-string v10, "sd_encryption_256"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    goto :goto_0

    .line 1355
    .end local v1           #encKey:Ljava/lang/String;
    .end local v2           #encKey_x:Ljava/lang/String;
    .end local v3           #retKey:[B
    .end local v4           #retKey_x:[B
    .end local v5           #sk:Ljavax/crypto/SecretKey;
    .end local v6           #sk_x:Ljavax/crypto/SecretKey;
    .end local v7           #skg:Ljavax/crypto/KeyGenerator;
    .end local v8           #srng:Ljava/security/SecureRandom;
    :catch_0
    move-exception v0

    .line 1356
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getUmsEnabling()Z
    .locals 2

    .prologue
    .line 1823
    iget-object v1, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1824
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/MountService;->mUmsEnabling:Z

    monitor-exit v1

    return v0

    .line 1825
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initISO()I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 3455
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3456
    sget-boolean v3, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v3, :cond_0

    const-string v3, "MountService"

    const-string v4, "initISO"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3458
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "mountISO"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "initISO"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 3459
    const-string v3, "MountService"

    const-string v4, "initISO --"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3468
    :goto_0
    return v2

    .line 3461
    :catch_0
    move-exception v1

    .line 3462
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 3463
    .local v0, code:I
    const/16 v2, 0x191

    if-ne v0, v2, :cond_1

    .line 3464
    const/4 v2, -0x2

    goto :goto_0

    .line 3465
    :cond_1
    const/16 v2, 0x193

    if-ne v0, v2, :cond_2

    .line 3466
    const/4 v2, -0x4

    goto :goto_0

    .line 3468
    :cond_2
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z
    .locals 6
    .parameter "packageName"
    .parameter "callerUid"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2562
    const/16 v3, 0x3e8

    if-ne p2, v3, :cond_1

    .line 2577
    :cond_0
    :goto_0
    return v1

    .line 2566
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 2567
    goto :goto_0

    .line 2570
    :cond_2
    iget-object v3, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p2}, Landroid/os/UserId;->getUserId(I)I

    move-result v4

    invoke-virtual {v3, p1, v4}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    .line 2572
    .local v0, packageUid:I
    sget-boolean v3, Lcom/android/server/MountService;->DEBUG_OBB:Z

    if-eqz v3, :cond_3

    .line 2573
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", packageUid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", callerUid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2577
    :cond_3
    if-eq p2, v0, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private notifyISOStateChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "path"
    .parameter "state"

    .prologue
    .line 3447
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.MEDIA_ISO_MOUNTED"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3449
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "enable"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3450
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendStorageIntent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "enable"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3451
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3452
    return-void
.end method

.method private notifyShareAvailabilityChange(Ljava/lang/String;Z)V
    .locals 11
    .parameter "method"
    .parameter "avail"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1426
    const-string v5, "ums"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1427
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring unsupported share method {"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    :cond_0
    :goto_0
    return-void

    .line 1431
    :cond_1
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1432
    :try_start_0
    iput-boolean p2, p0, Lcom/android/server/MountService;->mUmsAvailable:Z

    .line 1433
    iget-object v5, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_2

    .line 1434
    iget-object v5, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountServiceBinderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1436
    .local v0, bl:Lcom/android/server/MountService$MountServiceBinderListener;
    :try_start_1
    iget-object v5, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    invoke-interface {v5, p2}, Landroid/os/storage/IMountServiceListener;->onUsbMassStorageConnectionChanged(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1433
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1437
    :catch_0
    move-exception v4

    .line 1438
    .local v4, rex:Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "MountService"

    const-string v7, "Listener dead"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    iget-object v5, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 1444
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v2           #i:I
    .end local v4           #rex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 1440
    .restart local v0       #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .restart local v2       #i:I
    :catch_1
    move-exception v1

    .line 1441
    .local v1, ex:Ljava/lang/Exception;
    :try_start_3
    const-string v5, "MountService"

    const-string v7, "Listener failed"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1444
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_2
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1446
    iget-boolean v5, p0, Lcom/android/server/MountService;->mBooted:Z

    if-ne v5, v10, :cond_4

    .line 1447
    invoke-direct {p0, p2}, Lcom/android/server/MountService;->sendUmsIntent(Z)V

    .line 1452
    :goto_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 1453
    .local v3, path:Ljava/lang/String;
    const-string v5, "MountService"

    const-string v6, "sharing = %d "

    new-array v7, v10, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/server/MountService;->sharing:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    iget v5, p0, Lcom/android/server/MountService;->sharing:I

    if-ne v5, v10, :cond_3

    .line 1455
    iput v9, p0, Lcom/android/server/MountService;->sharing:I

    .line 1456
    :cond_3
    if-nez p2, :cond_0

    iget v5, p0, Lcom/android/server/MountService;->sharing:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 1460
    iput v9, p0, Lcom/android/server/MountService;->sharing:I

    .line 1461
    new-instance v5, Lcom/android/server/MountService$4;

    invoke-direct {v5, p0}, Lcom/android/server/MountService$4;-><init>(Lcom/android/server/MountService;)V

    invoke-virtual {v5}, Lcom/android/server/MountService$4;->start()V

    goto :goto_0

    .line 1449
    .end local v3           #path:Ljava/lang/String;
    :cond_4
    iput-boolean p2, p0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    goto :goto_3
.end method

.method private notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 11
    .parameter "label"
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    const/4 v10, 0x7

    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1018
    invoke-virtual {p0, p2}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1019
    .local v3, vs:Ljava/lang/String;
    sget-boolean v6, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v6, :cond_0

    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notifyVolumeStateChanged::"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :cond_0
    const/4 v1, 0x0

    .line 1022
    .local v1, in:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 1024
    .local v0, action:Ljava/lang/String;
    if-ne p3, v10, :cond_2

    if-eq p4, p3, :cond_2

    .line 1025
    sget-boolean v6, Lcom/android/server/MountService;->LOCAL_LOGD:Z

    if-eqz v6, :cond_1

    const-string v6, "MountService"

    const-string v7, "Sending ACTION_MEDIA_UNSHARED intent"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    :cond_1
    const-string v6, "android.intent.action.MEDIA_UNSHARED"

    invoke-direct {p0, v6, p2}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    :cond_2
    const/4 v6, -0x1

    if-ne p4, v6, :cond_5

    .line 1123
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 1124
    invoke-direct {p0, v0, p2}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    :cond_4
    :goto_1
    return-void

    .line 1030
    :cond_5
    if-eqz p4, :cond_3

    .line 1032
    if-ne p4, v4, :cond_7

    .line 1037
    const-string v4, "bad_removal"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "nofs"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "unmountable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0}, Lcom/android/server/MountService;->getUmsEnabling()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1041
    sget-boolean v4, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v4, :cond_6

    const-string v4, "MountService"

    const-string v5, "updating volume state for media bad removal nofs and unmountable"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    :cond_6
    const-string v4, "unmounted"

    invoke-direct {p0, p2, v4}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    goto :goto_0

    .line 1045
    :cond_7
    if-eq p4, v9, :cond_3

    .line 1046
    const/4 v6, 0x3

    if-ne p4, v6, :cond_9

    .line 1047
    sget-boolean v4, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v4, :cond_8

    const-string v4, "MountService"

    const-string v5, "updating volume state checking"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    :cond_8
    const-string v4, "checking"

    invoke-direct {p0, p2, v4}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    const-string v0, "android.intent.action.MEDIA_CHECKING"

    goto :goto_0

    .line 1050
    :cond_9
    const/4 v6, 0x4

    if-ne p4, v6, :cond_b

    .line 1051
    sget-boolean v4, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v4, :cond_a

    const-string v4, "MountService"

    const-string v5, "updating volume state mounted"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    :cond_a
    const-string v4, "mounted"

    invoke-direct {p0, p2, v4}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    goto :goto_0

    .line 1054
    :cond_b
    const/16 v6, 0xa

    if-ne p4, v6, :cond_d

    .line 1055
    sget-boolean v5, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v5, :cond_c

    const-string v5, "MountService"

    const-string v6, "updating volume state mounted read-only"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    :cond_c
    const-string v5, "mounted_ro"

    invoke-direct {p0, p2, v5}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    new-instance v1, Landroid/content/Intent;

    .end local v1           #in:Landroid/content/Intent;
    const-string v5, "android.intent.action.MEDIA_MOUNTED"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1058
    .restart local v1       #in:Landroid/content/Intent;
    const-string v5, "read-only"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1059
    iget-object v4, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1060
    :cond_d
    const/4 v6, 0x5

    if-ne p4, v6, :cond_e

    .line 1061
    const-string v0, "android.intent.action.MEDIA_EJECT"

    goto/16 :goto_0

    .line 1062
    :cond_e
    const/4 v6, 0x6

    if-eq p4, v6, :cond_3

    .line 1063
    if-ne p4, v10, :cond_19

    .line 1064
    sget-boolean v6, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v6, :cond_f

    const-string v6, "MountService"

    const-string v7, "Updating volume state media mounted"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    :cond_f
    sget-boolean v6, Lcom/android/server/MountService;->Share_SD_only:Z

    if-nez v6, :cond_16

    .line 1066
    invoke-static {}, Landroid/os/Environment;->hasPhoneStorage()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "mounted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    move v2, v4

    .line 1067
    .local v2, is_ins_without_sdcard:Z
    :goto_2
    iget v6, p0, Lcom/android/server/MountService;->sharing:I

    if-nez v6, :cond_12

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    if-eqz v2, :cond_12

    .line 1068
    :cond_10
    const-string v6, "unmounted"

    invoke-direct {p0, p2, v6}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    const-string v6, "MountService"

    const-string v7, "Mount volume before notify shared"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    const-string v6, "shared"

    invoke-direct {p0, p2, v6}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    iput v9, p0, Lcom/android/server/MountService;->sharing:I

    .line 1072
    const-string v6, "MountService"

    const-string v7, "Shared sharing = %d "

    new-array v4, v4, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/server/MountService;->sharing:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    const/4 v0, 0x0

    .line 1074
    const-string v4, "ums"

    invoke-direct {p0, v4, v5}, Lcom/android/server/MountService;->notifyShareAvailabilityChange(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .end local v2           #is_ins_without_sdcard:Z
    :cond_11
    move v2, v5

    .line 1066
    goto :goto_2

    .line 1077
    .restart local v2       #is_ins_without_sdcard:Z
    :cond_12
    const-string v6, "unmounted"

    invoke-direct {p0, p2, v6}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    const-string v6, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-direct {p0, v6, p2}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    sget-boolean v6, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v6, :cond_13

    const-string v6, "MountService"

    const-string v7, "Updating media shared"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    :cond_13
    const-string v6, "shared"

    invoke-direct {p0, p2, v6}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    const-string v0, "android.intent.action.MEDIA_SHARED"

    .line 1083
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    if-eqz v2, :cond_15

    .line 1084
    :cond_14
    iput v9, p0, Lcom/android/server/MountService;->sharing:I

    .line 1085
    :cond_15
    const-string v6, "MountService"

    const-string v7, "Shared sharing = %d "

    new-array v4, v4, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/server/MountService;->sharing:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    sget-boolean v4, Lcom/android/server/MountService;->LOCAL_LOGD:Z

    if-eqz v4, :cond_3

    const-string v4, "MountService"

    const-string v5, "Sending ACTION_MEDIA_SHARED intent"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1089
    .end local v2           #is_ins_without_sdcard:Z
    :cond_16
    iget v6, p0, Lcom/android/server/MountService;->sharing:I

    if-nez v6, :cond_17

    .line 1090
    const-string v6, "unmounted"

    invoke-direct {p0, p2, v6}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    const-string v6, "MountService"

    const-string v7, "Mount volume before notify shared"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    const-string v6, "shared"

    invoke-direct {p0, p2, v6}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    iput v9, p0, Lcom/android/server/MountService;->sharing:I

    .line 1094
    const-string v6, "MountService"

    const-string v7, "Shared sharing = %d "

    new-array v4, v4, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/server/MountService;->sharing:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    const/4 v0, 0x0

    .line 1096
    const-string v4, "ums"

    invoke-direct {p0, v4, v5}, Lcom/android/server/MountService;->notifyShareAvailabilityChange(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1099
    :cond_17
    const-string v6, "unmounted"

    invoke-direct {p0, p2, v6}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    const-string v6, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-direct {p0, v6, p2}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    sget-boolean v6, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v6, :cond_18

    const-string v6, "MountService"

    const-string v7, "Updating media shared"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    :cond_18
    const-string v6, "shared"

    invoke-direct {p0, p2, v6}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    const-string v0, "android.intent.action.MEDIA_SHARED"

    .line 1105
    iput v9, p0, Lcom/android/server/MountService;->sharing:I

    .line 1106
    const-string v6, "MountService"

    const-string v7, "Shared sharing = %d "

    new-array v4, v4, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/server/MountService;->sharing:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    sget-boolean v4, Lcom/android/server/MountService;->LOCAL_LOGD:Z

    if-eqz v4, :cond_3

    const-string v4, "MountService"

    const-string v5, "Sending ACTION_MEDIA_SHARED intent"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1110
    :cond_19
    const/16 v5, 0x8

    if-ne p4, v5, :cond_1a

    .line 1111
    const-string v4, "MountService"

    const-string v5, "Live shared mounts not supported yet!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1113
    :cond_1a
    const/16 v5, 0x9

    if-ne p4, v5, :cond_1c

    .line 1114
    sget-boolean v5, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v5, :cond_1b

    const-string v5, "MountService"

    const-string v6, "updating volume state mounted-READ ONLY"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :cond_1b
    const-string v5, "mounted_ro"

    invoke-direct {p0, p2, v5}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    new-instance v1, Landroid/content/Intent;

    .end local v1           #in:Landroid/content/Intent;
    const-string v5, "android.intent.action.MEDIA_MOUNTED"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1117
    .restart local v1       #in:Landroid/content/Intent;
    const-string v5, "read-only"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1118
    iget-object v4, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1120
    :cond_1c
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled VolumeState {"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private prepareUnmount(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/storage/IMountShutdownObserver;)V
    .locals 11
    .parameter "path"
    .parameter "method"
    .parameter "force"
    .parameter "observer"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2176
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findChilds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2177
    .local v0, childs:[Ljava/lang/String;
    const-string v4, "MountService"

    const-string v5, "Prepare unmount %s with %d children"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object p1, v6, v9

    array-length v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 2179
    const-string v4, "MountService"

    const-string v5, "child of %s: %s"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object p1, v6, v9

    aget-object v7, v0, v1

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2180
    :cond_0
    array-length v4, v0

    if-lez v4, :cond_6

    .line 2181
    const/4 v1, 0x0

    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_6

    .line 2183
    aget-object v4, v0, v1

    invoke-virtual {p0, v4}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2181
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2186
    :cond_2
    aget-object v4, v0, v1

    invoke-direct {p0, v4, p2, p3, p4}, Lcom/android/server/MountService;->prepareUnmount(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/storage/IMountShutdownObserver;)V

    .line 2187
    aget-object v4, v0, v1

    iget-object v5, p0, Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2189
    const-string v4, "unmount"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2190
    const-string v4, "MountService"

    const-string v5, "send unmount message for %s"

    new-array v6, v8, [Ljava/lang/Object;

    aget-object v7, v0, v1

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    new-instance v3, Lcom/android/server/MountService$UnmountCallBack;

    aget-object v4, v0, v1

    invoke-direct {v3, p0, v4, p3, v9}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ZZ)V

    .line 2203
    .local v3, ucb:Lcom/android/server/MountService$UnmountCallBack;
    :goto_3
    iget-object v4, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 2192
    .end local v3           #ucb:Lcom/android/server/MountService$UnmountCallBack;
    :cond_3
    const-string v4, "ums"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2193
    const-string v4, "MountService"

    const-string v5, "send ums message for %s"

    new-array v6, v8, [Ljava/lang/Object;

    aget-object v7, v0, v1

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    new-instance v3, Lcom/android/server/MountService$UmsEnableCallBack;

    aget-object v4, v0, v1

    invoke-direct {v3, p0, v4, p2, v8}, Lcom/android/server/MountService$UmsEnableCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .restart local v3       #ucb:Lcom/android/server/MountService$UnmountCallBack;
    goto :goto_3

    .line 2195
    .end local v3           #ucb:Lcom/android/server/MountService$UnmountCallBack;
    :cond_4
    const-string v4, "shutdown"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2196
    const-string v4, "MountService"

    const-string v5, "send shutdown message for %s"

    new-array v6, v8, [Ljava/lang/Object;

    aget-object v7, v0, v1

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2197
    new-instance v3, Lcom/android/server/MountService$ShutdownCallBack;

    aget-object v4, v0, v1

    invoke-direct {v3, p0, v4, p4}, Lcom/android/server/MountService$ShutdownCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/IMountShutdownObserver;)V

    .restart local v3       #ucb:Lcom/android/server/MountService$UnmountCallBack;
    goto :goto_3

    .line 2199
    .end local v3           #ucb:Lcom/android/server/MountService$UnmountCallBack;
    :cond_5
    const-string v4, "MountService"

    const-string v5, "Unknown method %s when preparing unmount"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object p2, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    :cond_6
    :goto_4
    return-void

    .line 2205
    :cond_7
    aget-object v4, v0, v1

    invoke-direct {p0, v4, v8, v9}, Lcom/android/server/MountService;->doUnmountVolume(Ljava/lang/String;ZZ)I

    move-result v2

    .line 2206
    .local v2, rc:I
    if-eqz v2, :cond_8

    .line 2207
    const-string v4, "MountService"

    const-string v5, "Failed to unmount child %s (%d)"

    new-array v6, v10, [Ljava/lang/Object;

    aget-object v7, v0, v1

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2211
    :cond_8
    const-string v4, "unmount"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2213
    const-string v4, "ums"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2214
    const-string v4, "MountService"

    const-string v5, "enable ums for child %s"

    new-array v6, v8, [Ljava/lang/Object;

    aget-object v7, v0, v1

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    aget-object v4, v0, v1

    invoke-direct {p0, v4, p2, v8}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 2216
    :cond_9
    const-string v4, "shutdown"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2217
    const-string v4, "MountService"

    const-string v5, "shutdown complete for child %s"

    new-array v6, v8, [Ljava/lang/Object;

    aget-object v7, v0, v1

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2220
    :cond_a
    const-string v4, "MountService"

    const-string v5, "Unknown method %s when preparing unmount"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object p2, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private readStorageList()V
    .locals 29

    .prologue
    .line 1566
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    .line 1568
    .local v24, resources:Landroid/content/res/Resources;
    const v18, 0x10f000c

    .line 1569
    .local v18, id:I
    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v21

    .line 1570
    .local v21, parser:Landroid/content/res/XmlResourceParser;
    invoke-static/range {v21 .. v21}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v13

    .line 1573
    .local v13, attrs:Landroid/util/AttributeSet;
    :try_start_0
    const-string v11, "StorageList"

    move-object/from16 v0, v21

    invoke-static {v0, v11}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1575
    :cond_0
    :goto_0
    invoke-static/range {v21 .. v21}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1577
    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v16

    .line 1578
    .local v16, element:Ljava/lang/String;
    if-nez v16, :cond_1

    .line 1645
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 1646
    .local v19, length:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    .line 1647
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/storage/StorageVolume;

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    .line 1646
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 1580
    .end local v17           #i:I
    .end local v19           #length:I
    :cond_1
    :try_start_1
    const-string v11, "storage"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1581
    sget-object v11, Lcom/android/internal/R$styleable;->Storage:[I

    move-object/from16 v0, v24

    invoke-virtual {v0, v13, v11}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 1584
    .local v12, a:Landroid/content/res/TypedArray;
    const/4 v11, 0x0

    invoke-virtual {v12, v11}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v22

    .line 1586
    .local v22, path:Ljava/lang/CharSequence;
    const/4 v11, 0x1

    const/16 v25, -0x1

    move/from16 v0, v25

    invoke-virtual {v12, v11, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 1588
    .local v4, descriptionId:I
    const/4 v11, 0x1

    invoke-virtual {v12, v11}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 1590
    .local v14, description:Ljava/lang/CharSequence;
    const/4 v11, 0x2

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v12, v11, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v23

    .line 1592
    .local v23, primary:Z
    const/4 v11, 0x3

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v12, v11, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 1594
    .local v5, removable:Z
    const/4 v11, 0x4

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v12, v11, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 1596
    .local v6, emulated:Z
    const/4 v11, 0x5

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v12, v11, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 1598
    .local v7, mtpReserve:I
    const/16 v11, 0x8

    invoke-virtual {v12, v11}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    .line 1600
    .local v20, levelId:Ljava/lang/CharSequence;
    const/4 v11, 0x6

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v12, v11, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 1603
    .local v8, allowMassStorage:Z
    const/4 v11, 0x7

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v12, v11, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    int-to-long v0, v11

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x400

    mul-long v25, v25, v27

    const-wide/16 v27, 0x400

    mul-long v9, v25, v27

    .line 1605
    .local v9, maxFileSize:J
    if-nez v20, :cond_2

    .line 1606
    const-string v20, "0"

    .line 1608
    :cond_2
    const-string v11, "MountService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "got storage path: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " description: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " primary: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " removable: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " emulated: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " mtpReserve: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " levelId: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " allowMassStorage: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " maxFileSize: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    if-eqz v22, :cond_3

    if-nez v14, :cond_4

    .line 1615
    :cond_3
    const-string v11, "MountService"

    const-string v25, "path or description is null in readStorageList"

    move-object/from16 v0, v25

    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    :goto_2
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1639
    .end local v4           #descriptionId:I
    .end local v5           #removable:Z
    .end local v6           #emulated:Z
    .end local v7           #mtpReserve:I
    .end local v8           #allowMassStorage:Z
    .end local v9           #maxFileSize:J
    .end local v12           #a:Landroid/content/res/TypedArray;
    .end local v14           #description:Ljava/lang/CharSequence;
    .end local v16           #element:Ljava/lang/String;
    .end local v20           #levelId:Ljava/lang/CharSequence;
    .end local v22           #path:Ljava/lang/CharSequence;
    .end local v23           #primary:Z
    :catch_0
    move-exception v15

    .line 1640
    .local v15, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    new-instance v11, Ljava/lang/RuntimeException;

    invoke-direct {v11, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1645
    .end local v15           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v11

    move-object/from16 v25, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 1646
    .restart local v19       #length:I
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_8

    .line 1647
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/storage/StorageVolume;

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    .line 1646
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 1617
    .end local v17           #i:I
    .end local v19           #length:I
    .restart local v4       #descriptionId:I
    .restart local v5       #removable:Z
    .restart local v6       #emulated:Z
    .restart local v7       #mtpReserve:I
    .restart local v8       #allowMassStorage:Z
    .restart local v9       #maxFileSize:J
    .restart local v12       #a:Landroid/content/res/TypedArray;
    .restart local v14       #description:Ljava/lang/CharSequence;
    .restart local v16       #element:Ljava/lang/String;
    .restart local v20       #levelId:Ljava/lang/CharSequence;
    .restart local v22       #path:Ljava/lang/CharSequence;
    .restart local v23       #primary:Z
    :cond_4
    :try_start_3
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1618
    .local v3, pathString:Ljava/lang/String;
    new-instance v2, Landroid/os/storage/StorageVolume;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v2 .. v11}, Landroid/os/storage/StorageVolume;-><init>(Ljava/lang/String;IZZIZJLjava/lang/String;)V

    .line 1621
    .local v2, volume:Landroid/os/storage/StorageVolume;
    if-eqz v23, :cond_5

    .line 1622
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    if-nez v11, :cond_6

    .line 1623
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    .line 1628
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    if-ne v11, v2, :cond_7

    .line 1630
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v11, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1634
    :goto_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService;->mVolumeMap:Ljava/util/HashMap;

    invoke-virtual {v11, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 1641
    .end local v2           #volume:Landroid/os/storage/StorageVolume;
    .end local v3           #pathString:Ljava/lang/String;
    .end local v4           #descriptionId:I
    .end local v5           #removable:Z
    .end local v6           #emulated:Z
    .end local v7           #mtpReserve:I
    .end local v8           #allowMassStorage:Z
    .end local v9           #maxFileSize:J
    .end local v12           #a:Landroid/content/res/TypedArray;
    .end local v14           #description:Ljava/lang/CharSequence;
    .end local v16           #element:Ljava/lang/String;
    .end local v20           #levelId:Ljava/lang/CharSequence;
    .end local v22           #path:Ljava/lang/CharSequence;
    .end local v23           #primary:Z
    :catch_1
    move-exception v15

    .line 1642
    .local v15, e:Ljava/io/IOException;
    :try_start_4
    new-instance v11, Ljava/lang/RuntimeException;

    invoke-direct {v11, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1625
    .end local v15           #e:Ljava/io/IOException;
    .restart local v2       #volume:Landroid/os/storage/StorageVolume;
    .restart local v3       #pathString:Ljava/lang/String;
    .restart local v4       #descriptionId:I
    .restart local v5       #removable:Z
    .restart local v6       #emulated:Z
    .restart local v7       #mtpReserve:I
    .restart local v8       #allowMassStorage:Z
    .restart local v9       #maxFileSize:J
    .restart local v12       #a:Landroid/content/res/TypedArray;
    .restart local v14       #description:Ljava/lang/CharSequence;
    .restart local v16       #element:Ljava/lang/String;
    .restart local v20       #levelId:Ljava/lang/CharSequence;
    .restart local v22       #path:Ljava/lang/CharSequence;
    .restart local v23       #primary:Z
    :cond_6
    :try_start_5
    const-string v11, "MountService"

    const-string v25, "multiple primary volumes in storage list"

    move-object/from16 v0, v25

    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1632
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_5

    .line 1649
    .end local v2           #volume:Landroid/os/storage/StorageVolume;
    .end local v3           #pathString:Ljava/lang/String;
    .end local v4           #descriptionId:I
    .end local v5           #removable:Z
    .end local v6           #emulated:Z
    .end local v7           #mtpReserve:I
    .end local v8           #allowMassStorage:Z
    .end local v9           #maxFileSize:J
    .end local v12           #a:Landroid/content/res/TypedArray;
    .end local v14           #description:Ljava/lang/CharSequence;
    .end local v16           #element:Ljava/lang/String;
    .end local v20           #levelId:Ljava/lang/CharSequence;
    .end local v22           #path:Ljava/lang/CharSequence;
    .end local v23           #primary:Z
    .restart local v17       #i:I
    .restart local v19       #length:I
    :cond_8
    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1645
    throw v25

    .line 1649
    .restart local v16       #element:Ljava/lang/String;
    :cond_9
    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1651
    return-void
.end method

.method private removeObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    .locals 4
    .parameter "obbState"

    .prologue
    .line 2840
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2841
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2842
    .local v1, obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    if-eqz v1, :cond_1

    .line 2843
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2844
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->unlink()V

    .line 2846
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2847
    iget-object v2, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2851
    :cond_1
    iget-object v2, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2852
    return-void
.end method

.method private sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "action"
    .parameter "path"

    .prologue
    .line 1536
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1538
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "storage_volume"

    iget-object v1, p0, Lcom/android/server/MountService;->mVolumeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1539
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1540
    const-string v1, "sender"

    const-string v2, "system"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1541
    iget-boolean v1, p0, Lcom/android/server/MountService;->mBootTimeMount:Z

    if-eqz v1, :cond_0

    .line 1542
    const-string v1, "Boot"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1543
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/MountService;->mBootTimeMount:Z

    .line 1546
    :cond_0
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendStorageIntent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1548
    return-void
.end method

.method private sendUmsIntent(Z)V
    .locals 3
    .parameter "c"

    .prologue
    .line 1551
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v0, "android.intent.action.UMS_CONNECTED"

    :goto_0
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1553
    return-void

    .line 1551
    :cond_0
    const-string v0, "android.intent.action.UMS_DISCONNECTED"

    goto :goto_0
.end method

.method private setUmsEnabling(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 1829
    iget-object v1, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1830
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/MountService;->mUmsEnabling:Z

    .line 1831
    monitor-exit v1

    .line 1832
    return-void

    .line 1831
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "path"
    .parameter "state"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 747
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    monitor-enter v6

    .line 748
    :try_start_0
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v5, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 749
    .local v3, oldState:Ljava/lang/String;
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 750
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 751
    const-string v5, "MountService"

    const-string v6, "Duplicate state transition (%s -> %s) for %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p2, v7, v8

    aput-object p2, v7, v9

    const/4 v8, 0x2

    aput-object p1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :goto_0
    return-void

    .line 749
    .end local v3           #oldState:Ljava/lang/String;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 756
    .restart local v3       #oldState:Ljava/lang/String;
    :cond_0
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "volume state changed for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget-object v5, p0, Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 760
    iget-boolean v5, p0, Lcom/android/server/MountService;->mEmulateExternalStorage:Z

    if-nez v5, :cond_1

    .line 761
    const-string v5, "unmounted"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 762
    iget-object v5, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5, v8, v8}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    .line 769
    iget-object v5, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v6, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v7, 0x5

    invoke-virtual {v6, v7, p1}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 777
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 778
    :try_start_2
    iget-object v5, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, i:I
    :goto_2
    if-ltz v2, :cond_5

    .line 779
    iget-object v5, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountServiceBinderListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 781
    .local v0, bl:Lcom/android/server/MountService$MountServiceBinderListener;
    :try_start_3
    iget-object v5, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    invoke-interface {v5, p1, v3, p2}, Landroid/os/storage/IMountServiceListener;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 778
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 771
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v2           #i:I
    :cond_2
    const-string v5, "mounted"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "mounted_ro"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 772
    :cond_3
    sget-boolean v5, Lcom/android/server/MountService;->DEBUG_UNMOUNT:Z

    if-eqz v5, :cond_4

    const-string v5, "MountService"

    const-string v6, "Updating external media status on PackageManager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :cond_4
    iget-object v5, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5, v9, v8}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    goto :goto_1

    .line 782
    .restart local v0       #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .restart local v2       #i:I
    :catch_0
    move-exception v4

    .line 783
    .local v4, rex:Landroid/os/RemoteException;
    :try_start_4
    const-string v5, "MountService"

    const-string v7, "Listener dead"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-object v5, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 789
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v2           #i:I
    .end local v4           #rex:Landroid/os/RemoteException;
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .line 785
    .restart local v0       #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .restart local v2       #i:I
    :catch_1
    move-exception v1

    .line 786
    .local v1, ex:Ljava/lang/Exception;
    :try_start_5
    const-string v5, "MountService"

    const-string v7, "Listener failed"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 789
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0
.end method

.method private validatePermission(Ljava/lang/String;)V
    .locals 4
    .parameter "perm"

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1557
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires %s permission"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1559
    :cond_0
    return-void
.end method

.method private waitForLatch(Ljava/util/concurrent/CountDownLatch;)V
    .locals 4
    .parameter "latch"

    .prologue
    .line 516
    if-nez p1, :cond_1

    .line 523
    :goto_0
    return-void

    .line 525
    :cond_0
    :try_start_0
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " still waiting for MountService ready..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_1
    :goto_1
    const-wide/16 v1, 0x1388

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 528
    :catch_0
    move-exception v0

    .line 529
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "MountService"

    const-string v2, "Interrupt while waiting for MountService to be ready."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private waitForReady()V
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;)V

    .line 513
    return-void
.end method

.method private waitForUmsProceeding()V
    .locals 4

    .prologue
    .line 1836
    iget-object v0, p0, Lcom/android/server/MountService;->mUmsProceedLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1838
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/MountService;->mUmsProceeding:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1840
    :try_start_1
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is waiting for Ums proceeding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    iget-object v0, p0, Lcom/android/server/MountService;->mUmsCond:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v1, 0x3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1843
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1847
    :cond_0
    :try_start_2
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is proceeding Ums now"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/MountService;->mUmsProceeding:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1850
    iget-object v0, p0, Lcom/android/server/MountService;->mUmsProceedLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1852
    return-void

    .line 1850
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/MountService;->mUmsProceedLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private warnOnNotMounted()V
    .locals 2

    .prologue
    .line 2294
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2295
    const-string v0, "MountService"

    const-string v1, "getSecureContainerList() called when storage not mounted"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2297
    :cond_0
    return-void
.end method


# virtual methods
.method public changeEncryptionPassword(Ljava/lang/String;)I
    .locals 7
    .parameter "password"

    .prologue
    .line 2735
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2736
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "password cannot be empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2739
    :cond_0
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2742
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2744
    sget-boolean v2, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v2, :cond_1

    .line 2745
    const-string v2, "MountService"

    const-string v3, "changing encryption password..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2750
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "changepw"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 2751
    .local v1, event:Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2754
    .end local v1           #event:Lcom/android/server/NativeDaemonEvent;
    :goto_0
    return v2

    .line 2752
    :catch_0
    move-exception v0

    .line 2754
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v2

    goto :goto_0
.end method

.method public createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I
    .locals 7
    .parameter "id"
    .parameter "sizeMb"
    .parameter "fstype"
    .parameter "key"
    .parameter "ownerUid"
    .parameter "external"

    .prologue
    .line 2314
    const-string v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2315
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2316
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2318
    const/4 v1, 0x0

    .line 2320
    .local v1, rc:I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "asec"

    const/4 v2, 0x7

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v6, "create"

    aput-object v6, v5, v2

    const/4 v2, 0x1

    aput-object p1, v5, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x3

    aput-object p3, v5, v2

    const/4 v2, 0x4

    aput-object p4, v5, v2

    const/4 v2, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x6

    if-eqz p6, :cond_1

    const-string v2, "1"

    :goto_0
    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2326
    :goto_1
    if-nez v1, :cond_0

    .line 2327
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v3

    .line 2328
    :try_start_1
    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2329
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2331
    :cond_0
    return v1

    .line 2320
    :cond_1
    :try_start_2
    const-string v2, "0"
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2322
    :catch_0
    move-exception v0

    .line 2323
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_1

    .line 2329
    .end local v0           #e:Lcom/android/server/NativeDaemonConnectorException;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public decryptStorage(Ljava/lang/String;)I
    .locals 8
    .parameter "password"

    .prologue
    .line 2671
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2672
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "password cannot be empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2675
    :cond_0
    iget-object v3, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.CRYPT_KEEPER"

    const-string v5, "no permission to access the crypt keeper"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2678
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2680
    sget-boolean v3, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v3, :cond_1

    .line 2681
    const-string v3, "MountService"

    const-string v4, "decrypting storage..."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2686
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "cryptfs"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "checkpw"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 2688
    .local v2, event:Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2689
    .local v0, code:I
    if-nez v0, :cond_2

    .line 2692
    iget-object v3, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/MountService$5;

    invoke-direct {v4, p0}, Lcom/android/server/MountService$5;-><init>(Lcom/android/server/MountService;)V

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2706
    .end local v0           #code:I
    .end local v2           #event:Lcom/android/server/NativeDaemonEvent;
    :cond_2
    :goto_0
    return v0

    .line 2704
    :catch_0
    move-exception v1

    .line 2706
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    goto :goto_0
.end method

.method public destroySecureContainer(Ljava/lang/String;Z)I
    .locals 8
    .parameter "id"
    .parameter "force"

    .prologue
    .line 2369
    const-string v4, "android.permission.ASEC_DESTROY"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2370
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2371
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2379
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    .line 2381
    const/4 v3, 0x0

    .line 2383
    .local v3, rc:I
    :try_start_0
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "destroy"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-direct {v0, v4, v5}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2384
    .local v0, cmd:Lcom/android/server/NativeDaemonConnector$Command;
    if-eqz p2, :cond_0

    .line 2385
    const-string v4, "force"

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2387
    :cond_0
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2397
    .end local v0           #cmd:Lcom/android/server/NativeDaemonConnector$Command;
    :goto_0
    if-nez v3, :cond_2

    .line 2398
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    .line 2399
    :try_start_1
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2400
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2402
    :cond_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2405
    :cond_2
    return v3

    .line 2388
    :catch_0
    move-exception v2

    .line 2389
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 2390
    .local v1, code:I
    const/16 v4, 0x195

    if-ne v1, v4, :cond_3

    .line 2391
    const/4 v3, -0x7

    goto :goto_0

    .line 2393
    :cond_3
    const/4 v3, -0x1

    goto :goto_0

    .line 2402
    .end local v1           #code:I
    .end local v2           #e:Lcom/android/server/NativeDaemonConnectorException;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 3283
    iget-object v10, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.DUMP"

    invoke-virtual {v10, v11}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_0

    .line 3284
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission Denial: can\'t dump ActivityManager from from pid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " without permission "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "android.permission.DUMP"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3329
    :goto_0
    return-void

    .line 3290
    :cond_0
    iget-object v11, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    monitor-enter v11

    .line 3291
    :try_start_0
    const-string v10, "  mObbMounts:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3293
    iget-object v10, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3294
    .local v1, binders:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 3295
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3296
    .local v2, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    const-string v10, "    Key="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/IBinder;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3297
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3298
    .local v8, obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/MountService$ObbState;

    .line 3299
    .local v7, obbState:Lcom/android/server/MountService$ObbState;
    const-string v10, "      "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/MountService$ObbState;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 3311
    .end local v1           #binders:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    .end local v2           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #obbState:Lcom/android/server/MountService$ObbState;
    .end local v8           #obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 3303
    .restart local v1       #binders:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    :cond_2
    :try_start_1
    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3304
    const-string v10, "  mObbPathToStateMap:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3305
    iget-object v10, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 3306
    .local v6, maps:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;>;"
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 3307
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3308
    .local v3, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;"
    const-string v10, "    "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3309
    const-string v10, " -> "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/MountService$ObbState;

    invoke-virtual {v10}, Lcom/android/server/MountService$ObbState;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 3311
    .end local v3           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;"
    :cond_3
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3313
    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3315
    iget-object v11, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v11

    .line 3316
    :try_start_2
    const-string v10, "  mVolumes:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3318
    iget-object v10, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3319
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    if-ge v4, v0, :cond_4

    .line 3320
    iget-object v10, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/storage/StorageVolume;

    .line 3321
    .local v9, v:Landroid/os/storage/StorageVolume;
    const-string v10, "    "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3322
    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3319
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 3324
    .end local v9           #v:Landroid/os/storage/StorageVolume;
    :cond_4
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3326
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3327
    const-string v10, "  mConnection:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3328
    iget-object v10, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v10, p1, p2, p3}, Lcom/android/server/NativeDaemonConnector;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3324
    .end local v0           #N:I
    .end local v4           #i:I
    :catchall_1
    move-exception v10

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v10
.end method

.method public enableModemLink()I
    .locals 4

    .prologue
    .line 3377
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/MountService;->setMountISOEnabled(Z)I

    move-result v0

    .line 3378
    .local v0, rc:I
    if-eqz v0, :cond_0

    .line 3379
    const-string v1, "MountService"

    const-string v2, "Cannot mount CDROM to PC, still enable Modem Link"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3380
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.android.startML"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3383
    :cond_0
    return v0
.end method

.method public encryptStorage(Ljava/lang/String;)I
    .locals 7
    .parameter "password"

    .prologue
    const/4 v1, 0x0

    .line 2711
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2712
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "password cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2715
    :cond_0
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2718
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2720
    sget-boolean v2, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v2, :cond_1

    .line 2721
    const-string v2, "MountService"

    const-string v3, "encrypting storage..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2725
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "enablecrypto"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "inplace"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2731
    :goto_0
    return v1

    .line 2726
    :catch_0
    move-exception v0

    .line 2728
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    goto :goto_0
.end method

.method public finalizeSecureContainer(Ljava/lang/String;)I
    .locals 7
    .parameter "id"

    .prologue
    .line 2335
    const-string v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2336
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2338
    const/4 v1, 0x0

    .line 2340
    .local v1, rc:I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "asec"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "finalize"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2348
    :goto_0
    return v1

    .line 2345
    :catch_0
    move-exception v0

    .line 2346
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public finishMediaUpdate()V
    .locals 2

    .prologue
    .line 2558
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2559
    return-void
.end method

.method public fixPermissionsSecureContainer(Ljava/lang/String;ILjava/lang/String;)I
    .locals 7
    .parameter "id"
    .parameter "gid"
    .parameter "filename"

    .prologue
    .line 2352
    const-string v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2353
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2355
    const/4 v1, 0x0

    .line 2357
    .local v1, rc:I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "asec"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "fixperms"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2365
    :goto_0
    return v1

    .line 2362
    :catch_0
    move-exception v0

    .line 2363
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public formatVolume(Ljava/lang/String;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 2261
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2262
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2264
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doFormatVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getEncryptionState()I
    .locals 8

    .prologue
    const/4 v2, -0x1

    .line 2649
    iget-object v3, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.CRYPT_KEEPER"

    const-string v5, "no permission to access the crypt keeper"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2652
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2656
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "cryptfs"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "cryptocomplete"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 2657
    .local v1, event:Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 2665
    .end local v1           #event:Lcom/android/server/NativeDaemonEvent;
    :goto_0
    return v2

    .line 2658
    :catch_0
    move-exception v0

    .line 2660
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "MountService"

    const-string v4, "Unable to parse result from cryptfs cryptocomplete"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2662
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 2664
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v3, "MountService"

    const-string v4, "Error in communicating with cryptfs in validating"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "filename"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2581
    if-nez p1, :cond_0

    .line 2582
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "filename cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2585
    :cond_0
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2586
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2590
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "obb"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "path"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 2591
    .local v2, event:Lcom/android/server/NativeDaemonEvent;
    const/16 v3, 0xd3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 2592
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2596
    .end local v2           #event:Lcom/android/server/NativeDaemonEvent;
    :goto_0
    return-object v3

    .line 2593
    :catch_0
    move-exception v1

    .line 2594
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2595
    .local v0, code:I
    const/16 v3, 0x196

    if-ne v0, v3, :cond_1

    .line 2596
    const/4 v3, 0x0

    goto :goto_0

    .line 2598
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unexpected response code %d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "id"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2537
    const-string v3, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2538
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2539
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2543
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "fspath"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 2544
    .local v2, event:Lcom/android/server/NativeDaemonEvent;
    const/16 v3, 0xd3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 2545
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2550
    .end local v2           #event:Lcom/android/server/NativeDaemonEvent;
    :goto_0
    return-object v3

    .line 2546
    :catch_0
    move-exception v1

    .line 2547
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2548
    .local v0, code:I
    const/16 v3, 0x196

    if-ne v0, v3, :cond_0

    .line 2549
    const-string v3, "MountService"

    const-string v4, "Container \'%s\' not found"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2550
    const/4 v3, 0x0

    goto :goto_0

    .line 2552
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unexpected response code %d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getSecureContainerList()[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2300
    const-string v1, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2301
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2302
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2305
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "asec"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "list"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    const/16 v2, 0x6f

    invoke-static {v1, v2}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2308
    :goto_0
    return-object v1

    .line 2307
    :catch_0
    move-exception v0

    .line 2308
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    new-array v1, v6, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "id"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2516
    const-string v3, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2517
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2518
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2522
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "path"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 2523
    .local v2, event:Lcom/android/server/NativeDaemonEvent;
    const/16 v3, 0xd3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 2524
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2529
    .end local v2           #event:Lcom/android/server/NativeDaemonEvent;
    :goto_0
    return-object v3

    .line 2525
    :catch_0
    move-exception v1

    .line 2526
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2527
    .local v0, code:I
    const/16 v3, 0x196

    if-ne v0, v3, :cond_0

    .line 2528
    const-string v3, "MountService"

    const-string v4, "Container \'%s\' not found"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2529
    const/4 v3, 0x0

    goto :goto_0

    .line 2531
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unexpected response code %d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getStorageUsers(Ljava/lang/String;)[I
    .locals 12
    .parameter "path"

    .prologue
    const/4 v11, 0x0

    .line 2268
    const-string v6, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v6}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2269
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2271
    :try_start_0
    iget-object v6, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v7, "storage"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "users"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v6

    const/16 v7, 0x70

    invoke-static {v6, v7}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v4

    .line 2276
    .local v4, r:[Ljava/lang/String;
    array-length v6, v4

    new-array v0, v6, [I

    .line 2277
    .local v0, data:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v4

    if-ge v2, v6, :cond_0

    .line 2278
    aget-object v6, v4, v2

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 2280
    .local v5, tok:[Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_1
    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v0, v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2277
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2281
    :catch_0
    move-exception v3

    .line 2282
    .local v3, nfe:Ljava/lang/NumberFormatException;
    :try_start_2
    const-string v6, "MountService"

    const-string v7, "Error parsing pid %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-object v10, v5, v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    const/4 v6, 0x0

    new-array v0, v6, [I
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2289
    .end local v0           #data:[I
    .end local v2           #i:I
    .end local v3           #nfe:Ljava/lang/NumberFormatException;
    .end local v4           #r:[Ljava/lang/String;
    .end local v5           #tok:[Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v0

    .line 2287
    :catch_1
    move-exception v1

    .line 2288
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v6, "MountService"

    const-string v7, "Failed to retrieve storage users list"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2289
    new-array v0, v11, [I

    goto :goto_1
.end method

.method public getVolumeList()[Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 2793
    iget-object v4, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2794
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2795
    .local v2, size:I
    new-array v1, v2, [Landroid/os/Parcelable;

    .line 2796
    .local v1, result:[Landroid/os/Parcelable;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 2797
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    aput-object v3, v1, v0

    .line 2796
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2799
    :cond_0
    monitor-exit v4

    return-object v1

    .line 2800
    .end local v0           #i:I
    .end local v1           #result:[Landroid/os/Parcelable;
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "mountPoint"

    .prologue
    .line 2109
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 2110
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2111
    .local v0, state:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2112
    const-string v1, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVolumeState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): Unknown volume"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    const-string v1, "vold.encrypt_progress"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 2114
    const-string v0, "removed"

    .line 2120
    :cond_0
    monitor-exit v2

    return-object v0

    .line 2116
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 2121
    .end local v0           #state:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isExternalStorageEmulated()Z
    .locals 1

    .prologue
    .line 2125
    iget-boolean v0, p0, Lcom/android/server/MountService;->mEmulateExternalStorage:Z

    return v0
.end method

.method public isObbMounted(Ljava/lang/String;)Z
    .locals 2
    .parameter "filename"

    .prologue
    .line 2604
    if-nez p1, :cond_0

    .line 2605
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "filename cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2608
    :cond_0
    iget-object v1, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    monitor-enter v1

    .line 2609
    :try_start_0
    iget-object v0, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2610
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isSdcardRestricted()Z
    .locals 2

    .prologue
    .line 3497
    const-string v0, "service.mount.restrict"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSecureContainerMounted(Ljava/lang/String;)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 2481
    const-string v0, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2482
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2483
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2485
    iget-object v1, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v1

    .line 2486
    :try_start_0
    iget-object v0, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2487
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isUsbMassStorageConnected()Z
    .locals 2

    .prologue
    .line 1869
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1871
    invoke-direct {p0}, Lcom/android/server/MountService;->getUmsEnabling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1872
    const/4 v0, 0x1

    .line 1875
    :goto_0
    return v0

    .line 1874
    :cond_0
    iget-object v1, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1875
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/MountService;->mUmsAvailable:Z

    monitor-exit v1

    goto :goto_0

    .line 1876
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isUsbMassStorageEnabled()Z
    .locals 2

    .prologue
    .line 2101
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2102
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ums"

    invoke-direct {p0, v0, v1}, Lcom/android/server/MountService;->doGetVolumeShared(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public monitor()V
    .locals 1

    .prologue
    .line 3333
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    if-eqz v0, :cond_0

    .line 3334
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnector;->monitor()V

    .line 3336
    :cond_0
    return-void
.end method

.method public mountISO(Ljava/lang/String;)I
    .locals 8
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 3409
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3410
    sget-boolean v3, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v3, :cond_0

    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mountISO: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3412
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "mountISO"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "mount"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 3413
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mountISO: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3422
    :goto_0
    return v2

    .line 3415
    :catch_0
    move-exception v1

    .line 3416
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 3417
    .local v0, code:I
    const/16 v2, 0x191

    if-ne v0, v2, :cond_1

    .line 3418
    const/4 v2, -0x2

    goto :goto_0

    .line 3419
    :cond_1
    const/16 v2, 0x193

    if-ne v0, v2, :cond_2

    .line 3420
    const/4 v2, -0x4

    goto :goto_0

    .line 3422
    :cond_2
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V
    .locals 7
    .parameter "filename"
    .parameter "key"
    .parameter "token"
    .parameter "nonce"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2615
    if-nez p1, :cond_0

    .line 2616
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "filename cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2619
    :cond_0
    if-nez p3, :cond_1

    .line 2620
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "token cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2623
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2624
    .local v3, callerUid:I
    new-instance v0, Lcom/android/server/MountService$ObbState;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/MountService$ObbState;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V

    .line 2625
    .local v0, obbState:Lcom/android/server/MountService$ObbState;
    new-instance v6, Lcom/android/server/MountService$MountObbAction;

    invoke-direct {v6, p0, v0, p2}, Lcom/android/server/MountService$MountObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Ljava/lang/String;)V

    .line 2626
    .local v6, action:Lcom/android/server/MountService$ObbAction;
    iget-object v1, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v2, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v6}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2628
    sget-boolean v1, Lcom/android/server/MountService;->DEBUG_OBB:Z

    if-eqz v1, :cond_2

    .line 2629
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send to OBB handler: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Lcom/android/server/MountService$MountObbAction;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2630
    :cond_2
    return-void
.end method

.method public mountSecureContainer(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8
    .parameter "id"
    .parameter "key"
    .parameter "ownerUid"

    .prologue
    .line 2409
    const-string v3, "android.permission.ASEC_MOUNT_UNMOUNT"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2410
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2411
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2413
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4

    .line 2414
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2415
    const/4 v2, -0x6

    monitor-exit v4

    .line 2434
    :cond_0
    :goto_0
    return v2

    .line 2417
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2419
    const/4 v2, 0x0

    .line 2421
    .local v2, rc:I
    :try_start_1
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "asec"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "mount"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    const/4 v6, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2429
    :cond_2
    :goto_1
    if-nez v2, :cond_0

    .line 2430
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4

    .line 2431
    :try_start_2
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2432
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 2417
    .end local v2           #rc:I
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 2422
    .restart local v2       #rc:I
    :catch_0
    move-exception v1

    .line 2423
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2424
    .local v0, code:I
    const/16 v3, 0x195

    if-eq v0, v3, :cond_2

    .line 2425
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public mountVolume(Ljava/lang/String;)I
    .locals 3
    .parameter "path"

    .prologue
    .line 2129
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " calls mountVolume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2132
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2133
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onDaemonConnected()V
    .locals 2

    .prologue
    .line 801
    new-instance v0, Lcom/android/server/MountService$2;

    const-string v1, "MountService#onDaemonConnected"

    invoke-direct {v0, p0, v1}, Lcom/android/server/MountService$2;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/MountService$2;->start()V

    .line 877
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 25
    .parameter "code"
    .parameter "raw"
    .parameter "cooked"

    .prologue
    .line 883
    sget-boolean v20, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v20, :cond_1

    .line 884
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 885
    .local v8, builder:Ljava/lang/StringBuilder;
    const-string v20, "onEvent::"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " raw= "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    if-eqz p3, :cond_0

    .line 888
    const-string v20, " cooked = "

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    move-object/from16 v6, p3

    .local v6, arr$:[Ljava/lang/String;
    array-length v15, v6

    .local v15, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_0
    if-ge v13, v15, :cond_0

    aget-object v19, v6, v13

    .line 890
    .local v19, str:Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 893
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v13           #i$:I
    .end local v15           #len$:I
    .end local v19           #str:Ljava/lang/String;
    :cond_0
    const-string v20, "MountService"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    .end local v8           #builder:Ljava/lang/StringBuilder;
    :cond_1
    const/16 v20, 0x25d

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 900
    const/16 v20, 0x1

    aget-object v20, p3, v20

    const-string v21, "ISO"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 901
    const/16 v20, 0x2

    aget-object v20, p3, v20

    const/16 v21, 0x3

    aget-object v21, p3, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService;->notifyISOStateChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    :cond_2
    :goto_1
    const/16 v20, 0x1

    :goto_2
    return v20

    .line 902
    :cond_3
    const/16 v20, 0x1

    aget-object v20, p3, v20

    const-string v21, "UMS"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 903
    const-string v20, "MountService"

    const-string v21, "Share SD card for Sprint project"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/MountService;->setUsbMassStorageEnabled(Z)V

    goto :goto_1

    .line 911
    :cond_4
    const/16 v20, 0x2

    aget-object v20, p3, v20

    const/16 v21, 0x3

    aget-object v21, p3, v21

    const/16 v22, 0x7

    aget-object v22, p3, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    const/16 v23, 0xa

    aget-object v23, p3, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_1

    .line 915
    :cond_5
    const/16 v20, 0x26c

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 917
    const/4 v7, 0x0

    .line 918
    .local v7, avail:Z
    const/16 v20, 0x5

    aget-object v20, p3, v20

    const-string v21, "available"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 919
    const/4 v7, 0x1

    .line 921
    :cond_6
    const/16 v20, 0x3

    aget-object v20, p3, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v7}, Lcom/android/server/MountService;->notifyShareAvailabilityChange(Ljava/lang/String;Z)V

    goto :goto_1

    .line 922
    .end local v7           #avail:Z
    :cond_7
    const/16 v20, 0x26d

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 924
    const/16 v20, 0x5

    aget-object v20, p3, v20

    const-string v21, "Capture"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 925
    const-string v20, "MountService"

    const-string v21, "broacast InternetSharing intent"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    new-instance v21, Landroid/content/Intent;

    const-string v22, "com.htc.android.startML"

    invoke-direct/range {v21 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 928
    :cond_8
    const/16 v20, 0x276

    move/from16 v0, p1

    move/from16 v1, v20

    if-eq v0, v1, :cond_9

    const/16 v20, 0x277

    move/from16 v0, p1

    move/from16 v1, v20

    if-eq v0, v1, :cond_9

    const/16 v20, 0x278

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_13

    .line 934
    :cond_9
    const/4 v5, 0x0

    .line 935
    .local v5, action:Ljava/lang/String;
    const/16 v20, 0x2

    aget-object v14, p3, v20

    .line 936
    .local v14, label:Ljava/lang/String;
    const/16 v20, 0x3

    aget-object v18, p3, v20

    .line 937
    .local v18, path:Ljava/lang/String;
    const/16 v16, -0x1

    .line 938
    .local v16, major:I
    const/16 v17, -0x1

    .line 941
    .local v17, minor:I
    const/16 v20, 0x6

    :try_start_0
    aget-object v20, p3, v20

    const/16 v21, 0x1

    const/16 v22, 0x6

    aget-object v22, p3, v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 942
    .local v9, devComp:Ljava/lang/String;
    const-string v20, ":"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 943
    .local v10, devTok:[Ljava/lang/String;
    const/16 v20, 0x0

    aget-object v20, v10, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 944
    const/16 v20, 0x1

    aget-object v20, v10, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v17

    .line 949
    .end local v9           #devComp:Ljava/lang/String;
    .end local v10           #devTok:[Ljava/lang/String;
    :goto_3
    const/16 v20, 0x276

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 950
    new-instance v20, Lcom/android/server/MountService$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService$3;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/MountService$3;->start()V

    .line 999
    :goto_4
    if-eqz v5, :cond_2

    .line 1000
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v1}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    const-string v20, "android.intent.action.MEDIA_BAD_REMOVAL"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1002
    const-string v20, "MountService"

    const-string v21, "Bad removal sending unlock wake_lock"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    move-object/from16 v20, v0

    const-string v21, "volume"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "bad_removal"

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1005
    :catch_0
    move-exception v11

    .line 1006
    .local v11, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v20, "MountService"

    const-string v21, "Failed to send bad_removeal unlock wake lock"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 945
    .end local v11           #e:Lcom/android/server/NativeDaemonConnectorException;
    :catch_1
    move-exception v12

    .line 946
    .local v12, ex:Ljava/lang/Exception;
    const-string v20, "MountService"

    const-string v21, "Failed to parse major/minor"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 966
    .end local v12           #ex:Ljava/lang/Exception;
    :cond_a
    const/16 v20, 0x277

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 970
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "bad_removal"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 971
    const/16 v20, 0x1

    goto/16 :goto_2

    .line 974
    :cond_b
    sget-boolean v20, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v20, :cond_c

    const-string v20, "MountService"

    const-string v21, "Sending unmounted event first"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    :cond_c
    const-string v20, "unmounted"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    const-string v20, "android.intent.action.MEDIA_UNMOUNTED"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    sget-boolean v20, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v20, :cond_d

    const-string v20, "MountService"

    const-string v21, "Sending media removed"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :cond_d
    const-string v20, "removed"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    const-string v5, "android.intent.action.MEDIA_REMOVED"

    goto/16 :goto_4

    .line 981
    :cond_e
    const/16 v20, 0x278

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 984
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashSet;->clear()V

    .line 985
    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 987
    :cond_f
    sget-boolean v20, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v20, :cond_10

    const-string v20, "MountService"

    const-string v21, "Sending unmounted event first"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    :cond_10
    const-string v20, "unmounted"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    const-string v20, "android.intent.action.MEDIA_UNMOUNTED"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    sget-boolean v20, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v20, :cond_11

    const-string v20, "MountService"

    const-string v21, "Sending media bad removal"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :cond_11
    const-string v20, "bad_removal"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    const-string v5, "android.intent.action.MEDIA_BAD_REMOVAL"

    goto/16 :goto_4

    .line 985
    :catchall_0
    move-exception v20

    :try_start_3
    monitor-exit v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v20

    .line 996
    :cond_12
    const-string v20, "MountService"

    const-string v21, "Unknown code {%d}"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1011
    .end local v5           #action:Ljava/lang/String;
    .end local v14           #label:Ljava/lang/String;
    .end local v16           #major:I
    .end local v17           #minor:I
    .end local v18           #path:Ljava/lang/String;
    :cond_13
    const/16 v20, 0x0

    goto/16 :goto_2
.end method

.method public optimizeStorage(Z)I
    .locals 18
    .parameter "trigger"

    .prologue
    .line 3502
    const-string v13, "MountService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "PID: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " calls optimizeStorage "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3503
    const-string v13, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3504
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3505
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 3506
    const-string v13, "MountService"

    const-string v14, "Optimization only supports nonremovable storage"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3507
    const/4 v8, -0x1

    .line 3580
    :cond_0
    :goto_0
    return v8

    .line 3511
    :cond_1
    const-string v13, "true"

    const-string v14, "persist.fuse_sdcard"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 3513
    .local v6, isEmulated:Z
    sget-boolean v13, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v13, :cond_2

    const-string v13, "MountService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "optimizeStorage "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3514
    :cond_2
    const/4 v2, 0x0

    .local v2, code:I
    const/4 v8, 0x0

    .line 3520
    .local v8, rc:I
    if-eqz p1, :cond_5

    if-nez v6, :cond_5

    .line 3522
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/server/MountService;->unmountVolume(Ljava/lang/String;ZZ)V

    .line 3524
    const/16 v9, 0x1e

    .line 3527
    .local v9, retries:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .local v12, state:Ljava/lang/String;
    move v10, v9

    .line 3528
    .end local v9           #retries:I
    .local v10, retries:I
    :goto_1
    const-string v13, "unmounted"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v13

    if-nez v13, :cond_1a

    add-int/lit8 v9, v10, -0x1

    .end local v10           #retries:I
    .restart local v9       #retries:I
    if-ltz v10, :cond_3

    .line 3530
    const-wide/16 v13, 0x3e8

    :try_start_1
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3535
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move v10, v9

    .end local v9           #retries:I
    .restart local v10       #retries:I
    goto :goto_1

    .line 3531
    .end local v10           #retries:I
    .restart local v9       #retries:I
    :catch_0
    move-exception v5

    .line 3532
    .local v5, iex:Ljava/lang/InterruptedException;
    const-string v13, "MountService"

    const-string v14, "Interrupted while waiting for media"

    invoke-static {v13, v14, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3537
    .end local v5           #iex:Ljava/lang/InterruptedException;
    :cond_3
    :goto_2
    if-nez v9, :cond_5

    .line 3538
    const-string v13, "MountService"

    const-string v14, "Timed out waiting for media to check"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3539
    const/4 v8, -0x1

    .line 3558
    .end local v8           #rc:I
    if-eqz p1, :cond_4

    if-eqz v2, :cond_0

    :cond_4
    if-nez v6, :cond_0

    .line 3562
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v14

    .line 3563
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 3564
    .local v11, size:I
    new-array v7, v11, [Ljava/lang/String;

    .line 3565
    .local v7, paths:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    if-ge v4, v11, :cond_14

    .line 3566
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/storage/StorageVolume;

    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v7, v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 3565
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 3544
    .end local v4           #i:I
    .end local v7           #paths:[Ljava/lang/String;
    .end local v9           #retries:I
    .end local v11           #size:I
    .end local v12           #state:Ljava/lang/String;
    .restart local v8       #rc:I
    :cond_5
    :try_start_4
    const-string v14, "optimize %s %s"

    const/4 v13, 0x2

    new-array v15, v13, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v13

    const/16 v16, 0x1

    if-eqz p1, :cond_7

    const-string v13, "start"

    :goto_4
    aput-object v13, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3546
    .local v1, cmd:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v13, v1}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_4 .. :try_end_4} :catch_1

    .line 3558
    if-eqz p1, :cond_6

    if-eqz v2, :cond_0

    :cond_6
    if-nez v6, :cond_0

    .line 3562
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v14

    .line 3563
    :try_start_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 3564
    .restart local v11       #size:I
    new-array v7, v11, [Ljava/lang/String;

    .line 3565
    .restart local v7       #paths:[Ljava/lang/String;
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_5
    if-ge v4, v11, :cond_17

    .line 3566
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/storage/StorageVolume;

    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v7, v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 3565
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 3544
    .end local v1           #cmd:Ljava/lang/String;
    .end local v4           #i:I
    .end local v7           #paths:[Ljava/lang/String;
    .end local v11           #size:I
    :cond_7
    :try_start_6
    const-string v13, "stop"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    .line 3547
    :catch_1
    move-exception v3

    .line 3548
    .local v3, e:Lcom/android/server/NativeDaemonConnectorException;
    :try_start_7
    const-string v14, "MountService"

    const-string v15, "Failed to %s optimization"

    const/4 v13, 0x1

    new-array v0, v13, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    if-eqz p1, :cond_9

    const-string v13, "start"

    :goto_6
    aput-object v13, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3549
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v2

    .line 3550
    const/16 v13, 0x196

    if-ne v2, v13, :cond_a

    .line 3551
    const/4 v8, -0x2

    .line 3558
    :goto_7
    if-eqz p1, :cond_8

    if-eqz v2, :cond_0

    :cond_8
    if-nez v6, :cond_0

    .line 3562
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v14

    .line 3563
    :try_start_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 3564
    .restart local v11       #size:I
    new-array v7, v11, [Ljava/lang/String;

    .line 3565
    .restart local v7       #paths:[Ljava/lang/String;
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_8
    if-ge v4, v11, :cond_11

    .line 3566
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/storage/StorageVolume;

    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v7, v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 3565
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 3548
    .end local v4           #i:I
    .end local v7           #paths:[Ljava/lang/String;
    .end local v11           #size:I
    :cond_9
    :try_start_9
    const-string v13, "stop"
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_6

    .line 3552
    :cond_a
    const/16 v13, 0x193

    if-ne v2, v13, :cond_b

    .line 3553
    const/4 v8, -0x4

    goto :goto_7

    .line 3555
    :cond_b
    const/4 v8, -0x1

    goto :goto_7

    .line 3558
    .end local v3           #e:Lcom/android/server/NativeDaemonConnectorException;
    :cond_c
    throw v14

    :catchall_0
    move-exception v13

    move-object v14, v13

    if-eqz p1, :cond_d

    if-eqz v2, :cond_c

    :cond_d
    if-nez v6, :cond_c

    .line 3562
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v15

    .line 3563
    :try_start_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 3564
    .restart local v11       #size:I
    new-array v7, v11, [Ljava/lang/String;

    .line 3565
    .restart local v7       #paths:[Ljava/lang/String;
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_9
    if-ge v4, v11, :cond_e

    .line 3566
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/storage/StorageVolume;

    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v7, v4

    .line 3565
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 3567
    .end local v4           #i:I
    .end local v7           #paths:[Ljava/lang/String;
    .end local v11           #size:I
    :catchall_1
    move-exception v13

    monitor-exit v15
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v13

    .restart local v4       #i:I
    .restart local v7       #paths:[Ljava/lang/String;
    .restart local v11       #size:I
    :cond_e
    :try_start_b
    monitor-exit v15
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 3568
    add-int/lit8 v4, v11, -0x1

    :goto_a
    if-ltz v4, :cond_c

    .line 3569
    aget-object v13, v7, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v15, "unmounted"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_10

    .line 3568
    :cond_f
    add-int/lit8 v4, v4, -0x1

    goto :goto_a

    .line 3571
    :cond_10
    aget-object v13, v7, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_f

    .line 3572
    const-string v13, "MountService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to remount "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v7, v4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " after stopping optimization"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3574
    .end local v8           #rc:I
    :goto_b
    const/4 v8, -0x1

    goto/16 :goto_0

    .line 3567
    .end local v4           #i:I
    .end local v7           #paths:[Ljava/lang/String;
    .end local v11           #size:I
    .restart local v3       #e:Lcom/android/server/NativeDaemonConnectorException;
    .restart local v8       #rc:I
    :catchall_2
    move-exception v13

    :try_start_c
    monitor-exit v14
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v13

    .restart local v4       #i:I
    .restart local v7       #paths:[Ljava/lang/String;
    .restart local v11       #size:I
    :cond_11
    :try_start_d
    monitor-exit v14
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 3568
    add-int/lit8 v4, v11, -0x1

    :goto_c
    if-ltz v4, :cond_0

    .line 3569
    aget-object v13, v7, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "unmounted"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_13

    .line 3568
    :cond_12
    add-int/lit8 v4, v4, -0x1

    goto :goto_c

    .line 3571
    :cond_13
    aget-object v13, v7, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_12

    .line 3572
    const-string v13, "MountService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to remount "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v7, v4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " after stopping optimization"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 3567
    .end local v3           #e:Lcom/android/server/NativeDaemonConnectorException;
    .end local v4           #i:I
    .end local v7           #paths:[Ljava/lang/String;
    .end local v8           #rc:I
    .end local v11           #size:I
    .restart local v9       #retries:I
    .restart local v12       #state:Ljava/lang/String;
    :catchall_3
    move-exception v13

    :try_start_e
    monitor-exit v14
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    throw v13

    .restart local v4       #i:I
    .restart local v7       #paths:[Ljava/lang/String;
    .restart local v11       #size:I
    :cond_14
    :try_start_f
    monitor-exit v14
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 3568
    add-int/lit8 v4, v11, -0x1

    :goto_d
    if-ltz v4, :cond_0

    .line 3569
    aget-object v13, v7, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "unmounted"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_16

    .line 3568
    :cond_15
    add-int/lit8 v4, v4, -0x1

    goto :goto_d

    .line 3571
    :cond_16
    aget-object v13, v7, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_15

    .line 3572
    const-string v13, "MountService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to remount "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v7, v4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " after stopping optimization"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 3567
    .end local v4           #i:I
    .end local v7           #paths:[Ljava/lang/String;
    .end local v9           #retries:I
    .end local v11           #size:I
    .end local v12           #state:Ljava/lang/String;
    .restart local v1       #cmd:Ljava/lang/String;
    .restart local v8       #rc:I
    :catchall_4
    move-exception v13

    :try_start_10
    monitor-exit v14
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    throw v13

    .restart local v4       #i:I
    .restart local v7       #paths:[Ljava/lang/String;
    .restart local v11       #size:I
    :cond_17
    :try_start_11
    monitor-exit v14
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 3568
    add-int/lit8 v4, v11, -0x1

    :goto_e
    if-ltz v4, :cond_0

    .line 3569
    aget-object v13, v7, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "unmounted"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_19

    .line 3568
    :cond_18
    add-int/lit8 v4, v4, -0x1

    goto :goto_e

    .line 3571
    :cond_19
    aget-object v13, v7, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_18

    .line 3572
    const-string v13, "MountService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to remount "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v7, v4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " after stopping optimization"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .end local v1           #cmd:Ljava/lang/String;
    .end local v4           #i:I
    .end local v7           #paths:[Ljava/lang/String;
    .end local v11           #size:I
    .restart local v10       #retries:I
    .restart local v12       #state:Ljava/lang/String;
    :cond_1a
    move v9, v10

    .end local v10           #retries:I
    .restart local v9       #retries:I
    goto/16 :goto_2
.end method

.method public registerListener(Landroid/os/storage/IMountServiceListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 1726
    iget-object v3, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1727
    :try_start_0
    new-instance v0, Lcom/android/server/MountService$MountServiceBinderListener;

    invoke-direct {v0, p0, p1}, Lcom/android/server/MountService$MountServiceBinderListener;-><init>(Lcom/android/server/MountService;Landroid/os/storage/IMountServiceListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1729
    .local v0, bl:Lcom/android/server/MountService$MountServiceBinderListener;
    :try_start_1
    invoke-interface {p1}, Landroid/os/storage/IMountServiceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1730
    iget-object v2, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1734
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 1735
    return-void

    .line 1731
    :catch_0
    move-exception v1

    .line 1732
    .local v1, rex:Landroid/os/RemoteException;
    const-string v2, "MountService"

    const-string v4, "Failed to link to listener death"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1734
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v1           #rex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "oldId"
    .parameter "newId"

    .prologue
    .line 2491
    const-string v2, "android.permission.ASEC_RENAME"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2492
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2493
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2495
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v3

    .line 2500
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2501
    :cond_0
    const/4 v1, -0x6

    monitor-exit v3

    .line 2512
    :goto_0
    return v1

    .line 2503
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2505
    const/4 v1, 0x0

    .line 2507
    .local v1, rc:I
    :try_start_1
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "asec"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "rename"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2508
    :catch_0
    move-exception v0

    .line 2509
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_0

    .line 2503
    .end local v0           #e:Lcom/android/server/NativeDaemonConnectorException;
    .end local v1           #rc:I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public setAutoMountISOEnabled(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    .line 3342
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3343
    sget-boolean v1, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v1, :cond_0

    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAutoMountISOEnabled: enable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3345
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "setprop"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v5, "autoiso"

    aput-object v5, v4, v1

    const/4 v5, 0x1

    if-eqz p1, :cond_1

    const-string v1, "1"

    :goto_0
    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 3349
    :goto_1
    return-void

    .line 3345
    :cond_1
    const-string v1, "0"
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3346
    :catch_0
    move-exception v0

    .line 3347
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->printStackTrace()V

    goto :goto_1
.end method

.method public setMountISOEnabled(Z)I
    .locals 8
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    .line 3355
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3357
    :try_start_0
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "mountISO"

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    const-string v3, "enable"

    :goto_0
    aput-object v3, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 3366
    :goto_1
    return v2

    .line 3357
    :cond_0
    const-string v3, "disable"
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3359
    :catch_0
    move-exception v1

    .line 3360
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 3361
    .local v0, code:I
    const/16 v2, 0x191

    if-ne v0, v2, :cond_1

    .line 3362
    const/4 v2, -0x2

    goto :goto_1

    .line 3363
    :cond_1
    const/16 v2, 0x193

    if-ne v0, v2, :cond_2

    .line 3364
    const/4 v2, -0x4

    goto :goto_1

    .line 3366
    :cond_2
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public setPCtoolISOEnabled(Z)I
    .locals 8
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    .line 3390
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3391
    sget-boolean v3, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v3, :cond_0

    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPCtoolISOEnabled: enable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3393
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "enPCtoolISO"

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    if-eqz p1, :cond_1

    const-string v3, "enable"

    :goto_0
    aput-object v3, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 3394
    const-string v3, "MountService"

    const-string v4, "setPCtoolISOEnabled --"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3403
    :goto_1
    return v2

    .line 3393
    :cond_1
    const-string v3, "disable"
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3396
    :catch_0
    move-exception v1

    .line 3397
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 3398
    .local v0, code:I
    const/16 v2, 0x191

    if-ne v0, v2, :cond_2

    .line 3399
    const/4 v2, -0x2

    goto :goto_1

    .line 3400
    :cond_2
    const/16 v2, 0x193

    if-ne v0, v2, :cond_3

    .line 3401
    const/4 v2, -0x4

    goto :goto_1

    .line 3403
    :cond_3
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public setSdcardRestricted(Z)V
    .locals 5
    .parameter "set"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3473
    invoke-virtual {p0}, Lcom/android/server/MountService;->isSdcardRestricted()Z

    move-result v0

    .line 3474
    .local v0, curState:Z
    if-eq v0, p1, :cond_0

    .line 3475
    const-string v2, "service.mount.restrict"

    if-eqz p1, :cond_1

    const-string v1, "1"

    :goto_0
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3477
    if-eqz p1, :cond_3

    .line 3478
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3479
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v4, v3}, Lcom/android/server/MountService;->unmountVolume(Ljava/lang/String;ZZ)V

    .line 3495
    :cond_0
    :goto_1
    return-void

    .line 3475
    :cond_1
    const-string v1, "0"

    goto :goto_0

    .line 3480
    :cond_2
    invoke-static {}, Landroid/os/Environment;->hasInternalFat()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3483
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v4, v3}, Lcom/android/server/MountService;->unmountVolume(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 3486
    :cond_3
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3487
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/MountService;->mountVolume(Ljava/lang/String;)I

    goto :goto_1

    .line 3488
    :cond_4
    invoke-static {}, Landroid/os/Environment;->hasInternalFat()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3491
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/MountService;->mountVolume(Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setUsbMassStorageEnabled(Z)V
    .locals 18
    .parameter "enable"

    .prologue
    .line 1880
    const-string v13, "MountService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "PID: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " calls setUsbMassStorageEnabled "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1882
    const-string v13, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1883
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->waitForUmsProceeding()V

    .line 1888
    const-string v6, "ums"

    .line 1889
    .local v6, method:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 1890
    .local v7, path:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1893
    .local v12, vs:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->hasPhoneStorage()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-static {}, Landroid/os/Environment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "mounted"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    const/4 v4, 0x1

    .line 1895
    .local v4, is_ins_mounted:Z
    :goto_0
    sget-boolean v13, Lcom/android/server/MountService;->Share_SD_only:Z

    if-nez v13, :cond_11

    .line 1896
    if-eqz p1, :cond_8

    const-string v13, "mounted"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "mounted_ro"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    if-eqz v4, :cond_8

    .line 1897
    :cond_0
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/MountService;->sharing:I

    .line 1899
    invoke-direct/range {p0 .. p1}, Lcom/android/server/MountService;->setUmsEnabling(Z)V

    .line 1900
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v14

    .line 1901
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1902
    .local v10, size:I
    new-array v8, v10, [Ljava/lang/String;

    .line 1903
    .local v8, paths:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v10, :cond_2

    .line 1904
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/storage/StorageVolume;

    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v8, v2

    .line 1903
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1893
    .end local v2           #i:I
    .end local v4           #is_ins_mounted:Z
    .end local v8           #paths:[Ljava/lang/String;
    .end local v10           #size:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1905
    .restart local v2       #i:I
    .restart local v4       #is_ins_mounted:Z
    .restart local v8       #paths:[Ljava/lang/String;
    .restart local v10       #size:I
    :cond_2
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1906
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v10, :cond_7

    .line 1907
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/MountService;->sdcard_fuse:Z

    if-eqz v13, :cond_4

    aget-object v13, v8, v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1906
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1905
    .end local v2           #i:I
    .end local v8           #paths:[Ljava/lang/String;
    .end local v10           #size:I
    :catchall_0
    move-exception v13

    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v13

    .line 1909
    .restart local v2       #i:I
    .restart local v8       #paths:[Ljava/lang/String;
    .restart local v10       #size:I
    :cond_4
    aget-object v13, v8, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "mounted"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1910
    aget-object v13, v8, v2

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6, v14, v15}, Lcom/android/server/MountService;->prepareUnmount(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/storage/IMountShutdownObserver;)V

    .line 1912
    aget-object v13, v8, v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1913
    new-instance v11, Lcom/android/server/MountService$UmsEnableCallBack;

    aget-object v13, v8, v2

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v13, v6, v14}, Lcom/android/server/MountService$UmsEnableCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1915
    .local v11, umscb:Lcom/android/server/MountService$UmsEnableCallBack;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 1917
    .end local v11           #umscb:Lcom/android/server/MountService$UmsEnableCallBack;
    :cond_5
    aget-object v13, v8, v2

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/server/MountService;->doUnmountVolume(Ljava/lang/String;ZZ)I

    move-result v9

    .line 1918
    .local v9, rc:I
    if-eqz v9, :cond_6

    .line 1919
    const-string v13, "MountService"

    const-string v14, "Failed to unmount %s (%d)"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aget-object v17, v8, v2

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1922
    :cond_6
    aget-object v13, v8, v2

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6, v14}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    .line 1927
    .end local v9           #rc:I
    :cond_7
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/MountService;->setUmsEnabling(Z)V

    .line 1928
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->UmsProceedingDone()V

    .line 1933
    .end local v2           #i:I
    .end local v8           #paths:[Ljava/lang/String;
    .end local v10           #size:I
    :cond_8
    if-nez p1, :cond_22

    .line 1934
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/MountService;->sharing:I

    .line 1935
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v14

    .line 1936
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1937
    .restart local v10       #size:I
    new-array v8, v10, [Ljava/lang/String;

    .line 1938
    .restart local v8       #paths:[Ljava/lang/String;
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    if-ge v2, v10, :cond_9

    .line 1939
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/storage/StorageVolume;

    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v8, v2

    .line 1938
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1940
    :cond_9
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1941
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v10, :cond_e

    .line 1942
    const/4 v5, 0x0

    .local v5, j:I
    :goto_6
    const/4 v13, 0x3

    if-ge v5, v13, :cond_a

    .line 1943
    const-string v13, "MountService"

    const-string v14, "Prepare to mount back to device"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    aget-object v13, v8, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "shared"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 1945
    aget-object v13, v8, v2

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v13, v6, v1}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1946
    const-string v13, "MountService"

    const-string v14, "unshare the sdcard"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    :cond_a
    const/4 v5, 0x0

    :goto_7
    const/4 v13, 0x3

    if-ge v5, v13, :cond_b

    .line 1959
    aget-object v13, v8, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "unmounted"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 1960
    const-string v13, "MountService"

    const-string v14, "Switch to MEDIA_UNMOUNTED"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1940
    .end local v2           #i:I
    .end local v5           #j:I
    .end local v8           #paths:[Ljava/lang/String;
    .end local v10           #size:I
    :catchall_1
    move-exception v13

    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v13

    .line 1949
    .restart local v2       #i:I
    .restart local v5       #j:I
    .restart local v8       #paths:[Ljava/lang/String;
    .restart local v10       #size:I
    :cond_c
    const-string v13, "MountService"

    const-string v14, "Wait for switch to MEDIA_SHARED (%d)"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    add-int/lit8 v17, v5, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v13, 0x190

    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1942
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1953
    :catch_0
    move-exception v3

    .line 1954
    .local v3, ie:Ljava/lang/InterruptedException;
    const-string v13, "MountService"

    const-string v14, "Fail to wait for switch to MEDIA_SHARED"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1963
    .end local v3           #ie:Ljava/lang/InterruptedException;
    :cond_d
    const-string v13, "MountService"

    const-string v14, "Wait for switch to MEDIA_UNMOUNTED (%d)"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    add-int/lit8 v17, v5, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v13, 0x3e8

    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1958
    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 1967
    :catch_1
    move-exception v3

    .line 1968
    .restart local v3       #ie:Ljava/lang/InterruptedException;
    const-string v13, "MountService"

    const-string v14, "Fail to wait for switch to MEDIA_UNMOUNTED"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1973
    .end local v3           #ie:Ljava/lang/InterruptedException;
    .end local v5           #j:I
    :cond_e
    add-int/lit8 v2, v10, -0x1

    :goto_a
    if-ltz v2, :cond_22

    .line 1974
    aget-object v13, v8, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "unmounted"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_10

    .line 1973
    :cond_f
    :goto_b
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    .line 1976
    :cond_10
    aget-object v13, v8, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_f

    .line 1977
    const-string v13, "MountService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to remount "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v8, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " after disabling share method "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1988
    .end local v2           #i:I
    .end local v8           #paths:[Ljava/lang/String;
    .end local v10           #size:I
    :cond_11
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v13

    if-nez v13, :cond_12

    invoke-static {}, Landroid/os/Environment;->hasInternalFat()Z

    move-result v13

    if-eqz v13, :cond_12

    .line 1989
    const-string v13, "MountService"

    const-string v14, "The device has no read sdcard and does not support UMS"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->UmsProceedingDone()V

    .line 2098
    :goto_c
    return-void

    .line 1993
    :cond_12
    if-eqz p1, :cond_13

    .line 1994
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v13

    if-nez v13, :cond_14

    .line 1996
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "mounted"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 1997
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/MountService;->sharing:I

    .line 1998
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6, v14, v15}, Lcom/android/server/MountService;->prepareUnmount(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/storage/IMountShutdownObserver;)V

    .line 1999
    new-instance v11, Lcom/android/server/MountService$UmsEnableCallBack;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v13, v6, v14}, Lcom/android/server/MountService$UmsEnableCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2001
    .restart local v11       #umscb:Lcom/android/server/MountService$UmsEnableCallBack;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2036
    .end local v11           #umscb:Lcom/android/server/MountService$UmsEnableCallBack;
    :cond_13
    :goto_d
    if-nez p1, :cond_22

    .line 2037
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/MountService;->sharing:I

    .line 2038
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v14

    .line 2039
    :try_start_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2040
    .restart local v10       #size:I
    new-array v8, v10, [Ljava/lang/String;

    .line 2041
    .restart local v8       #paths:[Ljava/lang/String;
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_e
    if-ge v2, v10, :cond_18

    .line 2042
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/storage/StorageVolume;

    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v8, v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2041
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 2005
    .end local v2           #i:I
    .end local v8           #paths:[Ljava/lang/String;
    .end local v10           #size:I
    :cond_14
    const-string v13, "MountService"

    const-string v14, "Before unmount"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/MountService;->sdcard_fuse:Z

    if-eqz v13, :cond_16

    .line 2007
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "mounted"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 2008
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/MountService;->sharing:I

    .line 2009
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/server/MountService;->doUnmountVolume(Ljava/lang/String;ZZ)I

    move-result v9

    .line 2010
    .restart local v9       #rc:I
    if-eqz v9, :cond_15

    .line 2011
    const-string v13, "MountService"

    const-string v14, "Failed to unmount %s (%d)"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 2014
    :cond_15
    const-string v13, "MountService"

    const-string v14, "doshare"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6, v14}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_d

    .line 2019
    .end local v9           #rc:I
    :cond_16
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "mounted"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 2020
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/MountService;->sharing:I

    .line 2021
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/server/MountService;->doUnmountVolume(Ljava/lang/String;ZZ)I

    move-result v9

    .line 2022
    .restart local v9       #rc:I
    if-eqz v9, :cond_17

    .line 2023
    const-string v13, "MountService"

    const-string v14, "Failed to unmount %s (%d)"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 2026
    :cond_17
    const-string v13, "MountService"

    const-string v14, "doshare"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6, v14}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_d

    .line 2043
    .end local v9           #rc:I
    .restart local v2       #i:I
    .restart local v8       #paths:[Ljava/lang/String;
    .restart local v10       #size:I
    :cond_18
    :try_start_7
    monitor-exit v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2044
    const-string v13, "MountService"

    const-string v14, "Disable UMS"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    const/4 v2, 0x0

    :goto_f
    if-ge v2, v10, :cond_1f

    .line 2046
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v13

    if-nez v13, :cond_19

    aget-object v13, v8, v2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1b

    :cond_19
    aget-object v13, v8, v2

    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1b

    aget-object v13, v8, v2

    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1b

    .line 2045
    :cond_1a
    :goto_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 2043
    .end local v2           #i:I
    .end local v8           #paths:[Ljava/lang/String;
    .end local v10           #size:I
    :catchall_2
    move-exception v13

    :try_start_8
    monitor-exit v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v13

    .line 2050
    .restart local v2       #i:I
    .restart local v8       #paths:[Ljava/lang/String;
    .restart local v10       #size:I
    :cond_1b
    const/4 v5, 0x0

    .restart local v5       #j:I
    :goto_11
    const/4 v13, 0x3

    if-ge v5, v13, :cond_1c

    .line 2051
    const-string v13, "MountService"

    const-string v14, "Prepare to mount back to device"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    aget-object v13, v8, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "shared"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1d

    .line 2053
    aget-object v13, v8, v2

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v13, v6, v1}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2054
    const-string v13, "MountService"

    const-string v14, "unshare the sdcard"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    :cond_1c
    const/4 v5, 0x0

    :goto_12
    const/4 v13, 0x3

    if-ge v5, v13, :cond_1a

    .line 2067
    aget-object v13, v8, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "unmounted"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1e

    .line 2068
    const-string v13, "MountService"

    const-string v14, "Switch to MEDIA_UNMOUNTED"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 2057
    :cond_1d
    const-string v13, "MountService"

    const-string v14, "Wait for switch to MEDIA_SHARED (%d)"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    add-int/lit8 v17, v5, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    :try_start_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v13, 0x190

    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_2

    .line 2050
    :goto_13
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 2061
    :catch_2
    move-exception v3

    .line 2062
    .restart local v3       #ie:Ljava/lang/InterruptedException;
    const-string v13, "MountService"

    const-string v14, "Fail to wait for switch to MEDIA_SHARED"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 2071
    .end local v3           #ie:Ljava/lang/InterruptedException;
    :cond_1e
    const-string v13, "MountService"

    const-string v14, "Wait for switch to MEDIA_UNMOUNTED (%d)"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    add-int/lit8 v17, v5, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    :try_start_a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v13, 0x3e8

    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_3

    .line 2066
    :goto_14
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 2075
    :catch_3
    move-exception v3

    .line 2076
    .restart local v3       #ie:Ljava/lang/InterruptedException;
    const-string v13, "MountService"

    const-string v14, "Fail to wait for switch to MEDIA_UNMOUNTED"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 2081
    .end local v3           #ie:Ljava/lang/InterruptedException;
    .end local v5           #j:I
    :cond_1f
    add-int/lit8 v2, v10, -0x1

    :goto_15
    if-ltz v2, :cond_22

    .line 2082
    aget-object v13, v8, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "unmounted"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_21

    .line 2081
    :cond_20
    :goto_16
    add-int/lit8 v2, v2, -0x1

    goto :goto_15

    .line 2084
    :cond_21
    aget-object v13, v8, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_20

    .line 2085
    const-string v13, "MountService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to remount "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v8, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " after disabling share method "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 2097
    .end local v2           #i:I
    .end local v8           #paths:[Ljava/lang/String;
    .end local v10           #size:I
    :cond_22
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->UmsProceedingDone()V

    goto/16 :goto_c
.end method

.method public shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    .locals 15
    .parameter "observer"

    .prologue
    .line 1749
    const-string v12, "android.permission.SHUTDOWN"

    invoke-direct {p0, v12}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1750
    const-string v12, "MountService"

    const-string v13, "Shutting down"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    iget-object v13, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    monitor-enter v13

    .line 1755
    :try_start_0
    iget-object v12, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 1756
    .local v5, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v1

    .line 1757
    .local v1, count:I
    new-array v12, v1, [Ljava/lang/String;

    invoke-interface {v5, v12}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 1758
    .local v7, paths:[Ljava/lang/String;
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1759
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_7

    .line 1760
    aget-object v6, v7, v3

    .line 1762
    .local v6, path:Ljava/lang/String;
    iget-object v13, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    monitor-enter v13

    .line 1763
    :try_start_1
    iget-object v12, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1764
    .local v10, state:Ljava/lang/String;
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1765
    const-string v12, "shared"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1773
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/android/server/MountService;->setUsbMassStorageEnabled(Z)V

    .line 1794
    :cond_0
    :goto_1
    iget-object v13, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    monitor-enter v13

    .line 1795
    :try_start_2
    iget-object v12, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    .line 1796
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1797
    const-string v12, "mounted"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string v12, "mounted_ro"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1799
    :cond_1
    const-string v12, "shutdown"

    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-direct {p0, v6, v12, v13, v0}, Lcom/android/server/MountService;->prepareUnmount(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/storage/IMountShutdownObserver;)V

    .line 1800
    new-instance v11, Lcom/android/server/MountService$ShutdownCallBack;

    move-object/from16 v0, p1

    invoke-direct {v11, p0, v6, v0}, Lcom/android/server/MountService$ShutdownCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/IMountShutdownObserver;)V

    .line 1802
    .local v11, ucb:Lcom/android/server/MountService$ShutdownCallBack;
    iget-object v12, p0, Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1803
    iget-object v12, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v13, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1759
    .end local v11           #ucb:Lcom/android/server/MountService$ShutdownCallBack;
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1758
    .end local v1           #count:I
    .end local v3           #i:I
    .end local v5           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6           #path:Ljava/lang/String;
    .end local v7           #paths:[Ljava/lang/String;
    .end local v10           #state:Ljava/lang/String;
    :catchall_0
    move-exception v12

    :try_start_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v12

    .line 1764
    .restart local v1       #count:I
    .restart local v3       #i:I
    .restart local v5       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v6       #path:Ljava/lang/String;
    .restart local v7       #paths:[Ljava/lang/String;
    :catchall_1
    move-exception v12

    :try_start_4
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v12

    .line 1774
    .restart local v10       #state:Ljava/lang/String;
    :cond_3
    const-string v12, "checking"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1780
    const/16 v8, 0x1e

    .line 1781
    .local v8, retries:I
    :goto_3
    const-string v12, "checking"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    add-int/lit8 v9, v8, -0x1

    .end local v8           #retries:I
    .local v9, retries:I
    if-ltz v8, :cond_8

    .line 1783
    const-wide/16 v12, 0x3e8

    :try_start_5
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1788
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v10

    move v8, v9

    .end local v9           #retries:I
    .restart local v8       #retries:I
    goto :goto_3

    .line 1784
    .end local v8           #retries:I
    .restart local v9       #retries:I
    :catch_0
    move-exception v4

    .line 1785
    .local v4, iex:Ljava/lang/InterruptedException;
    const-string v12, "MountService"

    const-string v13, "Interrupted while waiting for media"

    invoke-static {v12, v13, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v8, v9

    .line 1790
    .end local v4           #iex:Ljava/lang/InterruptedException;
    .end local v9           #retries:I
    .restart local v8       #retries:I
    :cond_4
    :goto_4
    if-nez v8, :cond_0

    .line 1791
    const-string v12, "MountService"

    const-string v13, "Timed out waiting for media to check"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1796
    .end local v8           #retries:I
    :catchall_2
    move-exception v12

    :try_start_6
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v12

    .line 1805
    .restart local v11       #ucb:Lcom/android/server/MountService$ShutdownCallBack;
    :cond_5
    iget-object v12, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v13, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x2

    invoke-virtual {v13, v14, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 1807
    .end local v11           #ucb:Lcom/android/server/MountService$ShutdownCallBack;
    :cond_6
    if-eqz p1, :cond_2

    .line 1814
    const/4 v12, 0x0

    :try_start_7
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/os/storage/IMountShutdownObserver;->onShutDownComplete(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 1815
    :catch_1
    move-exception v2

    .line 1816
    .local v2, e:Landroid/os/RemoteException;
    const-string v12, "MountService"

    const-string v13, "RemoteException when shutting down"

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1820
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v6           #path:Ljava/lang/String;
    .end local v10           #state:Ljava/lang/String;
    :cond_7
    return-void

    .restart local v6       #path:Ljava/lang/String;
    .restart local v9       #retries:I
    .restart local v10       #state:Ljava/lang/String;
    :cond_8
    move v8, v9

    .end local v9           #retries:I
    .restart local v8       #retries:I
    goto :goto_4
.end method

.method public unmountISO()I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 3428
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3429
    sget-boolean v3, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v3, :cond_0

    const-string v3, "MountService"

    const-string v4, "unmountISO"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3431
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "mountISO"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "unmount"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 3432
    const-string v3, "MountService"

    const-string v4, "unmountISO --"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3441
    :goto_0
    return v2

    .line 3434
    :catch_0
    move-exception v1

    .line 3435
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 3436
    .local v0, code:I
    const/16 v2, 0x191

    if-ne v0, v2, :cond_1

    .line 3437
    const/4 v2, -0x2

    goto :goto_0

    .line 3438
    :cond_1
    const/16 v2, 0x193

    if-ne v0, v2, :cond_2

    .line 3439
    const/4 v2, -0x4

    goto :goto_0

    .line 3441
    :cond_2
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V
    .locals 7
    .parameter "filename"
    .parameter "force"
    .parameter "token"
    .parameter "nonce"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2634
    if-nez p1, :cond_0

    .line 2635
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "filename cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2638
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2639
    .local v3, callerUid:I
    new-instance v0, Lcom/android/server/MountService$ObbState;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/MountService$ObbState;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V

    .line 2640
    .local v0, obbState:Lcom/android/server/MountService$ObbState;
    new-instance v6, Lcom/android/server/MountService$UnmountObbAction;

    invoke-direct {v6, p0, v0, p2}, Lcom/android/server/MountService$UnmountObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Z)V

    .line 2641
    .local v6, action:Lcom/android/server/MountService$ObbAction;
    iget-object v1, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v2, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v6}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2643
    sget-boolean v1, Lcom/android/server/MountService;->DEBUG_OBB:Z

    if-eqz v1, :cond_1

    .line 2644
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send to OBB handler: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Lcom/android/server/MountService$UnmountObbAction;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2645
    :cond_1
    return-void
.end method

.method public unmountSecureContainer(Ljava/lang/String;Z)I
    .locals 8
    .parameter "id"
    .parameter "force"

    .prologue
    .line 2438
    const-string v4, "android.permission.ASEC_MOUNT_UNMOUNT"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2439
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2440
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2442
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    .line 2443
    :try_start_0
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2444
    const/4 v3, -0x5

    monitor-exit v5

    .line 2477
    :cond_0
    :goto_0
    return v3

    .line 2446
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2454
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    .line 2456
    const/4 v3, 0x0

    .line 2458
    .local v3, rc:I
    :try_start_1
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "unmount"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-direct {v0, v4, v5}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2459
    .local v0, cmd:Lcom/android/server/NativeDaemonConnector$Command;
    if-eqz p2, :cond_2

    .line 2460
    const-string v4, "force"

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2462
    :cond_2
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2472
    .end local v0           #cmd:Lcom/android/server/NativeDaemonConnector$Command;
    :goto_1
    if-nez v3, :cond_0

    .line 2473
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    .line 2474
    :try_start_2
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2475
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 2446
    .end local v3           #rc:I
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 2463
    .restart local v3       #rc:I
    :catch_0
    move-exception v2

    .line 2464
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 2465
    .local v1, code:I
    const/16 v4, 0x195

    if-ne v1, v4, :cond_3

    .line 2466
    const/4 v3, -0x7

    goto :goto_1

    .line 2468
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public unmountVolume(Ljava/lang/String;ZZ)V
    .locals 8
    .parameter "path"
    .parameter "force"
    .parameter "removeEncryption"

    .prologue
    const/4 v7, 0x1

    .line 2229
    const-string v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2230
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2232
    invoke-virtual {p0, p1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2233
    .local v2, volState:Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/MountService;->DEBUG_UNMOUNT:Z

    if-eqz v3, :cond_0

    .line 2234
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unmounting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " force = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " removeEncryption = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    :cond_0
    const-string v3, "unmounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "removed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "shared"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "unmountable"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2258
    :cond_1
    :goto_0
    return-void

    .line 2246
    :cond_2
    const-string v3, "unmount"

    const/4 v4, 0x0

    invoke-direct {p0, p1, v3, p2, v4}, Lcom/android/server/MountService;->prepareUnmount(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/storage/IMountShutdownObserver;)V

    .line 2248
    iget-object v3, p0, Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2249
    new-instance v1, Lcom/android/server/MountService$UnmountCallBack;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ZZ)V

    .line 2250
    .local v1, ucb:Lcom/android/server/MountService$UnmountCallBack;
    iget-object v3, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2252
    .end local v1           #ucb:Lcom/android/server/MountService$UnmountCallBack;
    :cond_3
    invoke-direct {p0, p1, v7, p3}, Lcom/android/server/MountService;->doUnmountVolume(Ljava/lang/String;ZZ)I

    move-result v0

    .line 2253
    .local v0, rc:I
    if-eqz v0, :cond_1

    .line 2254
    const-string v3, "MountService"

    const-string v4, "Failed to unmount %s (%d)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterListener(Landroid/os/storage/IMountServiceListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 1738
    iget-object v3, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1739
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountServiceBinderListener;

    .line 1740
    .local v0, bl:Lcom/android/server/MountService$MountServiceBinderListener;
    iget-object v2, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    if-ne v2, p1, :cond_0

    .line 1741
    iget-object v2, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1742
    monitor-exit v3

    .line 1746
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    :goto_0
    return-void

    .line 1745
    :cond_1
    monitor-exit v3

    goto :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public verifyEncryptionPassword(Ljava/lang/String;)I
    .locals 7
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2764
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    .line 2765
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "no permission to access the crypt keeper"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2768
    :cond_0
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2771
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2772
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "password cannot be empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2775
    :cond_1
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2777
    sget-boolean v2, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v2, :cond_2

    .line 2778
    const-string v2, "MountService"

    const-string v3, "validating encryption password..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2783
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "verifypw"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 2784
    .local v1, event:Lcom/android/server/NativeDaemonEvent;
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cryptfs verifypw => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2785
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2788
    .end local v1           #event:Lcom/android/server/NativeDaemonEvent;
    :goto_0
    return v2

    .line 2786
    :catch_0
    move-exception v0

    .line 2788
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v2

    goto :goto_0
.end method

.method waitForAsecScan()V
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;)V

    .line 509
    return-void
.end method
