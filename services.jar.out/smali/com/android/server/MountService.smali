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

.field private static EAS_ALLOW_SD:Z = false

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

    .line 123
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/MountService;->LOCAL_LOGD:Z

    .line 124
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/MountService;->DEBUG_UNMOUNT:Z

    .line 125
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    .line 126
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/MountService;->DEBUG_OBB:Z

    .line 136
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/MountService;->EAS_ALLOW_SD:Z

    .line 149
    sput-boolean v1, Lcom/android/server/MountService;->Share_SD_only:Z

    .line 248
    sput-boolean v1, Lcom/android/server/MountService;->boot_initISO:Z

    .line 343
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

    .line 1743
    invoke-direct {p0}, Landroid/os/storage/IMountService$Stub;-><init>()V

    .line 141
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/MountService;->mKeyStore:Landroid/security/KeyStore;

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    .line 214
    iput-object v4, p0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    .line 215
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    .line 216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mVolumeMap:Ljava/util/HashMap;

    .line 222
    iput-boolean v9, p0, Lcom/android/server/MountService;->mUmsAvailable:Z

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    .line 226
    iput-boolean v9, p0, Lcom/android/server/MountService;->mBooted:Z

    .line 227
    iput-boolean v9, p0, Lcom/android/server/MountService;->mBootTimeMount:Z

    .line 228
    iput-boolean v9, p0, Lcom/android/server/MountService;->mReady:Z

    .line 229
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    .line 230
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    .line 231
    iput-boolean v9, p0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    .line 233
    iput-boolean v9, p0, Lcom/android/server/MountService;->mEmulateExternalStorage:Z

    .line 235
    iput-boolean v9, p0, Lcom/android/server/MountService;->flag3lm:Z

    .line 237
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mUmsProceedLock:Ljava/util/concurrent/locks/Lock;

    .line 238
    iget-object v0, p0, Lcom/android/server/MountService;->mUmsProceedLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/MountService;->mUmsCond:Ljava/util/concurrent/locks/Condition;

    .line 239
    iput-boolean v9, p0, Lcom/android/server/MountService;->mUmsProceeding:Z

    .line 246
    iput v9, p0, Lcom/android/server/MountService;->sharing:I

    .line 249
    iput-boolean v9, p0, Lcom/android/server/MountService;->sdcard_fuse:Z

    .line 256
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    .line 274
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    .line 275
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    .line 346
    new-instance v0, Lcom/android/server/MountService$DefaultContainerConnection;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$DefaultContainerConnection;-><init>(Lcom/android/server/MountService;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

    .line 363
    iput-object v4, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    .line 544
    new-instance v0, Lcom/android/server/MountService$1;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$1;-><init>(Lcom/android/server/MountService;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1744
    iput-object p1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    .line 1745
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/MountService;->mRemovableStoragePath:Ljava/lang/String;

    .line 1746
    invoke-static {}, Landroid/os/Environment;->getUsbDeviceDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/MountService;->mUsbDeviceStoragePath:Ljava/lang/String;

    .line 1747
    const-string v0, "MountService"

    const-string v1, "Share_SD_only"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    sput-boolean v3, Lcom/android/server/MountService;->Share_SD_only:Z

    .line 1749
    const-string v0, "true"

    const-string v1, "persist.fuse_sdcard"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1750
    const-string v0, "MountService"

    const-string v1, "Fuse enabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    iput-boolean v3, p0, Lcom/android/server/MountService;->sdcard_fuse:Z

    .line 1753
    :cond_0
    invoke-direct {p0}, Lcom/android/server/MountService;->readStorageList()V

    .line 1755
    iget-object v0, p0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_1

    .line 1756
    iget-object v0, p0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;

    .line 1757
    iget-object v0, p0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/MountService;->mEmulateExternalStorage:Z

    .line 1758
    iget-boolean v0, p0, Lcom/android/server/MountService;->mEmulateExternalStorage:Z

    if-eqz v0, :cond_1

    .line 1759
    const-string v0, "MountService"

    const-string v1, "using emulated external storage"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;

    const-string v2, "mounted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1765
    :cond_1
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 1767
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 1768
    .local v6, filter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1770
    iget-object v0, p0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1771
    const-string v0, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1775
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sd_encryption"

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 1777
    .local v7, sdEncrypted:I
    if-ne v7, v3, :cond_3

    .line 1778
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1781
    :cond_3
    invoke-direct {p0}, Lcom/android/server/MountService;->getSdcardPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1782
    const-string v0, "com.htc.admin.ALLOW_STORAGE_CARD_CHANGE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1784
    :cond_4
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/MountService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1786
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MountService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1787
    iget-object v0, p0, Lcom/android/server/MountService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1788
    new-instance v0, Lcom/android/server/MountService$MountServiceHandler;

    iget-object v1, p0, Lcom/android/server/MountService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/MountService$MountServiceHandler;-><init>(Lcom/android/server/MountService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    .line 1791
    new-instance v0, Lcom/android/server/MountService$ObbActionHandler;

    iget-object v1, p0, Lcom/android/server/MountService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/MountService$ObbActionHandler;-><init>(Lcom/android/server/MountService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    .line 1798
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    const-string v2, "vold"

    const/16 v3, 0x1f4

    const-string v4, "VoldConnector"

    const/16 v5, 0x19

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 1799
    iput-boolean v9, p0, Lcom/android/server/MountService;->mReady:Z

    .line 1800
    new-instance v8, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v1, "VoldConnector"

    invoke-direct {v8, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1801
    .local v8, thread:Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 1807
    return-void
.end method

.method private UmsProceedingDone()V
    .locals 2

    .prologue
    .line 1943
    iget-object v0, p0, Lcom/android/server/MountService;->mUmsProceedLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1945
    :try_start_0
    const-string v0, "MountService"

    const-string v1, "Finish to proceed Ums"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService;->mUmsProceeding:Z

    .line 1948
    iget-object v0, p0, Lcom/android/server/MountService;->mUmsCond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1950
    iget-object v0, p0, Lcom/android/server/MountService;->mUmsProceedLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1952
    return-void

    .line 1950
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
    .line 120
    iget-object v0, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 120
    sget-boolean v0, Lcom/android/server/MountService;->DEBUG_OBB:Z

    return v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 120
    sget-boolean v0, Lcom/android/server/MountService;->EAS_ALLOW_SD:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    sput-boolean p0, Lcom/android/server/MountService;->EAS_ALLOW_SD:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/android/server/MountService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/server/MountService;->mBooted:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/server/MountService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/server/MountService;->mBootTimeMount:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 120
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/MountService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/server/MountService;->initISO()I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/MountService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/MountService;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->isSdcardPath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/MountService;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/MountService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/server/MountService;->mEmulateExternalStorage:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/MountService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/MountService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    return p1
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 120
    sget-boolean v0, Lcom/android/server/MountService;->DEBUG_UNMOUNT:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/MountService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->sendUmsIntent(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/MountService;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->notifyShareAvailabilityChange(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/MountService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/server/MountService;->mountSdcard()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/MountService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/server/MountService;->unmountSdcard()V

    return-void
.end method

.method static synthetic access$2400()Z
    .locals 1

    .prologue
    .line 120
    sget-boolean v0, Lcom/android/server/MountService;->LOCAL_LOGD:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/MountService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    return-object v0
.end method

.method static synthetic access$2700()Z
    .locals 1

    .prologue
    .line 120
    sget-boolean v0, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/MountService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/MountService;Ljava/lang/String;ZZ)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 120
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/MountService;->doUnmountVolume(Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/MountService;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doGetShareMethodAvailable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/server/MountService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/server/MountService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/android/server/MountService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/server/MountService;->mReady:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/server/MountService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForUmsProceeding()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/MountService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3600()Z
    .locals 1

    .prologue
    .line 120
    sget-boolean v0, Lcom/android/server/MountService;->Share_SD_only:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/MountService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/server/MountService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/server/MountService;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/MountService;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 120
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->removeObbStateLocked(Lcom/android/server/MountService$ObbState;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/MountService;)Lcom/android/server/MountService$DefaultContainerConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/MountService;->mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/MountService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/MountService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/MountService;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->addObbStateLocked(Lcom/android/server/MountService$ObbState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/MountService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/server/MountService;->UmsProceedingDone()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/MountService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 120
    sget-boolean v0, Lcom/android/server/MountService;->boot_initISO:Z

    return v0
.end method

.method static synthetic access$802(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    sput-boolean p0, Lcom/android/server/MountService;->boot_initISO:Z

    return p0
.end method

.method static synthetic access$900(Lcom/android/server/MountService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    return-object v0
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
    .line 2892
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2893
    .local v0, binder:Landroid/os/IBinder;
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2895
    .local v4, obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    if-nez v4, :cond_1

    .line 2896
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2897
    .restart local v4       #obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2907
    :cond_0
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2909
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->link()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2924
    iget-object v5, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v6, p1, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2925
    return-void

    .line 2899
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

    .line 2900
    .local v3, o:Lcom/android/server/MountService$ObbState;
    iget-object v5, v3, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2901
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Attempt to add ObbState twice. This indicates an error in the MountService logic."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2910
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #o:Lcom/android/server/MountService$ObbState;
    :catch_0
    move-exception v1

    .line 2915
    .local v1, e:Landroid/os/RemoteException;
    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2916
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2917
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2921
    :cond_3
    throw v1
.end method

.method private doFormatVolume(Ljava/lang/String;)I
    .locals 10
    .parameter "path"

    .prologue
    const/4 v3, -0x1

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 1459
    sget-boolean v5, Lcom/android/server/MountService;->EAS_ALLOW_SD:Z

    if-nez v5, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/MountService;->isSdcardPath(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1489
    :cond_0
    :goto_0
    return v3

    .line 1465
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sd_encryption"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    if-ne v5, v7, :cond_3

    .line 1467
    invoke-direct {p0}, Lcom/android/server/MountService;->getEncKey()Ljava/lang/String;

    move-result-object v2

    .line 1469
    .local v2, key:Ljava/lang/String;
    sget-boolean v5, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v5, :cond_2

    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "encryptVolume: Encrypting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1471
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v6, "volume"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "encrypt"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 v8, 0x2

    aput-object v2, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    move v3, v4

    .line 1474
    goto :goto_0

    .line 1476
    .end local v2           #key:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 1480
    :cond_3
    :try_start_2
    iget-object v5, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v6, "volume"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "format"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_1

    move v3, v4

    .line 1481
    goto :goto_0

    .line 1482
    :catch_1
    move-exception v1

    .line 1483
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 1484
    .local v0, code:I
    const/16 v4, 0x191

    if-ne v0, v4, :cond_4

    .line 1485
    const/4 v3, -0x2

    goto :goto_0

    .line 1486
    :cond_4
    const/16 v4, 0x193

    if-ne v0, v4, :cond_0

    .line 1487
    const/4 v3, -0x4

    goto :goto_0

    .line 1472
    .end local v0           #code:I
    .end local v1           #e:Lcom/android/server/NativeDaemonConnectorException;
    .restart local v2       #key:Ljava/lang/String;
    :catch_2
    move-exception v3

    goto :goto_1
.end method

.method private doGetShareMethodAvailable(Ljava/lang/String;)Z
    .locals 12
    .parameter "method"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1208
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

    .line 1214
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

    .line 1215
    .local v3, line:Ljava/lang/String;
    const-string v9, " "

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1216
    .local v6, tok:[Ljava/lang/String;
    array-length v9, v6

    const/4 v10, 0x3

    if-ge v9, v10, :cond_1

    .line 1217
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

    .line 1238
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #line:Ljava/lang/String;
    .end local v5           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #tok:[Ljava/lang/String;
    :cond_0
    :goto_0
    return v7

    .line 1209
    :catch_0
    move-exception v1

    .line 1210
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

    .line 1223
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

    .line 1228
    .local v0, code:I
    const/16 v9, 0xd2

    if-ne v0, v9, :cond_2

    .line 1229
    const/4 v9, 0x2

    aget-object v9, v6, v9

    const-string v10, "available"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v7, v8

    .line 1230
    goto :goto_0

    .line 1224
    .end local v0           #code:I
    :catch_1
    move-exception v4

    .line 1225
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

    .line 1233
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

    .line 1237
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

    .line 1497
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

    .line 1503
    .local v0, event:Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v3

    const/16 v4, 0xd4

    if-ne v3, v4, :cond_0

    .line 1504
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "enabled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    .line 1506
    .end local v0           #event:Lcom/android/server/NativeDaemonEvent;
    :cond_0
    :goto_0
    return v2

    .line 1498
    :catch_0
    move-exception v1

    .line 1499
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
    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1270
    const/4 v6, 0x0

    .line 1271
    .local v6, rc:I
    const/4 v7, 0x0

    .line 1274
    .local v7, sd_encryption:Z
    sget-boolean v10, Lcom/android/server/MountService;->EAS_ALLOW_SD:Z

    if-nez v10, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/MountService;->isSdcardPath(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1275
    const/4 v8, -0x1

    .line 1358
    :goto_0
    return v8

    .line 1278
    :cond_0
    :try_start_0
    iget-object v10, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "sd_encryption"

    invoke-static {v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    if-ne v10, v8, :cond_1

    move v7, v8

    .line 1285
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1286
    .local v5, parent:Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {p0, v5}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "mounted"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 1287
    invoke-direct {p0, v5}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v6

    .line 1288
    if-eqz v6, :cond_2

    .line 1289
    const-string v10, "MountService"

    const-string v11, "Failed to mount parent %s when trying to mount %s (%d)"

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v5, v12, v9

    aput-object p1, v12, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v6

    .line 1291
    goto :goto_0

    .end local v5           #parent:Ljava/lang/String;
    :cond_1
    move v7, v9

    .line 1278
    goto :goto_1

    .line 1294
    .restart local v5       #parent:Ljava/lang/String;
    :cond_2
    sget-boolean v8, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v8, :cond_3

    const-string v8, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "doMountVolume: Mouting "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    :cond_3
    :try_start_1
    const-string v3, "null"

    .line 1298
    .local v3, key:Ljava/lang/String;
    const-string v4, "null"

    .line 1300
    .local v4, old_key:Ljava/lang/String;
    if-eqz v7, :cond_5

    .line 1301
    iget-object v8, p0, Lcom/android/server/MountService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v8}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v8

    sget-object v9, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v8, v9, :cond_5

    .line 1302
    iget-object v8, p0, Lcom/android/server/MountService;->mKeyStore:Landroid/security/KeyStore;

    const-string v9, "sd_encryption"

    invoke-virtual {v8, v9}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1303
    new-instance v4, Ljava/lang/String;

    .end local v4           #old_key:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/MountService;->mKeyStore:Landroid/security/KeyStore;

    const-string v9, "sd_encryption"

    invoke-virtual {v8, v9}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/String;-><init>([B)V

    .line 1305
    .restart local v4       #old_key:Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lcom/android/server/MountService;->mKeyStore:Landroid/security/KeyStore;

    const-string v9, "sd_encryption_256"

    invoke-virtual {v8, v9}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1306
    new-instance v3, Ljava/lang/String;

    .end local v3           #key:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/MountService;->mKeyStore:Landroid/security/KeyStore;

    const-string v9, "sd_encryption_256"

    invoke-virtual {v8, v9}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/String;-><init>([B)V

    .line 1318
    .restart local v3       #key:Ljava/lang/String;
    :cond_5
    iget-object v9, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v10, "volume"

    const/4 v8, 0x5

    new-array v11, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v12, "mount_encrypted"

    aput-object v12, v11, v8

    const/4 v8, 0x1

    aput-object p1, v11, v8

    const/4 v8, 0x2

    aput-object v3, v11, v8

    const/4 v8, 0x3

    aput-object v4, v11, v8

    const/4 v12, 0x4

    if-eqz v7, :cond_7

    const-string v8, "on"

    :goto_2
    aput-object v8, v11, v12

    invoke-virtual {v9, v10, v11}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .end local v3           #key:Ljava/lang/String;
    .end local v4           #old_key:Ljava/lang/String;
    :cond_6
    :goto_3
    move v8, v6

    .line 1358
    goto/16 :goto_0

    .line 1318
    .restart local v3       #key:Ljava/lang/String;
    .restart local v4       #old_key:Ljava/lang/String;
    :cond_7
    const-string v8, "off"
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1319
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #old_key:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1323
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v0, 0x0

    .line 1324
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 1325
    .local v1, code:I
    const/16 v8, 0x191

    if-ne v1, v8, :cond_8

    .line 1329
    const/4 v6, -0x2

    .line 1353
    :goto_4
    if-eqz v0, :cond_6

    .line 1354
    invoke-direct {p0, v0, p1}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1330
    :cond_8
    const/16 v8, 0x192

    if-ne v1, v8, :cond_a

    .line 1331
    sget-boolean v8, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v8, :cond_9

    const-string v8, "MountService"

    const-string v9, " updating volume state :: media nofs"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    :cond_9
    const-string v8, "nofs"

    invoke-direct {p0, p1, v8}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    const-string v0, "android.intent.action.MEDIA_NOFS"

    .line 1337
    const/4 v6, -0x3

    goto :goto_4

    .line 1338
    :cond_a
    const/16 v8, 0x193

    if-ne v1, v8, :cond_c

    .line 1339
    sget-boolean v8, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v8, :cond_b

    const-string v8, "MountService"

    const-string v9, "updating volume state media corrupt"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    :cond_b
    const-string v8, "unmountable"

    invoke-direct {p0, p1, v8}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    const-string v0, "android.intent.action.MEDIA_UNMOUNTABLE"

    .line 1345
    const/4 v6, -0x4

    goto :goto_4

    .line 1347
    :cond_c
    const/4 v6, -0x1

    goto :goto_4

    .line 1280
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #code:I
    .end local v2           #e:Lcom/android/server/NativeDaemonConnectorException;
    .end local v5           #parent:Ljava/lang/String;
    :catch_1
    move-exception v10

    goto/16 :goto_1
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

    .line 741
    const-string v3, "ums"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 742
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Method %s not supported"

    new-array v5, v10, [Ljava/lang/Object;

    aput-object p2, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 746
    :cond_0
    sget-boolean v3, Lcom/android/server/MountService;->EAS_ALLOW_SD:Z

    if-nez v3, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/MountService;->isSdcardPath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 806
    :cond_1
    :goto_0
    return-void

    .line 749
    :cond_2
    if-eqz p3, :cond_4

    .line 750
    sget-boolean v3, Lcom/android/server/MountService;->Share_SD_only:Z

    if-nez v3, :cond_3

    .line 751
    iget v3, p0, Lcom/android/server/MountService;->sharing:I

    if-nez v3, :cond_4

    .line 752
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 753
    const-string v3, "MountService"

    const-string v4, "Mount volume while sharing is false"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iput v9, p0, Lcom/android/server/MountService;->sharing:I

    .line 755
    const-string v3, "ums"

    invoke-direct {p0, v3, v8}, Lcom/android/server/MountService;->notifyShareAvailabilityChange(Ljava/lang/String;Z)V

    goto :goto_0

    .line 762
    :cond_3
    iget v3, p0, Lcom/android/server/MountService;->sharing:I

    if-nez v3, :cond_4

    .line 763
    const-string v3, "MountService"

    const-string v4, "Mount volume while sharing is false"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    iput v9, p0, Lcom/android/server/MountService;->sharing:I

    .line 765
    const-string v3, "ums"

    invoke-direct {p0, v3, v8}, Lcom/android/server/MountService;->notifyShareAvailabilityChange(Ljava/lang/String;Z)V

    goto :goto_0

    .line 772
    :cond_4
    if-eqz p3, :cond_7

    .line 774
    :try_start_0
    const-string v1, "null"

    .line 775
    .local v1, key:Ljava/lang/String;
    const-string v2, "null"

    .line 776
    .local v2, old_key:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/MountService;->mKeyStore:Landroid/security/KeyStore;

    const-string v4, "sd_encryption"

    invoke-virtual {v3, v4}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 777
    new-instance v2, Ljava/lang/String;

    .end local v2           #old_key:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/MountService;->mKeyStore:Landroid/security/KeyStore;

    const-string v4, "sd_encryption"

    invoke-virtual {v3, v4}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 778
    .restart local v2       #old_key:Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/android/server/MountService;->mKeyStore:Landroid/security/KeyStore;

    const-string v4, "sd_encryption_256"

    invoke-virtual {v3, v4}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 779
    new-instance v1, Ljava/lang/String;

    .end local v1           #key:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/MountService;->mKeyStore:Landroid/security/KeyStore;

    const-string v4, "sd_encryption_256"

    invoke-virtual {v3, v4}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    .line 780
    .restart local v1       #key:Ljava/lang/String;
    :cond_6
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

    goto/16 :goto_0

    .line 784
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #old_key:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 785
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v3, "MountService"

    const-string v4, "Failed to share/unshare"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 786
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

    .line 787
    sget-boolean v3, Lcom/android/server/MountService;->Share_SD_only:Z

    if-nez v3, :cond_9

    .line 788
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 789
    iget v3, p0, Lcom/android/server/MountService;->sharing:I

    if-nez v3, :cond_8

    .line 790
    iput v9, p0, Lcom/android/server/MountService;->sharing:I

    .line 791
    const-string v3, "ums"

    invoke-direct {p0, v3, v8}, Lcom/android/server/MountService;->notifyShareAvailabilityChange(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 782
    .end local v0           #e:Lcom/android/server/NativeDaemonConnectorException;
    :cond_7
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

    .line 793
    .restart local v0       #e:Lcom/android/server/NativeDaemonConnectorException;
    :cond_8
    iput v9, p0, Lcom/android/server/MountService;->sharing:I

    goto/16 :goto_0

    .line 798
    :cond_9
    iget v3, p0, Lcom/android/server/MountService;->sharing:I

    if-nez v3, :cond_a

    .line 799
    iput v9, p0, Lcom/android/server/MountService;->sharing:I

    .line 800
    const-string v3, "ums"

    invoke-direct {p0, v3, v8}, Lcom/android/server/MountService;->notifyShareAvailabilityChange(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 802
    :cond_a
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

    .line 1373
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

    .line 1415
    :goto_0
    return v3

    .line 1384
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->gc()V

    .line 1387
    iget-object v5, p0, Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1388
    sget-boolean v5, Lcom/android/server/MountService;->DEBUG_UNMOUNT:Z

    if-eqz v5, :cond_1

    const-string v5, "MountService"

    const-string v6, "Updating external media status on PackageManager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    :cond_1
    iget-object v5, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5, v4, v4}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    .line 1392
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

    .line 1393
    .local v0, cmd:Lcom/android/server/NativeDaemonConnector$Command;
    if-eqz p3, :cond_5

    .line 1394
    const-string v5, "force_and_revert"

    invoke-virtual {v0, v5}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1398
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v5, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;

    .line 1400
    iget-object v5, p0, Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1401
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1402
    :try_start_1
    iget-object v6, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 1403
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    move v3, v4

    .line 1405
    goto :goto_0

    .line 1395
    :cond_5
    if-eqz p2, :cond_3

    .line 1396
    :try_start_2
    const-string v5, "force"

    invoke-virtual {v0, v5}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1406
    .end local v0           #cmd:Lcom/android/server/NativeDaemonConnector$Command;
    :catch_0
    move-exception v2

    .line 1409
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 1410
    .local v1, code:I
    if-ne v1, v3, :cond_6

    .line 1411
    const/4 v3, -0x5

    goto :goto_0

    .line 1403
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

    .line 1412
    .end local v0           #cmd:Lcom/android/server/NativeDaemonConnector$Command;
    .restart local v1       #code:I
    .restart local v2       #e:Lcom/android/server/NativeDaemonConnectorException;
    :cond_6
    const/16 v3, 0x195

    if-ne v1, v3, :cond_7

    .line 1413
    const/4 v3, -0x7

    goto :goto_0

    .line 1415
    :cond_7
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private findChilds(Ljava/lang/String;)[Ljava/lang/String;
    .locals 12
    .parameter "path"

    .prologue
    .line 2228
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumeMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    .line 2230
    .local v2, mntVol:Landroid/os/storage/StorageVolume;
    if-nez v2, :cond_0

    .line 2231
    const/4 v6, 0x0

    .line 2255
    :goto_0
    return-object v6

    .line 2233
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2234
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v7

    .line 2235
    :try_start_0
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 2236
    .local v5, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v5, :cond_3

    .line 2238
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

    .line 2236
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2241
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

    .line 2243
    .local v3, parentLevel:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getLevelId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2244
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

    .line 2246
    .end local v3           #parentLevel:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2247
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

    .line 2253
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

    .line 2255
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    goto/16 :goto_0

    .line 2249
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

    .line 1245
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumeMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    .line 1247
    .local v2, mntVol:Landroid/os/storage/StorageVolume;
    if-nez v2, :cond_0

    move-object v5, v6

    .line 1266
    :goto_0
    return-object v5

    .line 1251
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

    .line 1252
    .local v3, parentLevel:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1253
    :try_start_1
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1254
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 1255
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageVolume;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getLevelId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1256
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageVolume;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    monitor-exit v7

    goto :goto_0

    .line 1258
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

    .line 1259
    .end local v3           #parentLevel:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1260
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

    .line 1266
    goto :goto_0

    .line 1254
    .restart local v1       #i:I
    .restart local v3       #parentLevel:Ljava/lang/String;
    .restart local v4       #size:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1258
    :cond_2
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 1262
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
    .line 1425
    iget-object v9, p0, Lcom/android/server/MountService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v9}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v9

    sget-object v10, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v9, v10, :cond_0

    .line 1426
    iget-object v9, p0, Lcom/android/server/MountService;->mKeyStore:Landroid/security/KeyStore;

    const-string v10, "sd_encryption_256"

    invoke-virtual {v9, v10}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1427
    new-instance v1, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/MountService;->mKeyStore:Landroid/security/KeyStore;

    const-string v10, "sd_encryption_256"

    invoke-virtual {v9, v10}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/lang/String;-><init>([B)V

    .line 1454
    :goto_0
    return-object v1

    .line 1433
    :cond_0
    :try_start_0
    const-string v9, "AES"

    invoke-static {v9}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v7

    .line 1434
    .local v7, skg:Ljavax/crypto/KeyGenerator;
    const-string v9, "SHA1PRNG"

    invoke-static {v9}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v8

    .line 1435
    .local v8, srng:Ljava/security/SecureRandom;
    const/16 v9, 0x100

    invoke-virtual {v7, v9, v8}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1440
    invoke-virtual {v7}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v6

    .line 1441
    .local v6, sk_x:Ljavax/crypto/SecretKey;
    invoke-interface {v6}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v4

    .line 1442
    .local v4, retKey_x:[B
    invoke-static {v4}, Landroid/security/SystemKeyStore;->toHexString([B)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/16 v11, 0x8

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1446
    .local v2, encKey_x:Ljava/lang/String;
    invoke-virtual {v7}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v5

    .line 1447
    .local v5, sk:Ljavax/crypto/SecretKey;
    invoke-interface {v5}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    .line 1451
    .local v3, retKey:[B
    invoke-static {v3}, Landroid/security/SystemKeyStore;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 1453
    .local v1, encKey:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/MountService;->mKeyStore:Landroid/security/KeyStore;

    const-string v10, "sd_encryption_256"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    goto :goto_0

    .line 1436
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

    .line 1437
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSdcardPath()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3562
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3564
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 3572
    :cond_0
    :goto_0
    return-object v0

    .line 3565
    :cond_1
    invoke-static {}, Landroid/os/Environment;->hasInternalFat()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3569
    iget-object v1, p0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3570
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getUmsEnabling()Z
    .locals 2

    .prologue
    .line 1911
    iget-object v1, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1912
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/MountService;->mUmsEnabling:Z

    monitor-exit v1

    return v0

    .line 1913
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

    .line 3543
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3544
    sget-boolean v3, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v3, :cond_0

    const-string v3, "MountService"

    const-string v4, "initISO"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3546
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

    .line 3547
    const-string v3, "MountService"

    const-string v4, "initISO --"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3556
    :goto_0
    return v2

    .line 3549
    :catch_0
    move-exception v1

    .line 3550
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 3551
    .local v0, code:I
    const/16 v2, 0x191

    if-ne v0, v2, :cond_1

    .line 3552
    const/4 v2, -0x2

    goto :goto_0

    .line 3553
    :cond_1
    const/16 v2, 0x193

    if-ne v0, v2, :cond_2

    .line 3554
    const/4 v2, -0x4

    goto :goto_0

    .line 3556
    :cond_2
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private isSdcardPath(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 3577
    invoke-direct {p0}, Lcom/android/server/MountService;->getSdcardPath()Ljava/lang/String;

    move-result-object v0

    .line 3578
    .local v0, sdPath:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 3579
    const/4 v1, 0x0

    .line 3581
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z
    .locals 6
    .parameter "packageName"
    .parameter "callerUid"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2650
    const/16 v3, 0x3e8

    if-ne p2, v3, :cond_1

    .line 2665
    :cond_0
    :goto_0
    return v1

    .line 2654
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 2655
    goto :goto_0

    .line 2658
    :cond_2
    iget-object v3, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p2}, Landroid/os/UserId;->getUserId(I)I

    move-result v4

    invoke-virtual {v3, p1, v4}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    .line 2660
    .local v0, packageUid:I
    sget-boolean v3, Lcom/android/server/MountService;->DEBUG_OBB:Z

    if-eqz v3, :cond_3

    .line 2661
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

    .line 2665
    :cond_3
    if-eq p2, v0, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private mountSdcard()V
    .locals 1

    .prologue
    .line 3585
    invoke-direct {p0}, Lcom/android/server/MountService;->getSdcardPath()Ljava/lang/String;

    move-result-object v0

    .line 3586
    .local v0, sdPath:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3587
    invoke-virtual {p0, v0}, Lcom/android/server/MountService;->mountVolume(Ljava/lang/String;)I

    .line 3588
    :cond_0
    return-void
.end method

.method private notifyISOStateChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "path"
    .parameter "state"

    .prologue
    .line 3535
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.MEDIA_ISO_MOUNTED"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3537
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "enable"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3538
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

    .line 3539
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3540
    return-void
.end method

.method private notifyShareAvailabilityChange(Ljava/lang/String;Z)V
    .locals 11
    .parameter "method"
    .parameter "avail"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1511
    const-string v5, "ums"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1512
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

    .line 1618
    :cond_0
    :goto_0
    return-void

    .line 1516
    :cond_1
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1517
    :try_start_0
    iput-boolean p2, p0, Lcom/android/server/MountService;->mUmsAvailable:Z

    .line 1518
    iget-object v5, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_2

    .line 1519
    iget-object v5, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountServiceBinderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1521
    .local v0, bl:Lcom/android/server/MountService$MountServiceBinderListener;
    :try_start_1
    iget-object v5, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    invoke-interface {v5, p2}, Landroid/os/storage/IMountServiceListener;->onUsbMassStorageConnectionChanged(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1518
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1522
    :catch_0
    move-exception v4

    .line 1523
    .local v4, rex:Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "MountService"

    const-string v7, "Listener dead"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    iget-object v5, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 1529
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v2           #i:I
    .end local v4           #rex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 1525
    .restart local v0       #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .restart local v2       #i:I
    :catch_1
    move-exception v1

    .line 1526
    .local v1, ex:Ljava/lang/Exception;
    :try_start_3
    const-string v5, "MountService"

    const-string v7, "Listener failed"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1529
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_2
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1531
    iget-boolean v5, p0, Lcom/android/server/MountService;->mBooted:Z

    if-ne v5, v10, :cond_4

    .line 1532
    invoke-direct {p0, p2}, Lcom/android/server/MountService;->sendUmsIntent(Z)V

    .line 1537
    :goto_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 1538
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

    .line 1539
    iget v5, p0, Lcom/android/server/MountService;->sharing:I

    if-ne v5, v10, :cond_3

    .line 1540
    iput v9, p0, Lcom/android/server/MountService;->sharing:I

    .line 1541
    :cond_3
    if-nez p2, :cond_0

    iget v5, p0, Lcom/android/server/MountService;->sharing:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 1545
    iput v9, p0, Lcom/android/server/MountService;->sharing:I

    .line 1546
    new-instance v5, Lcom/android/server/MountService$4;

    invoke-direct {v5, p0}, Lcom/android/server/MountService$4;-><init>(Lcom/android/server/MountService;)V

    invoke-virtual {v5}, Lcom/android/server/MountService$4;->start()V

    goto :goto_0

    .line 1534
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

    .line 1095
    invoke-virtual {p0, p2}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1096
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

    .line 1098
    :cond_0
    const/4 v1, 0x0

    .line 1099
    .local v1, in:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 1101
    .local v0, action:Ljava/lang/String;
    if-ne p3, v10, :cond_2

    if-eq p4, p3, :cond_2

    .line 1102
    sget-boolean v6, Lcom/android/server/MountService;->LOCAL_LOGD:Z

    if-eqz v6, :cond_1

    const-string v6, "MountService"

    const-string v7, "Sending ACTION_MEDIA_UNSHARED intent"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    :cond_1
    const-string v6, "android.intent.action.MEDIA_UNSHARED"

    invoke-direct {p0, v6, p2}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    :cond_2
    const/4 v6, -0x1

    if-ne p4, v6, :cond_5

    .line 1200
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 1201
    invoke-direct {p0, v0, p2}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    :cond_4
    :goto_1
    return-void

    .line 1107
    :cond_5
    if-eqz p4, :cond_3

    .line 1109
    if-ne p4, v4, :cond_7

    .line 1114
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

    .line 1118
    sget-boolean v4, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v4, :cond_6

    const-string v4, "MountService"

    const-string v5, "updating volume state for media bad removal nofs and unmountable"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    :cond_6
    const-string v4, "unmounted"

    invoke-direct {p0, p2, v4}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    goto :goto_0

    .line 1122
    :cond_7
    if-eq p4, v9, :cond_3

    .line 1123
    const/4 v6, 0x3

    if-ne p4, v6, :cond_9

    .line 1124
    sget-boolean v4, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v4, :cond_8

    const-string v4, "MountService"

    const-string v5, "updating volume state checking"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    :cond_8
    const-string v4, "checking"

    invoke-direct {p0, p2, v4}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    const-string v0, "android.intent.action.MEDIA_CHECKING"

    goto :goto_0

    .line 1127
    :cond_9
    const/4 v6, 0x4

    if-ne p4, v6, :cond_b

    .line 1128
    sget-boolean v4, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v4, :cond_a

    const-string v4, "MountService"

    const-string v5, "updating volume state mounted"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    :cond_a
    const-string v4, "mounted"

    invoke-direct {p0, p2, v4}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    goto :goto_0

    .line 1131
    :cond_b
    const/16 v6, 0xa

    if-ne p4, v6, :cond_d

    .line 1132
    sget-boolean v5, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v5, :cond_c

    const-string v5, "MountService"

    const-string v6, "updating volume state mounted read-only"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    :cond_c
    const-string v5, "mounted_ro"

    invoke-direct {p0, p2, v5}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
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

    .line 1135
    .restart local v1       #in:Landroid/content/Intent;
    const-string v5, "read-only"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1136
    iget-object v4, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1137
    :cond_d
    const/4 v6, 0x5

    if-ne p4, v6, :cond_e

    .line 1138
    const-string v0, "android.intent.action.MEDIA_EJECT"

    goto/16 :goto_0

    .line 1139
    :cond_e
    const/4 v6, 0x6

    if-eq p4, v6, :cond_3

    .line 1140
    if-ne p4, v10, :cond_19

    .line 1141
    sget-boolean v6, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v6, :cond_f

    const-string v6, "MountService"

    const-string v7, "Updating volume state media mounted"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    :cond_f
    sget-boolean v6, Lcom/android/server/MountService;->Share_SD_only:Z

    if-nez v6, :cond_16

    .line 1143
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

    .line 1144
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

    .line 1145
    :cond_10
    const-string v6, "unmounted"

    invoke-direct {p0, p2, v6}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    const-string v6, "MountService"

    const-string v7, "Mount volume before notify shared"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    const-string v6, "shared"

    invoke-direct {p0, p2, v6}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    iput v9, p0, Lcom/android/server/MountService;->sharing:I

    .line 1149
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

    .line 1150
    const/4 v0, 0x0

    .line 1151
    const-string v4, "ums"

    invoke-direct {p0, v4, v5}, Lcom/android/server/MountService;->notifyShareAvailabilityChange(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .end local v2           #is_ins_without_sdcard:Z
    :cond_11
    move v2, v5

    .line 1143
    goto :goto_2

    .line 1154
    .restart local v2       #is_ins_without_sdcard:Z
    :cond_12
    const-string v6, "unmounted"

    invoke-direct {p0, p2, v6}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    const-string v6, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-direct {p0, v6, p2}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    sget-boolean v6, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v6, :cond_13

    const-string v6, "MountService"

    const-string v7, "Updating media shared"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    :cond_13
    const-string v6, "shared"

    invoke-direct {p0, p2, v6}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    const-string v0, "android.intent.action.MEDIA_SHARED"

    .line 1160
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    if-eqz v2, :cond_15

    .line 1161
    :cond_14
    iput v9, p0, Lcom/android/server/MountService;->sharing:I

    .line 1162
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

    .line 1163
    sget-boolean v4, Lcom/android/server/MountService;->LOCAL_LOGD:Z

    if-eqz v4, :cond_3

    const-string v4, "MountService"

    const-string v5, "Sending ACTION_MEDIA_SHARED intent"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1166
    .end local v2           #is_ins_without_sdcard:Z
    :cond_16
    iget v6, p0, Lcom/android/server/MountService;->sharing:I

    if-nez v6, :cond_17

    .line 1167
    const-string v6, "unmounted"

    invoke-direct {p0, p2, v6}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    const-string v6, "MountService"

    const-string v7, "Mount volume before notify shared"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    const-string v6, "shared"

    invoke-direct {p0, p2, v6}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    iput v9, p0, Lcom/android/server/MountService;->sharing:I

    .line 1171
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

    .line 1172
    const/4 v0, 0x0

    .line 1173
    const-string v4, "ums"

    invoke-direct {p0, v4, v5}, Lcom/android/server/MountService;->notifyShareAvailabilityChange(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1176
    :cond_17
    const-string v6, "unmounted"

    invoke-direct {p0, p2, v6}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    const-string v6, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-direct {p0, v6, p2}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    sget-boolean v6, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v6, :cond_18

    const-string v6, "MountService"

    const-string v7, "Updating media shared"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    :cond_18
    const-string v6, "shared"

    invoke-direct {p0, p2, v6}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    const-string v0, "android.intent.action.MEDIA_SHARED"

    .line 1182
    iput v9, p0, Lcom/android/server/MountService;->sharing:I

    .line 1183
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

    .line 1184
    sget-boolean v4, Lcom/android/server/MountService;->LOCAL_LOGD:Z

    if-eqz v4, :cond_3

    const-string v4, "MountService"

    const-string v5, "Sending ACTION_MEDIA_SHARED intent"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1187
    :cond_19
    const/16 v5, 0x8

    if-ne p4, v5, :cond_1a

    .line 1188
    const-string v4, "MountService"

    const-string v5, "Live shared mounts not supported yet!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1190
    :cond_1a
    const/16 v5, 0x9

    if-ne p4, v5, :cond_1c

    .line 1191
    sget-boolean v5, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v5, :cond_1b

    const-string v5, "MountService"

    const-string v6, "updating volume state mounted-READ ONLY"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    :cond_1b
    const-string v5, "mounted_ro"

    invoke-direct {p0, p2, v5}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
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

    .line 1194
    .restart local v1       #in:Landroid/content/Intent;
    const-string v5, "read-only"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1195
    iget-object v4, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1197
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

    .line 2264
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findChilds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2265
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

    .line 2266
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 2267
    const-string v4, "MountService"

    const-string v5, "child of %s: %s"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object p1, v6, v9

    aget-object v7, v0, v1

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2268
    :cond_0
    array-length v4, v0

    if-lez v4, :cond_6

    .line 2269
    const/4 v1, 0x0

    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_6

    .line 2271
    aget-object v4, v0, v1

    invoke-virtual {p0, v4}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2269
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2274
    :cond_2
    aget-object v4, v0, v1

    invoke-direct {p0, v4, p2, p3, p4}, Lcom/android/server/MountService;->prepareUnmount(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/storage/IMountShutdownObserver;)V

    .line 2275
    aget-object v4, v0, v1

    iget-object v5, p0, Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2277
    const-string v4, "unmount"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2278
    const-string v4, "MountService"

    const-string v5, "send unmount message for %s"

    new-array v6, v8, [Ljava/lang/Object;

    aget-object v7, v0, v1

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    new-instance v3, Lcom/android/server/MountService$UnmountCallBack;

    aget-object v4, v0, v1

    invoke-direct {v3, p0, v4, p3, v9}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ZZ)V

    .line 2291
    .local v3, ucb:Lcom/android/server/MountService$UnmountCallBack;
    :goto_3
    iget-object v4, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 2280
    .end local v3           #ucb:Lcom/android/server/MountService$UnmountCallBack;
    :cond_3
    const-string v4, "ums"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2281
    const-string v4, "MountService"

    const-string v5, "send ums message for %s"

    new-array v6, v8, [Ljava/lang/Object;

    aget-object v7, v0, v1

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    new-instance v3, Lcom/android/server/MountService$UmsEnableCallBack;

    aget-object v4, v0, v1

    invoke-direct {v3, p0, v4, p2, v8}, Lcom/android/server/MountService$UmsEnableCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .restart local v3       #ucb:Lcom/android/server/MountService$UnmountCallBack;
    goto :goto_3

    .line 2283
    .end local v3           #ucb:Lcom/android/server/MountService$UnmountCallBack;
    :cond_4
    const-string v4, "shutdown"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2284
    const-string v4, "MountService"

    const-string v5, "send shutdown message for %s"

    new-array v6, v8, [Ljava/lang/Object;

    aget-object v7, v0, v1

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    new-instance v3, Lcom/android/server/MountService$ShutdownCallBack;

    aget-object v4, v0, v1

    invoke-direct {v3, p0, v4, p4}, Lcom/android/server/MountService$ShutdownCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/IMountShutdownObserver;)V

    .restart local v3       #ucb:Lcom/android/server/MountService$UnmountCallBack;
    goto :goto_3

    .line 2287
    .end local v3           #ucb:Lcom/android/server/MountService$UnmountCallBack;
    :cond_5
    const-string v4, "MountService"

    const-string v5, "Unknown method %s when preparing unmount"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object p2, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    :cond_6
    :goto_4
    return-void

    .line 2293
    :cond_7
    aget-object v4, v0, v1

    invoke-direct {p0, v4, v8, v9}, Lcom/android/server/MountService;->doUnmountVolume(Ljava/lang/String;ZZ)I

    move-result v2

    .line 2294
    .local v2, rc:I
    if-eqz v2, :cond_8

    .line 2295
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

    .line 2299
    :cond_8
    const-string v4, "unmount"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2301
    const-string v4, "ums"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2302
    const-string v4, "MountService"

    const-string v5, "enable ums for child %s"

    new-array v6, v8, [Ljava/lang/Object;

    aget-object v7, v0, v1

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2303
    aget-object v4, v0, v1

    invoke-direct {p0, v4, p2, v8}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 2304
    :cond_9
    const-string v4, "shutdown"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2305
    const-string v4, "MountService"

    const-string v5, "shutdown complete for child %s"

    new-array v6, v8, [Ljava/lang/Object;

    aget-object v7, v0, v1

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2308
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
    .line 1651
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    .line 1653
    .local v24, resources:Landroid/content/res/Resources;
    const v18, 0x10f000c

    .line 1654
    .local v18, id:I
    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v21

    .line 1655
    .local v21, parser:Landroid/content/res/XmlResourceParser;
    invoke-static/range {v21 .. v21}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v13

    .line 1658
    .local v13, attrs:Landroid/util/AttributeSet;
    :try_start_0
    const-string v11, "StorageList"

    move-object/from16 v0, v21

    invoke-static {v0, v11}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1660
    :cond_0
    :goto_0
    invoke-static/range {v21 .. v21}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1662
    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v16

    .line 1663
    .local v16, element:Ljava/lang/String;
    if-nez v16, :cond_1

    .line 1730
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 1731
    .local v19, length:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    .line 1732
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/storage/StorageVolume;

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    .line 1731
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 1665
    .end local v17           #i:I
    .end local v19           #length:I
    :cond_1
    :try_start_1
    const-string v11, "storage"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1666
    sget-object v11, Lcom/android/internal/R$styleable;->Storage:[I

    move-object/from16 v0, v24

    invoke-virtual {v0, v13, v11}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 1669
    .local v12, a:Landroid/content/res/TypedArray;
    const/4 v11, 0x0

    invoke-virtual {v12, v11}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v22

    .line 1671
    .local v22, path:Ljava/lang/CharSequence;
    const/4 v11, 0x1

    const/16 v25, -0x1

    move/from16 v0, v25

    invoke-virtual {v12, v11, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 1673
    .local v4, descriptionId:I
    const/4 v11, 0x1

    invoke-virtual {v12, v11}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 1675
    .local v14, description:Ljava/lang/CharSequence;
    const/4 v11, 0x2

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v12, v11, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v23

    .line 1677
    .local v23, primary:Z
    const/4 v11, 0x3

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v12, v11, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 1679
    .local v5, removable:Z
    const/4 v11, 0x4

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v12, v11, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 1681
    .local v6, emulated:Z
    const/4 v11, 0x5

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v12, v11, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 1683
    .local v7, mtpReserve:I
    const/16 v11, 0x8

    invoke-virtual {v12, v11}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    .line 1685
    .local v20, levelId:Ljava/lang/CharSequence;
    const/4 v11, 0x6

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v12, v11, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 1688
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

    .line 1690
    .local v9, maxFileSize:J
    if-nez v20, :cond_2

    .line 1691
    const-string v20, "0"

    .line 1693
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

    .line 1699
    if-eqz v22, :cond_3

    if-nez v14, :cond_4

    .line 1700
    :cond_3
    const-string v11, "MountService"

    const-string v25, "path or description is null in readStorageList"

    move-object/from16 v0, v25

    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    :goto_2
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1724
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

    .line 1725
    .local v15, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    new-instance v11, Ljava/lang/RuntimeException;

    invoke-direct {v11, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1730
    .end local v15           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v11

    move-object/from16 v25, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 1731
    .restart local v19       #length:I
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_8

    .line 1732
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/storage/StorageVolume;

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    .line 1731
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 1702
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

    .line 1703
    .local v3, pathString:Ljava/lang/String;
    new-instance v2, Landroid/os/storage/StorageVolume;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v2 .. v11}, Landroid/os/storage/StorageVolume;-><init>(Ljava/lang/String;IZZIZJLjava/lang/String;)V

    .line 1706
    .local v2, volume:Landroid/os/storage/StorageVolume;
    if-eqz v23, :cond_5

    .line 1707
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    if-nez v11, :cond_6

    .line 1708
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    .line 1713
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    if-ne v11, v2, :cond_7

    .line 1715
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v11, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1719
    :goto_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService;->mVolumeMap:Ljava/util/HashMap;

    invoke-virtual {v11, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 1726
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

    .line 1727
    .local v15, e:Ljava/io/IOException;
    :try_start_4
    new-instance v11, Ljava/lang/RuntimeException;

    invoke-direct {v11, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1710
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

    .line 1717
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_5

    .line 1734
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

    .line 1730
    throw v25

    .line 1734
    .restart local v16       #element:Ljava/lang/String;
    :cond_9
    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1736
    return-void
.end method

.method private removeObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    .locals 4
    .parameter "obbState"

    .prologue
    .line 2928
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2929
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2930
    .local v1, obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    if-eqz v1, :cond_1

    .line 2931
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2932
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->unlink()V

    .line 2934
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2935
    iget-object v2, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2939
    :cond_1
    iget-object v2, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2940
    return-void
.end method

.method private sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "action"
    .parameter "path"

    .prologue
    .line 1621
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

    .line 1623
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "storage_volume"

    iget-object v1, p0, Lcom/android/server/MountService;->mVolumeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1624
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1625
    const-string v1, "sender"

    const-string v2, "system"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1626
    iget-boolean v1, p0, Lcom/android/server/MountService;->mBootTimeMount:Z

    if-eqz v1, :cond_0

    .line 1627
    const-string v1, "Boot"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1628
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/MountService;->mBootTimeMount:Z

    .line 1631
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

    .line 1632
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1633
    return-void
.end method

.method private sendUmsIntent(Z)V
    .locals 3
    .parameter "c"

    .prologue
    .line 1636
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v0, "android.intent.action.UMS_CONNECTED"

    :goto_0
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1638
    return-void

    .line 1636
    :cond_0
    const-string v0, "android.intent.action.UMS_DISCONNECTED"

    goto :goto_0
.end method

.method private setUmsEnabling(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 1917
    iget-object v1, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1918
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/MountService;->mUmsEnabling:Z

    .line 1919
    monitor-exit v1

    .line 1920
    return-void

    .line 1919
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private unmountSdcard()V
    .locals 3

    .prologue
    .line 3591
    invoke-direct {p0}, Lcom/android/server/MountService;->getSdcardPath()Ljava/lang/String;

    move-result-object v0

    .line 3592
    .local v0, sdPath:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3593
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/MountService;->unmountVolume(Ljava/lang/String;ZZ)V

    .line 3594
    :cond_0
    return-void
.end method

.method private updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "path"
    .parameter "state"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 810
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    monitor-enter v6

    .line 811
    :try_start_0
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v5, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 812
    .local v3, oldState:Ljava/lang/String;
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 813
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 814
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

    .line 853
    :goto_0
    return-void

    .line 812
    .end local v3           #oldState:Ljava/lang/String;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 819
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

    .line 821
    iget-object v5, p0, Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 823
    iget-boolean v5, p0, Lcom/android/server/MountService;->mEmulateExternalStorage:Z

    if-nez v5, :cond_1

    .line 824
    const-string v5, "unmounted"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 825
    iget-object v5, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5, v8, v8}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    .line 832
    iget-object v5, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v6, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v7, 0x5

    invoke-virtual {v6, v7, p1}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 840
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 841
    :try_start_2
    iget-object v5, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, i:I
    :goto_2
    if-ltz v2, :cond_5

    .line 842
    iget-object v5, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountServiceBinderListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 844
    .local v0, bl:Lcom/android/server/MountService$MountServiceBinderListener;
    :try_start_3
    iget-object v5, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    invoke-interface {v5, p1, v3, p2}, Landroid/os/storage/IMountServiceListener;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 841
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 834
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

    .line 835
    :cond_3
    sget-boolean v5, Lcom/android/server/MountService;->DEBUG_UNMOUNT:Z

    if-eqz v5, :cond_4

    const-string v5, "MountService"

    const-string v6, "Updating external media status on PackageManager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :cond_4
    iget-object v5, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5, v9, v8}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    goto :goto_1

    .line 845
    .restart local v0       #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .restart local v2       #i:I
    :catch_0
    move-exception v4

    .line 846
    .local v4, rex:Landroid/os/RemoteException;
    :try_start_4
    const-string v5, "MountService"

    const-string v7, "Listener dead"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    iget-object v5, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 852
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v2           #i:I
    .end local v4           #rex:Landroid/os/RemoteException;
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .line 848
    .restart local v0       #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .restart local v2       #i:I
    :catch_1
    move-exception v1

    .line 849
    .local v1, ex:Ljava/lang/Exception;
    :try_start_5
    const-string v5, "MountService"

    const-string v7, "Listener failed"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 852
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
    .line 1641
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1642
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

    .line 1644
    :cond_0
    return-void
.end method

.method private waitForLatch(Ljava/util/concurrent/CountDownLatch;)V
    .locals 4
    .parameter "latch"

    .prologue
    .line 526
    if-nez p1, :cond_1

    .line 533
    :goto_0
    return-void

    .line 535
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

    .line 532
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

    .line 538
    :catch_0
    move-exception v0

    .line 539
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "MountService"

    const-string v2, "Interrupt while waiting for MountService to be ready."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private waitForReady()V
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;)V

    .line 523
    return-void
.end method

.method private waitForUmsProceeding()V
    .locals 4

    .prologue
    .line 1924
    iget-object v0, p0, Lcom/android/server/MountService;->mUmsProceedLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1926
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/MountService;->mUmsProceeding:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1928
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

    .line 1930
    iget-object v0, p0, Lcom/android/server/MountService;->mUmsCond:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v1, 0x3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1931
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1935
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

    .line 1936
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/MountService;->mUmsProceeding:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1938
    iget-object v0, p0, Lcom/android/server/MountService;->mUmsProceedLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1940
    return-void

    .line 1938
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/MountService;->mUmsProceedLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private warnOnNotMounted()V
    .locals 2

    .prologue
    .line 2382
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2383
    const-string v0, "MountService"

    const-string v1, "getSecureContainerList() called when storage not mounted"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    :cond_0
    return-void
.end method


# virtual methods
.method public changeEncryptionPassword(Ljava/lang/String;)I
    .locals 7
    .parameter "password"

    .prologue
    .line 2823
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2824
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "password cannot be empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2827
    :cond_0
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2830
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2832
    sget-boolean v2, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v2, :cond_1

    .line 2833
    const-string v2, "MountService"

    const-string v3, "changing encryption password..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2838
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

    .line 2839
    .local v1, event:Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2842
    .end local v1           #event:Lcom/android/server/NativeDaemonEvent;
    :goto_0
    return v2

    .line 2840
    :catch_0
    move-exception v0

    .line 2842
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
    .line 2402
    const-string v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2403
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2404
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2406
    const/4 v1, 0x0

    .line 2408
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

    .line 2414
    :goto_1
    if-nez v1, :cond_0

    .line 2415
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v3

    .line 2416
    :try_start_1
    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2417
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2419
    :cond_0
    return v1

    .line 2408
    :cond_1
    :try_start_2
    const-string v2, "0"
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2410
    :catch_0
    move-exception v0

    .line 2411
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_1

    .line 2417
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
    .line 2759
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2760
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "password cannot be empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2763
    :cond_0
    iget-object v3, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.CRYPT_KEEPER"

    const-string v5, "no permission to access the crypt keeper"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2766
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2768
    sget-boolean v3, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v3, :cond_1

    .line 2769
    const-string v3, "MountService"

    const-string v4, "decrypting storage..."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2774
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

    .line 2776
    .local v2, event:Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2777
    .local v0, code:I
    if-nez v0, :cond_2

    .line 2780
    iget-object v3, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/MountService$5;

    invoke-direct {v4, p0}, Lcom/android/server/MountService$5;-><init>(Lcom/android/server/MountService;)V

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2794
    .end local v0           #code:I
    .end local v2           #event:Lcom/android/server/NativeDaemonEvent;
    :cond_2
    :goto_0
    return v0

    .line 2792
    :catch_0
    move-exception v1

    .line 2794
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
    .line 2457
    const-string v4, "android.permission.ASEC_DESTROY"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2458
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2459
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2467
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    .line 2469
    const/4 v3, 0x0

    .line 2471
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

    .line 2472
    .local v0, cmd:Lcom/android/server/NativeDaemonConnector$Command;
    if-eqz p2, :cond_0

    .line 2473
    const-string v4, "force"

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2475
    :cond_0
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2485
    .end local v0           #cmd:Lcom/android/server/NativeDaemonConnector$Command;
    :goto_0
    if-nez v3, :cond_2

    .line 2486
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    .line 2487
    :try_start_1
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2488
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2490
    :cond_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2493
    :cond_2
    return v3

    .line 2476
    :catch_0
    move-exception v2

    .line 2477
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 2478
    .local v1, code:I
    const/16 v4, 0x195

    if-ne v1, v4, :cond_3

    .line 2479
    const/4 v3, -0x7

    goto :goto_0

    .line 2481
    :cond_3
    const/4 v3, -0x1

    goto :goto_0

    .line 2490
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
    .line 3371
    iget-object v10, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.DUMP"

    invoke-virtual {v10, v11}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_0

    .line 3372
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

    .line 3417
    :goto_0
    return-void

    .line 3378
    :cond_0
    iget-object v11, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    monitor-enter v11

    .line 3379
    :try_start_0
    const-string v10, "  mObbMounts:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3381
    iget-object v10, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3382
    .local v1, binders:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 3383
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3384
    .local v2, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    const-string v10, "    Key="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/IBinder;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3385
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3386
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

    .line 3387
    .local v7, obbState:Lcom/android/server/MountService$ObbState;
    const-string v10, "      "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/MountService$ObbState;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 3399
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

    .line 3391
    .restart local v1       #binders:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    :cond_2
    :try_start_1
    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3392
    const-string v10, "  mObbPathToStateMap:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3393
    iget-object v10, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 3394
    .local v6, maps:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;>;"
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 3395
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3396
    .local v3, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;"
    const-string v10, "    "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3397
    const-string v10, " -> "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/MountService$ObbState;

    invoke-virtual {v10}, Lcom/android/server/MountService$ObbState;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 3399
    .end local v3           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;"
    :cond_3
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3401
    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3403
    iget-object v11, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v11

    .line 3404
    :try_start_2
    const-string v10, "  mVolumes:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3406
    iget-object v10, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3407
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    if-ge v4, v0, :cond_4

    .line 3408
    iget-object v10, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/storage/StorageVolume;

    .line 3409
    .local v9, v:Landroid/os/storage/StorageVolume;
    const-string v10, "    "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3410
    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3407
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 3412
    .end local v9           #v:Landroid/os/storage/StorageVolume;
    :cond_4
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3414
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3415
    const-string v10, "  mConnection:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3416
    iget-object v10, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v10, p1, p2, p3}, Lcom/android/server/NativeDaemonConnector;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3412
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
    .line 3465
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/MountService;->setMountISOEnabled(Z)I

    move-result v0

    .line 3466
    .local v0, rc:I
    if-eqz v0, :cond_0

    .line 3467
    const-string v1, "MountService"

    const-string v2, "Cannot mount CDROM to PC, still enable Modem Link"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3468
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.android.startML"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3471
    :cond_0
    return v0
.end method

.method public encryptStorage(Ljava/lang/String;)I
    .locals 7
    .parameter "password"

    .prologue
    const/4 v1, 0x0

    .line 2799
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2800
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "password cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2803
    :cond_0
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2806
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2808
    sget-boolean v2, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v2, :cond_1

    .line 2809
    const-string v2, "MountService"

    const-string v3, "encrypting storage..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2813
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

    .line 2819
    :goto_0
    return v1

    .line 2814
    :catch_0
    move-exception v0

    .line 2816
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    goto :goto_0
.end method

.method public finalizeSecureContainer(Ljava/lang/String;)I
    .locals 7
    .parameter "id"

    .prologue
    .line 2423
    const-string v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2424
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2426
    const/4 v1, 0x0

    .line 2428
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

    .line 2436
    :goto_0
    return v1

    .line 2433
    :catch_0
    move-exception v0

    .line 2434
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public finishMediaUpdate()V
    .locals 2

    .prologue
    .line 2646
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2647
    return-void
.end method

.method public fixPermissionsSecureContainer(Ljava/lang/String;ILjava/lang/String;)I
    .locals 7
    .parameter "id"
    .parameter "gid"
    .parameter "filename"

    .prologue
    .line 2440
    const-string v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2441
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2443
    const/4 v1, 0x0

    .line 2445
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

    .line 2453
    :goto_0
    return v1

    .line 2450
    :catch_0
    move-exception v0

    .line 2451
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public formatVolume(Ljava/lang/String;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 2349
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2350
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2352
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doFormatVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getEncryptionState()I
    .locals 8

    .prologue
    const/4 v2, -0x1

    .line 2737
    iget-object v3, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.CRYPT_KEEPER"

    const-string v5, "no permission to access the crypt keeper"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2740
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2744
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

    .line 2745
    .local v1, event:Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 2753
    .end local v1           #event:Lcom/android/server/NativeDaemonEvent;
    :goto_0
    return v2

    .line 2746
    :catch_0
    move-exception v0

    .line 2748
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "MountService"

    const-string v4, "Unable to parse result from cryptfs cryptocomplete"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2750
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 2752
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

    .line 2669
    if-nez p1, :cond_0

    .line 2670
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "filename cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2673
    :cond_0
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2674
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2678
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

    .line 2679
    .local v2, event:Lcom/android/server/NativeDaemonEvent;
    const/16 v3, 0xd3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 2680
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2684
    .end local v2           #event:Lcom/android/server/NativeDaemonEvent;
    :goto_0
    return-object v3

    .line 2681
    :catch_0
    move-exception v1

    .line 2682
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2683
    .local v0, code:I
    const/16 v3, 0x196

    if-ne v0, v3, :cond_1

    .line 2684
    const/4 v3, 0x0

    goto :goto_0

    .line 2686
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

    .line 2625
    const-string v3, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2626
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2627
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2631
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

    .line 2632
    .local v2, event:Lcom/android/server/NativeDaemonEvent;
    const/16 v3, 0xd3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 2633
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2638
    .end local v2           #event:Lcom/android/server/NativeDaemonEvent;
    :goto_0
    return-object v3

    .line 2634
    :catch_0
    move-exception v1

    .line 2635
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2636
    .local v0, code:I
    const/16 v3, 0x196

    if-ne v0, v3, :cond_0

    .line 2637
    const-string v3, "MountService"

    const-string v4, "Container \'%s\' not found"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2638
    const/4 v3, 0x0

    goto :goto_0

    .line 2640
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

    .line 2388
    const-string v1, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2389
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2390
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2393
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

    .line 2396
    :goto_0
    return-object v1

    .line 2395
    :catch_0
    move-exception v0

    .line 2396
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

    .line 2604
    const-string v3, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2605
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2606
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2610
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

    .line 2611
    .local v2, event:Lcom/android/server/NativeDaemonEvent;
    const/16 v3, 0xd3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 2612
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2617
    .end local v2           #event:Lcom/android/server/NativeDaemonEvent;
    :goto_0
    return-object v3

    .line 2613
    :catch_0
    move-exception v1

    .line 2614
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2615
    .local v0, code:I
    const/16 v3, 0x196

    if-ne v0, v3, :cond_0

    .line 2616
    const-string v3, "MountService"

    const-string v4, "Container \'%s\' not found"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2617
    const/4 v3, 0x0

    goto :goto_0

    .line 2619
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

    .line 2356
    const-string v6, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v6}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2357
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2359
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

    .line 2364
    .local v4, r:[Ljava/lang/String;
    array-length v6, v4

    new-array v0, v6, [I

    .line 2365
    .local v0, data:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v4

    if-ge v2, v6, :cond_0

    .line 2366
    aget-object v6, v4, v2

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 2368
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

    .line 2365
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2369
    :catch_0
    move-exception v3

    .line 2370
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

    .line 2371
    const/4 v6, 0x0

    new-array v0, v6, [I
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2377
    .end local v0           #data:[I
    .end local v2           #i:I
    .end local v3           #nfe:Ljava/lang/NumberFormatException;
    .end local v4           #r:[Ljava/lang/String;
    .end local v5           #tok:[Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v0

    .line 2375
    :catch_1
    move-exception v1

    .line 2376
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v6, "MountService"

    const-string v7, "Failed to retrieve storage users list"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2377
    new-array v0, v11, [I

    goto :goto_1
.end method

.method public getVolumeList()[Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 2881
    iget-object v4, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2882
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2883
    .local v2, size:I
    new-array v1, v2, [Landroid/os/Parcelable;

    .line 2884
    .local v1, result:[Landroid/os/Parcelable;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 2885
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    aput-object v3, v1, v0

    .line 2884
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2887
    :cond_0
    monitor-exit v4

    return-object v1

    .line 2888
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
    .line 2197
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 2198
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2199
    .local v0, state:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2200
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

    .line 2201
    const-string v1, "vold.encrypt_progress"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 2202
    const-string v0, "removed"

    .line 2208
    :cond_0
    monitor-exit v2

    return-object v0

    .line 2204
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 2209
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
    .line 2213
    iget-boolean v0, p0, Lcom/android/server/MountService;->mEmulateExternalStorage:Z

    return v0
.end method

.method public isObbMounted(Ljava/lang/String;)Z
    .locals 2
    .parameter "filename"

    .prologue
    .line 2692
    if-nez p1, :cond_0

    .line 2693
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "filename cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2696
    :cond_0
    iget-object v1, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    monitor-enter v1

    .line 2697
    :try_start_0
    iget-object v0, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2698
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
    .line 3608
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
    .line 2569
    const-string v0, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2570
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2571
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2573
    iget-object v1, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v1

    .line 2574
    :try_start_0
    iget-object v0, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2575
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
    .line 1957
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1959
    invoke-direct {p0}, Lcom/android/server/MountService;->getUmsEnabling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1960
    const/4 v0, 0x1

    .line 1963
    :goto_0
    return v0

    .line 1962
    :cond_0
    iget-object v1, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1963
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/MountService;->mUmsAvailable:Z

    monitor-exit v1

    goto :goto_0

    .line 1964
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
    .line 2189
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2190
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
    .line 3421
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    if-eqz v0, :cond_0

    .line 3422
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnector;->monitor()V

    .line 3424
    :cond_0
    return-void
.end method

.method public mountISO(Ljava/lang/String;)I
    .locals 8
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 3497
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3498
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

    .line 3500
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

    .line 3501
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

    .line 3510
    :goto_0
    return v2

    .line 3503
    :catch_0
    move-exception v1

    .line 3504
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 3505
    .local v0, code:I
    const/16 v2, 0x191

    if-ne v0, v2, :cond_1

    .line 3506
    const/4 v2, -0x2

    goto :goto_0

    .line 3507
    :cond_1
    const/16 v2, 0x193

    if-ne v0, v2, :cond_2

    .line 3508
    const/4 v2, -0x4

    goto :goto_0

    .line 3510
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
    .line 2703
    if-nez p1, :cond_0

    .line 2704
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "filename cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2707
    :cond_0
    if-nez p3, :cond_1

    .line 2708
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "token cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2711
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2712
    .local v3, callerUid:I
    new-instance v0, Lcom/android/server/MountService$ObbState;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/MountService$ObbState;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V

    .line 2713
    .local v0, obbState:Lcom/android/server/MountService$ObbState;
    new-instance v6, Lcom/android/server/MountService$MountObbAction;

    invoke-direct {v6, p0, v0, p2}, Lcom/android/server/MountService$MountObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Ljava/lang/String;)V

    .line 2714
    .local v6, action:Lcom/android/server/MountService$ObbAction;
    iget-object v1, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v2, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v6}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2716
    sget-boolean v1, Lcom/android/server/MountService;->DEBUG_OBB:Z

    if-eqz v1, :cond_2

    .line 2717
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

    .line 2718
    :cond_2
    return-void
.end method

.method public mountSecureContainer(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8
    .parameter "id"
    .parameter "key"
    .parameter "ownerUid"

    .prologue
    .line 2497
    const-string v3, "android.permission.ASEC_MOUNT_UNMOUNT"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2498
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2499
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2501
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4

    .line 2502
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2503
    const/4 v2, -0x6

    monitor-exit v4

    .line 2522
    :cond_0
    :goto_0
    return v2

    .line 2505
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2507
    const/4 v2, 0x0

    .line 2509
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

    .line 2517
    :cond_2
    :goto_1
    if-nez v2, :cond_0

    .line 2518
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4

    .line 2519
    :try_start_2
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2520
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 2505
    .end local v2           #rc:I
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 2510
    .restart local v2       #rc:I
    :catch_0
    move-exception v1

    .line 2511
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2512
    .local v0, code:I
    const/16 v3, 0x195

    if-eq v0, v3, :cond_2

    .line 2513
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public mountVolume(Ljava/lang/String;)I
    .locals 3
    .parameter "path"

    .prologue
    .line 2217
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

    .line 2218
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2220
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2221
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onDaemonConnected()V
    .locals 2

    .prologue
    .line 864
    new-instance v0, Lcom/android/server/MountService$2;

    const-string v1, "MountService#onDaemonConnected"

    invoke-direct {v0, p0, v1}, Lcom/android/server/MountService$2;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/MountService$2;->start()V

    .line 943
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 25
    .parameter "code"
    .parameter "raw"
    .parameter "cooked"

    .prologue
    .line 949
    sget-boolean v20, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v20, :cond_1

    .line 950
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 951
    .local v8, builder:Ljava/lang/StringBuilder;
    const-string v20, "onEvent::"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
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

    .line 953
    if-eqz p3, :cond_0

    .line 954
    const-string v20, " cooked = "

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    move-object/from16 v6, p3

    .local v6, arr$:[Ljava/lang/String;
    array-length v15, v6

    .local v15, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_0
    if-ge v13, v15, :cond_0

    aget-object v19, v6, v13

    .line 956
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

    .line 955
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 959
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v13           #i$:I
    .end local v15           #len$:I
    .end local v19           #str:Ljava/lang/String;
    :cond_0
    const-string v20, "MountService"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    .end local v8           #builder:Ljava/lang/StringBuilder;
    :cond_1
    const/16 v20, 0x25d

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 966
    const/16 v20, 0x1

    aget-object v20, p3, v20

    const-string v21, "ISO"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 967
    const/16 v20, 0x2

    aget-object v20, p3, v20

    const/16 v21, 0x3

    aget-object v21, p3, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService;->notifyISOStateChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    :cond_2
    :goto_1
    const/16 v20, 0x1

    :goto_2
    return v20

    .line 968
    :cond_3
    const/16 v20, 0x1

    aget-object v20, p3, v20

    const-string v21, "UMS"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 969
    const-string v20, "MountService"

    const-string v21, "Share SD card for Sprint project"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/MountService;->setUsbMassStorageEnabled(Z)V

    goto :goto_1

    .line 977
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

    .line 981
    :cond_5
    const/16 v20, 0x26c

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 983
    const/4 v7, 0x0

    .line 984
    .local v7, avail:Z
    const/16 v20, 0x5

    aget-object v20, p3, v20

    const-string v21, "available"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 985
    const/4 v7, 0x1

    .line 987
    :cond_6
    const/16 v20, 0x3

    aget-object v20, p3, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v7}, Lcom/android/server/MountService;->notifyShareAvailabilityChange(Ljava/lang/String;Z)V

    goto :goto_1

    .line 988
    .end local v7           #avail:Z
    :cond_7
    const/16 v20, 0x26d

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 990
    const/16 v20, 0x5

    aget-object v20, p3, v20

    const-string v21, "Capture"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 991
    const-string v20, "MountService"

    const-string v21, "broacast InternetSharing intent"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    new-instance v21, Landroid/content/Intent;

    const-string v22, "com.htc.android.startML"

    invoke-direct/range {v21 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 994
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

    .line 1000
    :cond_9
    const/4 v5, 0x0

    .line 1001
    .local v5, action:Ljava/lang/String;
    const/16 v20, 0x2

    aget-object v14, p3, v20

    .line 1002
    .local v14, label:Ljava/lang/String;
    const/16 v20, 0x3

    aget-object v18, p3, v20

    .line 1003
    .local v18, path:Ljava/lang/String;
    const/16 v16, -0x1

    .line 1004
    .local v16, major:I
    const/16 v17, -0x1

    .line 1007
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

    .line 1008
    .local v9, devComp:Ljava/lang/String;
    const-string v20, ":"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1009
    .local v10, devTok:[Ljava/lang/String;
    const/16 v20, 0x0

    aget-object v20, v10, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 1010
    const/16 v20, 0x1

    aget-object v20, v10, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v17

    .line 1015
    .end local v9           #devComp:Ljava/lang/String;
    .end local v10           #devTok:[Ljava/lang/String;
    :goto_3
    const/16 v20, 0x276

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 1016
    new-instance v20, Lcom/android/server/MountService$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService$3;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/MountService$3;->start()V

    .line 1076
    :goto_4
    if-eqz v5, :cond_2

    .line 1077
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v1}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    const-string v20, "android.intent.action.MEDIA_BAD_REMOVAL"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1079
    const-string v20, "MountService"

    const-string v21, "Bad removal sending unlock wake_lock"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
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

    .line 1082
    :catch_0
    move-exception v11

    .line 1083
    .local v11, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v20, "MountService"

    const-string v21, "Failed to send bad_removeal unlock wake lock"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1011
    .end local v11           #e:Lcom/android/server/NativeDaemonConnectorException;
    :catch_1
    move-exception v12

    .line 1012
    .local v12, ex:Ljava/lang/Exception;
    const-string v20, "MountService"

    const-string v21, "Failed to parse major/minor"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1043
    .end local v12           #ex:Ljava/lang/Exception;
    :cond_a
    const/16 v20, 0x277

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 1047
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "bad_removal"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 1048
    const/16 v20, 0x1

    goto/16 :goto_2

    .line 1051
    :cond_b
    sget-boolean v20, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v20, :cond_c

    const-string v20, "MountService"

    const-string v21, "Sending unmounted event first"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    :cond_c
    const-string v20, "unmounted"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    const-string v20, "android.intent.action.MEDIA_UNMOUNTED"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    sget-boolean v20, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v20, :cond_d

    const-string v20, "MountService"

    const-string v21, "Sending media removed"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    :cond_d
    const-string v20, "removed"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    const-string v5, "android.intent.action.MEDIA_REMOVED"

    goto/16 :goto_4

    .line 1058
    :cond_e
    const/16 v20, 0x278

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    .line 1059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 1060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 1061
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashSet;->clear()V

    .line 1062
    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1064
    :cond_f
    sget-boolean v20, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v20, :cond_10

    const-string v20, "MountService"

    const-string v21, "Sending unmounted event first"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    :cond_10
    const-string v20, "unmounted"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    const-string v20, "android.intent.action.MEDIA_UNMOUNTED"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    sget-boolean v20, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v20, :cond_11

    const-string v20, "MountService"

    const-string v21, "Sending media bad removal"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    :cond_11
    const-string v20, "bad_removal"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    const-string v5, "android.intent.action.MEDIA_BAD_REMOVAL"

    goto/16 :goto_4

    .line 1062
    :catchall_0
    move-exception v20

    :try_start_3
    monitor-exit v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v20

    .line 1073
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

    .line 1088
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
    .line 3613
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

    .line 3614
    const-string v13, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3615
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3616
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 3617
    const-string v13, "MountService"

    const-string v14, "Optimization only supports nonremovable storage"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3618
    const/4 v8, -0x1

    .line 3691
    :cond_0
    :goto_0
    return v8

    .line 3622
    :cond_1
    const-string v13, "true"

    const-string v14, "persist.fuse_sdcard"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 3624
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

    .line 3625
    :cond_2
    const/4 v2, 0x0

    .local v2, code:I
    const/4 v8, 0x0

    .line 3631
    .local v8, rc:I
    if-eqz p1, :cond_5

    if-nez v6, :cond_5

    .line 3633
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/server/MountService;->unmountVolume(Ljava/lang/String;ZZ)V

    .line 3635
    const/16 v9, 0x1e

    .line 3638
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

    .line 3639
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

    .line 3641
    const-wide/16 v13, 0x3e8

    :try_start_1
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3646
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

    .line 3642
    .end local v10           #retries:I
    .restart local v9       #retries:I
    :catch_0
    move-exception v5

    .line 3643
    .local v5, iex:Ljava/lang/InterruptedException;
    const-string v13, "MountService"

    const-string v14, "Interrupted while waiting for media"

    invoke-static {v13, v14, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3648
    .end local v5           #iex:Ljava/lang/InterruptedException;
    :cond_3
    :goto_2
    if-nez v9, :cond_5

    .line 3649
    const-string v13, "MountService"

    const-string v14, "Timed out waiting for media to check"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3650
    const/4 v8, -0x1

    .line 3669
    .end local v8           #rc:I
    if-eqz p1, :cond_4

    if-eqz v2, :cond_0

    :cond_4
    if-nez v6, :cond_0

    .line 3673
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v14

    .line 3674
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 3675
    .local v11, size:I
    new-array v7, v11, [Ljava/lang/String;

    .line 3676
    .local v7, paths:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    if-ge v4, v11, :cond_14

    .line 3677
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

    .line 3676
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 3655
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

    .line 3657
    .local v1, cmd:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v13, v1}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_4 .. :try_end_4} :catch_1

    .line 3669
    if-eqz p1, :cond_6

    if-eqz v2, :cond_0

    :cond_6
    if-nez v6, :cond_0

    .line 3673
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v14

    .line 3674
    :try_start_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 3675
    .restart local v11       #size:I
    new-array v7, v11, [Ljava/lang/String;

    .line 3676
    .restart local v7       #paths:[Ljava/lang/String;
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_5
    if-ge v4, v11, :cond_17

    .line 3677
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

    .line 3676
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 3655
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

    .line 3658
    :catch_1
    move-exception v3

    .line 3659
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

    .line 3660
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v2

    .line 3661
    const/16 v13, 0x196

    if-ne v2, v13, :cond_a

    .line 3662
    const/4 v8, -0x2

    .line 3669
    :goto_7
    if-eqz p1, :cond_8

    if-eqz v2, :cond_0

    :cond_8
    if-nez v6, :cond_0

    .line 3673
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v14

    .line 3674
    :try_start_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 3675
    .restart local v11       #size:I
    new-array v7, v11, [Ljava/lang/String;

    .line 3676
    .restart local v7       #paths:[Ljava/lang/String;
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_8
    if-ge v4, v11, :cond_11

    .line 3677
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

    .line 3676
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 3659
    .end local v4           #i:I
    .end local v7           #paths:[Ljava/lang/String;
    .end local v11           #size:I
    :cond_9
    :try_start_9
    const-string v13, "stop"
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_6

    .line 3663
    :cond_a
    const/16 v13, 0x193

    if-ne v2, v13, :cond_b

    .line 3664
    const/4 v8, -0x4

    goto :goto_7

    .line 3666
    :cond_b
    const/4 v8, -0x1

    goto :goto_7

    .line 3669
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

    .line 3673
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v15

    .line 3674
    :try_start_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 3675
    .restart local v11       #size:I
    new-array v7, v11, [Ljava/lang/String;

    .line 3676
    .restart local v7       #paths:[Ljava/lang/String;
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_9
    if-ge v4, v11, :cond_e

    .line 3677
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/storage/StorageVolume;

    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v7, v4

    .line 3676
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 3678
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

    .line 3679
    add-int/lit8 v4, v11, -0x1

    :goto_a
    if-ltz v4, :cond_c

    .line 3680
    aget-object v13, v7, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v15, "unmounted"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_10

    .line 3679
    :cond_f
    add-int/lit8 v4, v4, -0x1

    goto :goto_a

    .line 3682
    :cond_10
    aget-object v13, v7, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_f

    .line 3683
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

    .line 3685
    .end local v8           #rc:I
    :goto_b
    const/4 v8, -0x1

    goto/16 :goto_0

    .line 3678
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

    .line 3679
    add-int/lit8 v4, v11, -0x1

    :goto_c
    if-ltz v4, :cond_0

    .line 3680
    aget-object v13, v7, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "unmounted"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_13

    .line 3679
    :cond_12
    add-int/lit8 v4, v4, -0x1

    goto :goto_c

    .line 3682
    :cond_13
    aget-object v13, v7, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_12

    .line 3683
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

    .line 3678
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

    .line 3679
    add-int/lit8 v4, v11, -0x1

    :goto_d
    if-ltz v4, :cond_0

    .line 3680
    aget-object v13, v7, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "unmounted"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_16

    .line 3679
    :cond_15
    add-int/lit8 v4, v4, -0x1

    goto :goto_d

    .line 3682
    :cond_16
    aget-object v13, v7, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_15

    .line 3683
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

    .line 3678
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

    .line 3679
    add-int/lit8 v4, v11, -0x1

    :goto_e
    if-ltz v4, :cond_0

    .line 3680
    aget-object v13, v7, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "unmounted"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_19

    .line 3679
    :cond_18
    add-int/lit8 v4, v4, -0x1

    goto :goto_e

    .line 3682
    :cond_19
    aget-object v13, v7, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_18

    .line 3683
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
    .line 1814
    iget-object v3, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1815
    :try_start_0
    new-instance v0, Lcom/android/server/MountService$MountServiceBinderListener;

    invoke-direct {v0, p0, p1}, Lcom/android/server/MountService$MountServiceBinderListener;-><init>(Lcom/android/server/MountService;Landroid/os/storage/IMountServiceListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1817
    .local v0, bl:Lcom/android/server/MountService$MountServiceBinderListener;
    :try_start_1
    invoke-interface {p1}, Landroid/os/storage/IMountServiceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1818
    iget-object v2, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1822
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 1823
    return-void

    .line 1819
    :catch_0
    move-exception v1

    .line 1820
    .local v1, rex:Landroid/os/RemoteException;
    const-string v2, "MountService"

    const-string v4, "Failed to link to listener death"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1822
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
    .line 2579
    const-string v2, "android.permission.ASEC_RENAME"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2580
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2581
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2583
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v3

    .line 2588
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2589
    :cond_0
    const/4 v1, -0x6

    monitor-exit v3

    .line 2600
    :goto_0
    return v1

    .line 2591
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2593
    const/4 v1, 0x0

    .line 2595
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

    .line 2596
    :catch_0
    move-exception v0

    .line 2597
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_0

    .line 2591
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
    .line 3430
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3431
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

    .line 3433
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

    .line 3437
    :goto_1
    return-void

    .line 3433
    :cond_1
    const-string v1, "0"
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3434
    :catch_0
    move-exception v0

    .line 3435
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->printStackTrace()V

    goto :goto_1
.end method

.method public setMountISOEnabled(Z)I
    .locals 8
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    .line 3443
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3445
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

    .line 3454
    :goto_1
    return v2

    .line 3445
    :cond_0
    const-string v3, "disable"
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3447
    :catch_0
    move-exception v1

    .line 3448
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 3449
    .local v0, code:I
    const/16 v2, 0x191

    if-ne v0, v2, :cond_1

    .line 3450
    const/4 v2, -0x2

    goto :goto_1

    .line 3451
    :cond_1
    const/16 v2, 0x193

    if-ne v0, v2, :cond_2

    .line 3452
    const/4 v2, -0x4

    goto :goto_1

    .line 3454
    :cond_2
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public setPCtoolISOEnabled(Z)I
    .locals 8
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    .line 3478
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3479
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

    .line 3481
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

    .line 3482
    const-string v3, "MountService"

    const-string v4, "setPCtoolISOEnabled --"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3491
    :goto_1
    return v2

    .line 3481
    :cond_1
    const-string v3, "disable"
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3484
    :catch_0
    move-exception v1

    .line 3485
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 3486
    .local v0, code:I
    const/16 v2, 0x191

    if-ne v0, v2, :cond_2

    .line 3487
    const/4 v2, -0x2

    goto :goto_1

    .line 3488
    :cond_2
    const/16 v2, 0x193

    if-ne v0, v2, :cond_3

    .line 3489
    const/4 v2, -0x4

    goto :goto_1

    .line 3491
    :cond_3
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public setSdcardRestricted(Z)V
    .locals 3
    .parameter "set"

    .prologue
    .line 3597
    invoke-virtual {p0}, Lcom/android/server/MountService;->isSdcardRestricted()Z

    move-result v0

    .line 3598
    .local v0, curState:Z
    if-eq v0, p1, :cond_0

    .line 3599
    const-string v2, "service.mount.restrict"

    if-eqz p1, :cond_1

    const-string v1, "1"

    :goto_0
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3601
    if-eqz p1, :cond_2

    .line 3602
    invoke-direct {p0}, Lcom/android/server/MountService;->unmountSdcard()V

    .line 3606
    :cond_0
    :goto_1
    return-void

    .line 3599
    :cond_1
    const-string v1, "0"

    goto :goto_0

    .line 3604
    :cond_2
    invoke-direct {p0}, Lcom/android/server/MountService;->mountSdcard()V

    goto :goto_1
.end method

.method public setUsbMassStorageEnabled(Z)V
    .locals 18
    .parameter "enable"

    .prologue
    .line 1968
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

    .line 1969
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1970
    const-string v13, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1971
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->waitForUmsProceeding()V

    .line 1976
    const-string v6, "ums"

    .line 1977
    .local v6, method:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 1978
    .local v7, path:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1981
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

    .line 1983
    .local v4, is_ins_mounted:Z
    :goto_0
    sget-boolean v13, Lcom/android/server/MountService;->Share_SD_only:Z

    if-nez v13, :cond_11

    .line 1984
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

    .line 1985
    :cond_0
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/MountService;->sharing:I

    .line 1987
    invoke-direct/range {p0 .. p1}, Lcom/android/server/MountService;->setUmsEnabling(Z)V

    .line 1988
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v14

    .line 1989
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1990
    .local v10, size:I
    new-array v8, v10, [Ljava/lang/String;

    .line 1991
    .local v8, paths:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v10, :cond_2

    .line 1992
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/storage/StorageVolume;

    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v8, v2

    .line 1991
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1981
    .end local v2           #i:I
    .end local v4           #is_ins_mounted:Z
    .end local v8           #paths:[Ljava/lang/String;
    .end local v10           #size:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1993
    .restart local v2       #i:I
    .restart local v4       #is_ins_mounted:Z
    .restart local v8       #paths:[Ljava/lang/String;
    .restart local v10       #size:I
    :cond_2
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1994
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v10, :cond_7

    .line 1995
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/MountService;->sdcard_fuse:Z

    if-eqz v13, :cond_4

    aget-object v13, v8, v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1994
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1993
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

    .line 1997
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

    .line 1998
    aget-object v13, v8, v2

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6, v14, v15}, Lcom/android/server/MountService;->prepareUnmount(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/storage/IMountShutdownObserver;)V

    .line 2000
    aget-object v13, v8, v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 2001
    new-instance v11, Lcom/android/server/MountService$UmsEnableCallBack;

    aget-object v13, v8, v2

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v13, v6, v14}, Lcom/android/server/MountService$UmsEnableCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2003
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

    .line 2005
    .end local v11           #umscb:Lcom/android/server/MountService$UmsEnableCallBack;
    :cond_5
    aget-object v13, v8, v2

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/server/MountService;->doUnmountVolume(Ljava/lang/String;ZZ)I

    move-result v9

    .line 2006
    .local v9, rc:I
    if-eqz v9, :cond_6

    .line 2007
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

    .line 2010
    :cond_6
    aget-object v13, v8, v2

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6, v14}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    .line 2015
    .end local v9           #rc:I
    :cond_7
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/MountService;->setUmsEnabling(Z)V

    .line 2016
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->UmsProceedingDone()V

    .line 2021
    .end local v2           #i:I
    .end local v8           #paths:[Ljava/lang/String;
    .end local v10           #size:I
    :cond_8
    if-nez p1, :cond_22

    .line 2022
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/MountService;->sharing:I

    .line 2023
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v14

    .line 2024
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2025
    .restart local v10       #size:I
    new-array v8, v10, [Ljava/lang/String;

    .line 2026
    .restart local v8       #paths:[Ljava/lang/String;
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    if-ge v2, v10, :cond_9

    .line 2027
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/storage/StorageVolume;

    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v8, v2

    .line 2026
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2028
    :cond_9
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2029
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v10, :cond_e

    .line 2030
    const/4 v5, 0x0

    .local v5, j:I
    :goto_6
    const/4 v13, 0x3

    if-ge v5, v13, :cond_a

    .line 2031
    const-string v13, "MountService"

    const-string v14, "Prepare to mount back to device"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    aget-object v13, v8, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "shared"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 2033
    aget-object v13, v8, v2

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v13, v6, v1}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2034
    const-string v13, "MountService"

    const-string v14, "unshare the sdcard"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    :cond_a
    const/4 v5, 0x0

    :goto_7
    const/4 v13, 0x3

    if-ge v5, v13, :cond_b

    .line 2047
    aget-object v13, v8, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "unmounted"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 2048
    const-string v13, "MountService"

    const-string v14, "Switch to MEDIA_UNMOUNTED"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2028
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

    .line 2037
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

    .line 2039
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v13, 0x190

    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2030
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 2041
    :catch_0
    move-exception v3

    .line 2042
    .local v3, ie:Ljava/lang/InterruptedException;
    const-string v13, "MountService"

    const-string v14, "Fail to wait for switch to MEDIA_SHARED"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 2051
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

    .line 2053
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v13, 0x3e8

    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    .line 2046
    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 2055
    :catch_1
    move-exception v3

    .line 2056
    .restart local v3       #ie:Ljava/lang/InterruptedException;
    const-string v13, "MountService"

    const-string v14, "Fail to wait for switch to MEDIA_UNMOUNTED"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 2061
    .end local v3           #ie:Ljava/lang/InterruptedException;
    .end local v5           #j:I
    :cond_e
    add-int/lit8 v2, v10, -0x1

    :goto_a
    if-ltz v2, :cond_22

    .line 2062
    aget-object v13, v8, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "unmounted"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_10

    .line 2061
    :cond_f
    :goto_b
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    .line 2064
    :cond_10
    aget-object v13, v8, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_f

    .line 2065
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

    .line 2076
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

    .line 2077
    const-string v13, "MountService"

    const-string v14, "The device has no read sdcard and does not support UMS"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->UmsProceedingDone()V

    .line 2186
    :goto_c
    return-void

    .line 2081
    :cond_12
    if-eqz p1, :cond_13

    .line 2082
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v13

    if-nez v13, :cond_14

    .line 2084
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

    .line 2085
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/MountService;->sharing:I

    .line 2086
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6, v14, v15}, Lcom/android/server/MountService;->prepareUnmount(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/storage/IMountShutdownObserver;)V

    .line 2087
    new-instance v11, Lcom/android/server/MountService$UmsEnableCallBack;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v13, v6, v14}, Lcom/android/server/MountService$UmsEnableCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2089
    .restart local v11       #umscb:Lcom/android/server/MountService$UmsEnableCallBack;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2124
    .end local v11           #umscb:Lcom/android/server/MountService$UmsEnableCallBack;
    :cond_13
    :goto_d
    if-nez p1, :cond_22

    .line 2125
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/MountService;->sharing:I

    .line 2126
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v14

    .line 2127
    :try_start_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2128
    .restart local v10       #size:I
    new-array v8, v10, [Ljava/lang/String;

    .line 2129
    .restart local v8       #paths:[Ljava/lang/String;
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_e
    if-ge v2, v10, :cond_18

    .line 2130
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

    .line 2129
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 2093
    .end local v2           #i:I
    .end local v8           #paths:[Ljava/lang/String;
    .end local v10           #size:I
    :cond_14
    const-string v13, "MountService"

    const-string v14, "Before unmount"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/MountService;->sdcard_fuse:Z

    if-eqz v13, :cond_16

    .line 2095
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

    .line 2096
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/MountService;->sharing:I

    .line 2097
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/server/MountService;->doUnmountVolume(Ljava/lang/String;ZZ)I

    move-result v9

    .line 2098
    .restart local v9       #rc:I
    if-eqz v9, :cond_15

    .line 2099
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

    .line 2102
    :cond_15
    const-string v13, "MountService"

    const-string v14, "doshare"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6, v14}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_d

    .line 2107
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

    .line 2108
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/MountService;->sharing:I

    .line 2109
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/server/MountService;->doUnmountVolume(Ljava/lang/String;ZZ)I

    move-result v9

    .line 2110
    .restart local v9       #rc:I
    if-eqz v9, :cond_17

    .line 2111
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

    .line 2114
    :cond_17
    const-string v13, "MountService"

    const-string v14, "doshare"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2115
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6, v14}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_d

    .line 2131
    .end local v9           #rc:I
    .restart local v2       #i:I
    .restart local v8       #paths:[Ljava/lang/String;
    .restart local v10       #size:I
    :cond_18
    :try_start_7
    monitor-exit v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2132
    const-string v13, "MountService"

    const-string v14, "Disable UMS"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2133
    const/4 v2, 0x0

    :goto_f
    if-ge v2, v10, :cond_1f

    .line 2134
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

    .line 2133
    :cond_1a
    :goto_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 2131
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

    .line 2138
    .restart local v2       #i:I
    .restart local v8       #paths:[Ljava/lang/String;
    .restart local v10       #size:I
    :cond_1b
    const/4 v5, 0x0

    .restart local v5       #j:I
    :goto_11
    const/4 v13, 0x3

    if-ge v5, v13, :cond_1c

    .line 2139
    const-string v13, "MountService"

    const-string v14, "Prepare to mount back to device"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    aget-object v13, v8, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "shared"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1d

    .line 2141
    aget-object v13, v8, v2

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v13, v6, v1}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2142
    const-string v13, "MountService"

    const-string v14, "unshare the sdcard"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    :cond_1c
    const/4 v5, 0x0

    :goto_12
    const/4 v13, 0x3

    if-ge v5, v13, :cond_1a

    .line 2155
    aget-object v13, v8, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "unmounted"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1e

    .line 2156
    const-string v13, "MountService"

    const-string v14, "Switch to MEDIA_UNMOUNTED"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 2145
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

    .line 2147
    :try_start_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v13, 0x190

    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_2

    .line 2138
    :goto_13
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 2149
    :catch_2
    move-exception v3

    .line 2150
    .restart local v3       #ie:Ljava/lang/InterruptedException;
    const-string v13, "MountService"

    const-string v14, "Fail to wait for switch to MEDIA_SHARED"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 2159
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

    .line 2161
    :try_start_a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v13, 0x3e8

    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_3

    .line 2154
    :goto_14
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 2163
    :catch_3
    move-exception v3

    .line 2164
    .restart local v3       #ie:Ljava/lang/InterruptedException;
    const-string v13, "MountService"

    const-string v14, "Fail to wait for switch to MEDIA_UNMOUNTED"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 2169
    .end local v3           #ie:Ljava/lang/InterruptedException;
    .end local v5           #j:I
    :cond_1f
    add-int/lit8 v2, v10, -0x1

    :goto_15
    if-ltz v2, :cond_22

    .line 2170
    aget-object v13, v8, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "unmounted"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_21

    .line 2169
    :cond_20
    :goto_16
    add-int/lit8 v2, v2, -0x1

    goto :goto_15

    .line 2172
    :cond_21
    aget-object v13, v8, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_20

    .line 2173
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

    .line 2185
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
    .line 1837
    const-string v12, "android.permission.SHUTDOWN"

    invoke-direct {p0, v12}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1838
    const-string v12, "MountService"

    const-string v13, "Shutting down"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    iget-object v13, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    monitor-enter v13

    .line 1843
    :try_start_0
    iget-object v12, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 1844
    .local v5, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v1

    .line 1845
    .local v1, count:I
    new-array v12, v1, [Ljava/lang/String;

    invoke-interface {v5, v12}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 1846
    .local v7, paths:[Ljava/lang/String;
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1847
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_7

    .line 1848
    aget-object v6, v7, v3

    .line 1850
    .local v6, path:Ljava/lang/String;
    iget-object v13, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    monitor-enter v13

    .line 1851
    :try_start_1
    iget-object v12, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1852
    .local v10, state:Ljava/lang/String;
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1853
    const-string v12, "shared"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1861
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/android/server/MountService;->setUsbMassStorageEnabled(Z)V

    .line 1882
    :cond_0
    :goto_1
    iget-object v13, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    monitor-enter v13

    .line 1883
    :try_start_2
    iget-object v12, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    .line 1884
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1885
    const-string v12, "mounted"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string v12, "mounted_ro"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1887
    :cond_1
    const-string v12, "shutdown"

    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-direct {p0, v6, v12, v13, v0}, Lcom/android/server/MountService;->prepareUnmount(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/storage/IMountShutdownObserver;)V

    .line 1888
    new-instance v11, Lcom/android/server/MountService$ShutdownCallBack;

    move-object/from16 v0, p1

    invoke-direct {v11, p0, v6, v0}, Lcom/android/server/MountService$ShutdownCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/IMountShutdownObserver;)V

    .line 1890
    .local v11, ucb:Lcom/android/server/MountService$ShutdownCallBack;
    iget-object v12, p0, Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1891
    iget-object v12, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v13, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1847
    .end local v11           #ucb:Lcom/android/server/MountService$ShutdownCallBack;
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1846
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

    .line 1852
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

    .line 1862
    .restart local v10       #state:Ljava/lang/String;
    :cond_3
    const-string v12, "checking"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1868
    const/16 v8, 0x1e

    .line 1869
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

    .line 1871
    const-wide/16 v12, 0x3e8

    :try_start_5
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1876
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v10

    move v8, v9

    .end local v9           #retries:I
    .restart local v8       #retries:I
    goto :goto_3

    .line 1872
    .end local v8           #retries:I
    .restart local v9       #retries:I
    :catch_0
    move-exception v4

    .line 1873
    .local v4, iex:Ljava/lang/InterruptedException;
    const-string v12, "MountService"

    const-string v13, "Interrupted while waiting for media"

    invoke-static {v12, v13, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v8, v9

    .line 1878
    .end local v4           #iex:Ljava/lang/InterruptedException;
    .end local v9           #retries:I
    .restart local v8       #retries:I
    :cond_4
    :goto_4
    if-nez v8, :cond_0

    .line 1879
    const-string v12, "MountService"

    const-string v13, "Timed out waiting for media to check"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1884
    .end local v8           #retries:I
    :catchall_2
    move-exception v12

    :try_start_6
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v12

    .line 1893
    .restart local v11       #ucb:Lcom/android/server/MountService$ShutdownCallBack;
    :cond_5
    iget-object v12, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v13, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x2

    invoke-virtual {v13, v14, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 1895
    .end local v11           #ucb:Lcom/android/server/MountService$ShutdownCallBack;
    :cond_6
    if-eqz p1, :cond_2

    .line 1902
    const/4 v12, 0x0

    :try_start_7
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/os/storage/IMountShutdownObserver;->onShutDownComplete(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 1903
    :catch_1
    move-exception v2

    .line 1904
    .local v2, e:Landroid/os/RemoteException;
    const-string v12, "MountService"

    const-string v13, "RemoteException when shutting down"

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1908
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

    .line 3516
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3517
    sget-boolean v3, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v3, :cond_0

    const-string v3, "MountService"

    const-string v4, "unmountISO"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3519
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

    .line 3520
    const-string v3, "MountService"

    const-string v4, "unmountISO --"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3529
    :goto_0
    return v2

    .line 3522
    :catch_0
    move-exception v1

    .line 3523
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 3524
    .local v0, code:I
    const/16 v2, 0x191

    if-ne v0, v2, :cond_1

    .line 3525
    const/4 v2, -0x2

    goto :goto_0

    .line 3526
    :cond_1
    const/16 v2, 0x193

    if-ne v0, v2, :cond_2

    .line 3527
    const/4 v2, -0x4

    goto :goto_0

    .line 3529
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
    .line 2722
    if-nez p1, :cond_0

    .line 2723
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "filename cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2726
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2727
    .local v3, callerUid:I
    new-instance v0, Lcom/android/server/MountService$ObbState;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/MountService$ObbState;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V

    .line 2728
    .local v0, obbState:Lcom/android/server/MountService$ObbState;
    new-instance v6, Lcom/android/server/MountService$UnmountObbAction;

    invoke-direct {v6, p0, v0, p2}, Lcom/android/server/MountService$UnmountObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Z)V

    .line 2729
    .local v6, action:Lcom/android/server/MountService$ObbAction;
    iget-object v1, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v2, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v6}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2731
    sget-boolean v1, Lcom/android/server/MountService;->DEBUG_OBB:Z

    if-eqz v1, :cond_1

    .line 2732
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

    .line 2733
    :cond_1
    return-void
.end method

.method public unmountSecureContainer(Ljava/lang/String;Z)I
    .locals 8
    .parameter "id"
    .parameter "force"

    .prologue
    .line 2526
    const-string v4, "android.permission.ASEC_MOUNT_UNMOUNT"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2527
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2528
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2530
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    .line 2531
    :try_start_0
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2532
    const/4 v3, -0x5

    monitor-exit v5

    .line 2565
    :cond_0
    :goto_0
    return v3

    .line 2534
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2542
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    .line 2544
    const/4 v3, 0x0

    .line 2546
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

    .line 2547
    .local v0, cmd:Lcom/android/server/NativeDaemonConnector$Command;
    if-eqz p2, :cond_2

    .line 2548
    const-string v4, "force"

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2550
    :cond_2
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2560
    .end local v0           #cmd:Lcom/android/server/NativeDaemonConnector$Command;
    :goto_1
    if-nez v3, :cond_0

    .line 2561
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    .line 2562
    :try_start_2
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2563
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 2534
    .end local v3           #rc:I
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 2551
    .restart local v3       #rc:I
    :catch_0
    move-exception v2

    .line 2552
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 2553
    .local v1, code:I
    const/16 v4, 0x195

    if-ne v1, v4, :cond_3

    .line 2554
    const/4 v3, -0x7

    goto :goto_1

    .line 2556
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

    .line 2317
    const-string v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2318
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2320
    invoke-virtual {p0, p1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2321
    .local v2, volState:Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/MountService;->DEBUG_UNMOUNT:Z

    if-eqz v3, :cond_0

    .line 2322
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

    .line 2326
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

    .line 2346
    :cond_1
    :goto_0
    return-void

    .line 2334
    :cond_2
    const-string v3, "unmount"

    const/4 v4, 0x0

    invoke-direct {p0, p1, v3, p2, v4}, Lcom/android/server/MountService;->prepareUnmount(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/storage/IMountShutdownObserver;)V

    .line 2336
    iget-object v3, p0, Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2337
    new-instance v1, Lcom/android/server/MountService$UnmountCallBack;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ZZ)V

    .line 2338
    .local v1, ucb:Lcom/android/server/MountService$UnmountCallBack;
    iget-object v3, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2340
    .end local v1           #ucb:Lcom/android/server/MountService$UnmountCallBack;
    :cond_3
    invoke-direct {p0, p1, v7, p3}, Lcom/android/server/MountService;->doUnmountVolume(Ljava/lang/String;ZZ)I

    move-result v0

    .line 2341
    .local v0, rc:I
    if-eqz v0, :cond_1

    .line 2342
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
    .line 1826
    iget-object v3, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1827
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

    .line 1828
    .local v0, bl:Lcom/android/server/MountService$MountServiceBinderListener;
    iget-object v2, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    if-ne v2, p1, :cond_0

    .line 1829
    iget-object v2, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1830
    monitor-exit v3

    .line 1834
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    :goto_0
    return-void

    .line 1833
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
    .line 2852
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    .line 2853
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "no permission to access the crypt keeper"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2856
    :cond_0
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2859
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2860
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "password cannot be empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2863
    :cond_1
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2865
    sget-boolean v2, Lcom/android/server/MountService;->DEBUG_EVENTS:Z

    if-eqz v2, :cond_2

    .line 2866
    const-string v2, "MountService"

    const-string v3, "validating encryption password..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2871
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

    .line 2872
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

    .line 2873
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2876
    .end local v1           #event:Lcom/android/server/NativeDaemonEvent;
    :goto_0
    return v2

    .line 2874
    :catch_0
    move-exception v0

    .line 2876
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v2

    goto :goto_0
.end method

.method waitForAsecScan()V
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;)V

    .line 519
    return-void
.end method
