.class public Landroid/app/backup/WallpaperBackupHelper;
.super Landroid/app/backup/FileBackupHelperBase;
.source "WallpaperBackupHelper.java"

# interfaces
.implements Landroid/app/backup/BackupHelper;


# static fields
.field private static final DEBUG:Z = false

.field private static final STAGE_FILE:Ljava/lang/String; = "/data/system/users/0/wallpaper-tmp"

.field private static final TAG:Ljava/lang/String; = "WallpaperBackupHelper"

.field public static final WALLPAPER_IMAGE:Ljava/lang/String; = "/data/system/users/0/wallpaper"

.field public static final WALLPAPER_IMAGE_KEY:Ljava/lang/String; = "/data/data/com.android.settings/files/wallpaper"

.field public static final WALLPAPER_INFO:Ljava/lang/String; = "/data/system/users/0/wallpaper_info.xml"

.field public static final WALLPAPER_INFO_KEY:Ljava/lang/String; = "/data/system/wallpaper_info.xml"


# instance fields
.field mContext:Landroid/content/Context;

.field mDesiredMinHeight:D

.field mDesiredMinWidth:D

.field mFiles:[Ljava/lang/String;

.field mKeys:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "files"
    .parameter "keys"

    .prologue
    const-wide/16 v6, 0x0

    .line 71
    invoke-direct {p0, p1}, Landroid/app/backup/FileBackupHelperBase;-><init>(Landroid/content/Context;)V

    .line 73
    iput-object p1, p0, Landroid/app/backup/WallpaperBackupHelper;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Landroid/app/backup/WallpaperBackupHelper;->mFiles:[Ljava/lang/String;

    .line 75
    iput-object p3, p0, Landroid/app/backup/WallpaperBackupHelper;->mKeys:[Ljava/lang/String;

    .line 78
    const-string/jumbo v4, "wallpaper"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/WallpaperManager;

    .line 79
    .local v3, wpm:Landroid/app/WallpaperManager;
    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v4

    int-to-double v4, v4

    iput-wide v4, p0, Landroid/app/backup/WallpaperBackupHelper;->mDesiredMinWidth:D

    .line 80
    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result v4

    int-to-double v4, v4

    iput-wide v4, p0, Landroid/app/backup/WallpaperBackupHelper;->mDesiredMinHeight:D

    .line 82
    iget-wide v4, p0, Landroid/app/backup/WallpaperBackupHelper;->mDesiredMinWidth:D

    cmpg-double v4, v4, v6

    if-lez v4, :cond_0

    iget-wide v4, p0, Landroid/app/backup/WallpaperBackupHelper;->mDesiredMinHeight:D

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_1

    .line 83
    :cond_0
    const-string/jumbo v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 84
    .local v2, wm:Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 85
    .local v0, d:Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 86
    .local v1, size:Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 87
    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-double v4, v4

    iput-wide v4, p0, Landroid/app/backup/WallpaperBackupHelper;->mDesiredMinWidth:D

    .line 88
    iget v4, v1, Landroid/graphics/Point;->y:I

    int-to-double v4, v4

    iput-wide v4, p0, Landroid/app/backup/WallpaperBackupHelper;->mDesiredMinHeight:D

    .line 91
    .end local v0           #d:Landroid/view/Display;
    .end local v1           #size:Landroid/graphics/Point;
    .end local v2           #wm:Landroid/view/WindowManager;
    :cond_1
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_2

    .line 92
    const-string v4, "WallpaperBackupHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dmW="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Landroid/app/backup/WallpaperBackupHelper;->mDesiredMinWidth:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dmH="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Landroid/app/backup/WallpaperBackupHelper;->mDesiredMinHeight:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_2
    return-void
.end method


# virtual methods
.method public performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 2
    .parameter "oldState"
    .parameter "data"
    .parameter "newState"

    .prologue
    .line 103
    iget-object v0, p0, Landroid/app/backup/WallpaperBackupHelper;->mFiles:[Ljava/lang/String;

    iget-object v1, p0, Landroid/app/backup/WallpaperBackupHelper;->mKeys:[Ljava/lang/String;

    invoke-static {p1, p2, p3, v0, v1}, Landroid/app/backup/WallpaperBackupHelper;->performBackup_checked(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .locals 11
    .parameter "data"

    .prologue
    .line 112
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, key:Ljava/lang/String;
    iget-object v7, p0, Landroid/app/backup/WallpaperBackupHelper;->mKeys:[Ljava/lang/String;

    invoke-virtual {p0, v3, v7}, Landroid/app/backup/WallpaperBackupHelper;->isKeyInList(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 114
    const-string v7, "/data/data/com.android.settings/files/wallpaper"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 116
    new-instance v0, Ljava/io/File;

    const-string v7, "/data/system/users/0/wallpaper-tmp"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, f:Ljava/io/File;
    invoke-virtual {p0, v0, p1}, Landroid/app/backup/WallpaperBackupHelper;->writeFile(Ljava/io/File;Landroid/app/backup/BackupDataInputStream;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 120
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 121
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 122
    const-string v7, "/data/system/users/0/wallpaper-tmp"

    invoke-static {v7, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 124
    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v7, :cond_0

    const-string v7, "WallpaperBackupHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Restoring wallpaper image w="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " h="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    iget-wide v7, p0, Landroid/app/backup/WallpaperBackupHelper;->mDesiredMinWidth:D

    iget v9, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v9, v9

    div-double v5, v7, v9

    .line 134
    .local v5, widthRatio:D
    iget-wide v7, p0, Landroid/app/backup/WallpaperBackupHelper;->mDesiredMinHeight:D

    iget v9, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v9, v9

    div-double v1, v7, v9

    .line 135
    .local v1, heightRatio:D
    const-wide/16 v7, 0x0

    cmpl-double v7, v5, v7

    if-lez v7, :cond_3

    const-wide v7, 0x3ff547ae147ae148L

    cmpg-double v7, v5, v7

    if-gez v7, :cond_3

    const-wide/16 v7, 0x0

    cmpl-double v7, v1, v7

    if-lez v7, :cond_3

    const-wide v7, 0x3ff547ae147ae148L

    cmpg-double v7, v1, v7

    if-gez v7, :cond_3

    .line 138
    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v7, :cond_1

    const-string v7, "WallpaperBackupHelper"

    const-string/jumbo v8, "wallpaper dimension match; using"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_1
    new-instance v7, Ljava/io/File;

    const-string v8, "/data/system/users/0/wallpaper"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 155
    .end local v0           #f:Ljava/io/File;
    .end local v1           #heightRatio:D
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v5           #widthRatio:D
    :cond_2
    :goto_0
    return-void

    .line 144
    .restart local v0       #f:Ljava/io/File;
    .restart local v1       #heightRatio:D
    .restart local v4       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v5       #widthRatio:D
    :cond_3
    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v7, :cond_4

    const-string v7, "WallpaperBackupHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dimensions too far off: wr="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " hr="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 149
    .end local v0           #f:Ljava/io/File;
    .end local v1           #heightRatio:D
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v5           #widthRatio:D
    :cond_5
    const-string v7, "/data/system/wallpaper_info.xml"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 151
    new-instance v0, Ljava/io/File;

    const-string v7, "/data/system/users/0/wallpaper_info.xml"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .restart local v0       #f:Ljava/io/File;
    invoke-virtual {p0, v0, p1}, Landroid/app/backup/WallpaperBackupHelper;->writeFile(Ljava/io/File;Landroid/app/backup/BackupDataInputStream;)Z

    goto :goto_0
.end method

.method public bridge synthetic writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/backup/FileBackupHelperBase;->writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method
