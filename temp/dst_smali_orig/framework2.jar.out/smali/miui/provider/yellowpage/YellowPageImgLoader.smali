.class public Lmiui/provider/yellowpage/YellowPageImgLoader;
.super Ljava/lang/Object;
.source "YellowPageImgLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "YellowPageImgLoader"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelLoading(Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 1
    .parameter "context"
    .parameter "view"

    .prologue
    invoke-static {p0}, Lmiui/provider/yellowpage/utils/ImageLoader;->getInstance(Landroid/content/Context;)Lmiui/provider/yellowpage/utils/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/provider/yellowpage/utils/ImageLoader;->cancelRequest(Landroid/widget/ImageView;)V

    return-void
.end method

.method private static getPhotoNameByYid(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "yid"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/yellowpage/YellowPageContract$YellowPage;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "content"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "yid = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .local v7, name:Ljava/lang/String;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/provider/yellowpage/model/YellowPage;->fromJson(Ljava/lang/String;)Lmiui/provider/yellowpage/model/YellowPage;

    move-result-object v8

    .local v8, yellowPage:Lmiui/provider/yellowpage/model/YellowPage;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lmiui/provider/yellowpage/model/YellowPage;->getPhotoName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .end local v8           #yellowPage:Lmiui/provider/yellowpage/model/YellowPage;
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v7

    :cond_2
    :try_start_1
    const-string v0, "YellowPageImgLoader"

    const-string v1, "The yid has no photos "

    invoke-static {v0, v1}, Lmiui/provider/yellowpage/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getThumbnailName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/yellowpage/YellowPageContract$PhoneLookup;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v4, "thumbnail_url"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .local v7, name:Ljava/lang/String;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v7

    :cond_1
    :try_start_1
    const-string v0, "YellowPageImgLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The number has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " thumbnails "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/provider/yellowpage/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getThumbnailNameByYid(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "yid"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/yellowpage/YellowPageContract$YellowPage;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "content"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "yid = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .local v7, name:Ljava/lang/String;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/provider/yellowpage/model/YellowPage;->fromJson(Ljava/lang/String;)Lmiui/provider/yellowpage/model/YellowPage;

    move-result-object v8

    .local v8, yellowPage:Lmiui/provider/yellowpage/model/YellowPage;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lmiui/provider/yellowpage/model/YellowPage;->getThumbnailName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .end local v8           #yellowPage:Lmiui/provider/yellowpage/model/YellowPage;
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v7

    :cond_2
    :try_start_1
    const-string v0, "YellowPageImgLoader"

    const-string v1, "The yid has no thumbnails "

    invoke-static {v0, v1}, Lmiui/provider/yellowpage/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static loadPhoto(Landroid/content/Context;JZ)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "context"
    .parameter "yid"
    .parameter "fetchRemote"

    .prologue
    invoke-static {p0, p1, p2}, Lmiui/provider/yellowpage/YellowPageImgLoader;->getPhotoNameByYid(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .local v1, name:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v0, Lmiui/provider/yellowpage/model/Image;

    invoke-static {p0, v1}, Lmiui/provider/yellowpage/request/HostManager;->getYellowPagePhoto(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lmiui/provider/yellowpage/model/Image;-><init>(Ljava/lang/String;)V

    .local v0, image:Lmiui/provider/yellowpage/model/Image;
    if-eqz p3, :cond_1

    invoke-static {p0}, Lmiui/provider/ExtraSettings$System;->isYellowPagePhotoDownloadWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lmiui/provider/yellowpage/utils/Network;->isWifiConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 p3, 0x1

    :goto_0
    invoke-static {p0}, Lmiui/provider/yellowpage/utils/ImageLoader;->getInstance(Landroid/content/Context;)Lmiui/provider/yellowpage/utils/ImageLoader;

    move-result-object v2

    invoke-virtual {v2, v0, p3}, Lmiui/provider/yellowpage/utils/ImageLoader;->syncLoadImage(Lmiui/provider/yellowpage/model/Image;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .end local v0           #image:Lmiui/provider/yellowpage/model/Image;
    :goto_1
    return-object v2

    .restart local v0       #image:Lmiui/provider/yellowpage/model/Image;
    :cond_1
    const/4 p3, 0x0

    goto :goto_0

    .end local v0           #image:Lmiui/provider/yellowpage/model/Image;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static loadThumbnail(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "context"
    .parameter "number"
    .parameter "fetchRemote"

    .prologue
    invoke-static {p0, p1}, Lmiui/provider/yellowpage/YellowPageImgLoader;->getThumbnailName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, name:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Lmiui/provider/yellowpage/model/Image;

    invoke-static {p0, v1}, Lmiui/provider/yellowpage/request/HostManager;->getYellowPageThumbnail(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lmiui/provider/yellowpage/model/Image;-><init>(Ljava/lang/String;)V

    .local v0, image:Lmiui/provider/yellowpage/model/Image;
    invoke-static {p0}, Lmiui/provider/yellowpage/utils/ImageLoader;->getInstance(Landroid/content/Context;)Lmiui/provider/yellowpage/utils/ImageLoader;

    move-result-object v2

    invoke-virtual {v2, v0, p2}, Lmiui/provider/yellowpage/utils/ImageLoader;->syncLoadImage(Lmiui/provider/yellowpage/model/Image;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .end local v0           #image:Lmiui/provider/yellowpage/model/Image;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static loadThumbnail(Landroid/content/Context;Landroid/widget/ImageView;Lmiui/provider/yellowpage/model/Image$ImageProcessor;JI)V
    .locals 3
    .parameter "context"
    .parameter "view"
    .parameter "processor"
    .parameter "yid"
    .parameter "defaultThumbnailRes"

    .prologue
    invoke-static {p0, p3, p4}, Lmiui/provider/yellowpage/YellowPageImgLoader;->getThumbnailNameByYid(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .local v1, name:Ljava/lang/String;
    new-instance v0, Lmiui/provider/yellowpage/model/Image;

    invoke-static {p0, v1}, Lmiui/provider/yellowpage/request/HostManager;->getYellowPageThumbnail(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lmiui/provider/yellowpage/model/Image;-><init>(Ljava/lang/String;)V

    .local v0, image:Lmiui/provider/yellowpage/model/Image;
    invoke-virtual {v0, p2}, Lmiui/provider/yellowpage/model/Image;->setImageProcessor(Lmiui/provider/yellowpage/model/Image$ImageProcessor;)V

    invoke-static {p0}, Lmiui/provider/yellowpage/utils/ImageLoader;->getInstance(Landroid/content/Context;)Lmiui/provider/yellowpage/utils/ImageLoader;

    move-result-object v2

    invoke-virtual {v2, p1, v0, p5}, Lmiui/provider/yellowpage/utils/ImageLoader;->loadImage(Landroid/widget/ImageView;Lmiui/provider/yellowpage/model/Image;I)V

    return-void
.end method

.method public static loadThumbnail(Landroid/content/Context;Landroid/widget/ImageView;Lmiui/provider/yellowpage/model/Image$ImageProcessor;Ljava/lang/String;I)V
    .locals 3
    .parameter "context"
    .parameter "view"
    .parameter "processor"
    .parameter "number"
    .parameter "defaultThumbnailRes"

    .prologue
    invoke-static {p0, p3}, Lmiui/provider/yellowpage/YellowPageImgLoader;->getThumbnailName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, name:Ljava/lang/String;
    new-instance v0, Lmiui/provider/yellowpage/model/Image;

    invoke-static {p0, v1}, Lmiui/provider/yellowpage/request/HostManager;->getYellowPageThumbnail(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lmiui/provider/yellowpage/model/Image;-><init>(Ljava/lang/String;)V

    .local v0, image:Lmiui/provider/yellowpage/model/Image;
    invoke-virtual {v0, p2}, Lmiui/provider/yellowpage/model/Image;->setImageProcessor(Lmiui/provider/yellowpage/model/Image$ImageProcessor;)V

    invoke-static {p0}, Lmiui/provider/yellowpage/utils/ImageLoader;->getInstance(Landroid/content/Context;)Lmiui/provider/yellowpage/utils/ImageLoader;

    move-result-object v2

    invoke-virtual {v2, p1, v0, p4}, Lmiui/provider/yellowpage/utils/ImageLoader;->loadImage(Landroid/widget/ImageView;Lmiui/provider/yellowpage/model/Image;I)V

    return-void
.end method

.method public static pauseLoading(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    invoke-static {p0}, Lmiui/provider/yellowpage/utils/ImageLoader;->getInstance(Landroid/content/Context;)Lmiui/provider/yellowpage/utils/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/provider/yellowpage/utils/ImageLoader;->pauseLoading()V

    return-void
.end method

.method public static resumeLoading(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    invoke-static {p0}, Lmiui/provider/yellowpage/utils/ImageLoader;->getInstance(Landroid/content/Context;)Lmiui/provider/yellowpage/utils/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/provider/yellowpage/utils/ImageLoader;->resumeLoading()V

    return-void
.end method
