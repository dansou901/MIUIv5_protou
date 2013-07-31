.class public Landroid/mtp/MtpDatabase;
.super Ljava/lang/Object;
.source "MtpDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpDatabase$MtpPropertyCache;,
        Landroid/mtp/MtpDatabase$MtpHandler;
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

.field private static final cCACHE_CRITERIA:I = 0x20

.field private static final cMTP_MSG_SCAN:I = 0x1

.field private static iStorageID1:I = 0x0

.field private static iStorageID2:I = 0x0

.field private static final lPathLenLimit:I = 0xfff

.field private static maVolumes:[Landroid/os/storage/StorageVolume; = null

.field private static final szPhoneStorage:Ljava/lang/String; = "Phone"

.field private static final szSDCard:Ljava/lang/String; = "Card"

.field private static szStoragePath2:Ljava/lang/String;


# instance fields
.field public amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

.field public amMtpPropertyCacheHandle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final bDelayScan:Z

.field private final bEnableScan:Z

.field private final bNewScan:Z

.field private final mContext:Landroid/content/Context;

.field private mDatabaseModified:Z

.field private mDeviceProperties:Landroid/content/SharedPreferences;

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

    .line 111
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    .line 114
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    sput-object v0, Landroid/mtp/MtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    .line 118
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

    .line 124
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

    .line 160
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 393
    sput v5, Landroid/mtp/MtpDatabase;->iStorageID1:I

    sput v5, Landroid/mtp/MtpDatabase;->iStorageID2:I

    .line 394
    const-string v0, ""

    sput-object v0, Landroid/mtp/MtpDatabase;->szStoragePath2:Ljava/lang/String;

    .line 395
    const/4 v0, 0x0

    sput-object v0, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    .line 396
    sput-boolean v3, Landroid/mtp/MtpDatabase;->bCheckStorageId:Z

    .line 871
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    .line 886
    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    .line 917
    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    .line 955
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    .line 973
    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Landroid/mtp/MtpDatabase;->ALL_PROPERTIES:[I

    .line 1486
    sput-boolean v4, Landroid/mtp/MtpDatabase;->bPEF_KERNEL_SUPPORT:Z

    return-void

    .line 871
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

    .line 886
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

    .line 917
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

    .line 955
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

    .line 973
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
    .line 164
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    .line 83
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    .line 87
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    .line 92
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/mtp/MtpDatabase;->mSessionActive:Z

    .line 94
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mScanDirectory:Ljava/lang/String;

    .line 95
    const-string v10, "Notify:"

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mszNotifyPrefix:Ljava/lang/String;

    .line 100
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCacheHandle:Ljava/util/ArrayList;

    .line 101
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    .line 103
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/mtp/MtpDatabase;->bDelayScan:Z

    .line 104
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/mtp/MtpDatabase;->bEnableScan:Z

    .line 105
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/mtp/MtpDatabase;->bNewScan:Z

    .line 165
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_setup()V

    .line 167
    iput-object p1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "media"

    invoke-virtual {v10, v11}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    .line 169
    iput-object p2, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    .line 170
    move-object/from16 v0, p3

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    .line 171
    invoke-static {p2}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    .line 172
    new-instance v10, Landroid/media/MediaScanner;

    invoke-direct {v10, p1}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    .line 174
    move-object/from16 v0, p4

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    .line 175
    if-eqz p4, :cond_2

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .local v1, builder:Ljava/lang/StringBuilder;
    const-string v10, "("

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    move-object/from16 v0, p4

    array-length v2, v0

    .line 180
    .local v2, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 181
    const-string v10, "_data=? OR _data LIKE ?"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    add-int/lit8 v10, v2, -0x1

    if-eq v4, v10, :cond_0

    .line 184
    const-string v10, " OR "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 187
    :cond_1
    const-string v10, ")"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    .line 191
    mul-int/lit8 v10, v2, 0x2

    new-array v10, v10, [Ljava/lang/String;

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    .line 192
    const/4 v4, 0x0

    const/4 v5, 0x0

    .local v5, j:I
    move v6, v5

    .end local v5           #j:I
    .local v6, j:I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 193
    aget-object v9, p4, v4

    .line 194
    .local v9, path:Ljava/lang/String;
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    add-int/lit8 v5, v6, 0x1

    .end local v6           #j:I
    .restart local v5       #j:I
    aput-object v9, v10, v6

    .line 195
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

    .line 192
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 200
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

    .line 201
    .local v8, locale:Ljava/util/Locale;
    if-eqz v8, :cond_3

    .line 202
    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 203
    .local v7, language:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 204
    .local v3, country:Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 205
    if-eqz v3, :cond_4

    .line 206
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

    .line 212
    .end local v3           #country:Ljava/lang/String;
    .end local v7           #language:Ljava/lang/String;
    :cond_3
    :goto_2
    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase;->initDeviceProperties(Landroid/content/Context;)V

    .line 213
    return-void

    .line 208
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

    .line 419
    sget-boolean v6, Landroid/mtp/MtpDatabase;->bCheckStorageId:Z

    if-nez v6, :cond_8

    .line 421
    const-string v6, "EXTERNAL_STORAGE"

    invoke-static {v6}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 423
    .local v3, szStoragePath1:Ljava/lang/String;
    sget-object v6, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    if-nez v6, :cond_0

    .line 425
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "storage"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 427
    .local v1, mStorageManager:Landroid/os/storage/StorageManager;
    if-eqz v1, :cond_0

    .line 428
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v6

    sput-object v6, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    .line 430
    .end local v1           #mStorageManager:Landroid/os/storage/StorageManager;
    :cond_0
    sget-object v6, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    if-nez v6, :cond_2

    .line 467
    .end local v3           #szStoragePath1:Ljava/lang/String;
    :cond_1
    :goto_0
    return v4

    .line 432
    .restart local v3       #szStoragePath1:Ljava/lang/String;
    :cond_2
    if-nez v3, :cond_3

    .line 433
    const-string v3, "/mnt/sdcard"

    .line 434
    :cond_3
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 436
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Landroid/mtp/MtpDatabase;->szStoragePath2:Ljava/lang/String;

    .line 438
    :cond_4
    const/4 v0, 0x0

    .local v0, ii:I
    :goto_1
    sget-object v6, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    array-length v6, v6

    if-ge v0, v6, :cond_7

    .line 439
    sget-object v6, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 441
    .local v2, szPath:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 443
    sget-object v6, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getStorageId()I

    move-result v6

    sput v6, Landroid/mtp/MtpDatabase;->iStorageID1:I

    .line 438
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 446
    :cond_6
    sget-object v6, Landroid/mtp/MtpDatabase;->szStoragePath2:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 448
    sget-object v6, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getStorageId()I

    move-result v6

    sput v6, Landroid/mtp/MtpDatabase;->iStorageID2:I

    .line 452
    .end local v2           #szPath:Ljava/lang/String;
    :cond_7
    sput-boolean v5, Landroid/mtp/MtpDatabase;->bCheckStorageId:Z

    .line 455
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

    .line 456
    if-nez p2, :cond_1

    .line 457
    sget v6, Landroid/mtp/MtpDatabase;->iStorageID1:I

    if-eq v6, v9, :cond_1

    sget v6, Landroid/mtp/MtpDatabase;->iStorageID2:I

    if-eq v6, v9, :cond_1

    .line 459
    sget v6, Landroid/mtp/MtpDatabase;->iStorageID1:I

    if-ne p1, v6, :cond_9

    move v4, v5

    .line 460
    goto/16 :goto_0

    .line 461
    :cond_9
    sget v5, Landroid/mtp/MtpDatabase;->iStorageID2:I

    if-ne p1, v5, :cond_a

    .line 462
    const/4 v4, 0x2

    goto/16 :goto_0

    .line 464
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
    .line 400
    sget-object v2, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    if-nez v2, :cond_0

    .line 402
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "storage"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 404
    .local v1, mStorageManager:Landroid/os/storage/StorageManager;
    if-eqz v1, :cond_0

    .line 405
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    sput-object v2, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    .line 407
    .end local v1           #mStorageManager:Landroid/os/storage/StorageManager;
    :cond_0
    sget-object v2, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    if-eqz v2, :cond_2

    .line 409
    const/4 v0, 0x0

    .local v0, ii:I
    :goto_0
    sget-object v2, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 410
    sget-object v2, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getStorageId()I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 411
    sget-object v2, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 414
    .end local v0           #ii:I
    :goto_1
    return-object v2

    .line 409
    .restart local v0       #ii:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 414
    .end local v0           #ii:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static SetMtpCpuPerf(I)V
    .locals 0
    .parameter "iEnable"

    .prologue
    .line 1509
    return-void
.end method

.method static synthetic access$000(Landroid/mtp/MtpDatabase;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Landroid/mtp/MtpDatabase;->mSessionActive:Z

    return v0
.end method

.method static synthetic access$100(Landroid/mtp/MtpDatabase;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/mtp/MtpDatabase;)Landroid/media/MediaScanner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
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
    .line 302
    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase;->inStorageSubDirectory(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, -0x1

    .line 343
    :cond_0
    :goto_0
    return v2

    .line 305
    :cond_1
    if-eqz p1, :cond_2

    .line 306
    const/4 v9, 0x0

    .line 308
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

    .line 310
    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    .line 311
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

    .line 312
    const/4 v2, -0x1

    .line 317
    if-eqz v9, :cond_0

    .line 318
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 314
    :catch_0
    move-exception v10

    .line 315
    .local v10, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "MtpDatabase"

    const-string v3, "RemoteException in beginSendObject"

    invoke-static {v2, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    if-eqz v9, :cond_2

    .line 318
    .end local v10           #e:Landroid/os/RemoteException;
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 323
    .end local v9           #c:Landroid/database/Cursor;
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 324
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 325
    .local v12, values:Landroid/content/ContentValues;
    const-string v2, "_data"

    invoke-virtual {v12, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v2, "format"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 327
    const-string/jumbo v2, "parent"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 328
    const-string/jumbo v2, "storage_id"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 329
    const-string v2, "_size"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 330
    const-string v2, "date_modified"

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 331
    move-wide/from16 v0, p5

    iput-wide v0, p0, Landroid/mtp/MtpDatabase;->mObjectFileSize:J

    .line 334
    :try_start_2
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    invoke-interface {v2, v3, v12}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 335
    .local v11, uri:Landroid/net/Uri;
    if-eqz v11, :cond_4

    .line 336
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

    .line 317
    .end local v11           #uri:Landroid/net/Uri;
    .end local v12           #values:Landroid/content/ContentValues;
    .restart local v9       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_3

    .line 318
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 317
    :cond_3
    throw v2

    .line 338
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

    .line 339
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 341
    .end local v11           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v10

    .line 342
    .restart local v10       #e:Landroid/os/RemoteException;
    const-string v2, "MtpDatabase"

    const-string v3, "RemoteException in beginSendObject"

    invoke-static {v2, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 317
    .end local v10           #e:Landroid/os/RemoteException;
    .end local v12           #values:Landroid/content/ContentValues;
    .restart local v9       #c:Landroid/database/Cursor;
    :cond_5
    if-eqz v9, :cond_2

    goto :goto_1
.end method

.method private createObjectQuery(III)Landroid/database/Cursor;
    .locals 14
    .parameter "storageID"
    .parameter "format"
    .parameter "parent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 604
    const/4 v1, -0x1

    if-ne p1, v1, :cond_7

    .line 606
    if-nez p2, :cond_4

    .line 608
    if-nez p3, :cond_2

    .line 610
    const/4 v4, 0x0

    .line 611
    .local v4, where:Ljava/lang/String;
    const/4 v5, 0x0

    .line 697
    .local v5, whereArgs:[Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 698
    if-nez v4, :cond_10

    .line 699
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    .line 700
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    .line 719
    :cond_1
    :goto_1
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v3, Landroid/mtp/MtpDatabase;->OBJECT_INFO_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    .line 613
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #whereArgs:[Ljava/lang/String;
    :cond_2
    const/4 v1, -0x1

    move/from16 v0, p3

    if-ne v0, v1, :cond_3

    .line 615
    const/16 p3, 0x0

    .line 617
    :cond_3
    const-string/jumbo v4, "parent=?"

    .line 618
    .restart local v4       #where:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .restart local v5       #whereArgs:[Ljava/lang/String;
    goto :goto_0

    .line 622
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #whereArgs:[Ljava/lang/String;
    :cond_4
    if-nez p3, :cond_5

    .line 624
    const-string v4, "format=?"

    .line 625
    .restart local v4       #where:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .restart local v5       #whereArgs:[Ljava/lang/String;
    goto :goto_0

    .line 627
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #whereArgs:[Ljava/lang/String;
    :cond_5
    const/4 v1, -0x1

    move/from16 v0, p3

    if-ne v0, v1, :cond_6

    .line 629
    const/16 p3, 0x0

    .line 631
    :cond_6
    const-string v4, "format=? AND parent=?"

    .line 632
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

    .line 638
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #whereArgs:[Ljava/lang/String;
    :cond_7
    if-nez p2, :cond_d

    .line 640
    if-nez p3, :cond_8

    .line 642
    const-string/jumbo v4, "storage_id=?"

    .line 643
    .restart local v4       #where:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .restart local v5       #whereArgs:[Ljava/lang/String;
    goto :goto_0

    .line 645
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #whereArgs:[Ljava/lang/String;
    :cond_8
    const/4 v9, 0x0

    .line 647
    .local v9, iStorageID:I
    const/4 v1, -0x1

    move/from16 v0, p3

    if-ne v0, v1, :cond_9

    .line 649
    const/16 p3, 0x0

    .line 650
    move/from16 v0, p3

    invoke-direct {p0, p1, v0}, Landroid/mtp/MtpDatabase;->CheckStorage(II)I

    move-result v9

    .line 652
    :cond_9
    const-string/jumbo v4, "storage_id=? AND parent=?"

    .line 653
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

    .line 655
    .restart local v5       #whereArgs:[Ljava/lang/String;
    const/4 v1, 0x1

    if-eq v9, v1, :cond_a

    const/4 v1, 0x2

    if-ne v9, v1, :cond_0

    .line 657
    :cond_a
    const-string/jumbo v4, "parent=?"

    .line 658
    const/4 v1, 0x2

    new-array v13, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v1

    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v13, v1

    .line 660
    .local v13, newWhereArgs:[Ljava/lang/String;
    array-length v1, v13

    add-int/lit8 v10, v1, -0x1

    .line 662
    .local v10, ii:I
    const/4 v1, 0x1

    if-ne v9, v1, :cond_c

    .line 664
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

    .line 665
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

    .line 672
    .end local v11           #ii:I
    .restart local v10       #ii:I
    :cond_b
    :goto_2
    move-object v5, v13

    goto/16 :goto_0

    .line 667
    :cond_c
    const/4 v1, 0x2

    if-ne v9, v1, :cond_b

    .line 669
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

    .line 670
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
    goto :goto_2

    .line 677
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #whereArgs:[Ljava/lang/String;
    .end local v9           #iStorageID:I
    .end local v10           #ii:I
    .end local v13           #newWhereArgs:[Ljava/lang/String;
    :cond_d
    if-nez p3, :cond_e

    .line 679
    const-string/jumbo v4, "storage_id=? AND format=?"

    .line 680
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

    .line 683
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #whereArgs:[Ljava/lang/String;
    :cond_e
    const/4 v1, -0x1

    move/from16 v0, p3

    if-ne v0, v1, :cond_f

    .line 685
    const/16 p3, 0x0

    .line 687
    :cond_f
    const-string/jumbo v4, "storage_id=? AND format=? AND parent=?"

    .line 688
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

    .line 702
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

    .line 705
    array-length v1, v5

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    array-length v2, v2

    add-int/2addr v1, v2

    new-array v13, v1, [Ljava/lang/String;

    .line 708
    .restart local v13       #newWhereArgs:[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3
    array-length v1, v5

    if-ge v8, v1, :cond_11

    .line 709
    aget-object v1, v5, v8

    aput-object v1, v13, v8

    .line 708
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 711
    :cond_11
    const/4 v12, 0x0

    .local v12, j:I
    :goto_4
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    array-length v1, v1

    if-ge v12, v1, :cond_12

    .line 712
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    aget-object v1, v1, v12

    aput-object v1, v13, v8

    .line 711
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 714
    :cond_12
    move-object v5, v13

    goto/16 :goto_1
.end method

.method private deleteFile(I)I
    .locals 16
    .parameter "handle"

    .prologue
    .line 1370
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 1371
    const/4 v14, 0x0

    .line 1372
    .local v14, path:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1375
    .local v10, format:I
    const/4 v8, 0x0

    .line 1377
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v3, Landroid/mtp/MtpDatabase;->PATH_SIZE_FORMAT_PROJECTION:[Ljava/lang/String;

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 1379
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1382
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1383
    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1384
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v11

    .line 1389
    .local v11, iFileSize:J
    if-eqz v14, :cond_0

    if-nez v10, :cond_3

    .line 1390
    :cond_0
    const/16 v1, 0x2002

    .line 1432
    if-eqz v8, :cond_1

    .line 1433
    .end local v11           #iFileSize:J
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1430
    :cond_1
    return v1

    .line 1386
    :cond_2
    const/16 v1, 0x2009

    .line 1432
    if-eqz v8, :cond_1

    goto :goto_0

    .line 1394
    .restart local v11       #iFileSize:J
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/mtp/MtpDatabase;->isStorageSubDirectory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1395
    const/16 v1, 0x200d

    .line 1432
    if-eqz v8, :cond_1

    goto :goto_0

    .line 1398
    :cond_4
    const/16 v1, 0x3001

    if-ne v10, v1, :cond_5

    .line 1400
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 1401
    .local v15, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    const-string v2, "_data LIKE ?1 AND lower(substr(_data,1,?2))=lower(?3)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v15, v2, v3}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1408
    .end local v15           #uri:Landroid/net/Uri;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    move/from16 v0, p1

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v15

    .line 1409
    .restart local v15       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v15, v2, v3}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_8

    .line 1410
    const/16 v1, 0x3001

    if-eq v10, v1, :cond_6

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v14, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/.nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-eqz v1, :cond_6

    .line 1413
    const/4 v1, 0x0

    :try_start_2
    const-string v2, "/"

    invoke-virtual {v14, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v14, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 1414
    .local v13, parentPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    const-string/jumbo v2, "unhide"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v13, v3}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1419
    .end local v13           #parentPath:Ljava/lang/String;
    :cond_6
    :goto_1
    const-wide/32 v1, 0x6400000

    cmp-long v1, v11, v1

    if-lez v1, :cond_7

    .line 1421
    :try_start_3
    const-string v1, "MtpDatabase"

    const-string v2, "[USBF] deleteFile: sending ACTION_MEDIA_SCANNER_FINISHED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1424
    :cond_7
    const/16 v1, 0x2001

    .line 1432
    if-eqz v8, :cond_1

    goto/16 :goto_0

    .line 1415
    :catch_0
    move-exception v9

    .line 1416
    .local v9, e:Landroid/os/RemoteException;
    const-string v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to unhide/rescan for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1428
    .end local v9           #e:Landroid/os/RemoteException;
    .end local v11           #iFileSize:J
    .end local v15           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v9

    .line 1429
    .restart local v9       #e:Landroid/os/RemoteException;
    :try_start_4
    const-string v1, "MtpDatabase"

    const-string v2, "RemoteException in deleteFile"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1430
    const/16 v1, 0x2002

    .line 1432
    if-eqz v8, :cond_1

    goto/16 :goto_0

    .line 1426
    .end local v9           #e:Landroid/os/RemoteException;
    .restart local v11       #iFileSize:J
    .restart local v15       #uri:Landroid/net/Uri;
    :cond_8
    const/16 v1, 0x2009

    .line 1432
    if-eqz v8, :cond_1

    goto/16 :goto_0

    .end local v11           #iFileSize:J
    .end local v15           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_9

    .line 1433
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1432
    :cond_9
    throw v1
.end method

.method private endSendObject(Ljava/lang/String;IIZ)V
    .locals 9
    .parameter "path"
    .parameter "handle"
    .parameter "format"
    .parameter "succeeded"

    .prologue
    .line 348
    if-eqz p4, :cond_4

    .line 351
    const v4, 0xba05

    if-ne p3, v4, :cond_3

    .line 353
    move-object v2, p1

    .line 354
    .local v2, name:Ljava/lang/String;
    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 355
    .local v1, lastSlash:I
    if-ltz v1, :cond_0

    .line 356
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 359
    :cond_0
    const-string v4, ".pla"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 360
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 363
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 364
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "_data"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v4, "format"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 367
    const-string v4, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 368
    const-string/jumbo v4, "media_scanner_new_object_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 370
    :try_start_0
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    sget-object v5, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v4, v5, v3}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    .end local v1           #lastSlash:I
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_2
    :goto_0
    return-void

    .line 371
    .restart local v1       #lastSlash:I
    .restart local v2       #name:Ljava/lang/String;
    .restart local v3       #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 372
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "MtpDatabase"

    const-string v5, "RemoteException in endSendObject"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 375
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

    .line 379
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->msMtpHandler:Landroid/mtp/MtpDatabase$MtpHandler;

    invoke-virtual {v4, p1, p2, p3}, Landroid/mtp/MtpDatabase$MtpHandler;->sendMessageScan(Ljava/lang/String;II)V

    .line 380
    const-string v4, "MtpDatabase"

    const-string v5, "[USBF] endSendObject: MediaScanner.scanMtpFile-"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-wide v4, p0, Landroid/mtp/MtpDatabase;->mObjectFileSize:J

    const-wide/32 v6, 0x6400000

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 384
    const-string v4, "MtpDatabase"

    const-string v5, "[USBF] endSendObject: sending ACTION_MEDIA_SCANNER_FINISHED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
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

    .line 389
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

    .line 1224
    sparse-switch p1, :sswitch_data_0

    .line 1249
    const/16 v6, 0x200a

    :goto_0
    return v6

    .line 1228
    :sswitch_0
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1229
    .local v4, value:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 1230
    .local v3, length:I
    const/16 v6, 0xff

    if-le v3, v6, :cond_0

    .line 1231
    const/16 v3, 0xff

    .line 1233
    :cond_0
    invoke-virtual {v4, v10, v3, p3, v10}, Ljava/lang/String;->getChars(II[CI)V

    .line 1234
    aput-char v10, p3, v3

    move v6, v7

    .line 1235
    goto :goto_0

    .line 1239
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

    .line 1241
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v5

    .line 1242
    .local v5, width:I
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v1

    .line 1243
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

    .line 1244
    .local v2, imageSize:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v10, v6, p3, v10}, Ljava/lang/String;->getChars(II[CI)V

    .line 1245
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    aput-char v10, p3, v6

    move v6, v7

    .line 1246
    goto :goto_0

    .line 1224
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
    .line 808
    const/4 v0, 0x0

    .line 810
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpDatabase;->createObjectQuery(III)Landroid/database/Cursor;

    move-result-object v0

    .line 811
    if-eqz v0, :cond_3

    .line 812
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 817
    if-eqz v0, :cond_0

    .line 818
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 821
    :cond_0
    :goto_0
    return v2

    .line 814
    :catch_0
    move-exception v1

    .line 815
    .local v1, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "MtpDatabase"

    const-string v3, "RemoteException in getNumObjects"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 817
    if-eqz v0, :cond_1

    .line 818
    .end local v1           #e:Landroid/os/RemoteException;
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 821
    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    .line 817
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    .line 818
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 817
    :cond_2
    throw v2

    :cond_3
    if-eqz v0, :cond_1

    goto :goto_1
.end method

.method private getObjectFilePath(I[C[J)I
    .locals 12
    .parameter "handle"
    .parameter "outFilePath"
    .parameter "outFileLengthFormat"

    .prologue
    const/16 v11, 0x2001

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1334
    if-nez p1, :cond_1

    .line 1336
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1, p2, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 1337
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    aput-char v2, p2, v0

    .line 1338
    const-wide/16 v0, 0x0

    aput-wide v0, p3, v2

    .line 1339
    const-wide/16 v0, 0x3001

    aput-wide v0, p3, v3

    move v0, v11

    .line 1361
    :cond_0
    :goto_0
    return v0

    .line 1342
    :cond_1
    const/4 v7, 0x0

    .line 1344
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MtpDatabase;->PATH_SIZE_FORMAT_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 1346
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1347
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1348
    .local v10, path:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    .line 1349
    .local v9, lPathLen:I
    const/16 v0, 0xfff

    if-le v9, v0, :cond_2

    .line 1350
    const/16 v9, 0xfff

    .line 1351
    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v9, p2, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 1352
    const/4 v0, 0x0

    aput-char v0, p2, v9

    .line 1353
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    aput-wide v1, p3, v0

    .line 1354
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    aput-wide v1, p3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1363
    if-eqz v7, :cond_3

    .line 1364
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v11

    .line 1355
    goto :goto_0

    .line 1357
    .end local v9           #lPathLen:I
    .end local v10           #path:Ljava/lang/String;
    :cond_4
    const/16 v0, 0x2009

    .line 1363
    if-eqz v7, :cond_0

    .line 1364
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1359
    :catch_0
    move-exception v8

    .line 1360
    .local v8, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v0, "MtpDatabase"

    const-string v1, "RemoteException in getObjectFilePath"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1361
    const/16 v0, 0x2002

    .line 1363
    if-eqz v7, :cond_0

    goto :goto_1

    .end local v8           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 1364
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1363
    :cond_5
    throw v0
.end method

.method private getObjectInfo(I[I[C[J)Z
    .locals 11
    .parameter "handle"
    .parameter "outStorageFormatParent"
    .parameter "outName"
    .parameter "outSizeModified"

    .prologue
    .line 1281
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    if-eqz v0, :cond_1

    .line 1283
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCacheHandle:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1285
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCacheHandle:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 1287
    .local v9, ii:I
    const/4 v0, -0x1

    if-eq v9, v0, :cond_1

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCacheHandle:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1289
    const-string v0, "MtpDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[USBF] getObjectInfo.HandleIdx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    aget-object v1, v1, v9

    iget v1, v1, Landroid/mtp/MtpDatabase$MtpPropertyCache;->miStorageId:I

    aput v1, p2, v0

    .line 1292
    const/4 v0, 0x1

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    aget-object v1, v1, v9

    iget v1, v1, Landroid/mtp/MtpDatabase$MtpPropertyCache;->miFormat:I

    aput v1, p2, v0

    .line 1293
    const/4 v0, 0x2

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    aget-object v1, v1, v9

    iget v1, v1, Landroid/mtp/MtpDatabase$MtpPropertyCache;->miParent:I

    aput v1, p2, v0

    .line 1296
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    aget-object v0, v0, v9

    iget-object v10, v0, Landroid/mtp/MtpDatabase$MtpPropertyCache;->mszFullPath:Ljava/lang/String;

    .line 1297
    .local v10, path:Ljava/lang/String;
    invoke-static {v10, p3}, Landroid/mtp/MtpDatabase;->nameFromPath(Ljava/lang/String;[C)V

    .line 1299
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    aget-object v1, v1, v9

    iget-wide v1, v1, Landroid/mtp/MtpDatabase$MtpPropertyCache;->miSize:J

    aput-wide v1, p4, v0

    .line 1300
    const/4 v0, 0x1

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    aget-object v1, v1, v9

    iget-wide v1, v1, Landroid/mtp/MtpDatabase$MtpPropertyCache;->miModified:J

    aput-wide v1, p4, v0

    .line 1302
    const/4 v0, 0x1

    .line 1330
    .end local v9           #ii:I
    .end local v10           #path:Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 1306
    :cond_1
    const/4 v7, 0x0

    .line 1308
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MtpDatabase;->OBJECT_INFO_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 1310
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1311
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    aput v1, p2, v0

    .line 1312
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    aput v1, p2, v0

    .line 1313
    const/4 v0, 0x2

    const/4 v1, 0x3

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    aput v1, p2, v0

    .line 1316
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1317
    .restart local v10       #path:Ljava/lang/String;
    invoke-static {v10, p3}, Landroid/mtp/MtpDatabase;->nameFromPath(Ljava/lang/String;[C)V

    .line 1319
    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    aput-wide v1, p4, v0

    .line 1320
    const/4 v0, 0x1

    const/4 v1, 0x6

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    aput-wide v1, p4, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1321
    const/4 v0, 0x1

    .line 1326
    if-eqz v7, :cond_0

    .line 1327
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1323
    .end local v10           #path:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1324
    .local v8, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v0, "MtpDatabase"

    const-string v1, "RemoteException in getObjectInfo"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1326
    if-eqz v7, :cond_2

    .line 1327
    .end local v8           #e:Landroid/os/RemoteException;
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1330
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1326
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 1327
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1326
    :cond_3
    throw v0

    :cond_4
    if-eqz v7, :cond_2

    goto :goto_1
.end method

.method private getObjectList(III)[I
    .locals 11
    .parameter "storageID"
    .parameter "format"
    .parameter "parent"

    .prologue
    const/16 v10, 0x20

    const/4 v9, -0x1

    const/4 v5, 0x0

    .line 723
    const/4 v3, 0x0

    .line 725
    .local v3, sCur:Landroid/database/Cursor;
    if-eqz p3, :cond_0

    if-eq p3, v9, :cond_0

    .line 726
    :try_start_0
    invoke-virtual {p0, p3, p1}, Landroid/mtp/MtpDatabase;->StartMediaScanner(II)V

    .line 727
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpDatabase;->createObjectQuery(III)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 728
    if-nez v3, :cond_3

    .line 801
    if-eqz v3, :cond_1

    .line 802
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v2, v5

    .line 804
    :cond_2
    :goto_0
    return-object v2

    .line 731
    :cond_3
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 732
    .local v0, iCount:I
    if-lez v0, :cond_c

    .line 733
    new-array v2, v0, [I

    .line 735
    .local v2, result:[I
    invoke-static {v0}, Landroid/mtp/MtpDatabase;->SetMtpCpuPerf(I)V

    .line 736
    if-le v0, v10, :cond_6

    .line 738
    const-string v6, "MtpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[USBF] getObjectList.Count.HandleIdx="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    if-eqz v6, :cond_5

    .line 741
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCacheHandle:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 742
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCacheHandle:Ljava/util/ArrayList;

    .line 744
    const/4 v1, 0x0

    .local v1, ii:I
    :goto_1
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    array-length v6, v6

    if-ge v1, v6, :cond_4

    .line 745
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    const/4 v7, 0x0

    aput-object v7, v6, v1

    .line 744
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 746
    :cond_4
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    .line 748
    .end local v1           #ii:I
    :cond_5
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    if-nez v6, :cond_6

    .line 750
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCacheHandle:Ljava/util/ArrayList;

    .line 751
    new-array v6, v0, [Landroid/mtp/MtpDatabase$MtpPropertyCache;

    iput-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    .line 752
    const/4 v1, 0x0

    .restart local v1       #ii:I
    :goto_2
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    array-length v6, v6

    if-ge v1, v6, :cond_6

    .line 753
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    new-instance v7, Landroid/mtp/MtpDatabase$MtpPropertyCache;

    invoke-direct {v7, p0}, Landroid/mtp/MtpDatabase$MtpPropertyCache;-><init>(Landroid/mtp/MtpDatabase;)V

    aput-object v7, v6, v1

    .line 752
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 756
    .end local v1           #ii:I
    :cond_6
    const/4 v1, 0x0

    .restart local v1       #ii:I
    :goto_3
    if-ge v1, v0, :cond_b

    .line 757
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 758
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    aput v6, v2, v1

    .line 760
    if-le v0, v10, :cond_7

    .line 762
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    if-eqz v6, :cond_7

    .line 764
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCacheHandle:Ljava/util/ArrayList;

    aget v7, v2, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    aget-object v6, v6, v1

    const/4 v7, 0x1

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v6, Landroid/mtp/MtpDatabase$MtpPropertyCache;->miStorageId:I

    .line 766
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    aget-object v6, v6, v1

    const/4 v7, 0x2

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v6, Landroid/mtp/MtpDatabase$MtpPropertyCache;->miFormat:I

    .line 767
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    aget-object v6, v6, v1

    const/4 v7, 0x3

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v6, Landroid/mtp/MtpDatabase$MtpPropertyCache;->miParent:I

    .line 769
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    aget-object v6, v6, v1

    const/4 v7, 0x4

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/mtp/MtpDatabase$MtpPropertyCache;->mszFullPath:Ljava/lang/String;

    .line 770
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    aget-object v6, v6, v1

    const/4 v7, 0x5

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v6, Landroid/mtp/MtpDatabase$MtpPropertyCache;->miSize:J

    .line 771
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    aget-object v6, v6, v1

    const/4 v7, 0x6

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v6, Landroid/mtp/MtpDatabase$MtpPropertyCache;->miModified:J

    .line 772
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    aget-object v6, v6, v1

    const/4 v7, 0x7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/mtp/MtpDatabase$MtpPropertyCache;->mszTitle:Ljava/lang/String;

    .line 773
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    aget-object v6, v6, v1

    const/16 v7, 0x8

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v6, Landroid/mtp/MtpDatabase$MtpPropertyCache;->miAdded:J

    .line 775
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    aget-object v6, v6, v1

    const/16 v7, 0x9

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/mtp/MtpDatabase$MtpPropertyCache;->mszAlbumArtist:Ljava/lang/String;

    .line 776
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    aget-object v6, v6, v1

    const/16 v7, 0xa

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/mtp/MtpDatabase$MtpPropertyCache;->mszComposer:Ljava/lang/String;

    .line 777
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    aget-object v6, v6, v1

    const/16 v7, 0xb

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/mtp/MtpDatabase$MtpPropertyCache;->mszDescription:Ljava/lang/String;

    .line 778
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    aget-object v6, v6, v1

    const/16 v7, 0xc

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v6, Landroid/mtp/MtpDatabase$MtpPropertyCache;->miDuration:J

    .line 779
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    aget-object v6, v6, v1

    const/16 v7, 0xd

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v6, Landroid/mtp/MtpDatabase$MtpPropertyCache;->miOriginalReleaseDate:I

    .line 780
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    aget-object v6, v6, v1

    const/16 v7, 0xe

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v6, Landroid/mtp/MtpDatabase$MtpPropertyCache;->miTrack:I

    .line 781
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    aget-object v6, v6, v1

    const/16 v7, 0xf

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/mtp/MtpDatabase$MtpPropertyCache;->mszDisplayName:Ljava/lang/String;

    .line 785
    :cond_7
    if-nez v1, :cond_8

    if-ne p3, v9, :cond_8

    .line 786
    aget v6, v2, v1

    invoke-virtual {p0, v6, p1, p3}, Landroid/mtp/MtpDatabase;->StartMediaScanner(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 756
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 791
    .end local v0           #iCount:I
    .end local v1           #ii:I
    .end local v2           #result:[I
    :catch_0
    move-exception v4

    .line 793
    .local v4, sEx:Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "MtpDatabase"

    const-string v7, "RemoteException in getObjectList"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 801
    if-eqz v3, :cond_9

    .line 802
    .end local v4           #sEx:Landroid/os/RemoteException;
    :goto_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_9
    move-object v2, v5

    .line 804
    goto/16 :goto_0

    .line 795
    :catch_1
    move-exception v4

    .line 797
    .local v4, sEx:Ljava/lang/Exception;
    :try_start_3
    const-string v6, "MtpDatabase"

    const-string v7, "Exception in getObjectList"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 801
    if-eqz v3, :cond_9

    goto :goto_4

    .end local v4           #sEx:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_a

    .line 802
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 801
    :cond_a
    throw v5

    .restart local v0       #iCount:I
    .restart local v1       #ii:I
    .restart local v2       #result:[I
    :cond_b
    if-eqz v3, :cond_2

    .line 802
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 801
    .end local v1           #ii:I
    .end local v2           #result:[I
    :cond_c
    if-eqz v3, :cond_9

    goto :goto_4
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

    .line 1102
    if-eqz p6, :cond_0

    .line 1103
    new-instance v2, Landroid/mtp/MtpPropertyList;

    const v3, 0xa807

    invoke-direct {v2, v4, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 1123
    :goto_0
    return-object v2

    .line 1107
    :cond_0
    const-wide v2, 0xffffffffL

    cmp-long v2, p4, v2

    if-nez v2, :cond_2

    .line 1108
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpPropertyGroup;

    .line 1109
    .local v0, propertyGroup:Landroid/mtp/MtpPropertyGroup;
    if-nez v0, :cond_1

    .line 1110
    invoke-direct {p0, p3}, Landroid/mtp/MtpDatabase;->getSupportedObjectProperties(I)[I

    move-result-object v1

    .line 1111
    .local v1, propertyList:[I
    new-instance v0, Landroid/mtp/MtpPropertyGroup;

    .end local v0           #propertyGroup:Landroid/mtp/MtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-direct {v0, p0, v2, v3, v1}, Landroid/mtp/MtpPropertyGroup;-><init>(Landroid/mtp/MtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;[I)V

    .line 1112
    .restart local v0       #propertyGroup:Landroid/mtp/MtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    .end local v1           #propertyList:[I
    :cond_1
    :goto_1
    long-to-int v2, p1

    invoke-virtual {v0, v2, p3, p7}, Landroid/mtp/MtpPropertyGroup;->getPropertyList(III)Landroid/mtp/MtpPropertyList;

    move-result-object v2

    goto :goto_0

    .line 1115
    .end local v0           #propertyGroup:Landroid/mtp/MtpPropertyGroup;
    :cond_2
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpPropertyGroup;

    .line 1116
    .restart local v0       #propertyGroup:Landroid/mtp/MtpPropertyGroup;
    if-nez v0, :cond_1

    .line 1117
    const/4 v2, 0x1

    new-array v1, v2, [I

    long-to-int v2, p4

    aput v2, v1, v4

    .line 1118
    .restart local v1       #propertyList:[I
    new-instance v0, Landroid/mtp/MtpPropertyGroup;

    .end local v0           #propertyGroup:Landroid/mtp/MtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-direct {v0, p0, v2, v3, v1}, Landroid/mtp/MtpPropertyGroup;-><init>(Landroid/mtp/MtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;[I)V

    .line 1119
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

    .line 1439
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Landroid/provider/MediaStore$Files;->getMtpReferencesUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 1440
    .local v1, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 1442
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

    .line 1443
    if-nez v7, :cond_2

    .line 1458
    if-eqz v7, :cond_0

    .line 1459
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v11, v12

    .line 1462
    :cond_1
    :goto_0
    return-object v11

    .line 1446
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 1447
    .local v8, count:I
    if-lez v8, :cond_6

    .line 1448
    new-array v11, v8, [I

    .line 1449
    .local v11, result:[I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v8, :cond_5

    .line 1450
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 1451
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v11, v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1449
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1455
    .end local v8           #count:I
    .end local v10           #i:I
    .end local v11           #result:[I
    :catch_0
    move-exception v9

    .line 1456
    .local v9, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v0, "MtpDatabase"

    const-string v2, "RemoteException in getObjectReferences"

    invoke-static {v0, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1458
    if-eqz v7, :cond_3

    .line 1459
    .end local v9           #e:Landroid/os/RemoteException;
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v11, v12

    .line 1462
    goto :goto_0

    .line 1458
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 1459
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1458
    :cond_4
    throw v0

    .restart local v8       #count:I
    .restart local v10       #i:I
    .restart local v11       #result:[I
    :cond_5
    if-eqz v7, :cond_1

    .line 1459
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1458
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

    .line 1053
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1054
    .local v0, mTelephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 1055
    .local v1, szDevId:Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v4, v2, p2, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1056
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    aput-char v4, p2, v2

    .line 1057
    const/16 v2, 0x2001

    return v2

    .line 1054
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

    .line 1063
    const-string v5, "NA"

    .line 1065
    .local v5, szDevId:Ljava/lang/String;
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "storage"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 1066
    .local v2, mStorageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 1068
    .local v0, aVolumes:[Landroid/os/storage/StorageVolume;
    const/4 v1, 0x0

    .local v1, ii:I
    :goto_0
    array-length v6, v0

    if-ge v1, v6, :cond_1

    .line 1069
    aget-object v6, v0, v1

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getStorageId()I

    move-result v6

    if-ne p1, v6, :cond_3

    .line 1071
    aget-object v6, v0, v1

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 1072
    .local v3, szCurPath:Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1074
    .local v4, szCurState:Ljava/lang/String;
    const-string/jumbo v6, "mounted"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1076
    aget-object v6, v0, v1

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1077
    const-string v5, "Card"

    .line 1081
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

    .line 1086
    .end local v3           #szCurPath:Ljava/lang/String;
    .end local v4           #szCurState:Ljava/lang/String;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v9, v6, p2, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 1087
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    aput-char v9, p2, v6

    .line 1088
    const/16 v6, 0x2001

    return v6

    .line 1079
    .restart local v3       #szCurPath:Ljava/lang/String;
    .restart local v4       #szCurState:Ljava/lang/String;
    :cond_2
    const-string v5, "Phone"

    goto :goto_1

    .line 1068
    .end local v3           #szCurPath:Ljava/lang/String;
    .end local v4           #szCurState:Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getSupportedCaptureFormats()[I
    .locals 1

    .prologue
    .line 868
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSupportedDeviceProperties()[I
    .locals 1

    .prologue
    .line 1092
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
    .line 1026
    sparse-switch p1, :sswitch_data_0

    .line 1045
    sget-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    :goto_0
    return-object v0

    .line 1032
    :sswitch_0
    sget-object v0, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    goto :goto_0

    .line 1036
    :sswitch_1
    sget-object v0, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    goto :goto_0

    .line 1041
    :sswitch_2
    sget-object v0, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    goto :goto_0

    .line 1043
    :sswitch_3
    sget-object v0, Landroid/mtp/MtpDatabase;->ALL_PROPERTIES:[I

    goto :goto_0

    .line 1026
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
    .line 825
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

.method private inStorageSubDirectory(Ljava/lang/String;)Z
    .locals 7
    .parameter "path"

    .prologue
    .line 270
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    if-nez v5, :cond_1

    const/4 v0, 0x1

    .line 284
    :cond_0
    :goto_0
    return v0

    .line 271
    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 273
    :cond_2
    const/4 v0, 0x0

    .line 274
    .local v0, allowed:Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 275
    .local v2, pathLength:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    if-nez v0, :cond_0

    .line 276
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    aget-object v3, v5, v1

    .line 277
    .local v3, subdir:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 278
    .local v4, subdirLength:I
    if-ge v4, v2, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 281
    const/4 v0, 0x1

    .line 275
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private initDeviceProperties(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 233
    const-string v10, "device-properties"

    .line 234
    .local v10, devicePropertiesName:Ljava/lang/String;
    const-string v1, "device-properties"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    .line 235
    const-string v1, "device-properties"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 237
    .local v9, databaseFile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 243
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "device-properties"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_4

    .line 245
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

    .line 247
    if-eqz v8, :cond_4

    .line 248
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 249
    .local v11, e:Landroid/content/SharedPreferences$Editor;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 250
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 251
    .local v12, name:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 252
    .local v13, value:Ljava/lang/String;
    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 257
    .end local v11           #e:Landroid/content/SharedPreferences$Editor;
    .end local v12           #name:Ljava/lang/String;
    .end local v13           #value:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 258
    .local v11, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "MtpDatabase"

    const-string v2, "failed to migrate device properties"

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 261
    :cond_0
    if-eqz v0, :cond_1

    .end local v11           #e:Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 263
    :cond_1
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 265
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #c:Landroid/database/Cursor;
    :cond_2
    return-void

    .line 254
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8       #c:Landroid/database/Cursor;
    .local v11, e:Landroid/content/SharedPreferences$Editor;
    :cond_3
    :try_start_2
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 260
    .end local v11           #e:Landroid/content/SharedPreferences$Editor;
    :cond_4
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 261
    :cond_5
    if-eqz v0, :cond_1

    goto :goto_1

    .line 260
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 261
    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 260
    :cond_7
    throw v1
.end method

.method private isStorageSubDirectory(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    const/4 v1, 0x0

    .line 290
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    if-nez v2, :cond_1

    .line 296
    :cond_0
    :goto_0
    return v1

    .line 291
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 292
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 293
    const/4 v1, 0x1

    goto :goto_0

    .line 291
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

    .line 1269
    const/16 v4, 0x2f

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1270
    .local v1, lastSlash:I
    if-ltz v1, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 1271
    .local v2, start:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1272
    .local v0, end:I
    sub-int v4, v0, v2

    const/16 v5, 0xff

    if-le v4, v5, :cond_0

    .line 1273
    add-int/lit16 v0, v2, 0xff

    .line 1275
    :cond_0
    invoke-virtual {p0, v2, v0, p1, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 1276
    sub-int v4, v0, v2

    aput-char v3, p1, v4

    .line 1277
    return-void

    .end local v0           #end:I
    .end local v2           #start:I
    :cond_1
    move v2, v3

    .line 1270
    goto :goto_0
.end method

.method private final native native_finalize()V
.end method

.method private final native native_setup()V
.end method

.method private renameFile(ILjava/lang/String;)I
    .locals 18
    .parameter "handle"
    .parameter "newName"

    .prologue
    .line 1127
    const/4 v8, 0x0

    .line 1130
    .local v8, c:Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 1131
    .local v14, path:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 1133
    .local v5, whereArgs:[Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v3, Landroid/mtp/MtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    const-string v4, "_id=?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 1134
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1135
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 1141
    :cond_0
    if-eqz v8, :cond_1

    .line 1142
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1145
    :cond_1
    if-nez v14, :cond_4

    .line 1146
    const/16 v1, 0x2009

    .line 1209
    :cond_2
    :goto_0
    return v1

    .line 1137
    :catch_0
    move-exception v9

    .line 1138
    .local v9, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "MtpDatabase"

    const-string v2, "RemoteException in getObjectFilePath"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1139
    const/16 v1, 0x2002

    .line 1141
    if-eqz v8, :cond_2

    .line 1142
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1141
    .end local v9           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_3

    .line 1142
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1141
    :cond_3
    throw v1

    .line 1150
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/mtp/MtpDatabase;->isStorageSubDirectory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1151
    const/16 v1, 0x200d

    goto :goto_0

    .line 1155
    :cond_5
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1156
    .local v13, oldFile:Ljava/io/File;
    const/16 v1, 0x2f

    invoke-virtual {v14, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    .line 1157
    .local v10, lastSlash:I
    const/4 v1, 0x1

    if-gt v10, v1, :cond_6

    .line 1158
    const/16 v1, 0x2002

    goto :goto_0

    .line 1160
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    add-int/lit8 v3, v10, 0x1

    invoke-virtual {v14, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1161
    .local v12, newPath:Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1162
    .local v11, newFile:Ljava/io/File;
    invoke-virtual {v13, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v15

    .line 1163
    .local v15, success:Z
    if-nez v15, :cond_7

    .line 1164
    const-string v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "renaming "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    const/16 v1, 0x2002

    goto/16 :goto_0

    .line 1169
    :cond_7
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 1170
    .local v17, values:Landroid/content/ContentValues;
    const-string v1, "_data"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    const/16 v16, 0x0

    .line 1175
    .local v16, updated:I
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    const-string v3, "_id=?"

    move-object/from16 v0, v17

    invoke-interface {v1, v2, v0, v3, v5}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v16

    .line 1179
    :goto_1
    if-nez v16, :cond_8

    .line 1180
    const-string v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to update path for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    invoke-virtual {v11, v13}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1183
    const/16 v1, 0x2002

    goto/16 :goto_0

    .line 1176
    :catch_1
    move-exception v9

    .line 1177
    .restart local v9       #e:Landroid/os/RemoteException;
    const-string v1, "MtpDatabase"

    const-string v2, "RemoteException in mMediaProvider.update"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1187
    .end local v9           #e:Landroid/os/RemoteException;
    :cond_8
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1189
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "."

    invoke-virtual {v12, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1192
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    const-string/jumbo v2, "unhide"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v12, v3}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1209
    :cond_9
    :goto_2
    const/16 v1, 0x2001

    goto/16 :goto_0

    .line 1193
    :catch_2
    move-exception v9

    .line 1194
    .restart local v9       #e:Landroid/os/RemoteException;
    const-string v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to unhide/rescan for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1199
    .end local v9           #e:Landroid/os/RemoteException;
    :cond_a
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v12, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1202
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    const-string/jumbo v2, "unhide"

    invoke-virtual {v13}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 1203
    :catch_3
    move-exception v9

    .line 1204
    .restart local v9       #e:Landroid/os/RemoteException;
    const-string v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to unhide/rescan for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private sessionEnded()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1570
    const-string v1, "MtpDatabase"

    const-string/jumbo v2, "sessionEnded"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    iget-boolean v1, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    if-eqz v1, :cond_0

    .line 1572
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.provider.action.MTP_SESSION_END"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1573
    iput-boolean v5, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 1575
    :cond_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mScanDirectory:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1576
    const-string v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[USBF] Scanned Stop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mScanDirectory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mScanDirectory:Ljava/lang/String;

    invoke-virtual {p0, v1, v5}, Landroid/mtp/MtpDatabase;->StartMediaScannerNew(Ljava/lang/String;I)V

    .line 1584
    iput-object v4, p0, Landroid/mtp/MtpDatabase;->mScanDirectory:Ljava/lang/String;

    .line 1586
    :cond_1
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    if-eqz v1, :cond_3

    .line 1588
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCacheHandle:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1589
    iput-object v4, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCacheHandle:Ljava/util/ArrayList;

    .line 1591
    const/4 v0, 0x0

    .local v0, ii:I
    :goto_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1592
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    aput-object v4, v1, v0

    .line 1591
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1593
    :cond_2
    iput-object v4, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    .line 1595
    .end local v0           #ii:I
    :cond_3
    iput-boolean v5, p0, Landroid/mtp/MtpDatabase;->mSessionActive:Z

    .line 1596
    return-void
.end method

.method private sessionStarted()V
    .locals 3

    .prologue
    .line 1559
    const-string v1, "MtpDatabase"

    const-string/jumbo v2, "sessionStarted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 1561
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/mtp/MtpDatabase;->mSessionActive:Z

    .line 1563
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MtpDatabase"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 1564
    .local v0, sHThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1566
    new-instance v1, Landroid/mtp/MtpDatabase$MtpHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/mtp/MtpDatabase$MtpHandler;-><init>(Landroid/mtp/MtpDatabase;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/mtp/MtpDatabase;->msMtpHandler:Landroid/mtp/MtpDatabase$MtpHandler;

    .line 1567
    return-void
.end method

.method private setDeviceProperty(IJLjava/lang/String;)I
    .locals 2
    .parameter "property"
    .parameter "intValue"
    .parameter "stringValue"

    .prologue
    .line 1254
    packed-switch p1, :pswitch_data_0

    .line 1264
    const/16 v1, 0x200a

    :goto_0
    return v1

    .line 1258
    :pswitch_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1259
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1260
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2001

    goto :goto_0

    :cond_0
    const/16 v1, 0x2002

    goto :goto_0

    .line 1254
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
    .line 1214
    packed-switch p2, :pswitch_data_0

    .line 1219
    const v0, 0xa80a

    :goto_0
    return v0

    .line 1216
    :pswitch_0
    invoke-direct {p0, p1, p5}, Landroid/mtp/MtpDatabase;->renameFile(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1214
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
    .line 1466
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 1467
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    int-to-long v7, p1

    invoke-static {v6, v7, v8}, Landroid/provider/MediaStore$Files;->getMtpReferencesUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    .line 1468
    .local v3, uri:Landroid/net/Uri;
    array-length v0, p2

    .line 1469
    .local v0, count:I
    new-array v5, v0, [Landroid/content/ContentValues;

    .line 1470
    .local v5, valuesList:[Landroid/content/ContentValues;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1471
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1472
    .local v4, values:Landroid/content/ContentValues;
    const-string v6, "_id"

    aget v7, p2, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1473
    aput-object v4, v5, v2

    .line 1470
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1476
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_0
    :try_start_0
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-interface {v6, v3, v5}, Landroid/content/IContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-lez v6, :cond_1

    .line 1477
    const/16 v6, 0x2001

    .line 1482
    :goto_1
    return v6

    .line 1479
    :catch_0
    move-exception v1

    .line 1480
    .local v1, e:Landroid/os/RemoteException;
    const-string v6, "MtpDatabase"

    const-string v7, "RemoteException in setObjectReferences"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1482
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    const/16 v6, 0x2002

    goto :goto_1
.end method


# virtual methods
.method public GetFilenamefromHandle(I)Ljava/lang/String;
    .locals 10
    .parameter "iHandle"

    .prologue
    const/4 v0, 0x1

    .line 472
    const/4 v7, 0x0

    .line 473
    .local v7, sCur:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 474
    .local v9, szPath:Ljava/lang/String;
    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 477
    .local v4, whereArgs:[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 478
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 486
    :cond_0
    if-eqz v7, :cond_1

    .line 487
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 490
    :cond_1
    const-string v0, "MtpDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[USBF] GetFilenamefromHandle: Path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Handle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    return-object v9

    .line 482
    :catch_0
    move-exception v8

    .line 483
    .local v8, sEx:Landroid/os/RemoteException;
    :try_start_1
    const-string v0, "MtpDatabase"

    const-string v1, "RemoteException"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 486
    if-eqz v7, :cond_1

    goto :goto_0

    .end local v8           #sEx:Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 487
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 486
    :cond_2
    throw v0
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
    .line 495
    invoke-virtual {p0, p1, p2, p1}, Landroid/mtp/MtpDatabase;->StartMediaScanner(III)V

    .line 496
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
    .line 500
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

    .line 502
    if-nez p3, :cond_1

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    invoke-virtual {p0, p1}, Landroid/mtp/MtpDatabase;->GetFilenamefromHandle(I)Ljava/lang/String;

    move-result-object v1

    .line 509
    .local v1, szPath:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 510
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 512
    .local v0, file1:Ljava/io/File;
    const/4 v2, -0x1

    if-ne p3, v2, :cond_2

    .line 515
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 517
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

    .line 532
    const-string v1, "Notify:"

    .line 533
    .local v1, szNotify:Ljava/lang/String;
    const/4 v0, 0x0

    .line 535
    .local v0, BaseDirPath:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 536
    invoke-direct {p0, p2}, Landroid/mtp/MtpDatabase;->GetStorageBase(I)Ljava/lang/String;

    move-result-object v0

    .line 538
    :cond_0
    aget-object v2, p1, v5

    if-nez v2, :cond_1

    .line 540
    const-string v2, "MtpDatabase"

    const-string v3, "[USBF] StartMediaScannerDir-: null path!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :goto_0
    return-void

    .line 543
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

    .line 544
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

    .line 545
    if-eqz v0, :cond_2

    aget-object v2, p1, v5

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 547
    const-string v2, "MtpDatabase"

    const-string v3, "[USBF] StartMediaScannerDir-: Not valid path!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 551
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
    .line 522
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

    .line 523
    .local v0, sScanIntent:Landroid/content/Intent;
    const-string v1, "MTP_Path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    if-eqz p2, :cond_0

    .line 525
    const-string v1, "MTP_Level"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 528
    :goto_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 529
    return-void

    .line 527
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
    .line 225
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
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
    .line 218
    :try_start_0
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 222
    return-void

    .line 220
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public removeStorage(Landroid/mtp/MtpStorage;)V
    .locals 2
    .parameter "storage"

    .prologue
    .line 229
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    return-void
.end method
