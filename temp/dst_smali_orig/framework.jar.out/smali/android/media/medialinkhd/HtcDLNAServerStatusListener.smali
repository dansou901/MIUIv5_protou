.class public Landroid/media/medialinkhd/HtcDLNAServerStatusListener;
.super Ljava/lang/Object;
.source "HtcDLNAServerStatusListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentAdded(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"
    .parameter "lastIndex"

    .prologue
    return-void
.end method

.method public onContentBrowsingDone(Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 0
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"
    .parameter "lastIndex"
    .parameter "isComplete"

    .prologue
    return-void
.end method

.method public onContentBrowsingError(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V
    .locals 0
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"
    .parameter "errorID"
    .parameter "errorReason"

    .prologue
    return-void
.end method

.method public onContentThumbnailUpdated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "serverID"
    .parameter "contentID"
    .parameter "filePath"

    .prologue
    return-void
.end method

.method public onContentUpdated(Ljava/lang/String;J)V
    .locals 0
    .parameter "containerID"
    .parameter "startIndex"

    .prologue
    return-void
.end method

.method public onImageDownloaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "serverID"
    .parameter "contentID"
    .parameter "filePath"

    .prologue
    return-void
.end method

.method public onServerAdded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uniqueID"
    .parameter "serverName"

    .prologue
    return-void
.end method

.method public onServerRemoved(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "uniqueID"
    .parameter "errorID"
    .parameter "errorReason"

    .prologue
    return-void
.end method

.method public onServerThumbnailUpdated(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uniqueID"
    .parameter "filePath"

    .prologue
    return-void
.end method
