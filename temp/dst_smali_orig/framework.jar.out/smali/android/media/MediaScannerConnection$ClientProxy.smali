.class Landroid/media/MediaScannerConnection$ClientProxy;
.super Ljava/lang/Object;
.source "MediaScannerConnection.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScannerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClientProxy"
.end annotation


# instance fields
.field final mClient:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

.field mConnection:Landroid/media/MediaScannerConnection;

.field final mMimeTypes:[Ljava/lang/String;

.field mNextPath:I

.field mNotifyFinish:Ljava/lang/String;

.field final mPaths:[Ljava/lang/String;

.field mRequestedTime:J


# direct methods
.method constructor <init>([Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    .locals 2
    .parameter "paths"
    .parameter "mimeTypes"
    .parameter "client"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mNotifyFinish:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mRequestedTime:J

    iput-object p1, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mPaths:[Ljava/lang/String;

    iput-object p2, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mMimeTypes:[Ljava/lang/String;

    iput-object p3, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mClient:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    return-void
.end method

.method private onScanFinish()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mNotifyFinish:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mClient:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    iget-object v1, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mNotifyFinish:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/media/MediaScannerConnection$OnScanCompletedListener;->onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Landroid/media/MediaScannerConnection$ClientProxy;->scanNextPath()V

    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .parameter "path"
    .parameter "uri"

    .prologue
    iget-object v0, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mClient:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mClient:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    invoke-interface {v0, p1, p2}, Landroid/media/MediaScannerConnection$OnScanCompletedListener;->onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V

    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaScannerConnection$ClientProxy;->scanNextPath()V

    return-void
.end method

.method public onSetFinishString(Ljava/lang/String;)V
    .locals 0
    .parameter "notifyString"

    .prologue
    iput-object p1, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mNotifyFinish:Ljava/lang/String;

    return-void
.end method

.method scanNextPath()V
    .locals 4

    .prologue
    iget v1, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mNextPath:I

    iget-object v2, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mPaths:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    invoke-direct {p0}, Landroid/media/MediaScannerConnection$ClientProxy;->onScanFinish()V

    iget-object v1, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->disconnect()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mNotifyFinish:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mNotifyFinish:Ljava/lang/String;

    iget-wide v2, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mRequestedTime:J

    invoke-static {v1, v2, v3}, Landroid/media/MediaScannerConnection;->isNeedFinish(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "MediaScannerConnection"

    const-string v2, "Stop scan!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/media/MediaScannerConnection$ClientProxy;->onScanFinish()V

    iget-object v1, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->disconnect()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mMimeTypes:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mMimeTypes:[Ljava/lang/String;

    iget v2, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mNextPath:I

    aget-object v0, v1, v2

    .local v0, mimeType:Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mConnection:Landroid/media/MediaScannerConnection;

    iget-object v2, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mPaths:[Ljava/lang/String;

    iget v3, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mNextPath:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mNextPath:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mNextPath:I

    goto :goto_0

    .end local v0           #mimeType:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
