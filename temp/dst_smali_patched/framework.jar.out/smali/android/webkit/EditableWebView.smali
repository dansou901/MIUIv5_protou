.class public Landroid/webkit/EditableWebView;
.super Landroid/webkit/WebView;
.source "EditableWebView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/EditableWebView$OnScrollChangedListener;,
        Landroid/webkit/EditableWebView$OnOverScrollListener;,
        Landroid/webkit/EditableWebView$OnImageSelectedListener;,
        Landroid/webkit/EditableWebView$OnContentChangedListener;,
        Landroid/webkit/EditableWebView$ImageInfo;
    }
.end annotation


# static fields
.field public static final CUSTOM_CLIP_LABEL:Ljava/lang/String; = "HTC_MODIFIED_CLIPDATA="
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static DELAY_CURSOR_ANCHOR_DISAPPEAR:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0xbb8

    sput v0, Landroid/webkit/EditableWebView;->DELAY_CURSOR_ANCHOR_DISAPPEAR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/EditableWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v0, 0x1010085

    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    if-nez v0, :cond_0

    new-instance v0, Landroid/webkit/EditableWebViewImpl;

    invoke-direct {v0, p0}, Landroid/webkit/EditableWebViewImpl;-><init>(Landroid/webkit/EditableWebView;)V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    :cond_0
    return-void
.end method

.method static synthetic access$001(Landroid/webkit/EditableWebView;IIIIIIIIZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    invoke-super/range {p0 .. p9}, Landroid/webkit/WebView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public GetImageAttr([Ljava/lang/String;[ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "strImagePath"
    .parameter "nImageNode"
    .parameter "rectImage"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public SetBackColor(IZ)V
    .locals 1
    .parameter "color"
    .parameter "enableBackColor"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/EditableWebViewProvider;->SetBackColor(IZ)V

    return-void
.end method

.method public SetFontSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->SetFontSize(I)V

    return-void
.end method

.method public SetForeColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->SetForeColor(I)V

    return-void
.end method

.method public SetImageAttr(III)V
    .locals 1
    .parameter "pointer"
    .parameter "width"
    .parameter "height"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/EditableWebViewProvider;->SetImageAttr(III)V

    return-void
.end method

.method public SetOwnerActivityContext(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->SetOwnerActivityContext(Landroid/content/Context;)V

    return-void
.end method

.method public alignCenter()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->alignCenter()V

    return-void
.end method

.method public alignJustified()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->alignJustified()V

    return-void
.end method

.method public alignLeft()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->alignLeft()V

    return-void
.end method

.method public alignRight()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->alignRight()V

    return-void
.end method

.method public beginBatchEdit()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->beginBatchEdit()V

    return-void
.end method

.method public cancelAnchorSpan()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->cancelAnchorSpan()V

    return-void
.end method

.method protected checkVerticalBouncingCallback(I)Z
    .locals 1
    .parameter "distance"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->checkVerticalBouncingCallback(I)Z

    move-result v0

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/EditableWebViewProvider;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method

.method public copy()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->copy()V

    return-void
.end method

.method public cut()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->cut()V

    return-void
.end method

.method public deleteSurroundingText(IIII)V
    .locals 1
    .parameter "leftStart"
    .parameter "leftEnd"
    .parameter "rightStart"
    .parameter "rightEnd"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkit/EditableWebViewProvider;->deleteSurroundingText(IIII)V

    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method public enableMultiTouch()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->enableMultiTouch()V

    return-void
.end method

.method public enableOrientationCustomScale(FF)V
    .locals 1
    .parameter "portraitScale"
    .parameter "landscapeScale"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/EditableWebViewProvider;->enableOrientationCustomScale(FF)V

    return-void
.end method

.method protected enableQuickSelection(Z)V
    .locals 0
    .parameter "enable"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    return-void
.end method

.method public enableSpellCheckIfAvalible(Z)V
    .locals 1
    .parameter "pref"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->enableSpellCheckIfAvalible(Z)V

    return-void
.end method

.method public endBatchEdit()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->endBatchEdit()V

    return-void
.end method

.method public exportHTML(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->exportHTML(Ljava/lang/String;)V

    return-void
.end method

.method public exportHTML(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "path"
    .parameter "callback"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/EditableWebViewProvider;->exportHTML(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public findContinuousBRFromEnd(ILandroid/os/Message;)V
    .locals 1
    .parameter "bottom"
    .parameter "callback"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/EditableWebViewProvider;->findContinuousBRFromEnd(ILandroid/os/Message;)V

    return-void
.end method

.method public getAllAnchorSpan()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->getAllAnchorSpan()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAnchorRect(Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 1
    .parameter "id"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->getAnchorRect(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getAnchorSpanRect(Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 1
    .parameter "id"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->getAnchorSpanRect(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getAnchorSpanRect(Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 1
    .parameter "r"
    .parameter "id"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p2}, Landroid/webkit/EditableWebViewProvider;->getAnchorSpanRect(Ljava/lang/String;)Landroid/graphics/Rect;

    return-void
.end method

.method public getBackColor()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->getBackColor()I

    move-result v0

    return v0
.end method

.method public getBoldState()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->getBoldState()I

    move-result v0

    return v0
.end method

.method public final getCaretRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->getCaretRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getContentWidth()I
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v0

    return v0
.end method

.method public getEditableText()Landroid/text/Editable;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getEditableWebViewProvider()Landroid/webkit/EditableWebViewProvider;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    return-object v0
.end method

.method public getEnableBackColor()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->getEnableBackColor()Z

    move-result v0

    return v0
.end method

.method public getFontSize()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->getFontSize()I

    move-result v0

    return v0
.end method

.method public getForeColor()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->getForeColor()I

    move-result v0

    return v0
.end method

.method public getHTML(Landroid/os/Message;)V
    .locals 1
    .parameter "callback"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->getHTML(Landroid/os/Message;)V

    return-void
.end method

.method public final getHighlightRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->getHighlightRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getImageInfoObj(Ljava/lang/String;II)Landroid/webkit/EditableWebView$ImageInfo;
    .locals 1
    .parameter "src"
    .parameter "width"
    .parameter "height"

    .prologue
    new-instance v0, Landroid/webkit/EditableWebView$ImageInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/webkit/EditableWebView$ImageInfo;-><init>(Landroid/webkit/EditableWebView;Ljava/lang/String;II)V

    return-object v0
.end method

.method public getImageNodeRect(I)Landroid/graphics/Rect;
    .locals 1
    .parameter "pointer"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->getImageNodeRect(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getItalicState()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->getItalicState()I

    move-result v0

    return v0
.end method

.method public getKeyListener()Landroid/text/method/KeyListener;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    return-object v0
.end method

.method public getPenHighlightListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->getPenHighlightListener()Landroid/view/View$OnTouchListener;

    move-result-object v0

    return-object v0
.end method

.method public getPenSelectionListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->getPenSelectionListener()Landroid/view/View$OnTouchListener;

    move-result-object v0

    return-object v0
.end method

.method public getRegionCapture(IIIIZ)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "l"
    .parameter "t"
    .parameter "w"
    .parameter "h"
    .parameter "isContentDim"

    .prologue
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/EditableWebView;->getRegionCapture(IIIIZLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getRegionCapture(IIIIZLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "l"
    .parameter "t"
    .parameter "w"
    .parameter "h"
    .parameter "isContentDim"
    .parameter "bmp"

    .prologue
    const/4 v7, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/webkit/EditableWebView;->getRegionCapture(IIIIZLandroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getRegionCapture(IIIIZLandroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "l"
    .parameter "t"
    .parameter "w"
    .parameter "h"
    .parameter "isContentDim"
    .parameter "bmp"
    .parameter "bgColor"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/webkit/EditableWebViewProvider;->getRegionCapture(IIIIZLandroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getRegionCapture(Landroid/graphics/Rect;Z)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "r"
    .parameter "isContentDim"

    .prologue
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/4 v6, 0x0

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/EditableWebView;->getRegionCapture(IIIIZLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getRegionCapture(Landroid/graphics/Rect;ZLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "r"
    .parameter "isContentDim"
    .parameter "bmp"

    .prologue
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object v0, p0

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/EditableWebView;->getRegionCapture(IIIIZLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getRegionCaptureByMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "m"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->getRegionCaptureByMessage(Landroid/os/Message;)V

    return-void
.end method

.method protected getResultReceiver()Landroid/os/ResultReceiver;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectionMethod()Landroid/webkit/WebViewSelectionMethod;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->getSelectionMethod()Landroid/webkit/WebViewSelectionMethod;

    move-result-object v0

    return-object v0
.end method

.method public getStrikethroughState()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->getStrikethroughState()I

    move-result v0

    return v0
.end method

.method public getUnderlineState()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->getUnderlineState()I

    move-result v0

    return v0
.end method

.method public gethTCWebCoreInst()Landroid/webkit/HTCWebCore;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->gethTCWebCoreInst()Landroid/webkit/HTCWebCore;

    move-result-object v0

    return-object v0
.end method

.method public hideSingleTapQuickActions()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->hideSingleTapQuickActions()V

    return-void
.end method

.method protected initQuickSelect()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    return-void
.end method

.method protected initSingleTapQuickAction()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    return-void
.end method

.method public insertAnchorSpan(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "title"
    .parameter "msg"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/EditableWebViewProvider;->insertAnchorSpan(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public insertHTML(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->insertHTML(Ljava/lang/String;)V

    return-void
.end method

.method public insertHTMLString(Ljava/lang/String;)V
    .locals 1
    .parameter "html"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->insertHTMLString(Ljava/lang/String;)V

    return-void
.end method

.method public insertHtmlContainsAnchorSpan(Ljava/lang/String;)V
    .locals 1
    .parameter "html"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->insertHtmlContainsAnchorSpan(Ljava/lang/String;)V

    return-void
.end method

.method public insertHtmlToTheEnd(Ljava/lang/String;)V
    .locals 1
    .parameter "htmlString"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->insertHtmlToTheEnd(Ljava/lang/String;)V

    return-void
.end method

.method public insertImage(Ljava/lang/String;II)V
    .locals 1
    .parameter "src"
    .parameter "width"
    .parameter "height"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/EditableWebViewProvider;->insertImage(Ljava/lang/String;II)V

    return-void
.end method

.method protected myInitQuickAction()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    if-nez v0, :cond_0

    new-instance v0, Landroid/webkit/EditableWebViewImpl;

    invoke-direct {v0, p0}, Landroid/webkit/EditableWebViewImpl;-><init>(Landroid/webkit/EditableWebView;)V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    :cond_0
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->onCheckIsTextEditor()Z

    move-result v0

    return v0
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 1
    .parameter "text"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .parameter "outAttrs"

    .prologue
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onEditorAction(I)V
    .locals 1
    .parameter "actionCode"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->onEditorAction(I)V

    return-void
.end method

.method public onEndSelect()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->onEndSelect()V

    return-void
.end method

.method public onEndSelect(Z)V
    .locals 1
    .parameter "removeSelection"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->onEndSelect(Z)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPreDraw()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->onPreDraw()Z

    move-result v0

    return v0
.end method

.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .parameter "action"
    .parameter "data"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/EditableWebViewProvider;->onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 0
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "ow"
    .parameter "oh"

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 1
    .parameter "id"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->onTextContextMenuItem(I)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasWindowFocus"

    .prologue
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowFocusChanged(Z)V

    return-void
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 10
    .parameter "deltaX"
    .parameter "deltaY"
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "scrollRangeX"
    .parameter "scrollRangeY"
    .parameter "maxOverScrollX"
    .parameter "maxOverScrollY"
    .parameter "isTouchEvent"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Landroid/webkit/EditableWebViewProvider;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method public pasteLatestContentFromClipboard()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->pasteLatestContentFromClipboard()V

    return-void
.end method

.method public pastePlainText()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->pastePlainText()V

    return-void
.end method

.method public pasteWithStyle()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->pasteWithStyle()V

    return-void
.end method

.method public pauseTextReflow(I)V
    .locals 1
    .parameter "nTextWrapWidth"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->pauseTextReflow(I)V

    return-void
.end method

.method public performLongClick()Z
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/webkit/WebView;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public resumeTextReflow()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->resumeTextReflow()V

    return-void
.end method

.method public setAllowVerticalBouncing(ZILandroid/webkit/EditableWebView$OnOverScrollListener;)V
    .locals 1
    .parameter "allow"
    .parameter "threshold"
    .parameter "l"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/EditableWebViewProvider;->setAllowVerticalBouncing(ZILandroid/webkit/EditableWebView$OnOverScrollListener;)V

    return-void
.end method

.method public final setCaretPos(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/EditableWebViewProvider;->setCaretPos(II)V

    return-void
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/EditableWebViewProvider;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method

.method public setEditable(Z)V
    .locals 1
    .parameter "editable"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->setEditable(Z)V

    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method public setOnContentChangedListener(Landroid/webkit/EditableWebView$OnContentChangedListener;)V
    .locals 1
    .parameter "l"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->setOnContentChangedListener(Landroid/webkit/EditableWebView$OnContentChangedListener;)V

    return-void
.end method

.method public setOnImageSelectedListener(Landroid/webkit/EditableWebView$OnImageSelectedListener;)V
    .locals 1
    .parameter "l"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->setOnImageSelectedListener(Landroid/webkit/EditableWebView$OnImageSelectedListener;)V

    return-void
.end method

.method public setOnScrollChangedListener(Landroid/webkit/EditableWebView$OnScrollChangedListener;)V
    .locals 0
    .parameter "l"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    return-void
.end method

.method public setPrivateImeOptions(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->setPrivateImeOptions(Ljava/lang/String;)V

    return-void
.end method

.method public setScaleWithoutCheck(Z)V
    .locals 1
    .parameter "bSet"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->setScaleWithoutCheck(Z)V

    return-void
.end method

.method public setWillDrawFind(Z)V
    .locals 1
    .parameter "willDraw"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->setWillDrawFind(Z)V

    return-void
.end method

.method public setZoomLowerBound(F)V
    .locals 1
    .parameter "fLower"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->setZoomLowerBound(F)V

    return-void
.end method

.method public setZoomUpperBound(F)V
    .locals 1
    .parameter "fUpper"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->setZoomUpperBound(F)V

    return-void
.end method

.method public showSingleTapQuickActions()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->showSingleTapQuickActions()V

    return-void
.end method

.method protected singleTapInEditableWebView()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    return-void
.end method

.method super_onCheckIsTextEditor()Z
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/webkit/WebView;->onCheckIsTextEditor()Z

    move-result v0

    return v0
.end method

.method super_overScrollBy(IIIIIIIIZ)Z
    .locals 1
    .parameter "deltaX"
    .parameter "deltaY"
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "scrollRangeX"
    .parameter "scrollRangeY"
    .parameter "maxOverScrollX"
    .parameter "maxOverScrollY"
    .parameter "isTouchEvent"

    .prologue
    #calls: Landroid/webkit/WebView;->overScrollBy(IIIIIIIIZ)Z
    invoke-static/range {p0 .. p9}, Landroid/webkit/EditableWebView;->access$001(Landroid/webkit/EditableWebView;IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method public toggleBold()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->toggleBold()V

    return-void
.end method

.method public toggleItalic()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->toggleItalic()V

    return-void
.end method

.method public toggleStrikethrough()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->toggleStrikethrough()V

    return-void
.end method

.method public toggleUnderline()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->toggleUnderline()V

    return-void
.end method

.method public final transferDimension(Landroid/graphics/Point;Z)Landroid/graphics/Point;
    .locals 1
    .parameter "source"
    .parameter "viewToContent"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/EditableWebViewProvider;->transferDimension(Landroid/graphics/Point;Z)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public final transferDimension(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;
    .locals 1
    .parameter "source"
    .parameter "viewToContent"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/EditableWebViewProvider;->transferDimension(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method protected updateContentFromMessage(I)V
    .locals 0
    .parameter "pointer"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    return-void
.end method

.method protected updateTextAndSelection(III)V
    .locals 0
    .parameter "nodePointer"
    .parameter "startIndx"
    .parameter "endIndx"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    return-void
.end method
