.class Landroid/media/MediaPluginDLNA$CreateThumbnailTask;
.super Landroid/os/AsyncTask;
.source "MediaPluginDLNA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPluginDLNA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CreateThumbnailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field mmr:Landroid/media/MediaMetadataRetriever;

.field final synthetic this$0:Landroid/media/MediaPluginDLNA;


# direct methods
.method constructor <init>(Landroid/media/MediaPluginDLNA;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->this$0:Landroid/media/MediaPluginDLNA;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->mmr:Landroid/media/MediaMetadataRetriever;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "params"

    .prologue
    const/4 v5, 0x0

    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "[CreateThumbnailTask]doInBackground"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->this$0:Landroid/media/MediaPluginDLNA;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    #calls: Landroid/media/MediaPluginDLNA;->isStreamingPath(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Landroid/media/MediaPluginDLNA;->access$1900(Landroid/media/MediaPluginDLNA;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->mmr:Landroid/media/MediaMetadataRetriever;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    new-instance v3, Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    iget-object v1, p0, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->this$0:Landroid/media/MediaPluginDLNA;

    iget-object v2, p0, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->mmr:Landroid/media/MediaMetadataRetriever;

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPluginDLNA;->setDLNAThumbnail(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->mmr:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    :goto_1
    return-object v5

    :cond_0
    iget-object v1, p0, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->mmr:Landroid/media/MediaMetadataRetriever;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    iget-object v1, p0, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->this$0:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v1, v5}, Landroid/media/MediaPluginDLNA;->setDLNAThumbnail(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->mmr:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_1

    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    iget-object v1, p0, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->this$0:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v1, v5}, Landroid/media/MediaPluginDLNA;->setDLNAThumbnail(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->mmr:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_1
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[CreateThumbnailTask]onCancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    iget-object v0, p0, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->mmr:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 5
    .parameter "result"

    .prologue
    const/16 v4, 0x2001

    const/4 v3, 0x0

    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "[CreateThumbnailTask]onPostExecute"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mThumbnailTaskTimer:Ljava/util/Timer;
    invoke-static {v1}, Landroid/media/MediaPluginDLNA;->access$2000(Landroid/media/MediaPluginDLNA;)Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mThumbnailTaskTimer:Ljava/util/Timer;
    invoke-static {v1}, Landroid/media/MediaPluginDLNA;->access$2000(Landroid/media/MediaPluginDLNA;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    iget-object v1, p0, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mThumbnailTaskTimer:Ljava/util/Timer;
    invoke-static {v1}, Landroid/media/MediaPluginDLNA;->access$2000(Landroid/media/MediaPluginDLNA;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    iget-object v1, p0, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->this$0:Landroid/media/MediaPluginDLNA;

    const/4 v2, 0x0

    #setter for: Landroid/media/MediaPluginDLNA;->mThumbnailTaskTimer:Ljava/util/Timer;
    invoke-static {v1, v2}, Landroid/media/MediaPluginDLNA;->access$2002(Landroid/media/MediaPluginDLNA;Ljava/util/Timer;)Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;
    invoke-static {v1}, Landroid/media/MediaPluginDLNA;->access$900(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPlugin$OnEventListener;

    move-result-object v1

    .end local v0           #e:Ljava/lang/Exception;
    :goto_1
    invoke-interface {v1, v4, v3}, Landroid/media/MediaPlugin$OnEventListener;->onResponse(II)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;
    invoke-static {v2}, Landroid/media/MediaPluginDLNA;->access$900(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPlugin$OnEventListener;

    move-result-object v2

    invoke-interface {v2, v4, v3}, Landroid/media/MediaPlugin$OnEventListener;->onResponse(II)V

    throw v1

    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;
    invoke-static {v1}, Landroid/media/MediaPluginDLNA;->access$900(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPlugin$OnEventListener;

    move-result-object v1

    goto :goto_1
.end method
