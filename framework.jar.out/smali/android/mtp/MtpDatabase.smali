.class public Landroid/mtp/MtpDatabase;
.super Ljava/lang/Object;
.source "MtpDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpDatabase$MtpPropertyCache;,
        Landroid/mtp/MtpDatabase$MtpHandler;,
        Landroid/mtp/MtpDatabase$MediaCache;,
        Landroid/mtp/MtpDatabase$FileCache;
    }
.end annotation


# static fields
.field static final ALL_PROPERTIES:[I = null

.field static final AUDIO_PROPERTIES:[I = null

.field private static final DEVICE_PROPERTIES_DATABASE_VERSION:I = 0x1

.field static final FILE_PROPERTIES:[I = null

.field private static final FILE_SIZE_CHECK_CRITERIA:J = 0x6400000L

.field private static final FORMAT_PARENT_WHERE:Ljava/lang/String; = "format=? AND parent=?"

.field private static final FORMAT_WHERE:Ljava/lang/String; = "format=?"

.field private static final ID_PROJECTION:[Ljava/lang/String; = null

.field private static final ID_WHERE:Ljava/lang/String; = "_id=?"

.field static final IMAGE_PROPERTIES:[I = null

.field private static final MTP_PERF_CPU_ATTR:Ljava/lang/String; = "/sys/class/android_usb/android0/f_mtp/qos"

.field private static final OBJECT_INFO_PROJECTION:[Ljava/lang/String; = null

.field private static final PARENT_WHERE:Ljava/lang/String; = "parent=?"

.field private static final PATH_PROJECTION:[Ljava/lang/String; = null

.field private static final PATH_SIZE_FORMAT_PROJECTION:[Ljava/lang/String; = null

.field private static final PATH_WHERE:Ljava/lang/String; = "_data=?"

.field private static final STORAGE_FORMAT_PARENT_WHERE:Ljava/lang/String; = "storage_id=? AND format=? AND parent=?"

.field private static final STORAGE_FORMAT_WHERE:Ljava/lang/String; = "storage_id=? AND format=?"

.field private static final STORAGE_PARENT_WHERE:Ljava/lang/String; = "storage_id=? AND parent=?"

.field private static final STORAGE_WHERE:Ljava/lang/String; = "storage_id=?"

.field private static final TAG:Ljava/lang/String; = "MtpDatabase"

.field static final VIDEO_PROPERTIES:[I = null

.field private static bCheckStorageId:Z = false

.field private static bPEF_KERNEL_SUPPORT:Z = false

.field private static final cMEDIA_CACHE_SIZE:I = 0x5dc

.field private static final cMEDIA_CACHE_SIZE_HIGH:I = 0x1770

.field private static final cMEDIA_MEM_BUDGET_HIGH:I = 0xbb800

.field private static final cMTP_MSG_SCAN:I = 0x1

.field private static cMediaCacheLimit:I = 0x0

.field private static final cTHUMB_SIZE_LIMIT:I = 0x8000

.field private static iStorageID1:I = 0x0

.field private static iStorageID2:I = 0x0

.field private static final lPathLenLimit:I = 0xfff

.field public static final mEnableDataCache:Z = true

.field private static maVolumes:[Landroid/os/storage/StorageVolume; = null

.field private static final szPhoneStorage:Ljava/lang/String; = "Phone"

.field private static final szSDCard:Ljava/lang/String; = "Card"

.field private static szStoragePath2:Ljava/lang/String;


# instance fields
.field private final bDelayScan:Z

.field private final bEnableScan:Z

.field private final bNewDelete:Z

.field private final bNewScan:Z

.field private final mContext:Landroid/content/Context;

.field private mDatabaseModified:Z

.field private mDeviceProperties:Landroid/content/SharedPreferences;

.field public final mMediaCache:Landroid/mtp/MtpDatabase$MediaCache;

.field private final mMediaProvider:Landroid/content/IContentProvider;

.field private final mMediaScanner:Landroid/media/MediaScanner;

.field private final mMediaStoragePath:Ljava/lang/String;

.field private mNativeContext:I

.field private mObjectFileSize:J

.field private final mObjectsUri:Landroid/net/Uri;

.field private final mPropertyGroupsByFormat:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mPropertyGroupsByProperty:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mScanDirectory:Ljava/lang/String;

.field private mSessionActive:Z

.field private final mStorageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/mtp/MtpStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubDirectories:[Ljava/lang/String;

.field private mSubDirectoriesWhere:Ljava/lang/String;

.field private mSubDirectoriesWhereArgs:[Ljava/lang/String;

.field private final mVolumeName:Ljava/lang/String;

.field private msMtpHandler:Landroid/mtp/MtpDatabase$MtpHandler;

.field private final mszNotifyPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, -0x1

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 302
    const/16 v0, 0x5dc

    sput v0, Landroid/mtp/MtpDatabase;->cMediaCacheLimit:I

    .line 313
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    .line 316
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    sput-object v0, Landroid/mtp/MtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    .line 320
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "_size"

    aput-object v1, v0, v2

    const-string v1, "format"

    aput-object v1, v0, v6

    sput-object v0, Landroid/mtp/MtpDatabase;->PATH_SIZE_FORMAT_PROJECTION:[Ljava/lang/String;

    .line 326
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "storage_id"

    aput-object v1, v0, v4

    const-string v1, "format"

    aput-object v1, v0, v2

    const-string/jumbo v1, "parent"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "album_artist"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "composer"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "description"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "year"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "track"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    sput-object v0, Landroid/mtp/MtpDatabase;->OBJECT_INFO_PROJECTION:[Ljava/lang/String;

    .line 362
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 596
    sput v5, Landroid/mtp/MtpDatabase;->iStorageID1:I

    sput v5, Landroid/mtp/MtpDatabase;->iStorageID2:I

    .line 597
    const-string v0, ""

    sput-object v0, Landroid/mtp/MtpDatabase;->szStoragePath2:Ljava/lang/String;

    .line 598
    const/4 v0, 0x0

    sput-object v0, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    .line 599
    sput-boolean v3, Landroid/mtp/MtpDatabase;->bCheckStorageId:Z

    .line 1022
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    .line 1037
    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    .line 1068
    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    .line 1106
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    .line 1124
    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Landroid/mtp/MtpDatabase;->ALL_PROPERTIES:[I

    .line 1599
    sput-boolean v4, Landroid/mtp/MtpDatabase;->bPEF_KERNEL_SUPPORT:Z

    return-void

    .line 1022
    :array_0
    .array-data 0x4
        0x1t 0xdct 0x0t 0x0t
        0x2t 0xdct 0x0t 0x0t
        0x3t 0xdct 0x0t 0x0t
        0x4t 0xdct 0x0t 0x0t
        0x7t 0xdct 0x0t 0x0t
        0x9t 0xdct 0x0t 0x0t
        0xbt 0xdct 0x0t 0x0t
        0x41t 0xdct 0x0t 0x0t
        0x44t 0xdct 0x0t 0x0t
        0x4et 0xdct 0x0t 0x0t
    .end array-data

    .line 1037
    :array_1
    .array-data 0x4
        0x1t 0xdct 0x0t 0x0t
        0x2t 0xdct 0x0t 0x0t
        0x3t 0xdct 0x0t 0x0t
        0x4t 0xdct 0x0t 0x0t
        0x7t 0xdct 0x0t 0x0t
        0x9t 0xdct 0x0t 0x0t
        0xbt 0xdct 0x0t 0x0t
        0x41t 0xdct 0x0t 0x0t
        0x44t 0xdct 0x0t 0x0t
        0xe0t 0xdct 0x0t 0x0t
        0x4et 0xdct 0x0t 0x0t
        0x46t 0xdct 0x0t 0x0t
        0x9at 0xdct 0x0t 0x0t
        0x9bt 0xdct 0x0t 0x0t
        0x8bt 0xdct 0x0t 0x0t
        0x99t 0xdct 0x0t 0x0t
        0x89t 0xdct 0x0t 0x0t
        0x8ct 0xdct 0x0t 0x0t
        0x96t 0xdct 0x0t 0x0t
        0x93t 0xdet 0x0t 0x0t
        0x94t 0xdet 0x0t 0x0t
        0x99t 0xdet 0x0t 0x0t
        0x9at 0xdet 0x0t 0x0t
    .end array-data

    .line 1068
    :array_2
    .array-data 0x4
        0x1t 0xdct 0x0t 0x0t
        0x2t 0xdct 0x0t 0x0t
        0x3t 0xdct 0x0t 0x0t
        0x4t 0xdct 0x0t 0x0t
        0x7t 0xdct 0x0t 0x0t
        0x9t 0xdct 0x0t 0x0t
        0xbt 0xdct 0x0t 0x0t
        0x41t 0xdct 0x0t 0x0t
        0x44t 0xdct 0x0t 0x0t
        0xe0t 0xdct 0x0t 0x0t
        0x4et 0xdct 0x0t 0x0t
        0x46t 0xdct 0x0t 0x0t
        0x9at 0xdct 0x0t 0x0t
        0x89t 0xdct 0x0t 0x0t
        0x48t 0xdct 0x0t 0x0t
        0x93t 0xdet 0x0t 0x0t
        0x94t 0xdet 0x0t 0x0t
        0x99t 0xdet 0x0t 0x0t
        0x9at 0xdet 0x0t 0x0t
        0x8bt 0xdct 0x0t 0x0t
        0x99t 0xdct 0x0t 0x0t
        0x8ct 0xdct 0x0t 0x0t
        0x87t 0xdct 0x0t 0x0t
        0x88t 0xdct 0x0t 0x0t
        0x9bt 0xdet 0x0t 0x0t
        0x9ct 0xdet 0x0t 0x0t
        0x9dt 0xdet 0x0t 0x0t
    .end array-data

    .line 1106
    :array_3
    .array-data 0x4
        0x1t 0xdct 0x0t 0x0t
        0x2t 0xdct 0x0t 0x0t
        0x3t 0xdct 0x0t 0x0t
        0x4t 0xdct 0x0t 0x0t
        0x7t 0xdct 0x0t 0x0t
        0x9t 0xdct 0x0t 0x0t
        0xbt 0xdct 0x0t 0x0t
        0x41t 0xdct 0x0t 0x0t
        0x44t 0xdct 0x0t 0x0t
        0xe0t 0xdct 0x0t 0x0t
        0x4et 0xdct 0x0t 0x0t
        0x48t 0xdct 0x0t 0x0t
    .end array-data

    .line 1124
    :array_4
    .array-data 0x4
        0x1t 0xdct 0x0t 0x0t
        0x2t 0xdct 0x0t 0x0t
        0x3t 0xdct 0x0t 0x0t
        0x4t 0xdct 0x0t 0x0t
        0x7t 0xdct 0x0t 0x0t
        0x9t 0xdct 0x0t 0x0t
        0xbt 0xdct 0x0t 0x0t
        0x41t 0xdct 0x0t 0x0t
        0x44t 0xdct 0x0t 0x0t
        0xe0t 0xdct 0x0t 0x0t
        0x4et 0xdct 0x0t 0x0t
        0x48t 0xdct 0x0t 0x0t
        0x46t 0xdct 0x0t 0x0t
        0x9at 0xdct 0x0t 0x0t
        0x9bt 0xdct 0x0t 0x0t
        0x8bt 0xdct 0x0t 0x0t
        0x99t 0xdct 0x0t 0x0t
        0x89t 0xdct 0x0t 0x0t
        0x8ct 0xdct 0x0t 0x0t
        0x96t 0xdct 0x0t 0x0t
        0x93t 0xdet 0x0t 0x0t
        0x94t 0xdet 0x0t 0x0t
        0x99t 0xdet 0x0t 0x0t
        0x9at 0xdet 0x0t 0x0t
        0x87t 0xdct 0x0t 0x0t
        0x88t 0xdct 0x0t 0x0t
        0x9bt 0xdet 0x0t 0x0t
        0x9ct 0xdet 0x0t 0x0t
        0x9dt 0xdet 0x0t 0x0t
        0x48t 0xdct 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 13
    .parameter "context"
    .parameter "volumeName"
    .parameter "storagePath"
    .parameter "subDirectories"

    .prologue
    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    .line 283
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    .line 287
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    .line 292
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/mtp/MtpDatabase;->mSessionActive:Z

    .line 294
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mScanDirectory:Ljava/lang/String;

    .line 295
    const-string v10, "Notify:"

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mszNotifyPrefix:Ljava/lang/String;

    .line 304
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/mtp/MtpDatabase;->bDelayScan:Z

    .line 305
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/mtp/MtpDatabase;->bEnableScan:Z

    .line 306
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/mtp/MtpDatabase;->bNewScan:Z

    .line 307
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/mtp/MtpDatabase;->bNewDelete:Z

    .line 1721
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->msMtpHandler:Landroid/mtp/MtpDatabase$MtpHandler;

    .line 367
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_setup()V

    .line 369
    iput-object p1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    .line 370
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "media"

    invoke-virtual {v10, v11}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    .line 371
    new-instance v10, Landroid/mtp/MtpDatabase$MediaCache;

    iget-object v11, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-direct {v10, v11}, Landroid/mtp/MtpDatabase$MediaCache;-><init>(Landroid/content/IContentProvider;)V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaCache:Landroid/mtp/MtpDatabase$MediaCache;

    .line 372
    iput-object p2, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    .line 373
    move-object/from16 v0, p3

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    .line 374
    invoke-static {p2}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    .line 375
    new-instance v10, Landroid/media/MediaScanner;

    invoke-direct {v10, p1}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    .line 377
    move-object/from16 v0, p4

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    .line 378
    if-eqz p4, :cond_2

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    .local v1, builder:Ljava/lang/StringBuilder;
    const-string v10, "("

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    move-object/from16 v0, p4

    array-length v2, v0

    .line 383
    .local v2, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 384
    const-string v10, "_data=? OR _data LIKE ?"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    add-int/lit8 v10, v2, -0x1

    if-eq v4, v10, :cond_0

    .line 387
    const-string v10, " OR "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 390
    :cond_1
    const-string v10, ")"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    .line 394
    mul-int/lit8 v10, v2, 0x2

    new-array v10, v10, [Ljava/lang/String;

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    .line 395
    const/4 v4, 0x0

    const/4 v5, 0x0

    .local v5, j:I
    move v6, v5

    .end local v5           #j:I
    .local v6, j:I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 396
    aget-object v9, p4, v4

    .line 397
    .local v9, path:Ljava/lang/String;
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    add-int/lit8 v5, v6, 0x1

    .end local v6           #j:I
    .restart local v5       #j:I
    aput-object v9, v10, v6

    .line 398
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    add-int/lit8 v6, v5, 0x1

    .end local v5           #j:I
    .restart local v6       #j:I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/%"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    .line 395
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 403
    .end local v1           #builder:Ljava/lang/StringBuilder;
    .end local v2           #count:I
    .end local v4           #i:I
    .end local v6           #j:I
    .end local v9           #path:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v8, v10, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 404
    .local v8, locale:Ljava/util/Locale;
    if-eqz v8, :cond_3

    .line 405
    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 406
    .local v7, language:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 407
    .local v3, country:Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 408
    if-eqz v3, :cond_4

    .line 409
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    .line 415
    .end local v3           #country:Ljava/lang/String;
    .end local v7           #language:Ljava/lang/String;
    :cond_3
    :goto_2
    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase;->initDeviceProperties(Landroid/content/Context;)V

    .line 416
    return-void

    .line 411
    .restart local v3       #country:Ljava/lang/String;
    .restart local v7       #language:Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    invoke-virtual {v10, v7}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private CheckStorage(II)I
    .locals 10
    .parameter "iStorageID"
    .parameter "iParent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v9, -0x1

    .line 622
    sget-boolean v6, Landroid/mtp/MtpDatabase;->bCheckStorageId:Z

    if-nez v6, :cond_8

    .line 624
    const-string v6, "EXTERNAL_STORAGE"

    invoke-static {v6}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 626
    .local v3, szStoragePath1:Ljava/lang/String;
    sget-object v6, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    if-nez v6, :cond_0

    .line 628
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "storage"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 630
    .local v1, mStorageManager:Landroid/os/storage/StorageManager;
    if-eqz v1, :cond_0

    .line 631
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v6

    sput-object v6, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    .line 633
    .end local v1           #mStorageManager:Landroid/os/storage/StorageManager;
    :cond_0
    sget-object v6, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    if-nez v6, :cond_2

    .line 670
    .end local v3           #szStoragePath1:Ljava/lang/String;
    :cond_1
    :goto_0
    return v4

    .line 635
    .restart local v3       #szStoragePath1:Ljava/lang/String;
    :cond_2
    if-nez v3, :cond_3

    .line 636
    const-string v3, "/mnt/sdcard"

    .line 637
    :cond_3
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 639
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Landroid/mtp/MtpDatabase;->szStoragePath2:Ljava/lang/String;

    .line 641
    :cond_4
    const/4 v0, 0x0

    .local v0, ii:I
    :goto_1
    sget-object v6, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    array-length v6, v6

    if-ge v0, v6, :cond_7

    .line 642
    sget-object v6, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 644
    .local v2, szPath:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 646
    sget-object v6, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getStorageId()I

    move-result v6

    sput v6, Landroid/mtp/MtpDatabase;->iStorageID1:I

    .line 641
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 649
    :cond_6
    sget-object v6, Landroid/mtp/MtpDatabase;->szStoragePath2:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 651
    sget-object v6, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getStorageId()I

    move-result v6

    sput v6, Landroid/mtp/MtpDatabase;->iStorageID2:I

    .line 655
    .end local v2           #szPath:Ljava/lang/String;
    :cond_7
    sput-boolean v5, Landroid/mtp/MtpDatabase;->bCheckStorageId:Z

    .line 658
    .end local v0           #ii:I
    .end local v3           #szStoragePath1:Ljava/lang/String;
    :cond_8
    const-string v6, "MtpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "StorageID1="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Landroid/mtp/MtpDatabase;->iStorageID1:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",StorageID2="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Landroid/mtp/MtpDatabase;->iStorageID2:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    if-nez p2, :cond_1

    .line 660
    sget v6, Landroid/mtp/MtpDatabase;->iStorageID1:I

    if-eq v6, v9, :cond_1

    sget v6, Landroid/mtp/MtpDatabase;->iStorageID2:I

    if-eq v6, v9, :cond_1

    .line 662
    sget v6, Landroid/mtp/MtpDatabase;->iStorageID1:I

    if-ne p1, v6, :cond_9

    move v4, v5

    .line 663
    goto/16 :goto_0

    .line 664
    :cond_9
    sget v5, Landroid/mtp/MtpDatabase;->iStorageID2:I

    if-ne p1, v5, :cond_a

    .line 665
    const/4 v4, 0x2

    goto/16 :goto_0

    .line 667
    :cond_a
    const-string v5, "MtpDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unhandled StorageID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private GetStorageBase(I)Ljava/lang/String;
    .locals 4
    .parameter "iStorageID"

    .prologue
    .line 603
    sget-object v2, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    if-nez v2, :cond_0

    .line 605
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "storage"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 607
    .local v1, mStorageManager:Landroid/os/storage/StorageManager;
    if-eqz v1, :cond_0

    .line 608
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    sput-object v2, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    .line 610
    .end local v1           #mStorageManager:Landroid/os/storage/StorageManager;
    :cond_0
    sget-object v2, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    if-eqz v2, :cond_2

    .line 612
    const/4 v0, 0x0

    .local v0, ii:I
    :goto_0
    sget-object v2, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 613
    sget-object v2, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getStorageId()I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 614
    sget-object v2, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 617
    .end local v0           #ii:I
    :goto_1
    return-object v2

    .line 612
    .restart local v0       #ii:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 617
    .end local v0           #ii:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static SetMtpCpuPerf(I)V
    .locals 0
    .parameter "iEnable"

    .prologue
    .line 1622
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 70
    sget v0, Landroid/mtp/MtpDatabase;->cMediaCacheLimit:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    sput p0, Landroid/mtp/MtpDatabase;->cMediaCacheLimit:I

    return p0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Landroid/mtp/MtpDatabase;->OBJECT_INFO_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/mtp/MtpDatabase;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Landroid/mtp/MtpDatabase;->mSessionActive:Z

    return v0
.end method

.method static synthetic access$300(Landroid/mtp/MtpDatabase;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroid/mtp/MtpDatabase;)Landroid/media/MediaScanner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    return-object v0
.end method

.method private beginSendObject(Ljava/lang/String;IIIJJ)I
    .locals 13
    .parameter "path"
    .parameter "format"
    .parameter "parent"
    .parameter "storageId"
    .parameter "size"
    .parameter "modified"

    .prologue
    .line 505
    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase;->inStorageSubDirectory(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, -0x1

    .line 546
    :cond_0
    :goto_0
    return v2

    .line 508
    :cond_1
    if-eqz p1, :cond_2

    .line 509
    const/4 v9, 0x0

    .line 511
    .local v9, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v4, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const-string v5, "_data=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    .line 513
    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    .line 514
    const-string v2, "MtpDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file already exists in beginSendObject: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    const/4 v2, -0x1

    .line 520
    if-eqz v9, :cond_0

    .line 521
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 517
    :catch_0
    move-exception v10

    .line 518
    .local v10, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "MtpDatabase"

    const-string v3, "RemoteException in beginSendObject"

    invoke-static {v2, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 520
    if-eqz v9, :cond_2

    .line 521
    .end local v10           #e:Landroid/os/RemoteException;
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 526
    .end local v9           #c:Landroid/database/Cursor;
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 527
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 528
    .local v12, values:Landroid/content/ContentValues;
    const-string v2, "_data"

    invoke-virtual {v12, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const-string v2, "format"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 530
    const-string/jumbo v2, "parent"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 531
    const-string/jumbo v2, "storage_id"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 532
    const-string v2, "_size"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 533
    const-string v2, "date_modified"

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 534
    move-wide/from16 v0, p5

    iput-wide v0, p0, Landroid/mtp/MtpDatabase;->mObjectFileSize:J

    .line 537
    :try_start_2
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    invoke-interface {v2, v3, v12}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 538
    .local v11, uri:Landroid/net/Uri;
    if-eqz v11, :cond_4

    .line 539
    invoke-virtual {v11}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    goto/16 :goto_0

    .line 520
    .end local v11           #uri:Landroid/net/Uri;
    .end local v12           #values:Landroid/content/ContentValues;
    .restart local v9       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_3

    .line 521
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 520
    :cond_3
    throw v2

    .line 541
    .end local v9           #c:Landroid/database/Cursor;
    .restart local v11       #uri:Landroid/net/Uri;
    .restart local v12       #values:Landroid/content/ContentValues;
    :cond_4
    :try_start_3
    const-string v2, "MtpDatabase"

    const-string v3, "[USBF] beginSendObject: MediaProvider.insert fail"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 542
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 544
    .end local v11           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v10

    .line 545
    .restart local v10       #e:Landroid/os/RemoteException;
    const-string v2, "MtpDatabase"

    const-string v3, "RemoteException in beginSendObject"

    invoke-static {v2, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 546
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 520
    .end local v10           #e:Landroid/os/RemoteException;
    .end local v12           #values:Landroid/content/ContentValues;
    .restart local v9       #c:Landroid/database/Cursor;
    :cond_5
    if-eqz v9, :cond_2

    goto :goto_1
.end method

.method private createObjectQuery(III)Landroid/database/Cursor;
    .locals 1
    .parameter "storageID"
    .parameter "format"
    .parameter "parent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 788
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/mtp/MtpDatabase;->createObjectQueryEx(IIIZ)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private createObjectQueryEx(IIIZ)Landroid/database/Cursor;
    .locals 14
    .parameter "storageID"
    .parameter "format"
    .parameter "parent"
    .parameter "bMoreInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 795
    const/4 v1, -0x1

    if-ne p1, v1, :cond_7

    .line 797
    if-nez p2, :cond_4

    .line 799
    if-nez p3, :cond_2

    .line 801
    const/4 v4, 0x0

    .line 802
    .local v4, where:Ljava/lang/String;
    const/4 v5, 0x0

    .line 888
    .local v5, whereArgs:[Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 889
    if-nez v4, :cond_10

    .line 890
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    .line 891
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    .line 909
    :cond_1
    :goto_1
    if-eqz p4, :cond_13

    .line 910
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mMediaCache:Landroid/mtp/MtpDatabase$MediaCache;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v4, v5}, Landroid/mtp/MtpDatabase$MediaCache;->queryObjectInfoCache(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 913
    :goto_2
    return-object v1

    .line 804
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #whereArgs:[Ljava/lang/String;
    :cond_2
    const/4 v1, -0x1

    move/from16 v0, p3

    if-ne v0, v1, :cond_3

    .line 806
    const/16 p3, 0x0

    .line 808
    :cond_3
    const-string/jumbo v4, "parent=?"

    .line 809
    .restart local v4       #where:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .restart local v5       #whereArgs:[Ljava/lang/String;
    goto :goto_0

    .line 813
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #whereArgs:[Ljava/lang/String;
    :cond_4
    if-nez p3, :cond_5

    .line 815
    const-string v4, "format=?"

    .line 816
    .restart local v4       #where:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .restart local v5       #whereArgs:[Ljava/lang/String;
    goto :goto_0

    .line 818
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #whereArgs:[Ljava/lang/String;
    :cond_5
    const/4 v1, -0x1

    move/from16 v0, p3

    if-ne v0, v1, :cond_6

    .line 820
    const/16 p3, 0x0

    .line 822
    :cond_6
    const-string v4, "format=? AND parent=?"

    .line 823
    .restart local v4       #where:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .restart local v5       #whereArgs:[Ljava/lang/String;
    goto :goto_0

    .line 829
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #whereArgs:[Ljava/lang/String;
    :cond_7
    if-nez p2, :cond_d

    .line 831
    if-nez p3, :cond_8

    .line 833
    const-string/jumbo v4, "storage_id=?"

    .line 834
    .restart local v4       #where:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .restart local v5       #whereArgs:[Ljava/lang/String;
    goto :goto_0

    .line 836
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #whereArgs:[Ljava/lang/String;
    :cond_8
    const/4 v9, 0x0

    .line 838
    .local v9, iStorageID:I
    const/4 v1, -0x1

    move/from16 v0, p3

    if-ne v0, v1, :cond_9

    .line 840
    const/16 p3, 0x0

    .line 841
    move/from16 v0, p3

    invoke-direct {p0, p1, v0}, Landroid/mtp/MtpDatabase;->CheckStorage(II)I

    move-result v9

    .line 843
    :cond_9
    const-string/jumbo v4, "storage_id=? AND parent=?"

    .line 844
    .restart local v4       #where:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 846
    .restart local v5       #whereArgs:[Ljava/lang/String;
    const/4 v1, 0x1

    if-eq v9, v1, :cond_a

    const/4 v1, 0x2

    if-ne v9, v1, :cond_0

    .line 848
    :cond_a
    const-string/jumbo v4, "parent=?"

    .line 849
    const/4 v1, 0x2

    new-array v13, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v1

    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v13, v1

    .line 851
    .local v13, newWhereArgs:[Ljava/lang/String;
    array-length v1, v13

    add-int/lit8 v10, v1, -0x1

    .line 853
    .local v10, ii:I
    const/4 v1, 0x1

    if-ne v9, v1, :cond_c

    .line 855
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NOT LIKE ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 856
    add-int/lit8 v11, v10, 0x1

    .end local v10           #ii:I
    .local v11, ii:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/mtp/MtpDatabase;->szStoragePath2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v13, v10

    move v10, v11

    .line 863
    .end local v11           #ii:I
    .restart local v10       #ii:I
    :cond_b
    :goto_3
    move-object v5, v13

    goto/16 :goto_0

    .line 858
    :cond_c
    const/4 v1, 0x2

    if-ne v9, v1, :cond_b

    .line 860
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LIKE ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 861
    add-int/lit8 v11, v10, 0x1

    .end local v10           #ii:I
    .restart local v11       #ii:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/mtp/MtpDatabase;->szStoragePath2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v13, v10

    move v10, v11

    .end local v11           #ii:I
    .restart local v10       #ii:I
    goto :goto_3

    .line 868
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #whereArgs:[Ljava/lang/String;
    .end local v9           #iStorageID:I
    .end local v10           #ii:I
    .end local v13           #newWhereArgs:[Ljava/lang/String;
    :cond_d
    if-nez p3, :cond_e

    .line 870
    const-string/jumbo v4, "storage_id=? AND format=?"

    .line 871
    .restart local v4       #where:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .restart local v5       #whereArgs:[Ljava/lang/String;
    goto/16 :goto_0

    .line 874
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #whereArgs:[Ljava/lang/String;
    :cond_e
    const/4 v1, -0x1

    move/from16 v0, p3

    if-ne v0, v1, :cond_f

    .line 876
    const/16 p3, 0x0

    .line 878
    :cond_f
    const-string/jumbo v4, "storage_id=? AND format=? AND parent=?"

    .line 879
    .restart local v4       #where:Ljava/lang/String;
    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .restart local v5       #whereArgs:[Ljava/lang/String;
    goto/16 :goto_0

    .line 893
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 896
    array-length v1, v5

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    array-length v2, v2

    add-int/2addr v1, v2

    new-array v13, v1, [Ljava/lang/String;

    .line 899
    .restart local v13       #newWhereArgs:[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_4
    array-length v1, v5

    if-ge v8, v1, :cond_11

    .line 900
    aget-object v1, v5, v8

    aput-object v1, v13, v8

    .line 899
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 902
    :cond_11
    const/4 v12, 0x0

    .local v12, j:I
    :goto_5
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    array-length v1, v1

    if-ge v12, v1, :cond_12

    .line 903
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    aget-object v1, v1, v12

    aput-object v1, v13, v8

    .line 902
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 905
    :cond_12
    move-object v5, v13

    goto/16 :goto_1

    .line 913
    .end local v8           #i:I
    .end local v12           #j:I
    .end local v13           #newWhereArgs:[Ljava/lang/String;
    :cond_13
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v3, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    goto/16 :goto_2
.end method

.method private deleteFile(I)I
    .locals 17
    .parameter "handle"

    .prologue
    .line 1468
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 1469
    const/4 v9, 0x0

    .line 1470
    .local v9, path:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1473
    .local v4, format:I
    const/4 v2, 0x0

    .line 1475
    .local v2, c:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/mtp/MtpDatabase;->mMediaCache:Landroid/mtp/MtpDatabase$MediaCache;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    move/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Landroid/mtp/MtpDatabase$MediaCache;->queryFileById(ILandroid/net/Uri;)Landroid/mtp/MtpDatabase$FileCache;

    move-result-object v10

    .line 1476
    .local v10, sFileCh:Landroid/mtp/MtpDatabase$FileCache;
    if-eqz v10, :cond_2

    .line 1479
    iget-object v9, v10, Landroid/mtp/MtpDatabase$FileCache;->mszFullPath:Ljava/lang/String;

    .line 1480
    iget v4, v10, Landroid/mtp/MtpDatabase$FileCache;->miFormat:I

    .line 1481
    iget-wide v6, v10, Landroid/mtp/MtpDatabase$FileCache;->miSize:J

    .line 1486
    .local v6, iFileSize:J
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/mtp/MtpDatabase;->mMediaCache:Landroid/mtp/MtpDatabase$MediaCache;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/mtp/MtpDatabase$MediaCache;->invalid(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1488
    if-eqz v9, :cond_0

    if-nez v4, :cond_3

    .line 1489
    :cond_0
    const/16 v12, 0x2002

    .line 1545
    if-eqz v2, :cond_1

    .line 1546
    .end local v6           #iFileSize:J
    .end local v10           #sFileCh:Landroid/mtp/MtpDatabase$FileCache;
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1543
    :cond_1
    return v12

    .line 1483
    .restart local v10       #sFileCh:Landroid/mtp/MtpDatabase$FileCache;
    :cond_2
    const/16 v12, 0x2009

    .line 1545
    if-eqz v2, :cond_1

    goto :goto_0

    .line 1493
    .restart local v6       #iFileSize:J
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/mtp/MtpDatabase;->isStorageSubDirectory(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1494
    const/16 v12, 0x200d

    .line 1545
    if-eqz v2, :cond_1

    goto :goto_0

    .line 1507
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    move/from16 v0, p1

    int-to-long v13, v0

    invoke-static {v12, v13, v14}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v11

    .line 1512
    .local v11, uri:Landroid/net/Uri;
    invoke-virtual {v11}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 1513
    .local v1, builder:Landroid/net/Uri$Builder;
    const-string/jumbo v12, "recursive"

    const-string/jumbo v13, "true"

    invoke-virtual {v1, v12, v13}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1514
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    .line 1518
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface {v12, v11, v13, v14}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .local v5, iCountDel:I
    if-lez v5, :cond_7

    .line 1519
    const/16 v12, 0x3001

    if-eq v4, v12, :cond_5

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "/.nomedia"

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v12

    if-eqz v12, :cond_5

    .line 1522
    const/4 v12, 0x0

    :try_start_2
    const-string v13, "/"

    invoke-virtual {v9, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v9, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1523
    .local v8, parentPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    const-string/jumbo v13, "unhide"

    const/4 v14, 0x0

    invoke-interface {v12, v13, v8, v14}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1528
    .end local v8           #parentPath:Ljava/lang/String;
    :cond_5
    :goto_1
    const-wide/32 v12, 0x6400000

    cmp-long v12, v6, v12

    if-lez v12, :cond_6

    .line 1530
    :try_start_3
    const-string v12, "MtpDatabase"

    const-string v13, "[USBF] deleteFile: sending ACTION_MEDIA_SCANNER_FINISHED"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    new-instance v13, Landroid/content/Intent;

    const-string v14, "android.intent.action.MEDIA_SCANNER_FINISHED"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "file://"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v12, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1533
    :cond_6
    const/16 v12, 0x2001

    .line 1545
    if-eqz v2, :cond_1

    goto/16 :goto_0

    .line 1524
    :catch_0
    move-exception v3

    .line 1525
    .local v3, e:Landroid/os/RemoteException;
    const-string v12, "MtpDatabase"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "failed to unhide/rescan for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1541
    .end local v1           #builder:Landroid/net/Uri$Builder;
    .end local v3           #e:Landroid/os/RemoteException;
    .end local v5           #iCountDel:I
    .end local v6           #iFileSize:J
    .end local v10           #sFileCh:Landroid/mtp/MtpDatabase$FileCache;
    .end local v11           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v3

    .line 1542
    .restart local v3       #e:Landroid/os/RemoteException;
    :try_start_4
    const-string v12, "MtpDatabase"

    const-string v13, "RemoteException in deleteFile"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1543
    const/16 v12, 0x2002

    .line 1545
    if-eqz v2, :cond_1

    goto/16 :goto_0

    .line 1535
    .end local v3           #e:Landroid/os/RemoteException;
    .restart local v1       #builder:Landroid/net/Uri$Builder;
    .restart local v5       #iCountDel:I
    .restart local v6       #iFileSize:J
    .restart local v10       #sFileCh:Landroid/mtp/MtpDatabase$FileCache;
    .restart local v11       #uri:Landroid/net/Uri;
    :cond_7
    const/4 v12, -0x1

    if-ne v12, v5, :cond_8

    .line 1536
    :try_start_5
    const-string v12, "MtpDatabase"

    const-string v13, "[USBF] RESPONSE_PARTIAL_DELETION"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1537
    const/16 v12, 0x2012

    .line 1545
    if-eqz v2, :cond_1

    goto/16 :goto_0

    .line 1539
    :cond_8
    const/16 v12, 0x2009

    .line 1545
    if-eqz v2, :cond_1

    goto/16 :goto_0

    .end local v1           #builder:Landroid/net/Uri$Builder;
    .end local v5           #iCountDel:I
    .end local v6           #iFileSize:J
    .end local v10           #sFileCh:Landroid/mtp/MtpDatabase$FileCache;
    .end local v11           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v12

    if-eqz v2, :cond_9

    .line 1546
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1545
    :cond_9
    throw v12
.end method

.method private endSendObject(Ljava/lang/String;IIZ)V
    .locals 9
    .parameter "path"
    .parameter "handle"
    .parameter "format"
    .parameter "succeeded"

    .prologue
    .line 551
    if-eqz p4, :cond_4

    .line 554
    const v4, 0xba05

    if-ne p3, v4, :cond_3

    .line 556
    move-object v2, p1

    .line 557
    .local v2, name:Ljava/lang/String;
    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 558
    .local v1, lastSlash:I
    if-ltz v1, :cond_0

    .line 559
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 562
    :cond_0
    const-string v4, ".pla"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 563
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 566
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 567
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "_data"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const-string v4, "format"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 570
    const-string v4, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 571
    const-string/jumbo v4, "media_scanner_new_object_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 573
    :try_start_0
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    sget-object v5, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v4, v5, v3}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    .end local v1           #lastSlash:I
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_2
    :goto_0
    return-void

    .line 574
    .restart local v1       #lastSlash:I
    .restart local v2       #name:Ljava/lang/String;
    .restart local v3       #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 575
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "MtpDatabase"

    const-string v5, "RemoteException in endSendObject"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 578
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #lastSlash:I
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_3
    const-string v4, "MtpDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[USBF] endSendObject: MediaScanner.scanMtpFile+, format="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-virtual {v4, p1, v5, p2, p3}, Landroid/media/MediaScanner;->scanMtpFile(Ljava/lang/String;Ljava/lang/String;II)V

    .line 583
    const-string v4, "MtpDatabase"

    const-string v5, "[USBF] endSendObject: MediaScanner.scanMtpFile-"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-wide v4, p0, Landroid/mtp/MtpDatabase;->mObjectFileSize:J

    const-wide/32 v6, 0x6400000

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 587
    const-string v4, "MtpDatabase"

    const-string v5, "[USBF] endSendObject: sending ACTION_MEDIA_SCANNER_FINISHED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MEDIA_SCANNER_FINISHED"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 592
    :cond_4
    invoke-direct {p0, p2}, Landroid/mtp/MtpDatabase;->deleteFile(I)I

    goto :goto_0
.end method

.method private getDeviceProperty(I[J[C)I
    .locals 11
    .parameter "property"
    .parameter "outIntValue"
    .parameter "outStringValue"

    .prologue
    const/16 v7, 0x2001

    const/4 v10, 0x0

    .line 1365
    sparse-switch p1, :sswitch_data_0

    .line 1390
    const/16 v6, 0x200a

    :goto_0
    return v6

    .line 1369
    :sswitch_0
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1370
    .local v4, value:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 1371
    .local v3, length:I
    const/16 v6, 0xff

    if-le v3, v6, :cond_0

    .line 1372
    const/16 v3, 0xff

    .line 1374
    :cond_0
    invoke-virtual {v4, v10, v3, p3, v10}, Ljava/lang/String;->getChars(II[CI)V

    .line 1375
    aput-char v10, p3, v3

    move v6, v7

    .line 1376
    goto :goto_0

    .line 1380
    .end local v3           #length:I
    .end local v4           #value:Ljava/lang/String;
    :sswitch_1
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "window"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1382
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v5

    .line 1383
    .local v5, width:I
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v1

    .line 1384
    .local v1, height:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "x"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1385
    .local v2, imageSize:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v10, v6, p3, v10}, Ljava/lang/String;->getChars(II[CI)V

    .line 1386
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    aput-char v10, p3, v6

    move v6, v7

    .line 1387
    goto :goto_0

    .line 1365
    :sswitch_data_0
    .sparse-switch
        0x5003 -> :sswitch_1
        0xd401 -> :sswitch_0
        0xd402 -> :sswitch_0
    .end sparse-switch
.end method

.method private getNumObjects(III)I
    .locals 4
    .parameter "storageID"
    .parameter "format"
    .parameter "parent"

    .prologue
    .line 959
    const/4 v0, 0x0

    .line 961
    .local v0, c:Landroid/database/Cursor;
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, p3, v2}, Landroid/mtp/MtpDatabase;->createObjectQueryEx(IIIZ)Landroid/database/Cursor;

    move-result-object v0

    .line 962
    if-eqz v0, :cond_3

    .line 963
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 968
    if-eqz v0, :cond_0

    .line 969
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 972
    :cond_0
    :goto_0
    return v2

    .line 965
    :catch_0
    move-exception v1

    .line 966
    .local v1, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "MtpDatabase"

    const-string v3, "RemoteException in getNumObjects"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 968
    if-eqz v0, :cond_1

    .line 969
    .end local v1           #e:Landroid/os/RemoteException;
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 972
    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    .line 968
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    .line 969
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 968
    :cond_2
    throw v2

    :cond_3
    if-eqz v0, :cond_1

    goto :goto_1
.end method

.method private getObjectFilePath(I[C[J)I
    .locals 8
    .parameter "handle"
    .parameter "outFilePath"
    .parameter "outFileLengthFormat"

    .prologue
    const/16 v3, 0x2001

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1441
    if-nez p1, :cond_0

    .line 1443
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v6, v5, p2, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 1444
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    aput-char v6, p2, v4

    .line 1445
    const-wide/16 v4, 0x0

    aput-wide v4, p3, v6

    .line 1446
    const-wide/16 v4, 0x3001

    aput-wide v4, p3, v7

    .line 1463
    :goto_0
    return v3

    .line 1450
    :cond_0
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mMediaCache:Landroid/mtp/MtpDatabase$MediaCache;

    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    invoke-virtual {v4, p1, v5}, Landroid/mtp/MtpDatabase$MediaCache;->queryFileById(ILandroid/net/Uri;)Landroid/mtp/MtpDatabase$FileCache;

    move-result-object v2

    .line 1451
    .local v2, sFileCh:Landroid/mtp/MtpDatabase$FileCache;
    if-eqz v2, :cond_2

    .line 1452
    iget-object v1, v2, Landroid/mtp/MtpDatabase$FileCache;->mszFullPath:Ljava/lang/String;

    .line 1454
    .local v1, path:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1455
    .local v0, lPathLen:I
    const/16 v4, 0xfff

    if-le v0, v4, :cond_1

    .line 1456
    const/16 v0, 0xfff

    .line 1457
    :cond_1
    invoke-virtual {v1, v6, v0, p2, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 1458
    aput-char v6, p2, v0

    .line 1459
    iget-wide v4, v2, Landroid/mtp/MtpDatabase$FileCache;->miSize:J

    aput-wide v4, p3, v6

    .line 1460
    iget v4, v2, Landroid/mtp/MtpDatabase$FileCache;->miFormat:I

    int-to-long v4, v4

    aput-wide v4, p3, v7

    goto :goto_0

    .line 1463
    .end local v0           #lPathLen:I
    .end local v1           #path:Ljava/lang/String;
    :cond_2
    const/16 v3, 0x2002

    goto :goto_0
.end method

.method private getObjectInfo(I[I[C[J)Z
    .locals 7
    .parameter "handle"
    .parameter "outStorageFormatParent"
    .parameter "outName"
    .parameter "outSizeModified"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1422
    const/4 v0, 0x0

    .line 1423
    .local v0, path:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1424
    .local v1, ret:Z
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mMediaCache:Landroid/mtp/MtpDatabase$MediaCache;

    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    invoke-virtual {v3, p1, v4}, Landroid/mtp/MtpDatabase$MediaCache;->queryFileById(ILandroid/net/Uri;)Landroid/mtp/MtpDatabase$FileCache;

    move-result-object v2

    .line 1426
    .local v2, sFileCh:Landroid/mtp/MtpDatabase$FileCache;
    if-eqz v2, :cond_0

    .line 1427
    iget v3, v2, Landroid/mtp/MtpDatabase$FileCache;->miStorageId:I

    aput v3, p2, v5

    .line 1428
    iget v3, v2, Landroid/mtp/MtpDatabase$FileCache;->miFormat:I

    aput v3, p2, v6

    .line 1429
    const/4 v3, 0x2

    iget v4, v2, Landroid/mtp/MtpDatabase$FileCache;->miParent:I

    aput v4, p2, v3

    .line 1430
    iget-object v0, v2, Landroid/mtp/MtpDatabase$FileCache;->mszFullPath:Ljava/lang/String;

    .line 1431
    invoke-static {v0, p3}, Landroid/mtp/MtpDatabase;->nameFromPath(Ljava/lang/String;[C)V

    .line 1432
    iget-wide v3, v2, Landroid/mtp/MtpDatabase$FileCache;->miSize:J

    aput-wide v3, p4, v5

    .line 1433
    iget-wide v3, v2, Landroid/mtp/MtpDatabase$FileCache;->miModified:J

    aput-wide v3, p4, v6

    .line 1434
    const/4 v1, 0x1

    .line 1437
    :cond_0
    return v1
.end method

.method private getObjectList(III)[I
    .locals 8
    .parameter "storageID"
    .parameter "format"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    const/4 v7, -0x1

    .line 917
    const/4 v3, 0x0

    .line 919
    .local v3, sCur:Landroid/database/Cursor;
    const/4 v6, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, p3, v6}, Landroid/mtp/MtpDatabase;->createObjectQueryEx(IIIZ)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 920
    if-nez v3, :cond_2

    .line 952
    if-eqz v3, :cond_0

    .line 953
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v2, v5

    .line 955
    :cond_1
    :goto_0
    return-object v2

    .line 923
    :cond_2
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 925
    .local v0, iCount:I
    if-lez v0, :cond_8

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 926
    new-array v2, v0, [I

    .line 928
    .local v2, result:[I
    invoke-static {v0}, Landroid/mtp/MtpDatabase;->SetMtpCpuPerf(I)V

    .line 929
    const/4 v1, 0x0

    .local v1, ii:I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 931
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    aput v6, v2, v1

    .line 933
    if-nez v1, :cond_3

    if-ne p3, v7, :cond_3

    .line 934
    aget v6, v2, v1

    invoke-virtual {p0, v6, p1, p3}, Landroid/mtp/MtpDatabase;->StartMediaScanner(III)V

    .line 935
    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 929
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 937
    :cond_4
    if-eqz p3, :cond_5

    if-eq p3, v7, :cond_5

    .line 938
    invoke-virtual {p0, p3, p1}, Landroid/mtp/MtpDatabase;->StartMediaScanner(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 952
    :cond_5
    if-eqz v3, :cond_1

    .line 953
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 942
    .end local v0           #iCount:I
    .end local v1           #ii:I
    .end local v2           #result:[I
    :catch_0
    move-exception v4

    .line 944
    .local v4, sEx:Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "MtpDatabase"

    const-string v7, "RemoteException in getObjectList"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 952
    if-eqz v3, :cond_6

    .line 953
    .end local v4           #sEx:Landroid/os/RemoteException;
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v2, v5

    .line 955
    goto :goto_0

    .line 946
    :catch_1
    move-exception v4

    .line 948
    .local v4, sEx:Ljava/lang/Exception;
    :try_start_3
    const-string v6, "MtpDatabase"

    const-string v7, "Exception in getObjectList"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 952
    if-eqz v3, :cond_6

    goto :goto_2

    .end local v4           #sEx:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_7

    .line 953
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 952
    :cond_7
    throw v5

    .restart local v0       #iCount:I
    :cond_8
    if-eqz v3, :cond_6

    goto :goto_2
.end method

.method private getObjectPropertyList(JIJII)Landroid/mtp/MtpPropertyList;
    .locals 5
    .parameter "handle"
    .parameter "format"
    .parameter "property"
    .parameter "groupCode"
    .parameter "depth"

    .prologue
    const/4 v4, 0x0

    .line 1253
    if-eqz p6, :cond_0

    .line 1254
    new-instance v2, Landroid/mtp/MtpPropertyList;

    const v3, 0xa807

    invoke-direct {v2, v4, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 1274
    :goto_0
    return-object v2

    .line 1258
    :cond_0
    const-wide v2, 0xffffffffL

    cmp-long v2, p4, v2

    if-nez v2, :cond_2

    .line 1259
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpPropertyGroup;

    .line 1260
    .local v0, propertyGroup:Landroid/mtp/MtpPropertyGroup;
    if-nez v0, :cond_1

    .line 1261
    invoke-direct {p0, p3}, Landroid/mtp/MtpDatabase;->getSupportedObjectProperties(I)[I

    move-result-object v1

    .line 1262
    .local v1, propertyList:[I
    new-instance v0, Landroid/mtp/MtpPropertyGroup;

    .end local v0           #propertyGroup:Landroid/mtp/MtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-direct {v0, p0, v2, v3, v1}, Landroid/mtp/MtpPropertyGroup;-><init>(Landroid/mtp/MtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;[I)V

    .line 1263
    .restart local v0       #propertyGroup:Landroid/mtp/MtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    .end local v1           #propertyList:[I
    :cond_1
    :goto_1
    long-to-int v2, p1

    invoke-virtual {v0, v2, p3, p7}, Landroid/mtp/MtpPropertyGroup;->getPropertyList(III)Landroid/mtp/MtpPropertyList;

    move-result-object v2

    goto :goto_0

    .line 1266
    .end local v0           #propertyGroup:Landroid/mtp/MtpPropertyGroup;
    :cond_2
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpPropertyGroup;

    .line 1267
    .restart local v0       #propertyGroup:Landroid/mtp/MtpPropertyGroup;
    if-nez v0, :cond_1

    .line 1268
    const/4 v2, 0x1

    new-array v1, v2, [I

    long-to-int v2, p4

    aput v2, v1, v4

    .line 1269
    .restart local v1       #propertyList:[I
    new-instance v0, Landroid/mtp/MtpPropertyGroup;

    .end local v0           #propertyGroup:Landroid/mtp/MtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-direct {v0, p0, v2, v3, v1}, Landroid/mtp/MtpPropertyGroup;-><init>(Landroid/mtp/MtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;[I)V

    .line 1270
    .restart local v0       #propertyGroup:Landroid/mtp/MtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    long-to-int v4, p4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private getObjectReferences(I)[I
    .locals 13
    .parameter "handle"

    .prologue
    const/4 v12, 0x0

    .line 1552
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Landroid/provider/MediaStore$Files;->getMtpReferencesUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 1553
    .local v1, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 1555
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    sget-object v2, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1556
    if-nez v7, :cond_2

    .line 1571
    if-eqz v7, :cond_0

    .line 1572
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v11, v12

    .line 1575
    :cond_1
    :goto_0
    return-object v11

    .line 1559
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 1560
    .local v8, count:I
    if-lez v8, :cond_6

    .line 1561
    new-array v11, v8, [I

    .line 1562
    .local v11, result:[I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v8, :cond_5

    .line 1563
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 1564
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v11, v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1562
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1568
    .end local v8           #count:I
    .end local v10           #i:I
    .end local v11           #result:[I
    :catch_0
    move-exception v9

    .line 1569
    .local v9, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v0, "MtpDatabase"

    const-string v2, "RemoteException in getObjectReferences"

    invoke-static {v0, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1571
    if-eqz v7, :cond_3

    .line 1572
    .end local v9           #e:Landroid/os/RemoteException;
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v11, v12

    .line 1575
    goto :goto_0

    .line 1571
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 1572
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1571
    :cond_4
    throw v0

    .restart local v8       #count:I
    .restart local v10       #i:I
    .restart local v11       #result:[I
    :cond_5
    if-eqz v7, :cond_1

    .line 1572
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1571
    .end local v10           #i:I
    .end local v11           #result:[I
    :cond_6
    if-eqz v7, :cond_3

    goto :goto_2
.end method

.method private getPhoneDeviceId(I[C[J)I
    .locals 5
    .parameter "handle"
    .parameter "szDeviceIdBuf"
    .parameter "outFileLengthFormat"

    .prologue
    const/4 v4, 0x0

    .line 1204
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1205
    .local v0, mTelephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 1206
    .local v1, szDevId:Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v4, v2, p2, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1207
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    aput-char v4, p2, v2

    .line 1208
    const/16 v2, 0x2001

    return v2

    .line 1205
    .end local v1           #szDevId:Ljava/lang/String;
    :cond_0
    const-string v1, "NA"

    goto :goto_0
.end method

.method private getStorageInfo(I[C[J)I
    .locals 10
    .parameter "iStorageID"
    .parameter "szDeviceIdBuf"
    .parameter "outFileLengthFormat"

    .prologue
    const/4 v9, 0x0

    .line 1214
    const-string v5, "NA"

    .line 1216
    .local v5, szDevId:Ljava/lang/String;
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "storage"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 1217
    .local v2, mStorageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 1219
    .local v0, aVolumes:[Landroid/os/storage/StorageVolume;
    const/4 v1, 0x0

    .local v1, ii:I
    :goto_0
    array-length v6, v0

    if-ge v1, v6, :cond_1

    .line 1220
    aget-object v6, v0, v1

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getStorageId()I

    move-result v6

    if-ne p1, v6, :cond_3

    .line 1222
    aget-object v6, v0, v1

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 1223
    .local v3, szCurPath:Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1225
    .local v4, szCurState:Ljava/lang/String;
    const-string/jumbo v6, "mounted"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1227
    aget-object v6, v0, v1

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1228
    const-string v5, "Card"

    .line 1232
    :cond_0
    :goto_1
    const-string v6, "MtpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[USBF] getStorageInfo: StorageId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",Path="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",State="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    .end local v3           #szCurPath:Ljava/lang/String;
    .end local v4           #szCurState:Ljava/lang/String;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v9, v6, p2, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 1238
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    aput-char v9, p2, v6

    .line 1239
    const/16 v6, 0x2001

    return v6

    .line 1230
    .restart local v3       #szCurPath:Ljava/lang/String;
    .restart local v4       #szCurState:Ljava/lang/String;
    :cond_2
    const-string v5, "Phone"

    goto :goto_1

    .line 1219
    .end local v3           #szCurPath:Ljava/lang/String;
    .end local v4           #szCurState:Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getSupportedCaptureFormats()[I
    .locals 1

    .prologue
    .line 1019
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSupportedDeviceProperties()[I
    .locals 1

    .prologue
    .line 1243
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 0x4
        0x1t 0xd4t 0x0t 0x0t
        0x2t 0xd4t 0x0t 0x0t
        0x3t 0x50t 0x0t 0x0t
    .end array-data
.end method

.method private getSupportedObjectProperties(I)[I
    .locals 1
    .parameter "format"

    .prologue
    .line 1177
    sparse-switch p1, :sswitch_data_0

    .line 1196
    sget-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    :goto_0
    return-object v0

    .line 1183
    :sswitch_0
    sget-object v0, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    goto :goto_0

    .line 1187
    :sswitch_1
    sget-object v0, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    goto :goto_0

    .line 1192
    :sswitch_2
    sget-object v0, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    goto :goto_0

    .line 1194
    :sswitch_3
    sget-object v0, Landroid/mtp/MtpDatabase;->ALL_PROPERTIES:[I

    goto :goto_0

    .line 1177
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x3008 -> :sswitch_0
        0x3009 -> :sswitch_0
        0x300b -> :sswitch_1
        0x3801 -> :sswitch_2
        0x3804 -> :sswitch_2
        0x3807 -> :sswitch_2
        0x380b -> :sswitch_2
        0xb901 -> :sswitch_0
        0xb902 -> :sswitch_0
        0xb903 -> :sswitch_0
        0xb981 -> :sswitch_1
        0xb984 -> :sswitch_1
    .end sparse-switch
.end method

.method private getSupportedPlaybackFormats()[I
    .locals 1

    .prologue
    .line 976
    const/16 v0, 0x20

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 0x4
        0x0t 0x30t 0x0t 0x0t
        0x1t 0x30t 0x0t 0x0t
        0x4t 0x30t 0x0t 0x0t
        0x5t 0x30t 0x0t 0x0t
        0x8t 0x30t 0x0t 0x0t
        0x9t 0x30t 0x0t 0x0t
        0xbt 0x30t 0x0t 0x0t
        0x1t 0x38t 0x0t 0x0t
        0x2t 0x38t 0x0t 0x0t
        0x7t 0x38t 0x0t 0x0t
        0x8t 0x38t 0x0t 0x0t
        0xbt 0x38t 0x0t 0x0t
        0xdt 0x38t 0x0t 0x0t
        0x1t 0xb9t 0x0t 0x0t
        0x2t 0xb9t 0x0t 0x0t
        0x3t 0xb9t 0x0t 0x0t
        0x82t 0xb9t 0x0t 0x0t
        0x83t 0xb9t 0x0t 0x0t
        0x84t 0xb9t 0x0t 0x0t
        0x5t 0xbat 0x0t 0x0t
        0x10t 0xbat 0x0t 0x0t
        0x11t 0xbat 0x0t 0x0t
        0x14t 0xbat 0x0t 0x0t
        0x82t 0xbat 0x0t 0x0t
        0x6t 0xb9t 0x0t 0x0t
        0x81t 0xb9t 0x0t 0x0t
        0xat 0x30t 0x0t 0x0t
        0xct 0x30t 0x0t 0x0t
        0x4t 0x38t 0x0t 0x0t
        0x83t 0xbat 0x0t 0x0t
        0x85t 0xbat 0x0t 0x0t
        0x86t 0xbat 0x0t 0x0t
    .end array-data
.end method

.method private getThumbnail2(I)[B
    .locals 10
    .parameter "iHandle"

    .prologue
    const/4 v9, 0x1

    .line 1625
    invoke-virtual {p0, p1}, Landroid/mtp/MtpDatabase;->GetFilenamefromHandle(I)Ljava/lang/String;

    move-result-object v4

    .line 1626
    .local v4, szPath:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1627
    .local v0, acBuffer:[B
    const/16 v5, 0x1000

    new-array v3, v5, [C

    .line 1628
    .local v3, outFilePath:[C
    const/4 v5, 0x2

    new-array v2, v5, [J

    .line 1630
    .local v2, outFileLengthFormat:[J
    invoke-direct {p0, p1, v3, v2}, Landroid/mtp/MtpDatabase;->getObjectFilePath(I[C[J)I

    move-result v5

    const/16 v6, 0x2001

    if-ne v5, v6, :cond_0

    .line 1632
    if-eqz v4, :cond_0

    .line 1636
    const-string v5, "MtpDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[USBF] getThumbnail2: FORMAT="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-wide v7, v2, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    aget-wide v5, v2, v9

    long-to-int v5, v5

    sparse-switch v5, :sswitch_data_0

    .line 1655
    const/4 v1, 0x0

    .line 1657
    .local v1, mIsVideo:Z
    :goto_0
    invoke-direct {p0, v4, v1}, Landroid/mtp/MtpDatabase;->getThumbnailUtil(Ljava/lang/String;Z)[B

    move-result-object v0

    .line 1660
    .end local v1           #mIsVideo:Z
    :cond_0
    return-object v0

    .line 1641
    :sswitch_0
    const/4 v1, 0x0

    .line 1642
    .restart local v1       #mIsVideo:Z
    goto :goto_0

    .line 1651
    .end local v1           #mIsVideo:Z
    :sswitch_1
    const/4 v1, 0x1

    .line 1652
    .restart local v1       #mIsVideo:Z
    goto :goto_0

    .line 1637
    nop

    :sswitch_data_0
    .sparse-switch
        0x300a -> :sswitch_1
        0x300b -> :sswitch_1
        0x300c -> :sswitch_1
        0x3801 -> :sswitch_0
        0x3808 -> :sswitch_0
        0x380b -> :sswitch_0
        0xb901 -> :sswitch_1
        0xb981 -> :sswitch_1
        0xb982 -> :sswitch_1
        0xb984 -> :sswitch_1
    .end sparse-switch
.end method

.method private getThumbnailUtil(Ljava/lang/String;Z)[B
    .locals 13
    .parameter "szPath"
    .parameter "mIsVideo"

    .prologue
    const v12, 0x8000

    const/4 v11, 0x1

    .line 1664
    const/4 v6, 0x0

    .line 1665
    .local v6, pBitmap:Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 1667
    .local v0, acBuffer:[B
    const-string v8, "MtpDatabase"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getThumbnailUtil: Path="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",IsVideo: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    if-eqz p2, :cond_1

    .line 1669
    invoke-static {p1, v11}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1676
    :goto_0
    if-nez v6, :cond_2

    .line 1677
    const-string v8, "MtpDatabase"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getThumbnailUtil: Can\'t create mini thumbnail for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    :goto_1
    if-eqz v0, :cond_0

    .line 1713
    const-string v8, "MtpDatabase"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getThumbnailUtil: thumb file Width="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",Height="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",ByteCount="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",length="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    :cond_0
    return-object v0

    .line 1672
    :cond_1
    invoke-static {p1, v11}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_0

    .line 1681
    :cond_2
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1684
    .local v5, miniOutStream:Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x4b

    .line 1687
    .local v2, iQuality:I
    const/4 v4, 0x0

    .local v4, ii:I
    :goto_2
    const/16 v8, 0x8

    if-ge v4, v8, :cond_3

    .line 1689
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v6, v8, v2, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1

    .line 1690
    .local v1, bRet:Z
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    .line 1691
    .local v3, iThumbSize:I
    if-le v3, v12, :cond_3

    .line 1693
    div-int v8, v3, v12

    add-int/lit8 v8, v8, 0x1

    div-int/2addr v2, v8

    .line 1694
    const-string v8, "MtpDatabase"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getThumbnailUtil: new Quality="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",size="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    const/16 v8, 0xa

    if-ge v2, v8, :cond_4

    .line 1702
    .end local v1           #bRet:Z
    .end local v3           #iThumbSize:I
    :cond_3
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 1705
    :try_start_0
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1706
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_1

    .line 1697
    .restart local v1       #bRet:Z
    .restart local v3       #iThumbSize:I
    :cond_4
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1687
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1707
    .end local v1           #bRet:Z
    .end local v3           #iThumbSize:I
    :catch_0
    move-exception v7

    .line 1708
    .local v7, sEx:Ljava/io/IOException;
    const-string v8, "MtpDatabase"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getThumbnailUtil: got exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private inStorageSubDirectory(Ljava/lang/String;)Z
    .locals 7
    .parameter "path"

    .prologue
    .line 473
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    if-nez v5, :cond_1

    const/4 v0, 0x1

    .line 487
    :cond_0
    :goto_0
    return v0

    .line 474
    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 476
    :cond_2
    const/4 v0, 0x0

    .line 477
    .local v0, allowed:Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 478
    .local v2, pathLength:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    if-nez v0, :cond_0

    .line 479
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    aget-object v3, v5, v1

    .line 480
    .local v3, subdir:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 481
    .local v4, subdirLength:I
    if-ge v4, v2, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 484
    const/4 v0, 0x1

    .line 478
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private initDeviceProperties(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 436
    const-string v10, "device-properties"

    .line 437
    .local v10, devicePropertiesName:Ljava/lang/String;
    const-string v1, "device-properties"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    .line 438
    const-string v1, "device-properties"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 440
    .local v9, databaseFile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 443
    const/4 v0, 0x0

    .line 444
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 446
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "device-properties"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 447
    if-eqz v0, :cond_4

    .line 448
    const-string/jumbo v1, "properties"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "code"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "value"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 450
    if-eqz v8, :cond_4

    .line 451
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 452
    .local v11, e:Landroid/content/SharedPreferences$Editor;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 453
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 454
    .local v12, name:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 455
    .local v13, value:Ljava/lang/String;
    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 460
    .end local v11           #e:Landroid/content/SharedPreferences$Editor;
    .end local v12           #name:Ljava/lang/String;
    .end local v13           #value:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 461
    .local v11, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "MtpDatabase"

    const-string v2, "failed to migrate device properties"

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 463
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 464
    :cond_0
    if-eqz v0, :cond_1

    .end local v11           #e:Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 466
    :cond_1
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 468
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #c:Landroid/database/Cursor;
    :cond_2
    return-void

    .line 457
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8       #c:Landroid/database/Cursor;
    .local v11, e:Landroid/content/SharedPreferences$Editor;
    :cond_3
    :try_start_2
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 463
    .end local v11           #e:Landroid/content/SharedPreferences$Editor;
    :cond_4
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 464
    :cond_5
    if-eqz v0, :cond_1

    goto :goto_1

    .line 463
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 464
    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 463
    :cond_7
    throw v1
.end method

.method private isStorageSubDirectory(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    const/4 v1, 0x0

    .line 493
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    if-nez v2, :cond_1

    .line 499
    :cond_0
    :goto_0
    return v1

    .line 494
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 495
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 496
    const/4 v1, 0x1

    goto :goto_0

    .line 494
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static nameFromPath(Ljava/lang/String;[C)V
    .locals 6
    .parameter "path"
    .parameter "outName"

    .prologue
    const/4 v3, 0x0

    .line 1410
    const/16 v4, 0x2f

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1411
    .local v1, lastSlash:I
    if-ltz v1, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 1412
    .local v2, start:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1413
    .local v0, end:I
    sub-int v4, v0, v2

    const/16 v5, 0xff

    if-le v4, v5, :cond_0

    .line 1414
    add-int/lit16 v0, v2, 0xff

    .line 1416
    :cond_0
    invoke-virtual {p0, v2, v0, p1, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 1417
    sub-int v4, v0, v2

    aput-char v3, p1, v4

    .line 1418
    return-void

    .end local v0           #end:I
    .end local v2           #start:I
    :cond_1
    move v2, v3

    .line 1411
    goto :goto_0
.end method

.method private final native native_finalize()V
.end method

.method private final native native_setup()V
.end method

.method private renameFile(ILjava/lang/String;)I
    .locals 15
    .parameter "handle"
    .parameter "newName"

    .prologue
    .line 1279
    iget-object v11, p0, Landroid/mtp/MtpDatabase;->mMediaCache:Landroid/mtp/MtpDatabase$MediaCache;

    iget-object v12, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    move/from16 v0, p1

    invoke-virtual {v11, v0, v12}, Landroid/mtp/MtpDatabase$MediaCache;->queryFilepathById(ILandroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 1281
    .local v6, path:Ljava/lang/String;
    if-nez v6, :cond_0

    .line 1282
    const/16 v11, 0x2009

    .line 1350
    :goto_0
    return v11

    .line 1286
    :cond_0
    invoke-direct {p0, v6}, Landroid/mtp/MtpDatabase;->isStorageSubDirectory(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1287
    const/16 v11, 0x200d

    goto :goto_0

    .line 1291
    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1292
    .local v5, oldFile:Ljava/io/File;
    const/16 v11, 0x2f

    invoke-virtual {v6, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 1293
    .local v2, lastSlash:I
    const/4 v11, 0x1

    if-gt v2, v11, :cond_2

    .line 1294
    const/16 v11, 0x2002

    goto :goto_0

    .line 1296
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    add-int/lit8 v13, v2, 0x1

    invoke-virtual {v6, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1297
    .local v4, newPath:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1298
    .local v3, newFile:Ljava/io/File;
    invoke-virtual {v5, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    .line 1299
    .local v7, success:Z
    if-nez v7, :cond_3

    .line 1300
    const-string v11, "MtpDatabase"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "renaming "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " failed"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    const/16 v11, 0x2002

    goto :goto_0

    .line 1305
    :cond_3
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1306
    .local v9, values:Landroid/content/ContentValues;
    const-string v11, "_data"

    invoke-virtual {v9, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    const/4 v8, 0x0

    .line 1308
    .local v8, updated:I
    const/4 v11, 0x1

    new-array v10, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 1312
    .local v10, whereArgs:[Ljava/lang/String;
    :try_start_0
    iget-object v11, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v12, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    const-string v13, "_id=?"

    invoke-interface {v11, v12, v9, v13, v10}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1313
    iget-object v11, p0, Landroid/mtp/MtpDatabase;->mMediaCache:Landroid/mtp/MtpDatabase$MediaCache;

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/mtp/MtpDatabase$MediaCache;->invalid(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1317
    :goto_1
    if-nez v8, :cond_4

    .line 1318
    const-string v11, "MtpDatabase"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to update path for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    invoke-virtual {v3, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1321
    const/16 v11, 0x2002

    goto/16 :goto_0

    .line 1314
    :catch_0
    move-exception v1

    .line 1315
    .local v1, e:Landroid/os/RemoteException;
    const-string v11, "MtpDatabase"

    const-string v12, "RemoteException in mMediaProvider.update"

    invoke-static {v11, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1323
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1324
    iget-object v11, p0, Landroid/mtp/MtpDatabase;->mMediaCache:Landroid/mtp/MtpDatabase$MediaCache;

    invoke-virtual {v11}, Landroid/mtp/MtpDatabase$MediaCache;->reset()V

    .line 1328
    :cond_5
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1330
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, "."

    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 1333
    :try_start_1
    iget-object v11, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    const-string/jumbo v12, "unhide"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v4, v13}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1350
    :cond_6
    :goto_2
    const/16 v11, 0x2001

    goto/16 :goto_0

    .line 1334
    :catch_1
    move-exception v1

    .line 1335
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v11, "MtpDatabase"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "failed to unhide/rescan for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1340
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_7
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    const-string v12, ".nomedia"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    const-string v12, ".nomedia"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 1343
    :try_start_2
    iget-object v11, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    const-string/jumbo v12, "unhide"

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v11, v12, v13, v14}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 1344
    :catch_2
    move-exception v1

    .line 1345
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v11, "MtpDatabase"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "failed to unhide/rescan for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private sessionEnded()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1783
    const-string v0, "MtpDatabase"

    const-string/jumbo v1, "sessionEnded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    iget-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    if-eqz v0, :cond_0

    .line 1785
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.provider.action.MTP_SESSION_END"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1786
    iput-boolean v3, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 1788
    :cond_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mScanDirectory:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1789
    const-string v0, "MtpDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[USBF] Scanned Stop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mScanDirectory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mScanDirectory:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Landroid/mtp/MtpDatabase;->StartMediaScannerNew(Ljava/lang/String;I)V

    .line 1797
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mScanDirectory:Ljava/lang/String;

    .line 1799
    :cond_1
    iput-boolean v3, p0, Landroid/mtp/MtpDatabase;->mSessionActive:Z

    .line 1800
    return-void
.end method

.method private sessionStarted()V
    .locals 2

    .prologue
    .line 1769
    const-string v0, "MtpDatabase"

    const-string/jumbo v1, "sessionStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 1771
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mSessionActive:Z

    .line 1780
    return-void
.end method

.method private setDeviceProperty(IJLjava/lang/String;)I
    .locals 2
    .parameter "property"
    .parameter "intValue"
    .parameter "stringValue"

    .prologue
    .line 1395
    packed-switch p1, :pswitch_data_0

    .line 1405
    const/16 v1, 0x200a

    :goto_0
    return v1

    .line 1399
    :pswitch_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1400
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1401
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2001

    goto :goto_0

    :cond_0
    const/16 v1, 0x2002

    goto :goto_0

    .line 1395
    nop

    :pswitch_data_0
    .packed-switch 0xd401
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setObjectProperty(IIJLjava/lang/String;)I
    .locals 1
    .parameter "handle"
    .parameter "property"
    .parameter "intValue"
    .parameter "stringValue"

    .prologue
    .line 1355
    packed-switch p2, :pswitch_data_0

    .line 1360
    const v0, 0xa80a

    :goto_0
    return v0

    .line 1357
    :pswitch_0
    invoke-direct {p0, p1, p5}, Landroid/mtp/MtpDatabase;->renameFile(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1355
    :pswitch_data_0
    .packed-switch 0xdc07
        :pswitch_0
    .end packed-switch
.end method

.method private setObjectReferences(I[I)I
    .locals 9
    .parameter "handle"
    .parameter "references"

    .prologue
    .line 1579
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 1580
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    int-to-long v7, p1

    invoke-static {v6, v7, v8}, Landroid/provider/MediaStore$Files;->getMtpReferencesUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    .line 1581
    .local v3, uri:Landroid/net/Uri;
    array-length v0, p2

    .line 1582
    .local v0, count:I
    new-array v5, v0, [Landroid/content/ContentValues;

    .line 1583
    .local v5, valuesList:[Landroid/content/ContentValues;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1584
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1585
    .local v4, values:Landroid/content/ContentValues;
    const-string v6, "_id"

    aget v7, p2, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1586
    aput-object v4, v5, v2

    .line 1583
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1589
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_0
    :try_start_0
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-interface {v6, v3, v5}, Landroid/content/IContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-lez v6, :cond_1

    .line 1590
    const/16 v6, 0x2001

    .line 1595
    :goto_1
    return v6

    .line 1592
    :catch_0
    move-exception v1

    .line 1593
    .local v1, e:Landroid/os/RemoteException;
    const-string v6, "MtpDatabase"

    const-string v7, "RemoteException in setObjectReferences"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1595
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    const/16 v6, 0x2002

    goto :goto_1
.end method


# virtual methods
.method public GetFilenamefromHandle(I)Ljava/lang/String;
    .locals 4
    .parameter "iHandle"

    .prologue
    .line 675
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mMediaCache:Landroid/mtp/MtpDatabase$MediaCache;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    invoke-virtual {v1, p1, v2}, Landroid/mtp/MtpDatabase$MediaCache;->queryFilepathById(ILandroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 677
    .local v0, szPath:Ljava/lang/String;
    const-string v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[USBF] GetFilenamefromHandle: Path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Handle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    return-object v0
.end method

.method public StartMediaScanner(II)V
    .locals 0
    .parameter "iHandle"
    .parameter "storageID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 682
    invoke-virtual {p0, p1, p2, p1}, Landroid/mtp/MtpDatabase;->StartMediaScanner(III)V

    .line 683
    return-void
.end method

.method public StartMediaScanner(III)V
    .locals 5
    .parameter "iHandle"
    .parameter "storageID"
    .parameter "iParent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 687
    const-string v2, "MtpDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[USBF] StartMediaScanner: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    if-nez p3, :cond_1

    .line 706
    :cond_0
    :goto_0
    return-void

    .line 694
    :cond_1
    invoke-virtual {p0, p1}, Landroid/mtp/MtpDatabase;->GetFilenamefromHandle(I)Ljava/lang/String;

    move-result-object v1

    .line 696
    .local v1, szPath:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 697
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 699
    .local v0, file1:Ljava/io/File;
    const/4 v2, -0x1

    if-ne p3, v2, :cond_2

    .line 702
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 704
    :cond_2
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2, p2}, Landroid/mtp/MtpDatabase;->StartMediaScannerDir([Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public StartMediaScannerDir([Ljava/lang/String;I)V
    .locals 6
    .parameter "filelist"
    .parameter "storageID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 719
    const-string v1, "Notify:"

    .line 720
    .local v1, szNotify:Ljava/lang/String;
    const/4 v0, 0x0

    .line 722
    .local v0, BaseDirPath:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 723
    invoke-direct {p0, p2}, Landroid/mtp/MtpDatabase;->GetStorageBase(I)Ljava/lang/String;

    move-result-object v0

    .line 725
    :cond_0
    aget-object v2, p1, v5

    if-nez v2, :cond_1

    .line 727
    const-string v2, "MtpDatabase"

    const-string v3, "[USBF] StartMediaScannerDir-: null path!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :goto_0
    return-void

    .line 730
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 731
    const-string v2, "MtpDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[USBF] StartMediaScannerDir+: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    if-eqz v0, :cond_2

    aget-object v2, p1, v5

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 734
    const-string v2, "MtpDatabase"

    const-string v3, "[USBF] StartMediaScannerDir-: Not valid path!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 738
    :cond_2
    const-string v2, "MtpDatabase"

    const-string v3, "[USBF] StartMediaScannerDir-: skip."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public StartMediaScannerNew(Ljava/lang/String;I)V
    .locals 4
    .parameter "szScanPath"
    .parameter "iScanLevel"

    .prologue
    .line 709
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 710
    .local v0, sScanIntent:Landroid/content/Intent;
    const-string v1, "MTP_Path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 711
    if-eqz p2, :cond_0

    .line 712
    const-string v1, "MTP_Level"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 715
    :goto_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 716
    return-void

    .line 714
    :cond_0
    const-string v1, "MTP_Level"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public addStorage(Landroid/mtp/MtpStorage;)V
    .locals 2
    .parameter "storage"

    .prologue
    .line 428
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 421
    :try_start_0
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 425
    return-void

    .line 423
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public removeStorage(Landroid/mtp/MtpStorage;)V
    .locals 2
    .parameter "storage"

    .prologue
    .line 432
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    return-void
.end method
