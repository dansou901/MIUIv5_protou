.class public Landroid/webkit/HTCWebCore;
.super Ljava/lang/Object;
.source "HTCWebCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HTCWebCore$OnWebViewTabEffectListener;
    }
.end annotation


# instance fields
.field mWebCore:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/webkit/WebViewCore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/webkit/WebViewCore;Landroid/webkit/WebView;)V
    .locals 1
    .parameter "webcore"
    .parameter "webview"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/webkit/HTCWebCore;->mWebCore:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private getProvider()Landroid/webkit/HTCWebCoreProvider;
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/webkit/HTCWebCore;->mWebCore:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebViewCore;

    .local v0, webViewCore:Landroid/webkit/WebViewCore;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getHtcWebCoreProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public drawContentPicture(Landroid/graphics/Canvas;IZZ)V
    .locals 1
    .parameter "canvas"
    .parameter "color"
    .parameter "animatingZoom"
    .parameter "animatingScroll"

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->getProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkit/HTCWebCoreProvider;->drawContentPicture(Landroid/graphics/Canvas;IZZ)V

    return-void
.end method

.method public getCacheFile(Ljava/lang/String;)Landroid/webkit/CacheManager$CacheResult;
    .locals 1
    .parameter "url"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->getProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/HTCWebCoreProvider;->getCacheFile(Ljava/lang/String;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v0

    return-object v0
.end method

.method public getCopiedStyleText()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->getProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/HTCWebCoreProvider;->getCopiedStyleText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFontPixelSizeOfTextNodes(Landroid/os/Message;)V
    .locals 1
    .parameter "m"

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->getProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/HTCWebCoreProvider;->getFontPixelSizeOfTextNodes(Landroid/os/Message;)V

    return-void
.end method

.method public getNodeCapture(III)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "pointer"
    .parameter "w"
    .parameter "h"

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->getProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/HTCWebCoreProvider;->getNodeCapture(III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public isIgnorePictureAfterFirstLayout()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->getProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/HTCWebCoreProvider;->isIgnorePictureAfterFirstLayout()Z

    move-result v0

    return v0
.end method

.method public isSkipClipboardChang()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->getProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/HTCWebCoreProvider;->isSkipClipboardChang()Z

    move-result v0

    return v0
.end method

.method public isThisWebCoreBlocked()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->getProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/HTCWebCoreProvider;->isThisWebCoreBlocked()Z

    move-result v0

    return v0
.end method

.method public isWebCoreBlocked()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->getProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/HTCWebCoreProvider;->isWebCoreBlocked()Z

    move-result v0

    return v0
.end method

.method public isWebCoreBusy()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->getProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/HTCWebCoreProvider;->isWebCoreBusy()Z

    move-result v0

    return v0
.end method

.method public nativeDumpHeap()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->getProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/HTCWebCoreProvider;->dumpHeap()Z

    move-result v0

    return v0
.end method

.method public nativeEnableGifAnimation(Z)V
    .locals 1
    .parameter "enable"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->getProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/HTCWebCoreProvider;->enableGifAnimation(Z)V

    return-void
.end method

.method public nativeFindNextTableNode(I)I
    .locals 1
    .parameter "pointer"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->getProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/HTCWebCoreProvider;->findNextTableNode(I)I

    move-result v0

    return v0
.end method

.method public nativeFindNextTableNode(IZ)I
    .locals 1
    .parameter "pointer"
    .parameter "traverseNestedTables"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->getProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkit/HTCWebCoreProvider;->findNextTableNode(IZ)I

    move-result v0

    return v0
.end method

.method public nativeFindNextTextNode(I)I
    .locals 1
    .parameter "pointer"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->getProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/HTCWebCoreProvider;->findNextTextNode(I)I

    move-result v0

    return v0
.end method

.method public nativeFindParagraphBound(IIZLandroid/graphics/Rect;)I
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "onlyTextNode"
    .parameter "r"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->getProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkit/HTCWebCoreProvider;->findParagraphBound(IIZLandroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method public nativeFindParagraphBoundByNode(IZLandroid/graphics/Rect;)V
    .locals 1
    .parameter "node"
    .parameter "onlyTextNode"
    .parameter "r"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->getProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/HTCWebCoreProvider;->findParagraphBoundByNode(IZLandroid/graphics/Rect;)V

    return-void
.end method

.method public nativeFindTextBound(IILandroid/webkit/SelectionUnitInfo;Z)I
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "o"
    .parameter "isWordBased"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public nativeForceStopGifAnimation(Z)V
    .locals 1
    .parameter "stop"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->getProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/HTCWebCoreProvider;->forceStopGifAnimation(Z)V

    return-void
.end method

.method public nativeGetBodyNode(ILandroid/graphics/Rect;)I
    .locals 1
    .parameter "pointer"
    .parameter "contentBound"

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->getProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkit/HTCWebCoreProvider;->getBodyNode(ILandroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method public nativeGetCharRect(IILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "pointer"
    .parameter "index"
    .parameter "r"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->getProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/HTCWebCoreProvider;->getCharRect(IILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public nativeGetCursorPos(IILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "pointer"
    .parameter "index"
    .parameter "r"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->getProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/HTCWebCoreProvider;->getCursorPos(IILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public nativeGetFontPixelSizeOfTextNode(I)I
    .locals 1
    .parameter "pointer"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->getProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/HTCWebCoreProvider;->getFontPixelSizeOfTextNode(I)I

    move-result v0

    return v0
.end method

.method public nativeGetHREF(I)Ljava/lang/String;
    .locals 1
    .parameter "nodePtr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->getProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/HTCWebCoreProvider;->getHREF(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nativeGetImageAttr()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->getProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/HTCWebCoreProvider;->getImageAttr()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public nativeGetMaxCPUFreq()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->getProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/HTCWebCoreProvider;->getMaxCPUFreq()J

    move-result-wide v0

    return-wide v0
.end method

.method public nativeGetNodeRect(IZI)Landroid/graphics/Rect;
    .locals 1
    .parameter "pointer"
    .parameter "absolute"
    .parameter "defaultTextWidth"

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->getProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/HTCWebCoreProvider;->getNodeRect(IZI)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public nativeGetRssFeed()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->getProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/HTCWebCoreProvider;->getRssFeed()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public nativeGetScopeNode(I)I
    .locals 1
    .parameter "node"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->getProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/HTCWebCoreProvider;->getScopeNode(I)I

    move-result v0

    return v0
.end method

.method public nativeGetSurfaceViewBitmap(Landroid/view/Surface;Landroid/graphics/Canvas;Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "s"
    .parameter "c"
    .parameter "r"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->getProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/HTCWebCoreProvider;->getSurfaceViewBitmap(Landroid/view/Surface;Landroid/graphics/Canvas;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public nativeGetTextBetween(IIII)Ljava/lang/String;
    .locals 1
    .parameter "startNodePtr"
    .parameter "startIndx"
    .parameter "endNodePtr"
    .parameter "endNodeIndx"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->getProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkit/HTCWebCoreProvider;->getTextBetween(IIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nativeHasRssFeed()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->getProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/HTCWebCoreProvider;->hasRssFeed()Z

    move-result v0

    return v0
.end method

.method public nativeIsDocumentParsing()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->getProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/HTCWebCoreProvider;->isDocumentParsing()Z

    move-result v0

    return v0
.end method

.method public nativeIsSupportGifAnimUISetting()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->getProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/HTCWebCoreProvider;->isSupportGifAnimUISetting()Z

    move-result v0

    return v0
.end method

.method public nativeIsTextNode(II)I
    .locals 1
    .parameter "x"
    .parameter "y"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->getProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkit/HTCWebCoreProvider;->isTextNode(II)I

    move-result v0

    return v0
.end method

.method public nativeSaveImage(IILjava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "path"
    .parameter "getExtension"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->getProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkit/HTCWebCoreProvider;->saveImage(IILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nativeSelectParagraphText(IILandroid/graphics/Rect;)Ljava/lang/String;
    .locals 1
    .parameter "startNodePtr"
    .parameter "endNodePtr"
    .parameter "scope"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->getProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/HTCWebCoreProvider;->selectParagraphText(IILandroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nativeSetImageAttr(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "pointer"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->getProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/HTCWebCoreProvider;->setImageAttr(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public nativeSetSkiaFontCacheSize(J)V
    .locals 1
    .parameter "lCacheSize_Byte"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->getProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkit/HTCWebCoreProvider;->setSkiaFontCacheSize(J)V

    return-void
.end method

.method public nativeSmartTouchUp(II)I
    .locals 1
    .parameter "x"
    .parameter "y"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->getProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkit/HTCWebCoreProvider;->smartTouchUp(II)I

    move-result v0

    return v0
.end method

.method public nativeTrimMemory()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->getProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/HTCWebCoreProvider;->trimMemory()V

    return-void
.end method

.method public nativeisImageNode(I)Z
    .locals 1
    .parameter "node"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->getProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/HTCWebCoreProvider;->isImageNode(I)Z

    move-result v0

    return v0
.end method

.method public nativeisTextNode(I)Z
    .locals 1
    .parameter "node"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->getProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/HTCWebCoreProvider;->isTextNode(I)Z

    move-result v0

    return v0
.end method

.method public setCopiedStyleText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->getProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/HTCWebCoreProvider;->setCopiedStyleText(Ljava/lang/String;)V

    return-void
.end method

.method public setIgnorePictureAfterFirstLayout(Z)V
    .locals 1
    .parameter "set"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->getProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/HTCWebCoreProvider;->setIgnorePictureAfterFirstLayout(Z)V

    return-void
.end method

.method public setInterruptDraw(Z)V
    .locals 1
    .parameter "bSignal"

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->getProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/HTCWebCoreProvider;->setInterruptDraw(Z)V

    return-void
.end method

.method public setSkipClipboardChang(Z)V
    .locals 1
    .parameter "skip"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTCWebCore;->getProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/HTCWebCoreProvider;->setSkipClipboardChang(Z)V

    return-void
.end method
