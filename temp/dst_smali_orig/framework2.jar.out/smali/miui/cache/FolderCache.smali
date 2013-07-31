.class public Lmiui/cache/FolderCache;
.super Ljava/lang/Object;
.source "FolderCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cache/FolderCache$FileInfo;,
        Lmiui/cache/FolderCache$FolderInfo;
    }
.end annotation


# instance fields
.field private folderCache:Lmiui/cache/DataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/cache/DataCache",
            "<",
            "Ljava/lang/String;",
            "Lmiui/cache/FolderCache$FolderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/cache/DataCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lmiui/cache/DataCache;-><init>(I)V

    iput-object v0, p0, Lmiui/cache/FolderCache;->folderCache:Lmiui/cache/DataCache;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "maximumCapacity"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/cache/DataCache;

    invoke-direct {v0, p1}, Lmiui/cache/DataCache;-><init>(I)V

    iput-object v0, p0, Lmiui/cache/FolderCache;->folderCache:Lmiui/cache/DataCache;

    return-void
.end method


# virtual methods
.method protected buildFileInfo(Ljava/lang/String;Lmiui/cache/FolderCache$FolderInfo;)Lmiui/cache/FolderCache$FileInfo;
    .locals 4
    .parameter "filePath"
    .parameter "folderInfo"

    .prologue
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, file:Ljava/io/File;
    const/4 v1, 0x0

    .local v1, fileInfo:Lmiui/cache/FolderCache$FileInfo;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lmiui/cache/FolderCache;->newFileInfo()Lmiui/cache/FolderCache$FileInfo;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lmiui/cache/FolderCache$FileInfo;->name:Ljava/lang/String;

    iput-object p1, v1, Lmiui/cache/FolderCache$FileInfo;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, v1, Lmiui/cache/FolderCache$FileInfo;->modifiedTime:J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, v1, Lmiui/cache/FolderCache$FileInfo;->length:J

    :cond_0
    return-object v1
.end method

.method protected buildFolderInfo(Ljava/lang/String;)Lmiui/cache/FolderCache$FolderInfo;
    .locals 8
    .parameter "folderPath"

    .prologue
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v3, folder:Ljava/io/File;
    const/4 v4, 0x0

    .local v4, folderInfo:Lmiui/cache/FolderCache$FolderInfo;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lmiui/cache/FolderCache;->newFolderInfo()Lmiui/cache/FolderCache$FolderInfo;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lmiui/cache/FolderCache$FolderInfo;->name:Ljava/lang/String;

    iput-object p1, v4, Lmiui/cache/FolderCache$FolderInfo;->path:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    iput-wide v6, v4, Lmiui/cache/FolderCache$FolderInfo;->modifiedTime:J

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .local v2, files:[Ljava/lang/String;
    if-nez v2, :cond_1

    const/4 v6, 0x0

    :goto_0
    iput v6, v4, Lmiui/cache/FolderCache$FolderInfo;->filesCount:I

    new-instance v6, Ljava/util/HashMap;

    iget v7, v4, Lmiui/cache/FolderCache$FolderInfo;->filesCount:I

    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(I)V

    iput-object v6, v4, Lmiui/cache/FolderCache$FolderInfo;->files:Ljava/util/Map;

    if-eqz v2, :cond_2

    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v6, v2

    if-ge v5, v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, filePath:Ljava/lang/String;
    invoke-virtual {p0, v1, v4}, Lmiui/cache/FolderCache;->buildFileInfo(Ljava/lang/String;Lmiui/cache/FolderCache$FolderInfo;)Lmiui/cache/FolderCache$FileInfo;

    move-result-object v0

    .local v0, fileInfo:Lmiui/cache/FolderCache$FileInfo;
    if-eqz v0, :cond_0

    iget-object v6, v4, Lmiui/cache/FolderCache$FolderInfo;->files:Ljava/util/Map;

    invoke-virtual {p0, v1, v4}, Lmiui/cache/FolderCache;->buildFileInfo(Ljava/lang/String;Lmiui/cache/FolderCache$FolderInfo;)Lmiui/cache/FolderCache$FileInfo;

    move-result-object v7

    invoke-interface {v6, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v0           #fileInfo:Lmiui/cache/FolderCache$FileInfo;
    .end local v1           #filePath:Ljava/lang/String;
    .end local v5           #i:I
    :cond_1
    array-length v6, v2

    goto :goto_0

    .end local v2           #files:[Ljava/lang/String;
    :cond_2
    return-object v4
.end method

.method public get(Ljava/lang/String;)Lmiui/cache/FolderCache$FolderInfo;
    .locals 2
    .parameter "folderPath"

    .prologue
    invoke-static {p1}, Lmiui/os/ExtraFileUtils;->standardizeFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lmiui/cache/FolderCache;->folderCache:Lmiui/cache/DataCache;

    invoke-virtual {v1, p1}, Lmiui/cache/DataCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/cache/FolderCache$FolderInfo;

    .local v0, folderInfo:Lmiui/cache/FolderCache$FolderInfo;
    invoke-virtual {p0, v0}, Lmiui/cache/FolderCache;->needRefresh(Lmiui/cache/FolderCache$FolderInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, v0}, Lmiui/cache/FolderCache;->needRefresh(Lmiui/cache/FolderCache$FolderInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lmiui/cache/FolderCache;->buildFolderInfo(Ljava/lang/String;)Lmiui/cache/FolderCache$FolderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmiui/cache/FolderCache;->folderCache:Lmiui/cache/DataCache;

    invoke-virtual {v1, p1, v0}, Lmiui/cache/DataCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit p0

    :cond_1
    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isCacheDirty(Ljava/lang/String;)Z
    .locals 2
    .parameter "folderPath"

    .prologue
    invoke-static {p1}, Lmiui/os/ExtraFileUtils;->standardizeFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lmiui/cache/FolderCache;->folderCache:Lmiui/cache/DataCache;

    invoke-virtual {v1, p1}, Lmiui/cache/DataCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/cache/FolderCache$FolderInfo;

    .local v0, folderInfo:Lmiui/cache/FolderCache$FolderInfo;
    invoke-virtual {p0, v0}, Lmiui/cache/FolderCache;->needRefresh(Lmiui/cache/FolderCache$FolderInfo;)Z

    move-result v1

    return v1
.end method

.method protected needRefresh(Lmiui/cache/FolderCache$FolderInfo;)Z
    .locals 13
    .parameter "folderInfo"

    .prologue
    if-eqz p1, :cond_7

    new-instance v5, Ljava/io/File;

    iget-object v9, p1, Lmiui/cache/FolderCache$FolderInfo;->path:Ljava/lang/String;

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v5, folder:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    .local v7, modifiedTime:J
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .local v3, files:[Ljava/lang/String;
    if-nez v3, :cond_1

    const/4 v4, 0x0

    .local v4, filesCount:I
    :goto_0
    iget-wide v9, p1, Lmiui/cache/FolderCache$FolderInfo;->modifiedTime:J

    cmp-long v9, v9, v7

    if-nez v9, :cond_0

    iget v9, p1, Lmiui/cache/FolderCache$FolderInfo;->filesCount:I

    if-eq v9, v4, :cond_2

    :cond_0
    const/4 v9, 0x1

    .end local v3           #files:[Ljava/lang/String;
    .end local v4           #filesCount:I
    .end local v5           #folder:Ljava/io/File;
    .end local v7           #modifiedTime:J
    :goto_1
    return v9

    .restart local v3       #files:[Ljava/lang/String;
    .restart local v5       #folder:Ljava/io/File;
    .restart local v7       #modifiedTime:J
    :cond_1
    array-length v4, v3

    goto :goto_0

    .restart local v4       #filesCount:I
    :cond_2
    if-eqz v3, :cond_7

    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    array-length v9, v3

    if-ge v6, v9, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p1, Lmiui/cache/FolderCache$FolderInfo;->path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v3, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, filePath:Ljava/lang/String;
    iget-object v9, p1, Lmiui/cache/FolderCache$FolderInfo;->files:Ljava/util/Map;

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/cache/FolderCache$FileInfo;

    .local v1, fileInfo:Lmiui/cache/FolderCache$FileInfo;
    if-nez v1, :cond_3

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, file:Ljava/io/File;
    iget-wide v9, v1, Lmiui/cache/FolderCache$FileInfo;->modifiedTime:J

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-nez v9, :cond_4

    iget-wide v9, v1, Lmiui/cache/FolderCache$FileInfo;->length:J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-eqz v9, :cond_5

    :cond_4
    const/4 v9, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .end local v0           #file:Ljava/io/File;
    .end local v1           #fileInfo:Lmiui/cache/FolderCache$FileInfo;
    .end local v2           #filePath:Ljava/lang/String;
    :cond_6
    const/4 v9, 0x0

    goto :goto_1

    .end local v3           #files:[Ljava/lang/String;
    .end local v4           #filesCount:I
    .end local v5           #folder:Ljava/io/File;
    .end local v6           #i:I
    .end local v7           #modifiedTime:J
    :cond_7
    const/4 v9, 0x1

    goto :goto_1
.end method

.method protected newFileInfo()Lmiui/cache/FolderCache$FileInfo;
    .locals 1

    .prologue
    new-instance v0, Lmiui/cache/FolderCache$FileInfo;

    invoke-direct {v0}, Lmiui/cache/FolderCache$FileInfo;-><init>()V

    return-object v0
.end method

.method protected newFolderInfo()Lmiui/cache/FolderCache$FolderInfo;
    .locals 1

    .prologue
    new-instance v0, Lmiui/cache/FolderCache$FolderInfo;

    invoke-direct {v0}, Lmiui/cache/FolderCache$FolderInfo;-><init>()V

    return-object v0
.end method
