.class public Lmiui/provider/yellowpage/utils/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/yellowpage/utils/ImageLoader$1;,
        Lmiui/provider/yellowpage/utils/ImageLoader$LoadImageRunnable;,
        Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;
    }
.end annotation


# static fields
.field private static final BITMAP_CACHE_SIZE:I = 0xa00000

.field private static final MESSAGE_REQUEST_LOADED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ImageLoader"

.field private static final THREAD_POOL_COUNT:I = 0x6

.field private static sLoader:Lmiui/provider/yellowpage/utils/ImageLoader;


# instance fields
.field private final mBitmapCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Lmiui/provider/yellowpage/model/Image;",
            "Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmapCacheLock:Ljava/lang/Byte;

.field private mContext:Landroid/content/Context;

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mLoadingRequest:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/widget/ImageView;",
            "Lmiui/provider/yellowpage/model/Image;",
            ">;"
        }
    .end annotation
.end field

.field private mMainThreadHandler:Landroid/os/Handler;

.field private volatile mPauseLoading:Z

.field private final mPendingRequests:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/Byte;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    iput-object v0, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mBitmapCacheLock:Ljava/lang/Byte;

    .line 80
    new-instance v0, Landroid/util/LruCache;

    const/high16 v1, 0xa0

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mBitmapCache:Landroid/util/LruCache;

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mPendingRequests:Ljava/util/HashSet;

    .line 83
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mLoadingRequest:Ljava/util/concurrent/ConcurrentHashMap;

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mMainThreadHandler:Landroid/os/Handler;

    .line 85
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 86
    iput-object p1, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mContext:Landroid/content/Context;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lmiui/provider/yellowpage/utils/ImageLoader;)Ljava/lang/Byte;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mBitmapCacheLock:Ljava/lang/Byte;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/provider/yellowpage/utils/ImageLoader;)Landroid/util/LruCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mBitmapCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/provider/yellowpage/utils/ImageLoader;Lmiui/provider/yellowpage/model/Image;Z)[B
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lmiui/provider/yellowpage/utils/ImageLoader;->loadImage(Lmiui/provider/yellowpage/model/Image;Z)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lmiui/provider/yellowpage/utils/ImageLoader;Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lmiui/provider/yellowpage/utils/ImageLoader;->inflateBitmap(Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;)V

    return-void
.end method

.method static synthetic access$500(Lmiui/provider/yellowpage/utils/ImageLoader;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private bindDefaultImage(Landroid/widget/ImageView;Lmiui/provider/yellowpage/model/Image;Landroid/graphics/Bitmap;I)V
    .locals 1
    .parameter "view"
    .parameter "image"
    .parameter "defaultBitmap"
    .parameter "defaultResId"

    .prologue
    .line 362
    if-eqz p3, :cond_0

    .line 363
    invoke-virtual {p2, p3}, Lmiui/provider/yellowpage/model/Image;->proccessImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 370
    :goto_0
    return-void

    .line 364
    :cond_0
    if-eqz p4, :cond_1

    .line 365
    iget-object v0, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmiui/provider/yellowpage/model/Image;->proccessImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 368
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private bindImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lmiui/provider/yellowpage/model/Image;)V
    .locals 1
    .parameter "view"
    .parameter "bitmap"
    .parameter "image"

    .prologue
    .line 355
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 356
    invoke-virtual {p3, p2}, Lmiui/provider/yellowpage/model/Image;->proccessImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 358
    :cond_0
    return-void
.end method

.method private calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 7
    .parameter "options"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    .line 206
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 207
    .local v0, height:I
    iget v3, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 208
    .local v3, width:I
    const/4 v2, 0x1

    .line 210
    .local v2, inSampleSize:I
    if-gt v0, p3, :cond_0

    if-le v3, p2, :cond_1

    .line 214
    :cond_0
    int-to-float v5, v0

    int-to-float v6, p3

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 215
    .local v1, heightRatio:I
    int-to-float v5, v3

    int-to-float v6, p2

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 221
    .local v4, widthRatio:I
    if-ge v1, v4, :cond_2

    move v2, v1

    .line 224
    .end local v1           #heightRatio:I
    .end local v4           #widthRatio:I
    :cond_1
    :goto_0
    return v2

    .restart local v1       #heightRatio:I
    .restart local v4       #widthRatio:I
    :cond_2
    move v2, v4

    .line 221
    goto :goto_0
.end method

.method private decodeBitmap([B)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "bytes"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 184
    if-eqz p1, :cond_0

    array-length v2, p1

    if-lez v2, :cond_0

    .line 186
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 187
    .local v1, ops:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v5, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 188
    array-length v2, p1

    invoke-static {p1, v4, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 191
    iget-object v2, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lmiui/provider/yellowpage/utils/Device;->getDisplayWidth(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lmiui/provider/yellowpage/utils/Device;->getDisplayHeight(Landroid/content/Context;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lmiui/provider/yellowpage/utils/ImageLoader;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 194
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 195
    iput-boolean v5, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 196
    array-length v2, p1

    invoke-static {p1, v4, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 200
    .end local v1           #ops:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lmiui/provider/yellowpage/utils/ImageLoader;
    .locals 2
    .parameter "context"

    .prologue
    .line 73
    const-class v1, Lmiui/provider/yellowpage/utils/ImageLoader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lmiui/provider/yellowpage/utils/ImageLoader;->sLoader:Lmiui/provider/yellowpage/utils/ImageLoader;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lmiui/provider/yellowpage/utils/ImageLoader;

    invoke-direct {v0, p0}, Lmiui/provider/yellowpage/utils/ImageLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmiui/provider/yellowpage/utils/ImageLoader;->sLoader:Lmiui/provider/yellowpage/utils/ImageLoader;

    .line 76
    :cond_0
    sget-object v0, Lmiui/provider/yellowpage/utils/ImageLoader;->sLoader:Lmiui/provider/yellowpage/utils/ImageLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private inflateBitmap(Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;)V
    .locals 5
    .parameter "holder"

    .prologue
    const/4 v4, 0x0

    .line 167
    :try_start_0
    iget-object v2, p1, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mBytes:[B

    if-eqz v2, :cond_1

    .line 168
    iget-object v2, p1, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mBytes:[B

    invoke-direct {p0, v2}, Lmiui/provider/yellowpage/utils/ImageLoader;->decodeBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 169
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p1, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mBitmapRef:Ljava/lang/ref/Reference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    iget-object v2, p1, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mBitmapRef:Ljava/lang/ref/Reference;

    if-nez v2, :cond_0

    .line 178
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    :goto_1
    iput-object v2, p1, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mBitmapRef:Ljava/lang/ref/Reference;

    .line 181
    :cond_0
    return-void

    .line 172
    :cond_1
    :try_start_1
    const-string v2, "ImageLoader"

    const-string v3, "The holder\'s bytes should not be null"

    invoke-static {v2, v3}, Lmiui/provider/yellowpage/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v1

    .line 175
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    iget-object v2, p1, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mBitmapRef:Ljava/lang/ref/Reference;

    if-nez v2, :cond_0

    .line 178
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    .line 177
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v2

    iget-object v3, p1, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mBitmapRef:Ljava/lang/ref/Reference;

    if-nez v3, :cond_2

    .line 178
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p1, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mBitmapRef:Ljava/lang/ref/Reference;

    .line 177
    :cond_2
    throw v2
.end method

.method private loadCachedPhoto(Landroid/widget/ImageView;Lmiui/provider/yellowpage/model/Image;)I
    .locals 5
    .parameter "view"
    .parameter "image"

    .prologue
    const/4 v3, 0x1

    .line 148
    iget-object v4, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mBitmapCacheLock:Ljava/lang/Byte;

    monitor-enter v4

    .line 149
    const/4 v1, 0x0

    .line 150
    .local v1, holder:Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;
    :try_start_0
    iget-object v2, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v2, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;

    move-object v1, v0

    .line 151
    if-eqz v1, :cond_1

    iget v2, v1, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mState:I

    if-ne v2, v3, :cond_1

    .line 152
    iget-object v2, v1, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mBitmapRef:Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 153
    invoke-direct {p0, v1}, Lmiui/provider/yellowpage/utils/ImageLoader;->inflateBitmap(Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;)V

    .line 156
    :cond_0
    iget-object v2, v1, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mBitmapRef:Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v2, p2}, Lmiui/provider/yellowpage/utils/ImageLoader;->bindImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lmiui/provider/yellowpage/model/Image;)V

    .line 157
    monitor-exit v4

    move v2, v3

    .line 162
    :goto_0
    return v2

    .line 158
    :cond_1
    if-eqz v1, :cond_2

    .line 159
    iget v2, v1, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mState:I

    monitor-exit v4

    goto :goto_0

    .line 161
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadImage(Landroid/widget/ImageView;Lmiui/provider/yellowpage/model/Image;Landroid/graphics/Bitmap;I)V
    .locals 3
    .parameter "view"
    .parameter "image"
    .parameter "defaultBitmap"
    .parameter "defaultImageRes"

    .prologue
    .line 105
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lmiui/provider/yellowpage/model/Image;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    invoke-direct {p0, p1, p2}, Lmiui/provider/yellowpage/utils/ImageLoader;->loadCachedPhoto(Landroid/widget/ImageView;Lmiui/provider/yellowpage/model/Image;)I

    move-result v0

    .line 107
    .local v0, loadState:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 108
    iget-object v1, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mPendingRequests:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 109
    iget-object v1, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mLoadingRequest:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .end local v0           #loadState:I
    :cond_0
    :goto_0
    return-void

    .line 114
    .restart local v0       #loadState:I
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/provider/yellowpage/utils/ImageLoader;->bindDefaultImage(Landroid/widget/ImageView;Lmiui/provider/yellowpage/model/Image;Landroid/graphics/Bitmap;I)V

    .line 117
    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 119
    iget-object v1, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mPendingRequests:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-direct {p0, p1}, Lmiui/provider/yellowpage/utils/ImageLoader;->requestLoading(Landroid/widget/ImageView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mPendingRequests:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    .end local v0           #loadState:I
    :cond_2
    const-string v1, "ImageLoader"

    const-string v2, "loadImage: invalid image"

    invoke-static {v1, v2}, Lmiui/provider/yellowpage/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mPendingRequests:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 127
    iget-object v1, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mLoadingRequest:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/provider/yellowpage/utils/ImageLoader;->bindDefaultImage(Landroid/widget/ImageView;Lmiui/provider/yellowpage/model/Image;Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method private loadImage(Lmiui/provider/yellowpage/model/Image;Z)[B
    .locals 13
    .parameter "image"
    .parameter "online"

    .prologue
    .line 373
    const/4 v0, 0x0

    .line 375
    .local v0, afd:Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    iget-object v9, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lmiui/provider/yellowpage/YellowPageContract$ImageLookup;->CONTENT_URI_IMAGE:Landroid/net/Uri;

    invoke-virtual {p1}, Lmiui/provider/yellowpage/model/Image;->getUrl()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lmiui/util/CoderUtils;->encodeSHA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    const-string/jumbo v11, "w"

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 383
    const/4 v7, 0x0

    .line 384
    .local v7, os:Ljava/io/OutputStream;
    const/4 v1, 0x0

    .line 385
    .local v1, bos:Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .line 388
    .local v5, is:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 389
    .end local v1           #bos:Ljava/io/ByteArrayOutputStream;
    .local v2, bos:Ljava/io/ByteArrayOutputStream;
    :try_start_2
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_6

    if-eqz p2, :cond_6

    .line 390
    new-instance v8, Lmiui/provider/yellowpage/request/StreamRequest;

    iget-object v9, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lmiui/provider/yellowpage/model/Image;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lmiui/provider/yellowpage/request/StreamRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 391
    .local v8, rs:Lmiui/provider/yellowpage/request/StreamRequest;
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lmiui/provider/yellowpage/request/StreamRequest;->setDecryptDownloadData(Z)Lmiui/provider/yellowpage/request/Request;

    .line 392
    invoke-virtual {v8, v2}, Lmiui/provider/yellowpage/request/StreamRequest;->requestStream(Ljava/io/OutputStream;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1c

    move-result v9

    if-eqz v9, :cond_3

    .line 393
    const/4 v3, 0x0

    .line 422
    if-eqz v7, :cond_0

    .line 424
    :try_start_3
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_12

    .line 430
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 432
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_13

    .line 438
    :cond_1
    :goto_1
    if-eqz v5, :cond_2

    .line 440
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_14

    .line 446
    .end local v2           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v5           #is:Ljava/io/FileInputStream;
    .end local v7           #os:Ljava/io/OutputStream;
    .end local v8           #rs:Lmiui/provider/yellowpage/request/StreamRequest;
    :cond_2
    :goto_2
    return-object v3

    .line 377
    :catch_0
    move-exception v4

    .line 378
    .local v4, e:Ljava/io/FileNotFoundException;
    const-string v9, "ImageLoader"

    const-string v10, "The yellowpage provider\'s image can not be writted now"

    invoke-static {v9, v10}, Lmiui/provider/yellowpage/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 380
    const/4 v3, 0x0

    goto :goto_2

    .line 396
    .end local v4           #e:Ljava/io/FileNotFoundException;
    .restart local v2       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    .restart local v7       #os:Ljava/io/OutputStream;
    .restart local v8       #rs:Lmiui/provider/yellowpage/request/StreamRequest;
    :cond_3
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 397
    .local v3, buffer:[B
    if-eqz v3, :cond_d

    array-length v9, v3

    if-lez v9, :cond_d

    .line 398
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->createOutputStream()Ljava/io/FileOutputStream;

    move-result-object v7

    .line 399
    invoke-virtual {v7, v3}, Ljava/io/OutputStream;->write([B)V

    .line 400
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1c

    .line 422
    if-eqz v7, :cond_4

    .line 424
    :try_start_7
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_15

    .line 430
    :cond_4
    :goto_3
    if-eqz v2, :cond_5

    .line 432
    :try_start_8
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_16

    .line 438
    :cond_5
    :goto_4
    if-eqz v5, :cond_2

    .line 440
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_2

    .line 441
    :catch_1
    move-exception v4

    .line 442
    .end local v3           #buffer:[B
    .end local v8           #rs:Lmiui/provider/yellowpage/request/StreamRequest;
    .local v4, e:Ljava/io/IOException;
    :goto_5
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 403
    .end local v4           #e:Ljava/io/IOException;
    :cond_6
    :try_start_a
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_d

    .line 404
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v5

    .line 405
    const/16 v9, 0x400

    new-array v3, v9, [B

    .line 406
    .restart local v3       #buffer:[B
    const/4 v6, 0x0

    .line 407
    .local v6, len:I
    :goto_6
    invoke-virtual {v5, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    const/4 v9, -0x1

    if-eq v6, v9, :cond_a

    .line 408
    const/4 v9, 0x0

    invoke-virtual {v2, v3, v9, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1c

    goto :goto_6

    .line 415
    .end local v3           #buffer:[B
    .end local v6           #len:I
    :catch_2
    move-exception v4

    move-object v1, v2

    .line 416
    .end local v2           #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #bos:Ljava/io/ByteArrayOutputStream;
    .local v4, e:Ljava/io/FileNotFoundException;
    :goto_7
    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 422
    if-eqz v7, :cond_7

    .line 424
    :try_start_c
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    .line 430
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :cond_7
    :goto_8
    if-eqz v1, :cond_8

    .line 432
    :try_start_d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c

    .line 438
    :cond_8
    :goto_9
    if-eqz v5, :cond_9

    .line 440
    :try_start_e
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d

    .line 446
    :cond_9
    :goto_a
    const/4 v3, 0x0

    goto :goto_2

    .line 411
    .end local v1           #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #buffer:[B
    .restart local v6       #len:I
    :cond_a
    :try_start_f
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    if-lez v9, :cond_d

    .line 412
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1c

    move-result-object v3

    .line 422
    .end local v3           #buffer:[B
    if-eqz v7, :cond_b

    .line 424
    :try_start_10
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1a

    .line 430
    :cond_b
    :goto_b
    if-eqz v2, :cond_c

    .line 432
    :try_start_11
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1b

    .line 438
    :cond_c
    :goto_c
    if-eqz v5, :cond_2

    .line 440
    :try_start_12
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_3

    goto/16 :goto_2

    .line 441
    :catch_3
    move-exception v4

    goto :goto_5

    .line 422
    .end local v6           #len:I
    :cond_d
    if-eqz v7, :cond_e

    .line 424
    :try_start_13
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_17

    .line 430
    :cond_e
    :goto_d
    if-eqz v2, :cond_f

    .line 432
    :try_start_14
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_18

    .line 438
    :cond_f
    :goto_e
    if-eqz v5, :cond_10

    .line 440
    :try_start_15
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_19

    :cond_10
    :goto_f
    move-object v1, v2

    .line 445
    .end local v2           #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #bos:Ljava/io/ByteArrayOutputStream;
    goto :goto_a

    .line 417
    :catch_4
    move-exception v4

    .line 418
    .local v4, e:Ljava/io/IOException;
    :goto_10
    :try_start_16
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 422
    if-eqz v7, :cond_11

    .line 424
    :try_start_17
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_e

    .line 430
    :cond_11
    :goto_11
    if-eqz v1, :cond_12

    .line 432
    :try_start_18
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_f

    .line 438
    :cond_12
    :goto_12
    if-eqz v5, :cond_9

    .line 440
    :try_start_19
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_5

    goto :goto_a

    .line 441
    :catch_5
    move-exception v4

    .line 442
    :goto_13
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 419
    .end local v4           #e:Ljava/io/IOException;
    :catch_6
    move-exception v4

    .line 420
    .local v4, e:Ljava/lang/Exception;
    :goto_14
    :try_start_1a
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 422
    if-eqz v7, :cond_13

    .line 424
    :try_start_1b
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_10

    .line 430
    .end local v4           #e:Ljava/lang/Exception;
    :cond_13
    :goto_15
    if-eqz v1, :cond_14

    .line 432
    :try_start_1c
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_11

    .line 438
    :cond_14
    :goto_16
    if-eqz v5, :cond_9

    .line 440
    :try_start_1d
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_7

    goto :goto_a

    .line 441
    :catch_7
    move-exception v4

    goto :goto_13

    .line 422
    :catchall_0
    move-exception v9

    :goto_17
    if-eqz v7, :cond_15

    .line 424
    :try_start_1e
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_8

    .line 430
    :cond_15
    :goto_18
    if-eqz v1, :cond_16

    .line 432
    :try_start_1f
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_9

    .line 438
    :cond_16
    :goto_19
    if-eqz v5, :cond_17

    .line 440
    :try_start_20
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_a

    .line 422
    :cond_17
    :goto_1a
    throw v9

    .line 425
    :catch_8
    move-exception v4

    .line 426
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_18

    .line 433
    .end local v4           #e:Ljava/io/IOException;
    :catch_9
    move-exception v4

    .line 434
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19

    .line 441
    .end local v4           #e:Ljava/io/IOException;
    :catch_a
    move-exception v4

    .line 442
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1a

    .line 425
    .local v4, e:Ljava/io/FileNotFoundException;
    :catch_b
    move-exception v4

    .line 426
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    .line 433
    .end local v4           #e:Ljava/io/IOException;
    :catch_c
    move-exception v4

    .line 434
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    .line 441
    .end local v4           #e:Ljava/io/IOException;
    :catch_d
    move-exception v4

    goto :goto_13

    .line 425
    .restart local v4       #e:Ljava/io/IOException;
    :catch_e
    move-exception v4

    .line 426
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11

    .line 433
    :catch_f
    move-exception v4

    .line 434
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12

    .line 425
    .local v4, e:Ljava/lang/Exception;
    :catch_10
    move-exception v4

    .line 426
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15

    .line 433
    .end local v4           #e:Ljava/io/IOException;
    :catch_11
    move-exception v4

    .line 434
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_16

    .line 425
    .end local v1           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v4           #e:Ljava/io/IOException;
    .restart local v2       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v8       #rs:Lmiui/provider/yellowpage/request/StreamRequest;
    :catch_12
    move-exception v4

    .line 426
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 433
    .end local v4           #e:Ljava/io/IOException;
    :catch_13
    move-exception v4

    .line 434
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 441
    .end local v4           #e:Ljava/io/IOException;
    :catch_14
    move-exception v4

    goto/16 :goto_5

    .line 425
    .restart local v3       #buffer:[B
    :catch_15
    move-exception v4

    .line 426
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 433
    .end local v4           #e:Ljava/io/IOException;
    :catch_16
    move-exception v4

    .line 434
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 425
    .end local v3           #buffer:[B
    .end local v4           #e:Ljava/io/IOException;
    .end local v8           #rs:Lmiui/provider/yellowpage/request/StreamRequest;
    :catch_17
    move-exception v4

    .line 426
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_d

    .line 433
    .end local v4           #e:Ljava/io/IOException;
    :catch_18
    move-exception v4

    .line 434
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_e

    .line 441
    .end local v4           #e:Ljava/io/IOException;
    :catch_19
    move-exception v4

    .line 442
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_f

    .line 425
    .end local v4           #e:Ljava/io/IOException;
    .restart local v6       #len:I
    :catch_1a
    move-exception v4

    .line 426
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_b

    .line 433
    .end local v4           #e:Ljava/io/IOException;
    :catch_1b
    move-exception v4

    .line 434
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_c

    .line 422
    .end local v4           #e:Ljava/io/IOException;
    .end local v6           #len:I
    :catchall_1
    move-exception v9

    move-object v1, v2

    .end local v2           #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #bos:Ljava/io/ByteArrayOutputStream;
    goto :goto_17

    .line 419
    .end local v1           #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #bos:Ljava/io/ByteArrayOutputStream;
    :catch_1c
    move-exception v4

    move-object v1, v2

    .end local v2           #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #bos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_14

    .line 417
    .end local v1           #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #bos:Ljava/io/ByteArrayOutputStream;
    :catch_1d
    move-exception v4

    move-object v1, v2

    .end local v2           #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #bos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_10

    .line 415
    :catch_1e
    move-exception v4

    goto/16 :goto_7
.end method

.method private requestLoading(Landroid/widget/ImageView;)Z
    .locals 2
    .parameter "image"

    .prologue
    .line 228
    iget-boolean v0, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mPauseLoading:Z

    if-nez v0, :cond_0

    .line 229
    iget-object v1, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mLoadingRequest:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/provider/yellowpage/model/Image;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v0, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lmiui/provider/yellowpage/utils/ImageLoader$LoadImageRunnable;

    invoke-direct {v1, p0, p1}, Lmiui/provider/yellowpage/utils/ImageLoader$LoadImageRunnable;-><init>(Lmiui/provider/yellowpage/utils/ImageLoader;Landroid/widget/ImageView;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 231
    const/4 v0, 0x1

    .line 233
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelRequest(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "image"

    .prologue
    .line 237
    iget-object v0, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mPendingRequests:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 238
    iget-object v0, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mLoadingRequest:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .parameter "msg"

    .prologue
    .line 256
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 288
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 258
    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 259
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/widget/ImageView;

    .line 260
    .local v2, view:Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/provider/yellowpage/model/Image;

    .line 262
    .local v1, image:Lmiui/provider/yellowpage/model/Image;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mPendingRequests:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mLoadingRequest:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmiui/provider/yellowpage/model/Image;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 264
    iget-object v3, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mLoadingRequest:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v4, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mBitmapCacheLock:Ljava/lang/Byte;

    monitor-enter v4

    .line 266
    :try_start_0
    iget-object v3, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v3, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;

    .line 268
    .local v0, holder:Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;
    if-eqz v0, :cond_2

    iget v3, v0, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mState:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    .line 269
    iget-object v3, v0, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mBitmapRef:Ljava/lang/ref/Reference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 270
    invoke-direct {p0, v0}, Lmiui/provider/yellowpage/utils/ImageLoader;->inflateBitmap(Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;)V

    .line 272
    :cond_1
    iget-object v3, v0, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mBitmapRef:Ljava/lang/ref/Reference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-direct {p0, v2, v3, v1}, Lmiui/provider/yellowpage/utils/ImageLoader;->bindImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lmiui/provider/yellowpage/model/Image;)V

    .line 273
    const-string v3, "ImageLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage:ImageView with image "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " binded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lmiui/provider/yellowpage/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :goto_1
    monitor-exit v4

    goto :goto_0

    .end local v0           #holder:Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 277
    .restart local v0       #holder:Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;
    :cond_2
    :try_start_1
    const-string v3, "ImageLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage:image "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " was garbaged"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lmiui/provider/yellowpage/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-direct {p0, v2}, Lmiui/provider/yellowpage/utils/ImageLoader;->requestLoading(Landroid/widget/ImageView;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public loadImage(Landroid/widget/ImageView;Lmiui/provider/yellowpage/model/Image;I)V
    .locals 1
    .parameter "view"
    .parameter "image"
    .parameter "defaultImageRes"

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lmiui/provider/yellowpage/utils/ImageLoader;->loadImage(Landroid/widget/ImageView;Lmiui/provider/yellowpage/model/Image;Landroid/graphics/Bitmap;I)V

    .line 98
    return-void
.end method

.method public loadImage(Landroid/widget/ImageView;Lmiui/provider/yellowpage/model/Image;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "view"
    .parameter "image"
    .parameter "defaultBitmap"

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lmiui/provider/yellowpage/utils/ImageLoader;->loadImage(Landroid/widget/ImageView;Lmiui/provider/yellowpage/model/Image;Landroid/graphics/Bitmap;I)V

    .line 102
    return-void
.end method

.method public pauseLoading()V
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mPauseLoading:Z

    .line 243
    return-void
.end method

.method public resumeLoading()V
    .locals 2

    .prologue
    .line 246
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mPauseLoading:Z

    .line 247
    iget-object v1, p0, Lmiui/provider/yellowpage/utils/ImageLoader;->mPendingRequests:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 248
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/widget/ImageView;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lmiui/provider/yellowpage/utils/ImageLoader;->requestLoading(Landroid/widget/ImageView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 253
    :cond_1
    return-void
.end method

.method public syncLoadImage(Lmiui/provider/yellowpage/model/Image;Z)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "image"
    .parameter "online"

    .prologue
    .line 136
    invoke-direct {p0, p1, p2}, Lmiui/provider/yellowpage/utils/ImageLoader;->loadImage(Lmiui/provider/yellowpage/model/Image;Z)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/provider/yellowpage/utils/ImageLoader;->decodeBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
