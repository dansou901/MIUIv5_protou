.class public Lcom/android/internal/os/storage/ExternalStorageFormatter;
.super Landroid/app/Service;
.source "ExternalStorageFormatter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field private static final CHECK_MOUNTED_INTERVAL:I = 0x64

.field public static final COMPONENT_NAME:Landroid/content/ComponentName; = null

.field private static final EXTERNAL_STORAGE_IDX:I = 0x1

.field public static final EXTRA_ALWAYS_RESET:Ljava/lang/String; = "com.android.internal.os.storage.EXTRA_ALWAYS_RESET"

.field public static final EXTRA_RESPONSE_STATUS:Ljava/lang/String; = "com.android.internal.os.storage.EXTRA_RESPONSE_STATUS"

.field public static final FORMAT_ALL_AND_FACTORY_RESET:Ljava/lang/String; = "com.android.internal.os.storage.FORMAT_ALL_AND_FACTORY_RESET"

.field public static final FORMAT_ALL_ONLY:Ljava/lang/String; = "com.android.internal.os.storage.FORMAT_ALL_ONLY"

.field public static final FORMAT_AND_FACTORY_RESET:Ljava/lang/String; = "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

.field public static final FORMAT_INTERNAL_STORAGE_ONLY:Ljava/lang/String; = "com.android.internal.os.storage.FORMAT_INTERNAL_STORAGE_ONLY"

.field public static final FORMAT_ONLY:Ljava/lang/String; = "com.android.internal.os.storage.FORMAT_ONLY"

.field private static final HTC_ACTION_FORMAT_ALL:I = 0x2

.field private static final HTC_ACTION_FORMAT_ALL_FACTORY_RESET:I = 0x3

.field private static final HTC_ACTION_FORMAT_INTERNAL_ONLY:I = 0x1

.field private static final HTC_ACTION_NONE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final HTC_DEBUG_FORMATTER:Z = false

.field private static final INTERNAL_STORAGE_IDX:I = 0x0

.field private static final LAST_STORAGE_IDX:I = 0x0

.field private static final MAX_MOUNT_TIME:I = 0x64

.field private static final MSG_CHECK_MOUNT_OK:I = 0x15667

.field private static final STORAGE_RESULT_CODE_NOT_SUPPORTED:I = -0x3e7

.field static final TAG:Ljava/lang/String; = "ExternalStorageFormatter"


# instance fields
.field private htcFormatAction:I

.field private mAlwaysReset:Z

.field private mCurrentStorageResult:I

.field private mDeleteData:Z

.field private mFactoryReset:Z

.field private mFormatOnly:Z

.field private mFormatSequence:I

.field private mFormatStoragePath:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReplyData:Landroid/content/Intent;

.field private mResponseStatus:Z

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolume:Landroid/os/storage/StorageVolume;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->HTC_DEBUG_FORMATTER:Z

    .line 54
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    .line 60
    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 64
    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 66
    iput-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    .line 67
    iput-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    .line 68
    iput-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatOnly:Z

    .line 70
    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStoragePath:Ljava/lang/String;

    .line 74
    iput-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mResponseStatus:Z

    .line 82
    iput v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    .line 89
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mCurrentStorageResult:I

    .line 103
    iput-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mDeleteData:Z

    .line 105
    new-instance v0, Lcom/android/internal/os/storage/ExternalStorageFormatter$1;

    invoke-direct {v0, p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter$1;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;)V

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mHandler:Landroid/os/Handler;

    .line 231
    new-instance v0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;

    invoke-direct {v0, p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;)V

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method private InitFormatSequence()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 793
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 794
    iput v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I

    .line 803
    :goto_0
    sget-boolean v0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->HTC_DEBUG_FORMATTER:Z

    if-eqz v0, :cond_0

    const-string v1, "ExternalStorageFormatter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InitFormatSequence - mFormatSequence = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I

    if-ne v0, v3, :cond_3

    const-string v0, "EXTERNAL_STORAGE_IDX"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    :cond_0
    return-void

    .line 796
    :cond_1
    invoke-static {}, Landroid/os/Environment;->hasInternalFat()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 797
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I

    goto :goto_0

    .line 800
    :cond_2
    iput v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I

    goto :goto_0

    .line 803
    :cond_3
    const-string v0, "INTERNAL_STORAGE_IDX"

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/os/storage/ExternalStorageFormatter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mCurrentStorageResult:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/os/storage/ExternalStorageFormatter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mCurrentStorageResult:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/os/storage/ExternalStorageFormatter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/os/storage/ExternalStorageFormatter;IIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateReplyResult(IIZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getFormatStoragePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->formatNextStorage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->HTC_DEBUG_FORMATTER:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/os/storage/ExternalStorageFormatter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendMasterClearIntent()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/os/storage/ExternalStorageFormatter;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendFirstCheckMountMessage(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/os/storage/ExternalStorageFormatter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    return v0
.end method

.method private failBecauseOfEmulatedStorage()V
    .locals 5

    .prologue
    const/16 v4, -0x3e7

    .line 432
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getFormatStoragePath()Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, storagePath:Ljava/lang/String;
    const-string v2, "ExternalStorageFormatter"

    const-string v3, "Emulated storage cannot be formatted!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const/4 v0, 0x1

    .line 437
    .local v0, formatOver:Z
    iget v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 440
    :cond_0
    iget v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I

    if-eqz v2, :cond_1

    .line 441
    const/4 v0, 0x0

    .line 443
    iget v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, v4, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateReplyResult(IIZ)V

    .line 444
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->formatNextStorage()Z

    .line 448
    :cond_1
    if-eqz v0, :cond_3

    .line 451
    iget v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I

    const/4 v3, 0x1

    invoke-direct {p0, v2, v4, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateReplyResult(IIZ)V

    .line 453
    iget-boolean v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    if-eqz v2, :cond_2

    .line 454
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendMasterClearIntent()V

    .line 457
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    .line 458
    const-string v2, "ExternalStorageFormatter"

    const-string v3, "fail stop service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_3
    return-void
.end method

.method private formatNextStorage()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 813
    iget v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    if-ne v2, v1, :cond_1

    .line 836
    :cond_0
    :goto_0
    return v0

    .line 817
    :cond_1
    iget v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I

    if-eqz v2, :cond_0

    .line 823
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Landroid/os/Environment;->hasPhoneStorage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 827
    :cond_2
    iget v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I

    if-ne v2, v1, :cond_3

    .line 828
    iput v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I

    .line 831
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStoragePath:Ljava/lang/String;

    .line 832
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getFormatStoragePath()Ljava/lang/String;

    .line 834
    invoke-direct {p0, v1}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendFirstCheckMountMessage(I)V

    move v0, v1

    .line 836
    goto :goto_0
.end method

.method private getErrorCodeFromIntentData()I
    .locals 4

    .prologue
    const/16 v3, -0x65

    .line 901
    const/4 v0, 0x0

    .line 904
    .local v0, errorCode:I
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReplyData:Landroid/content/Intent;

    const-string v2, "com.htc.app.admin.dpm.extra.REMOVABLE_STORAGE_STATUS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 905
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReplyData:Landroid/content/Intent;

    const-string v2, "com.htc.app.admin.dpm.extra.REMOVABLE_STORAGE_STATUS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 906
    const/16 v0, -0x66

    .line 911
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReplyData:Landroid/content/Intent;

    const-string v2, "com.htc.app.admin.dpm.extra.FIXED_STORAGE_STATUS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 912
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReplyData:Landroid/content/Intent;

    const-string v2, "com.htc.app.admin.dpm.extra.FIXED_STORAGE_STATUS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 913
    const/16 v1, -0x66

    if-ne v0, v1, :cond_3

    .line 914
    const/16 v0, -0x68

    .line 921
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->HTC_DEBUG_FORMATTER:Z

    if-eqz v1, :cond_2

    const-string v1, "ExternalStorageFormatter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ready to return error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    :cond_2
    return v0

    .line 916
    :cond_3
    const/16 v0, -0x67

    goto :goto_0
.end method

.method private getErrorCodeFromStorageResult(I)I
    .locals 1
    .parameter "storageResultCode"

    .prologue
    .line 886
    if-nez p1, :cond_0

    .line 887
    const/4 v0, 0x0

    .line 895
    :goto_0
    return v0

    .line 888
    :cond_0
    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    .line 889
    const/16 v0, -0x64

    goto :goto_0

    .line 891
    :cond_1
    const/16 v0, -0x3e7

    if-ne p1, v0, :cond_2

    .line 892
    const/16 v0, -0x69

    goto :goto_0

    .line 895
    :cond_2
    const/16 v0, -0x65

    goto :goto_0
.end method

.method private getFormatStoragePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 738
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 761
    :goto_0
    return-object v0

    .line 741
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStoragePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 742
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStoragePath:Ljava/lang/String;

    goto :goto_0

    .line 745
    :cond_1
    iget v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 746
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getInternalStorageDirectory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStoragePath:Ljava/lang/String;

    .line 761
    :goto_1
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStoragePath:Ljava/lang/String;

    goto :goto_0

    .line 748
    :cond_2
    iget v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 750
    :cond_3
    iget v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I

    if-nez v0, :cond_4

    .line 751
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getInternalStorageDirectory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStoragePath:Ljava/lang/String;

    goto :goto_1

    .line 754
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getRemovableStorageDirectory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStoragePath:Ljava/lang/String;

    goto :goto_1

    .line 758
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getRemovableStorageDirectory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStoragePath:Ljava/lang/String;

    goto :goto_1
.end method

.method private getFormatStorageState()Ljava/lang/String;
    .locals 3

    .prologue
    .line 768
    const/4 v0, 0x0

    .line 770
    .local v0, status:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v1, :cond_0

    .line 771
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 789
    :goto_0
    return-object v1

    .line 773
    :cond_0
    iget v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 774
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getInternalStorageState()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 789
    goto :goto_0

    .line 776
    :cond_1
    iget v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 778
    :cond_2
    iget v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I

    if-nez v1, :cond_3

    .line 779
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getInternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 782
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 786
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private getInternalStorageDirectory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 710
    const/4 v0, 0x0

    .line 711
    .local v0, StoragePath:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->hasPhoneStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 712
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 717
    :goto_0
    return-object v0

    .line 714
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getInternalStorageState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 723
    const/4 v0, 0x0

    .line 725
    .local v0, status:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->hasPhoneStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 726
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v0

    .line 731
    :goto_0
    return-object v0

    .line 728
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getRemovableStorageDirectory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 685
    const/4 v0, 0x0

    .line 686
    .local v0, StoragePath:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 687
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 692
    :goto_0
    return-object v0

    .line 689
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getRemovableStorageState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 697
    const/4 v0, 0x0

    .line 699
    .local v0, status:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 700
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v0

    .line 705
    :goto_0
    return-object v0

    .line 702
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isExternalStoragePath(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 663
    const/4 v0, 0x0

    .line 665
    .local v0, extStoragePath:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 666
    const-string v1, "ExternalStorageFormatter"

    const-string v2, "Passing a null string in isExternalStoragePath()!!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const/4 v1, 0x0

    .line 680
    :goto_0
    return v1

    .line 670
    :cond_0
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 671
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 680
    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 673
    :cond_1
    invoke-static {}, Landroid/os/Environment;->hasInternalFat()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 674
    const/4 v0, 0x0

    goto :goto_1

    .line 677
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private sendFirstCheckMountMessage(I)V
    .locals 4
    .parameter "storageIdx"

    .prologue
    const v3, 0x15667

    .line 840
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 841
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 842
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 843
    return-void
.end method

.method private sendMasterClearIntent()V
    .locals 3

    .prologue
    .line 927
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 928
    .local v0, intent:Landroid/content/Intent;
    iget-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mDeleteData:Z

    if-eqz v1, :cond_0

    const-string v1, "delete_data"

    iget-boolean v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mDeleteData:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 929
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    .line 930
    return-void
.end method

.method private updateReplyResult(IIZ)V
    .locals 4
    .parameter "whichStorage"
    .parameter "storageResultCode"
    .parameter "sendReply"

    .prologue
    .line 848
    sget-boolean v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->HTC_DEBUG_FORMATTER:Z

    if-eqz v1, :cond_0

    const-string v1, "ExternalStorageFormatter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ready to update reply result intent. storage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", storageResultCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sendReply="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mResponseStatus:Z

    if-nez v1, :cond_2

    .line 853
    sget-boolean v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->HTC_DEBUG_FORMATTER:Z

    if-eqz v1, :cond_1

    const-string v1, "ExternalStorageFormatter"

    const-string v2, "Should not update reply result since it\'s not requested by device policy"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    :cond_1
    :goto_0
    return-void

    .line 857
    :cond_2
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReplyData:Landroid/content/Intent;

    if-nez v1, :cond_3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReplyData:Landroid/content/Intent;

    .line 859
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 871
    sget-boolean v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->HTC_DEBUG_FORMATTER:Z

    if-eqz v1, :cond_1

    const-string v1, "ExternalStorageFormatter"

    const-string v2, "SHOULD NEVER BE HERE!!! CHECK STORAGE INDEX FOR THIS ERROR!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 861
    :pswitch_0
    sget-boolean v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->HTC_DEBUG_FORMATTER:Z

    if-eqz v1, :cond_4

    const-string v1, "ExternalStorageFormatter"

    const-string v2, "Put status & path for external storage..."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    :cond_4
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReplyData:Landroid/content/Intent;

    const-string v2, "com.htc.app.admin.dpm.extra.REMOVABLE_STORAGE_STATUS"

    invoke-direct {p0, p2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getErrorCodeFromStorageResult(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 863
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReplyData:Landroid/content/Intent;

    const-string v2, "com.htc.app.admin.dpm.extra.REMOVABLE_STORAGE_PATH"

    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getRemovableStorageDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 875
    :goto_1
    if-eqz p3, :cond_1

    .line 876
    sget-boolean v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->HTC_DEBUG_FORMATTER:Z

    if-eqz v1, :cond_5

    const-string v1, "ExternalStorageFormatter"

    const-string v2, "Ready to send result......"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :cond_5
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/HtcIfDevicePolicyManager;

    .line 879
    .local v0, Dpm:Landroid/app/admin/HtcIfDevicePolicyManager;
    if-eqz v0, :cond_1

    .line 880
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getErrorCodeFromIntentData()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReplyData:Landroid/content/Intent;

    invoke-interface {v0, v1, v2, v3}, Landroid/app/admin/HtcIfDevicePolicyManager;->responseAsyncResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 866
    .end local v0           #Dpm:Landroid/app/admin/HtcIfDevicePolicyManager;
    :pswitch_1
    sget-boolean v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->HTC_DEBUG_FORMATTER:Z

    if-eqz v1, :cond_6

    const-string v1, "ExternalStorageFormatter"

    const-string v2, "Put status & path for internal storage..."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :cond_6
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReplyData:Landroid/content/Intent;

    const-string v2, "com.htc.app.admin.dpm.extra.FIXED_STORAGE_STATUS"

    invoke-direct {p0, p2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getErrorCodeFromStorageResult(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 868
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReplyData:Landroid/content/Intent;

    const-string v2, "com.htc.app.admin.dpm.extra.FIXED_STORAGE_PATH"

    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getInternalStorageDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 859
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method checkStorageMounted(I)Z
    .locals 3
    .parameter "storeageIdx"

    .prologue
    const/4 v1, 0x1

    .line 176
    const/4 v0, 0x0

    .line 178
    .local v0, state:Ljava/lang/String;
    if-ne p1, v1, :cond_1

    .line 179
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v0

    .line 185
    :goto_0
    const-string v2, "bad_removal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "removed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "shared"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 191
    :cond_0
    :goto_1
    return v1

    .line 182
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getInternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 191
    :cond_2
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1
.end method

.method fail(ILjava/lang/String;)V
    .locals 8
    .parameter "msg"
    .parameter "storageState"

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 365
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getFormatStoragePath()Ljava/lang/String;

    move-result-object v2

    .line 367
    .local v2, storagePath:Ljava/lang/String;
    iput v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mCurrentStorageResult:I

    .line 369
    invoke-direct {p0, v2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->isExternalStoragePath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 371
    invoke-static {p0, p1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 372
    const-string v3, "ExternalStorageFormatter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "format external storage fail="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :goto_0
    const-string v3, "checking"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 381
    .local v1, isChecking:Z
    iget-boolean v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mResponseStatus:Z

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    .line 382
    const-string v3, "removed"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "bad_removal"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 384
    :cond_0
    const/4 v3, -0x2

    iput v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mCurrentStorageResult:I

    .line 390
    :cond_1
    :goto_1
    const/4 v0, 0x1

    .line 391
    .local v0, formatOver:Z
    iget v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    iget v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_7

    .line 394
    :cond_2
    iget v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I

    if-eqz v3, :cond_3

    .line 395
    const/4 v0, 0x0

    .line 397
    if-nez v1, :cond_3

    .line 398
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->formatNextStorage()Z

    .line 403
    :cond_3
    if-eqz v1, :cond_7

    .line 426
    :cond_4
    :goto_2
    return-void

    .line 375
    .end local v0           #formatOver:Z
    .end local v1           #isChecking:Z
    :cond_5
    const-string v3, "ExternalStorageFormatter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "format internal storage fail="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 386
    .restart local v1       #isChecking:Z
    :cond_6
    iput v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mCurrentStorageResult:I

    goto :goto_1

    .line 409
    .restart local v0       #formatOver:Z
    :cond_7
    if-eqz v0, :cond_4

    .line 417
    iget v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I

    iget v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mCurrentStorageResult:I

    invoke-direct {p0, v3, v4, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateReplyResult(IIZ)V

    .line 419
    iget-boolean v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    if-eqz v3, :cond_8

    .line 420
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendMasterClearIntent()V

    .line 423
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    .line 424
    const-string v3, "ExternalStorageFormatter"

    const-string v4, "fail stop service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 651
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 652
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 653
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 654
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    .line 659
    .end local v0           #service:Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    return-object v1

    .line 656
    .restart local v0       #service:Landroid/os/IBinder;
    :cond_1
    const-string v1, "ExternalStorageFormatter"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method mountStorage(I)V
    .locals 5
    .parameter "storeageIdx"

    .prologue
    .line 196
    const/4 v2, 0x0

    .line 197
    .local v2, path:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 199
    .local v1, mountService:Landroid/os/storage/IMountService;
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 201
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Landroid/os/Environment;->hasInternalFat()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 226
    :goto_0
    return-void

    .line 205
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getRemovableStorageDirectory()Ljava/lang/String;

    move-result-object v2

    .line 213
    :goto_1
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 214
    const-string v3, "ExternalStorageFormatter"

    const-string v4, "Attmept to mount emulated storage. Ignored."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 208
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getInternalStorageDirectory()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 220
    :cond_2
    :try_start_0
    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "ExternalStorageFormatter"

    const-string v4, "mountStorage Failed talking with mount service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 349
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 5
    .parameter "dialog"

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 355
    .local v2, mountService:Landroid/os/storage/IMountService;
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getFormatStoragePath()Ljava/lang/String;

    move-result-object v1

    .line 357
    .local v1, extStoragePath:Ljava/lang/String;
    :try_start_0
    invoke-interface {v2, v1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    .line 362
    return-void

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "ExternalStorageFormatter"

    const-string v4, "Failed talking with mount service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 249
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 251
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 252
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 253
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 256
    :cond_0
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "ExternalStorageFormatter"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 258
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 259
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReplyData:Landroid/content/Intent;

    .line 344
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 345
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 263
    iput v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    .line 264
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, intentAction:Ljava/lang/String;
    const-string v1, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    const-string v1, "delete_data"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mDeleteData:Z

    .line 271
    iput-boolean v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    .line 274
    :cond_0
    const-string v1, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 275
    iput-boolean v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatOnly:Z

    .line 279
    :cond_1
    const-string v1, "com.android.internal.os.storage.FORMAT_INTERNAL_STORAGE_ONLY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 280
    iput v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    .line 295
    :cond_2
    :goto_0
    const-string v1, "com.android.internal.os.storage.EXTRA_RESPONSE_STATUS"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 296
    iput-boolean v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mResponseStatus:Z

    .line 297
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReplyData:Landroid/content/Intent;

    .line 301
    :cond_3
    const-string v1, "com.android.internal.os.storage.EXTRA_ALWAYS_RESET"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 304
    const-string v1, "delete_data"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mDeleteData:Z

    .line 306
    iput-boolean v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    .line 309
    :cond_4
    const-string v1, "storage_volume"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 311
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_6

    .line 312
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 313
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 315
    iget v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    if-eqz v1, :cond_9

    .line 316
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 320
    :goto_1
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 321
    iget-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    if-nez v1, :cond_5

    .line 322
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 327
    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressState(Z)V

    .line 331
    :cond_6
    return v5

    .line 282
    :cond_7
    const-string v1, "com.android.internal.os.storage.FORMAT_ALL_ONLY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 283
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    .line 284
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->InitFormatSequence()V

    goto :goto_0

    .line 286
    :cond_8
    const-string v1, "com.android.internal.os.storage.FORMAT_ALL_AND_FACTORY_RESET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 287
    iput v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    .line 290
    const-string v1, "delete_data"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mDeleteData:Z

    .line 292
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->InitFormatSequence()V

    goto/16 :goto_0

    .line 318
    :cond_9
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_1
.end method

.method public updateProgressDialog(I)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 636
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 637
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 638
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 639
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 642
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getFormatStoragePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->isExternalStoragePath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 643
    const p1, 0x20401a8

    .line 646
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 647
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 648
    return-void
.end method

.method updateProgressState(Z)V
    .locals 7
    .parameter "readyToFormat"

    .prologue
    .line 468
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getFormatStorageState()Ljava/lang/String;

    move-result-object v3

    .line 469
    .local v3, status:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getFormatStoragePath()Ljava/lang/String;

    move-result-object v1

    .line 471
    .local v1, extStoragePath:Ljava/lang/String;
    sget-boolean v4, Lcom/android/internal/os/storage/ExternalStorageFormatter;->HTC_DEBUG_FORMATTER:Z

    if-eqz v4, :cond_0

    const-string v5, "ExternalStorageFormatter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateProgressState - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " detected. Path = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_2

    move-object v4, v1

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p1, :cond_3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 478
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->failBecauseOfEmulatedStorage()V

    .line 632
    :cond_1
    :goto_1
    return-void

    .line 471
    :cond_2
    const-string v4, "null"

    goto :goto_0

    .line 483
    :cond_3
    const-string v4, "mounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "mounted_ro"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 486
    :cond_4
    if-eqz p1, :cond_1

    .line 487
    sget-boolean v4, Lcom/android/internal/os/storage/ExternalStorageFormatter;->HTC_DEBUG_FORMATTER:Z

    if-eqz v4, :cond_5

    const-string v4, "ExternalStorageFormatter"

    const-string v5, " Ready to format volume. Unmounting......"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_5
    const v4, 0x1040496

    invoke-virtual {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V

    .line 490
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 494
    .local v2, mountService:Landroid/os/storage/IMountService;
    const/4 v4, 0x1

    :try_start_0
    iget-boolean v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    invoke-interface {v2, v1, v4, v5}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "ExternalStorageFormatter"

    const-string v5, "Failed talking with mount service"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 499
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #mountService:Landroid/os/storage/IMountService;
    :cond_6
    const-string v4, "nofs"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "unmounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "unmountable"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 503
    :cond_7
    sget-boolean v4, Lcom/android/internal/os/storage/ExternalStorageFormatter;->HTC_DEBUG_FORMATTER:Z

    if-eqz v4, :cond_8

    const-string v4, "ExternalStorageFormatter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateProgressState - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " detected. Ready to format media......"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_8
    const v4, 0x1040497

    invoke-virtual {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V

    .line 506
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 508
    .restart local v2       #mountService:Landroid/os/storage/IMountService;
    if-eqz v2, :cond_9

    .line 509
    new-instance v4, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;Landroid/os/storage/IMountService;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->start()V

    goto/16 :goto_1

    .line 614
    :cond_9
    const-string v4, "ExternalStorageFormatter"

    const-string v5, "Unable to locate IMountService"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 616
    .end local v2           #mountService:Landroid/os/storage/IMountService;
    :cond_a
    const-string v4, "bad_removal"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 617
    const v4, 0x1040499

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 618
    :cond_b
    const-string v4, "checking"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 619
    const v4, 0x104049a

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 620
    :cond_c
    const-string v4, "removed"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 621
    const v4, 0x104049b

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 622
    :cond_d
    const-string v4, "shared"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 623
    const v4, 0x104049c

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 624
    :cond_e
    const-string v4, "formatting"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 625
    const-string v4, "ExternalStorageFormatter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "storage state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 628
    :cond_f
    const v4, 0x104049d

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(ILjava/lang/String;)V

    .line 629
    const-string v4, "ExternalStorageFormatter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown storage state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
