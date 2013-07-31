.class public Lmiui/maml/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ResourceManager$BitmapInfo;
    }
.end annotation


# static fields
.field private static final DEFAULT_DENSITY:I = 0xf0

.field private static final DEFAULT_SCREEN_WIDTH:I = 0x1e0

.field private static final DENSITY_XHIGH_R:I = 0x168

.field private static final DENSITY_XXHIGH_R:I = 0x21c

.field private static final LOG_TAG:Ljava/lang/String; = "ResourceManager"


# instance fields
.field protected final mBitmaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/maml/ResourceManager$BitmapInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraResourceDensity:I

.field private mExtraResourceFolder:Ljava/lang/String;

.field private mExtraResourceScreenWidth:I

.field private final mFailedBitmaps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaskBitmaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mNinePatches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/NinePatch;",
            ">;"
        }
    .end annotation
.end field

.field private mResourceDensity:I

.field private final mResourceLoader:Lmiui/maml/ResourceLoader;

.field private mTargetDensity:I


# direct methods
.method public constructor <init>(Lmiui/maml/ResourceLoader;)V
    .locals 1
    .parameter "resourceLoader"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/ResourceManager;->mBitmaps:Ljava/util/HashMap;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/ResourceManager;->mNinePatches:Ljava/util/HashMap;

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiui/maml/ResourceManager;->mFailedBitmaps:Ljava/util/HashSet;

    .line 60
    iput-object p1, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    .line 61
    return-void
.end method

.method private getBitmapInfo(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;
    .locals 8
    .parameter "src"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 153
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v6

    .line 210
    :goto_0
    return-object v1

    .line 157
    :cond_0
    const/4 v1, 0x0

    .line 158
    .local v1, info:Lmiui/maml/ResourceManager$BitmapInfo;
    iget-object v7, p0, Lmiui/maml/ResourceManager;->mBitmaps:Ljava/util/HashMap;

    monitor-enter v7

    .line 159
    :try_start_0
    iget-object v4, p0, Lmiui/maml/ResourceManager;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lmiui/maml/ResourceManager$BitmapInfo;

    move-object v1, v0

    .line 160
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    if-eqz v1, :cond_1

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lmiui/maml/ResourceManager$BitmapInfo;->mLastVisitTime:J

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 166
    :cond_1
    iget-object v4, p0, Lmiui/maml/ResourceManager;->mFailedBitmaps:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v1, v6

    .line 167
    goto :goto_0

    .line 170
    :cond_2
    const-string v4, "ResourceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "load image "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v3, 0x1

    .line 173
    .local v3, useDefaultResource:Z
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 174
    .local v2, opts:Landroid/graphics/BitmapFactory$Options;
    const-string v4, ".9.png"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v5

    :goto_1
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 175
    iget v4, p0, Lmiui/maml/ResourceManager;->mTargetDensity:I

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 176
    iget v4, p0, Lmiui/maml/ResourceManager;->mExtraResourceDensity:I

    if-gtz v4, :cond_3

    iget v4, p0, Lmiui/maml/ResourceManager;->mExtraResourceScreenWidth:I

    if-lez v4, :cond_3

    .line 177
    iget v4, p0, Lmiui/maml/ResourceManager;->mExtraResourceScreenWidth:I

    mul-int/lit16 v4, v4, 0xf0

    div-int/lit16 v4, v4, 0x1e0

    iput v4, p0, Lmiui/maml/ResourceManager;->mExtraResourceDensity:I

    .line 180
    :cond_3
    iget v4, p0, Lmiui/maml/ResourceManager;->mExtraResourceDensity:I

    if-lez v4, :cond_4

    .line 181
    const-string v4, "ResourceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "try to load resource from extra resource: sw:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lmiui/maml/ResourceManager;->mExtraResourceScreenWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  den:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lmiui/maml/ResourceManager;->mExtraResourceDensity:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget v4, p0, Lmiui/maml/ResourceManager;->mExtraResourceDensity:I

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 184
    iget-object v4, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lmiui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v2}, Lmiui/maml/ResourceLoader;->getBitmapInfo(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v1

    .line 185
    if-eqz v1, :cond_4

    .line 186
    const/4 v3, 0x0

    .line 190
    :cond_4
    if-nez v1, :cond_5

    .line 191
    iget v4, p0, Lmiui/maml/ResourceManager;->mResourceDensity:I

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 192
    iget-object v4, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v4, p1, v2}, Lmiui/maml/ResourceLoader;->getBitmapInfo(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v1

    .line 195
    :cond_5
    if-eqz v1, :cond_8

    .line 196
    if-nez v3, :cond_6

    .line 197
    const-string v4, "ResourceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "load image from extra resource: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lmiui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_6
    iget-object v4, v1, Lmiui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lmiui/maml/ResourceManager$BitmapInfo;->mLastVisitTime:J

    .line 202
    iget-object v5, p0, Lmiui/maml/ResourceManager;->mBitmaps:Ljava/util/HashMap;

    monitor-enter v5

    .line 203
    :try_start_2
    iget-object v4, p0, Lmiui/maml/ResourceManager;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    monitor-exit v5

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 174
    :cond_7
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 206
    :cond_8
    iget-object v4, p0, Lmiui/maml/ResourceManager;->mFailedBitmaps:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 207
    const-string v4, "ResourceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to load image: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static translateDensity(I)I
    .locals 1
    .parameter "density"

    .prologue
    .line 233
    const/16 v0, 0x140

    if-ne p0, v0, :cond_1

    .line 234
    const/16 p0, 0x168

    .line 238
    .end local p0
    :cond_0
    :goto_0
    return p0

    .line 235
    .restart local p0
    :cond_1
    const/16 v0, 0x1e0

    if-ne p0, v0, :cond_0

    .line 236
    const/16 p0, 0x21c

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 136
    iget-object v2, p0, Lmiui/maml/ResourceManager;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/ResourceManager$BitmapInfo;

    .line 137
    .local v0, bi:Lmiui/maml/ResourceManager$BitmapInfo;
    iget-object v2, v0, Lmiui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 138
    iget-object v2, v0, Lmiui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 141
    .end local v0           #bi:Lmiui/maml/ResourceManager$BitmapInfo;
    :cond_1
    iget-object v2, p0, Lmiui/maml/ResourceManager;->mMaskBitmaps:Ljava/util/HashMap;

    if-eqz v2, :cond_3

    .line 142
    iget-object v2, p0, Lmiui/maml/ResourceManager;->mMaskBitmaps:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 143
    .local v0, bi:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 145
    .end local v0           #bi:Landroid/graphics/Bitmap;
    :cond_2
    iget-object v2, p0, Lmiui/maml/ResourceManager;->mMaskBitmaps:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 148
    :cond_3
    iget-object v2, p0, Lmiui/maml/ResourceManager;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 149
    iget-object v2, p0, Lmiui/maml/ResourceManager;->mNinePatches:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 150
    return-void
.end method

.method public finish(Z)V
    .locals 1
    .parameter "keepResource"

    .prologue
    .line 248
    if-nez p1, :cond_0

    .line 249
    invoke-virtual {p0}, Lmiui/maml/ResourceManager;->clear()V

    .line 250
    :cond_0
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mFailedBitmaps:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 251
    return-void
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "src"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lmiui/maml/ResourceManager;->getBitmapInfo(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v0

    .line 96
    .local v0, info:Lmiui/maml/ResourceManager$BitmapInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lmiui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "src"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lmiui/maml/ResourceManager;->getBitmapInfo(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v2

    .line 101
    .local v2, info:Lmiui/maml/ResourceManager$BitmapInfo;
    if-eqz v2, :cond_0

    iget-object v4, v2, Lmiui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_1

    .line 102
    :cond_0
    const/4 v3, 0x0

    .line 116
    :goto_0
    return-object v3

    .line 104
    :cond_1
    iget-object v0, v2, Lmiui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 105
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v4

    if-eqz v4, :cond_2

    .line 109
    new-instance v3, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v4

    iget-object v5, v2, Lmiui/maml/ResourceManager$BitmapInfo;->mPadding:Landroid/graphics/Rect;

    invoke-direct {v3, v0, v4, v5, p1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .line 110
    .local v3, ninePatchDrawable:Landroid/graphics/drawable/NinePatchDrawable;
    iget v4, p0, Lmiui/maml/ResourceManager;->mTargetDensity:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/NinePatchDrawable;->setTargetDensity(I)V

    goto :goto_0

    .line 114
    .end local v3           #ninePatchDrawable:Landroid/graphics/drawable/NinePatchDrawable;
    :cond_2
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 115
    .local v1, d:Landroid/graphics/drawable/BitmapDrawable;
    iget v4, p0, Lmiui/maml/ResourceManager;->mTargetDensity:I

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(I)V

    move-object v3, v1

    .line 116
    goto :goto_0
.end method

.method public getFile(Ljava/lang/String;)Landroid/os/MemoryFile;
    .locals 1
    .parameter "src"

    .prologue
    .line 91
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v0, p1}, Lmiui/maml/ResourceLoader;->getFile(Ljava/lang/String;)Landroid/os/MemoryFile;

    move-result-object v0

    return-object v0
.end method

.method public final getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter "path"

    .prologue
    .line 258
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v0, p1}, Lmiui/maml/ResourceLoader;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .locals 1
    .parameter "path"
    .parameter "size"

    .prologue
    .line 262
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/ResourceLoader;->getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getManifestRoot()Lorg/w3c/dom/Element;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v0}, Lmiui/maml/ResourceLoader;->getManifestRoot()Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public getMaskBufferBitmap(IILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "width"
    .parameter "height"
    .parameter "key"

    .prologue
    .line 68
    iget-object v3, p0, Lmiui/maml/ResourceManager;->mMaskBitmaps:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 69
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lmiui/maml/ResourceManager;->mMaskBitmaps:Ljava/util/HashMap;

    .line 72
    :cond_0
    iget-object v3, p0, Lmiui/maml/ResourceManager;->mMaskBitmaps:Ljava/util/HashMap;

    invoke-virtual {v3, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 73
    .local v1, bm:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-lt v3, p2, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ge v3, p1, :cond_3

    .line 74
    :cond_1
    if-eqz v1, :cond_2

    .line 75
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 76
    .local v2, bw:I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 77
    .local v0, bh:I
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 78
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 79
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 82
    .end local v0           #bh:I
    .end local v2           #bw:I
    :cond_2
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 83
    iget v3, p0, Lmiui/maml/ResourceManager;->mResourceDensity:I

    invoke-virtual {v1, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 84
    iget-object v3, p0, Lmiui/maml/ResourceManager;->mMaskBitmaps:Ljava/util/HashMap;

    invoke-virtual {v3, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_3
    return-object v1
.end method

.method public getNinePatch(Ljava/lang/String;)Landroid/graphics/NinePatch;
    .locals 4
    .parameter "src"

    .prologue
    .line 120
    iget-object v2, p0, Lmiui/maml/ResourceManager;->mNinePatches:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/NinePatch;

    .line 121
    .local v1, ret:Landroid/graphics/NinePatch;
    if-nez v1, :cond_0

    .line 122
    invoke-virtual {p0, p1}, Lmiui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 123
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    if-eqz v2, :cond_0

    .line 124
    new-instance v1, Landroid/graphics/NinePatch;

    .end local v1           #ret:Landroid/graphics/NinePatch;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    .line 125
    .restart local v1       #ret:Landroid/graphics/NinePatch;
    iget-object v2, p0, Lmiui/maml/ResourceManager;->mNinePatches:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_0
    return-object v1
.end method

.method public getPathForLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "file"

    .prologue
    .line 266
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v0, p1}, Lmiui/maml/ResourceLoader;->getPathForLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 242
    return-void
.end method

.method public final resourceExists(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 254
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v0, p1}, Lmiui/maml/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method public setExtraResourceDensity(I)V
    .locals 2
    .parameter "den"

    .prologue
    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "den"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    .line 228
    invoke-static {p1}, Lmiui/maml/ResourceManager;->translateDensity(I)I

    move-result v0

    iput v0, p0, Lmiui/maml/ResourceManager;->mExtraResourceDensity:I

    .line 229
    return-void
.end method

.method public setExtraResourceScreenWidth(I)V
    .locals 2
    .parameter "sw"

    .prologue
    .line 222
    iput p1, p0, Lmiui/maml/ResourceManager;->mExtraResourceScreenWidth:I

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setResourceDensity(I)V
    .locals 0
    .parameter "density"

    .prologue
    .line 214
    iput p1, p0, Lmiui/maml/ResourceManager;->mResourceDensity:I

    .line 215
    return-void
.end method

.method public setTargetDensity(I)V
    .locals 0
    .parameter "density"

    .prologue
    .line 218
    iput p1, p0, Lmiui/maml/ResourceManager;->mTargetDensity:I

    .line 219
    return-void
.end method
