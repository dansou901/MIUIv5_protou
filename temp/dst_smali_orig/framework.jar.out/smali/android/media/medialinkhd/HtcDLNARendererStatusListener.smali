.class public Landroid/media/medialinkhd/HtcDLNARendererStatusListener;
.super Ljava/lang/Object;
.source "HtcDLNARendererStatusListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uniqueId"
    .parameter "rendererName"

    .prologue
    return-void
.end method

.method public onHtcMediaLinkHdRendererAdded(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "uniqueId"
    .parameter "rendererName"
    .parameter "rendererType"

    .prologue
    return-void
.end method

.method public onMirrorRendererConnected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uniqueId"
    .parameter "rendererName"

    .prologue
    return-void
.end method

.method public onRendererAdded(Lcom/htc/htcdlnainterface/DLNARendererData;)V
    .locals 0
    .parameter "rendererData"

    .prologue
    return-void
.end method

.method public onRendererAdded(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "uniqueId"
    .parameter "rendererName"
    .parameter "rendererType"

    .prologue
    return-void
.end method

.method public onRendererRemoved(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "uniqueId"
    .parameter "errorId"
    .parameter "errorReason"

    .prologue
    return-void
.end method

.method public onRendererThumbnailUpdated(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uniqueId"
    .parameter "filePath"

    .prologue
    return-void
.end method
