.class Lmiui/provider/yellowpage/utils/ImageLoader$LoadImageRunnable;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/yellowpage/utils/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadImageRunnable"
.end annotation


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lmiui/provider/yellowpage/utils/ImageLoader;


# direct methods
.method public constructor <init>(Lmiui/provider/yellowpage/utils/ImageLoader;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter "image"

    .prologue
    .line 294
    iput-object p1, p0, Lmiui/provider/yellowpage/utils/ImageLoader$LoadImageRunnable;->this$0:Lmiui/provider/yellowpage/utils/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object p2, p0, Lmiui/provider/yellowpage/utils/ImageLoader$LoadImageRunnable;->mImageView:Landroid/widget/ImageView;

    .line 296
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 299
    iget-object v4, p0, Lmiui/provider/yellowpage/utils/ImageLoader$LoadImageRunnable;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/provider/yellowpage/model/Image;

    .line 300
    .local v2, image:Lmiui/provider/yellowpage/model/Image;
    iget-object v4, p0, Lmiui/provider/yellowpage/utils/ImageLoader$LoadImageRunnable;->mImageView:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    if-nez v2, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    iget-object v4, p0, Lmiui/provider/yellowpage/utils/ImageLoader$LoadImageRunnable;->this$0:Lmiui/provider/yellowpage/utils/ImageLoader;

    #getter for: Lmiui/provider/yellowpage/utils/ImageLoader;->mBitmapCacheLock:Ljava/lang/Byte;
    invoke-static {v4}, Lmiui/provider/yellowpage/utils/ImageLoader;->access$000(Lmiui/provider/yellowpage/utils/ImageLoader;)Ljava/lang/Byte;

    move-result-object v5

    monitor-enter v5

    .line 306
    :try_start_0
    iget-object v4, p0, Lmiui/provider/yellowpage/utils/ImageLoader$LoadImageRunnable;->this$0:Lmiui/provider/yellowpage/utils/ImageLoader;

    #getter for: Lmiui/provider/yellowpage/utils/ImageLoader;->mBitmapCache:Landroid/util/LruCache;
    invoke-static {v4}, Lmiui/provider/yellowpage/utils/ImageLoader;->access$100(Lmiui/provider/yellowpage/utils/ImageLoader;)Landroid/util/LruCache;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;

    .line 307
    .local v1, holder:Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;
    if-eqz v1, :cond_2

    iget v4, v1, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mState:I

    if-eqz v4, :cond_2

    .line 308
    monitor-exit v5

    goto :goto_0

    .line 317
    .end local v1           #holder:Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 312
    .restart local v1       #holder:Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;
    :cond_2
    if-nez v1, :cond_3

    .line 313
    :try_start_1
    new-instance v1, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;

    .end local v1           #holder:Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;
    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;-><init>(Lmiui/provider/yellowpage/utils/ImageLoader$1;)V

    .line 315
    .restart local v1       #holder:Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;
    :cond_3
    const/4 v4, 0x2

    iput v4, v1, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mState:I

    .line 316
    iget-object v4, p0, Lmiui/provider/yellowpage/utils/ImageLoader$LoadImageRunnable;->this$0:Lmiui/provider/yellowpage/utils/ImageLoader;

    #getter for: Lmiui/provider/yellowpage/utils/ImageLoader;->mBitmapCache:Landroid/util/LruCache;
    invoke-static {v4}, Lmiui/provider/yellowpage/utils/ImageLoader;->access$100(Lmiui/provider/yellowpage/utils/ImageLoader;)Landroid/util/LruCache;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    iget-object v4, p0, Lmiui/provider/yellowpage/utils/ImageLoader$LoadImageRunnable;->this$0:Lmiui/provider/yellowpage/utils/ImageLoader;

    #calls: Lmiui/provider/yellowpage/utils/ImageLoader;->loadImage(Lmiui/provider/yellowpage/model/Image;Z)[B
    invoke-static {v4, v2, v8}, Lmiui/provider/yellowpage/utils/ImageLoader;->access$300(Lmiui/provider/yellowpage/utils/ImageLoader;Lmiui/provider/yellowpage/model/Image;Z)[B

    move-result-object v0

    .line 321
    .local v0, bitmapData:[B
    iget-object v4, p0, Lmiui/provider/yellowpage/utils/ImageLoader$LoadImageRunnable;->this$0:Lmiui/provider/yellowpage/utils/ImageLoader;

    #getter for: Lmiui/provider/yellowpage/utils/ImageLoader;->mBitmapCacheLock:Ljava/lang/Byte;
    invoke-static {v4}, Lmiui/provider/yellowpage/utils/ImageLoader;->access$000(Lmiui/provider/yellowpage/utils/ImageLoader;)Ljava/lang/Byte;

    move-result-object v5

    monitor-enter v5

    .line 322
    :try_start_2
    iget-object v4, p0, Lmiui/provider/yellowpage/utils/ImageLoader$LoadImageRunnable;->this$0:Lmiui/provider/yellowpage/utils/ImageLoader;

    #getter for: Lmiui/provider/yellowpage/utils/ImageLoader;->mBitmapCache:Landroid/util/LruCache;
    invoke-static {v4}, Lmiui/provider/yellowpage/utils/ImageLoader;->access$100(Lmiui/provider/yellowpage/utils/ImageLoader;)Landroid/util/LruCache;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #holder:Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;
    check-cast v1, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;

    .line 323
    .restart local v1       #holder:Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;
    if-eqz v1, :cond_5

    .line 324
    if-eqz v0, :cond_4

    .line 325
    const/4 v4, 0x1

    iput v4, v1, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mState:I

    .line 326
    iput-object v0, v1, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mBytes:[B

    .line 327
    iget-object v4, p0, Lmiui/provider/yellowpage/utils/ImageLoader$LoadImageRunnable;->this$0:Lmiui/provider/yellowpage/utils/ImageLoader;

    #calls: Lmiui/provider/yellowpage/utils/ImageLoader;->inflateBitmap(Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;)V
    invoke-static {v4, v1}, Lmiui/provider/yellowpage/utils/ImageLoader;->access$400(Lmiui/provider/yellowpage/utils/ImageLoader;Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;)V

    .line 343
    :goto_1
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 346
    if-eqz v0, :cond_0

    .line 347
    iget-object v4, p0, Lmiui/provider/yellowpage/utils/ImageLoader$LoadImageRunnable;->this$0:Lmiui/provider/yellowpage/utils/ImageLoader;

    #getter for: Lmiui/provider/yellowpage/utils/ImageLoader;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v4}, Lmiui/provider/yellowpage/utils/ImageLoader;->access$500(Lmiui/provider/yellowpage/utils/ImageLoader;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 348
    .local v3, msg:Landroid/os/Message;
    iget-object v4, p0, Lmiui/provider/yellowpage/utils/ImageLoader$LoadImageRunnable;->mImageView:Landroid/widget/ImageView;

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 349
    iget-object v4, p0, Lmiui/provider/yellowpage/utils/ImageLoader$LoadImageRunnable;->this$0:Lmiui/provider/yellowpage/utils/ImageLoader;

    #getter for: Lmiui/provider/yellowpage/utils/ImageLoader;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v4}, Lmiui/provider/yellowpage/utils/ImageLoader;->access$500(Lmiui/provider/yellowpage/utils/ImageLoader;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 329
    .end local v3           #msg:Landroid/os/Message;
    :cond_4
    const/4 v4, 0x0

    :try_start_3
    iput v4, v1, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mState:I

    .line 330
    const-string v4, "ImageLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LoadImageRunnable:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lmiui/provider/yellowpage/model/Image;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " load error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lmiui/provider/yellowpage/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 343
    .end local v1           #holder:Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 333
    .restart local v1       #holder:Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;
    :cond_5
    :try_start_4
    new-instance v1, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;

    .end local v1           #holder:Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;
    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;-><init>(Lmiui/provider/yellowpage/utils/ImageLoader$1;)V

    .line 334
    .restart local v1       #holder:Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;
    if-eqz v0, :cond_6

    .line 335
    const/4 v4, 0x1

    iput v4, v1, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mState:I

    .line 336
    iput-object v0, v1, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mBytes:[B

    .line 337
    iget-object v4, p0, Lmiui/provider/yellowpage/utils/ImageLoader$LoadImageRunnable;->this$0:Lmiui/provider/yellowpage/utils/ImageLoader;

    #calls: Lmiui/provider/yellowpage/utils/ImageLoader;->inflateBitmap(Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;)V
    invoke-static {v4, v1}, Lmiui/provider/yellowpage/utils/ImageLoader;->access$400(Lmiui/provider/yellowpage/utils/ImageLoader;Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;)V

    goto :goto_1

    .line 339
    :cond_6
    const/4 v4, 0x0

    iput v4, v1, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;->mState:I

    .line 340
    const-string v4, "ImageLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LoadImageRunnable:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lmiui/provider/yellowpage/model/Image;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " load error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lmiui/provider/yellowpage/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1
.end method
