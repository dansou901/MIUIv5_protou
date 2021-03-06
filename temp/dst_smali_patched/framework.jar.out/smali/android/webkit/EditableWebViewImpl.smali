.class Landroid/webkit/EditableWebViewImpl;
.super Ljava/lang/Object;
.source "EditableWebViewImpl.java"

# interfaces
.implements Landroid/webkit/EditableWebViewProvider;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final MSG_CAPTURE:I = 0xa

.field private static final MSG_END_CURSOR_MODE:I = 0x1

.field private static final MSG_HIDE_SINGLETAP_QUICKACTIONS_DELAYED:I = 0x66

.field private static final MSG_PAUSE_SELECT_UI:I = 0x2ebb

.field private static final MSG_RESET_SESSION:I = 0x138a

.field private static final MSG_RESUME_SELECT_UI:I = 0x2ebc

.field private static final MSG_SCHEDULE_NEXT_BATCH_SPELL_CHECK:I = 0x1389

.field private static final MSG_SHOW_SINGLETAP_QUICKACTIONS_DELAYED:I = 0x65

.field private static final MSG_TRIGGER_CONTENT_CHANGED:I = 0x64

.field private static final MSG_UPDATE_SUGGESTION_WINDOW_POSITION:I = 0x138b

.field private static final UPDATE_WEB_CONTNET_MSG_ID:I = 0x138c


# instance fields
.field captureAfterDraw:Z

.field captureMessages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field isNoteAP:Z

.field private mEditableWebView:Landroid/webkit/EditableWebView;

.field private mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

.field private mInitialized:Z

.field private mInput:Landroid/text/method/TextKeyListener;

.field private mOnContentChangedListener:Landroid/webkit/EditableWebView$OnContentChangedListener;

.field public mOnImageSelectedListener:Landroid/webkit/EditableWebView$OnImageSelectedListener;

.field private mOnOverScrollListener:Landroid/webkit/EditableWebView$OnOverScrollListener;

.field private mOverScrollThreshold:I

.field mPenHighlightListener:Landroid/view/View$OnTouchListener;

.field mPenSelectionListener:Landroid/view/View$OnTouchListener;

.field private mPrivateHandler:Landroid/os/Handler;

.field private mText:Landroid/text/Editable;

.field mUpdateContentListener:Landroid/webkit/WebViewCore$UpdateContentListener;

.field private mWebViewClassic:Landroid/webkit/WebViewClassic;

.field private mWebViewCore:Landroid/webkit/WebViewCore;

.field private mWebViewProvider:Landroid/webkit/WebViewProvider;

.field private m_bEnableEditable:Z

.field m_bRemoveSelectRangeDuringUpdateContent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Landroid/webkit/EditableWebViewImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/webkit/EditableWebView;)V
    .locals 5
    .parameter "editableWebView"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/webkit/EditableWebViewImpl;->mEditableWebView:Landroid/webkit/EditableWebView;

    iput-object v2, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewProvider:Landroid/webkit/WebViewProvider;

    iput-object v2, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    iput-object v2, p0, Landroid/webkit/EditableWebViewImpl;->mText:Landroid/text/Editable;

    iput-object v2, p0, Landroid/webkit/EditableWebViewImpl;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    iput-object v2, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iput-object v2, p0, Landroid/webkit/EditableWebViewImpl;->mInput:Landroid/text/method/TextKeyListener;

    iput-boolean v3, p0, Landroid/webkit/EditableWebViewImpl;->m_bEnableEditable:Z

    iput-boolean v3, p0, Landroid/webkit/EditableWebViewImpl;->mInitialized:Z

    iput-boolean v3, p0, Landroid/webkit/EditableWebViewImpl;->isNoteAP:Z

    iput-boolean v3, p0, Landroid/webkit/EditableWebViewImpl;->m_bRemoveSelectRangeDuringUpdateContent:Z

    new-instance v1, Landroid/webkit/EditableWebViewImpl$1;

    invoke-direct {v1, p0}, Landroid/webkit/EditableWebViewImpl$1;-><init>(Landroid/webkit/EditableWebViewImpl;)V

    iput-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mPrivateHandler:Landroid/os/Handler;

    new-instance v1, Landroid/webkit/EditableWebViewImpl$2;

    invoke-direct {v1, p0}, Landroid/webkit/EditableWebViewImpl$2;-><init>(Landroid/webkit/EditableWebViewImpl;)V

    iput-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mPenHighlightListener:Landroid/view/View$OnTouchListener;

    new-instance v1, Landroid/webkit/EditableWebViewImpl$3;

    invoke-direct {v1, p0}, Landroid/webkit/EditableWebViewImpl$3;-><init>(Landroid/webkit/EditableWebViewImpl;)V

    iput-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mPenSelectionListener:Landroid/view/View$OnTouchListener;

    iput-object v2, p0, Landroid/webkit/EditableWebViewImpl;->mOnImageSelectedListener:Landroid/webkit/EditableWebView$OnImageSelectedListener;

    new-instance v1, Landroid/webkit/EditableWebViewImpl$4;

    invoke-direct {v1, p0}, Landroid/webkit/EditableWebViewImpl$4;-><init>(Landroid/webkit/EditableWebViewImpl;)V

    iput-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mUpdateContentListener:Landroid/webkit/WebViewCore$UpdateContentListener;

    iput-object v2, p0, Landroid/webkit/EditableWebViewImpl;->mOnContentChangedListener:Landroid/webkit/EditableWebView$OnContentChangedListener;

    iput-object v2, p0, Landroid/webkit/EditableWebViewImpl;->mOnOverScrollListener:Landroid/webkit/EditableWebView$OnOverScrollListener;

    iput v3, p0, Landroid/webkit/EditableWebViewImpl;->mOverScrollThreshold:I

    iput-boolean v3, p0, Landroid/webkit/EditableWebViewImpl;->captureAfterDraw:Z

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Landroid/webkit/EditableWebViewImpl;->captureMessages:Ljava/util/Vector;

    iput-object p1, p0, Landroid/webkit/EditableWebViewImpl;->mEditableWebView:Landroid/webkit/EditableWebView;

    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mEditableWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v1}, Landroid/webkit/EditableWebView;->getWebViewProvider()Landroid/webkit/WebViewProvider;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewProvider:Landroid/webkit/WebViewProvider;

    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mEditableWebView:Landroid/webkit/EditableWebView;

    invoke-static {v1}, Landroid/webkit/WebViewClassic;->fromWebView(Landroid/webkit/WebView;)Landroid/webkit/WebViewClassic;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v1}, Landroid/webkit/HTCWebCoreImpl;->fromWebViewCore(Landroid/webkit/WebViewCore;)Landroid/webkit/HTCWebCoreImpl;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget-object v2, p0, Landroid/webkit/EditableWebViewImpl;->mUpdateContentListener:Landroid/webkit/WebViewCore$UpdateContentListener;

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewCore;->setUpdateContentListener(Landroid/webkit/WebViewCore$UpdateContentListener;)V

    invoke-virtual {p0, v4}, Landroid/webkit/EditableWebViewImpl;->setEditable(Z)V

    iput-boolean v4, p0, Landroid/webkit/EditableWebViewImpl;->mInitialized:Z

    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mEditableWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v1}, Landroid/webkit/EditableWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.htc.notes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/webkit/EditableWebViewImpl;->isNoteAP:Z

    invoke-virtual {p0}, Landroid/webkit/EditableWebViewImpl;->getKeyListener()Landroid/text/method/KeyListener;

    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    .local v0, settings:Landroid/webkit/WebSettingsClassic;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettingsClassic;->setSyntheticLinksEnabled(Z)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/EditableWebViewImpl;)Landroid/webkit/WebViewClassic;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkit/EditableWebViewImpl;)Landroid/webkit/HTCWebCoreImpl;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    return-object v0
.end method

.method static synthetic access$200(Landroid/webkit/EditableWebViewImpl;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mPrivateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6
    .parameter "x"

    .prologue
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v1

    iget-object v2, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v2

    iget-object v3, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v4, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v4}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v3

    iget-object v4, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static fromEditableWebView(Landroid/webkit/EditableWebView;)Landroid/webkit/EditableWebViewImpl;
    .locals 1
    .parameter "view"

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getEditableWebViewProvider()Landroid/webkit/EditableWebViewProvider;

    move-result-object v0

    check-cast v0, Landroid/webkit/EditableWebViewImpl;

    goto :goto_0
.end method


# virtual methods
.method public GetImageAttr([Ljava/lang/String;[ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "strImagePath"
    .parameter "nImageNode"
    .parameter "rectImage"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public SetBackColor(IZ)V
    .locals 7
    .parameter "color"
    .parameter "enableBackColor"

    .prologue
    const/16 v5, 0xff

    const/4 v0, 0x0

    .local v0, StrColor:Ljava/lang/String;
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .local v4, nR:I
    if-gez v4, :cond_0

    const/4 v4, 0x0

    :cond_0
    if-le v4, v5, :cond_1

    const/16 v4, 0xff

    :cond_1
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .local v3, nG:I
    if-gez v3, :cond_2

    const/4 v3, 0x0

    :cond_2
    if-le v3, v5, :cond_3

    const/16 v3, 0xff

    :cond_3
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .local v2, nB:I
    if-gez v2, :cond_4

    const/4 v2, 0x0

    :cond_4
    if-le v2, v5, :cond_5

    const/16 v2, 0xff

    :cond_5
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .local v1, nA:I
    if-gez v1, :cond_6

    const/4 v1, 0x0

    :cond_6
    if-le v1, v5, :cond_7

    const/16 v1, 0xff

    :cond_7
    if-nez p2, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rgba("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", 0)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v5, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v6, 0x208

    invoke-virtual {v5, v6, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    return-void

    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rgb("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public SetFontSize(I)V
    .locals 2
    .parameter "size"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x209

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    return-void
.end method

.method public SetForeColor(I)V
    .locals 6
    .parameter "color"

    .prologue
    const/16 v4, 0xff

    const/4 v0, 0x0

    .local v0, StrColor:Ljava/lang/String;
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .local v3, nR:I
    if-gez v3, :cond_0

    const/4 v3, 0x0

    :cond_0
    if-le v3, v4, :cond_1

    const/16 v3, 0xff

    :cond_1
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .local v2, nG:I
    if-gez v2, :cond_2

    const/4 v2, 0x0

    :cond_2
    if-le v2, v4, :cond_3

    const/16 v2, 0xff

    :cond_3
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .local v1, nB:I
    if-gez v1, :cond_4

    const/4 v1, 0x0

    :cond_4
    if-le v1, v4, :cond_5

    const/16 v1, 0xff

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rgb("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0x207

    invoke-virtual {v4, v5, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public SetImageAttr(III)V
    .locals 4
    .parameter "pointer"
    .parameter "width"
    .parameter "height"

    .prologue
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getScale()F

    move-result v0

    .local v0, fCurrentScale:F
    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    int-to-float v1, p2

    div-float/2addr v1, v0

    float-to-int p2, v1

    int-to-float v1, p3

    div-float/2addr v1, v0

    float-to-int p3, v1

    :cond_0
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x20b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, p2, p3, v3}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public SetOwnerActivityContext(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewClassic;->SetOwnerActivityContext(Landroid/content/Context;)V

    return-void
.end method

.method public alignCenter()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x203

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    return-void
.end method

.method public alignJustified()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x204

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    return-void
.end method

.method public alignLeft()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x205

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    return-void
.end method

.method public alignRight()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x206

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    return-void
.end method

.method public beginBatchEdit()V
    .locals 0

    .prologue
    return-void
.end method

.method public cancelAnchorSpan()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x223

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    return-void
.end method

.method public checkVerticalBouncingCallback(I)Z
    .locals 2
    .parameter "distance"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mOnOverScrollListener:Landroid/webkit/EditableWebView$OnOverScrollListener;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/webkit/EditableWebViewImpl;->mOverScrollThreshold:I

    if-le p1, v0, :cond_0

    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mOnOverScrollListener:Landroid/webkit/EditableWebView$OnOverScrollListener;

    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mEditableWebView:Landroid/webkit/EditableWebView;

    invoke-interface {v0, v1, p1}, Landroid/webkit/EditableWebView$OnOverScrollListener;->onOverScrolled(Landroid/webkit/WebView;I)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public copy()V
    .locals 0

    .prologue
    return-void
.end method

.method public cut()V
    .locals 0

    .prologue
    return-void
.end method

.method public deleteSurroundingText(IIII)V
    .locals 0
    .parameter "leftStart"
    .parameter "leftEnd"
    .parameter "rightStart"
    .parameter "rightEnd"

    .prologue
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    return-void
.end method

.method public enableMultiTouch()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->enableMultiTouch()V

    return-void
.end method

.method public enableOrientationCustomScale(FF)V
    .locals 0
    .parameter "portraitScale"
    .parameter "landscapeScale"

    .prologue
    return-void
.end method

.method public enableSpellCheckIfAvalible(Z)V
    .locals 0
    .parameter "pref"

    .prologue
    return-void
.end method

.method public endBatchEdit()V
    .locals 0

    .prologue
    return-void
.end method

.method public exportHTML(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/webkit/EditableWebViewImpl;->exportHTML(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public exportHTML(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "path"
    .parameter "callback"

    .prologue
    if-nez p2, :cond_0

    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x1fc

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x1fd

    invoke-virtual {v0, v1, p2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public findContinuousBRFromEnd(ILandroid/os/Message;)V
    .locals 2
    .parameter "bottom"
    .parameter "callback"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x221

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(IILjava/lang/Object;)V

    return-void
.end method

.method public getAllAnchorSpan()Ljava/util/ArrayList;
    .locals 2
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
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/HTCWebCoreImpl;->nativeGetAllAnchorSpan(I)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnchorRect(Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 3
    .parameter "id"

    .prologue
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .local v0, r:Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeGetAnchorRect(ILandroid/graphics/Rect;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method public getAnchorSpanRect(Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 1
    .parameter "id"

    .prologue
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p0, v0, p1}, Landroid/webkit/EditableWebViewImpl;->getAnchorSpanRect(Landroid/graphics/Rect;Ljava/lang/String;)V

    return-object v0
.end method

.method public getAnchorSpanRect(Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 2
    .parameter "r"
    .parameter "id"

    .prologue
    if-eqz p2, :cond_0

    const-string v0, "HTC_ANCHOR_SPAN_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTC_ANCHOR_SPAN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/HTCWebCoreImpl;->nativeGetAnchorSpanRect(ILandroid/graphics/Rect;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public getBackColor()I
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/webkit/EditableWebViewImpl;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    invoke-virtual {v8, v7}, Landroid/webkit/HTCWebCoreImpl;->nativeGetBackColor(I)Ljava/lang/String;

    move-result-object v6

    .local v6, strRGBA:Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string v8, "rgba("

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "rgb("

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    :cond_0
    invoke-static {v7, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    :cond_1
    :goto_0
    return v7

    :cond_2
    const-string v8, "rgba("

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-ne v8, v10, :cond_3

    const/4 v1, 0x5

    .local v1, start:I
    const/4 v0, 0x0

    .local v0, end:I
    const-string v8, ","

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v9, :cond_1

    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .local v5, strR:Ljava/lang/String;
    add-int/lit8 v1, v0, 0x2

    const-string v8, ","

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v9, :cond_1

    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .local v4, strG:Ljava/lang/String;
    add-int/lit8 v1, v0, 0x2

    const-string v8, ","

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v9, :cond_1

    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .local v3, strB:Ljava/lang/String;
    add-int/lit8 v1, v0, 0x2

    const-string v8, ")"

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v9, :cond_1

    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .local v2, strA:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    goto :goto_0

    .end local v0           #end:I
    .end local v1           #start:I
    .end local v2           #strA:Ljava/lang/String;
    .end local v3           #strB:Ljava/lang/String;
    .end local v4           #strG:Ljava/lang/String;
    .end local v5           #strR:Ljava/lang/String;
    :cond_3
    const-string v8, "rgb("

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-ne v8, v10, :cond_4

    const/4 v1, 0x4

    .restart local v1       #start:I
    const/4 v0, 0x0

    .restart local v0       #end:I
    const-string v8, ","

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v9, :cond_1

    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #strR:Ljava/lang/String;
    add-int/lit8 v1, v0, 0x2

    const-string v8, ","

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v9, :cond_1

    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #strG:Ljava/lang/String;
    add-int/lit8 v1, v0, 0x2

    const-string v8, ")"

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v9, :cond_1

    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #strB:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    goto/16 :goto_0

    .end local v0           #end:I
    .end local v1           #start:I
    .end local v3           #strB:Ljava/lang/String;
    .end local v4           #strG:Ljava/lang/String;
    .end local v5           #strR:Ljava/lang/String;
    :cond_4
    invoke-static {v7, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    goto/16 :goto_0
.end method

.method public getBoldState()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/HTCWebCoreImpl;->nativeGetBoldState(I)I

    move-result v0

    return v0
.end method

.method public getCaretRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method public getContentWidth()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getContentWidth()I

    move-result v0

    return v0
.end method

.method public getEditableText()Landroid/text/Editable;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mText:Landroid/text/Editable;

    return-object v0
.end method

.method public getEnableBackColor()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/webkit/EditableWebViewImpl;->getBackColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getFontSize()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/HTCWebCoreImpl;->nativeGetFontSize(I)I

    move-result v0

    return v0
.end method

.method public getForeColor()I
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/webkit/EditableWebViewImpl;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    invoke-virtual {v7, v6}, Landroid/webkit/HTCWebCoreImpl;->nativeGetForeColor(I)Ljava/lang/String;

    move-result-object v5

    .local v5, strRGB:Ljava/lang/String;
    if-eqz v5, :cond_0

    const-string v7, "rgb("

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    :cond_1
    :goto_0
    return v6

    :cond_2
    const/4 v1, 0x4

    .local v1, start:I
    const/4 v0, 0x0

    .local v0, end:I
    const-string v7, ","

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v8, :cond_1

    invoke-virtual {v5, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .local v4, strR:Ljava/lang/String;
    add-int/lit8 v1, v0, 0x2

    const-string v7, ","

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v8, :cond_1

    invoke-virtual {v5, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .local v3, strG:Ljava/lang/String;
    add-int/lit8 v1, v0, 0x2

    const-string v7, ")"

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v8, :cond_1

    invoke-virtual {v5, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .local v2, strB:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    goto :goto_0
.end method

.method public getHTML(Landroid/os/Message;)V
    .locals 2
    .parameter "callback"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x1f9

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public getHighlightRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method public getImageNodeRect(I)Landroid/graphics/Rect;
    .locals 5
    .parameter "pointer"

    .prologue
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .local v0, rectImage:Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/webkit/HTCWebCoreImpl;->nativegetImageNodeRect(II)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    sget-boolean v1, Landroid/webkit/EditableWebViewImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "EditableWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[EditableWebView::getImageNodeRect] >> rectImage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, v0}, Landroid/webkit/EditableWebViewImpl;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mEditableWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v1}, Landroid/webkit/EditableWebView;->getScrollX()I

    move-result v1

    neg-int v1, v1

    iget-object v2, p0, Landroid/webkit/EditableWebViewImpl;->mEditableWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v2}, Landroid/webkit/EditableWebView;->getScrollY()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    return-object v0
.end method

.method public getItalicState()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/HTCWebCoreImpl;->nativeGetItalicState(I)I

    move-result v0

    return v0
.end method

.method public getKeyListener()Landroid/text/method/KeyListener;
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mInput:Landroid/text/method/TextKeyListener;

    if-nez v1, :cond_0

    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    .local v0, cap:Landroid/text/method/TextKeyListener$Capitalize;
    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mInput:Landroid/text/method/TextKeyListener;

    .end local v0           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :cond_0
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mInput:Landroid/text/method/TextKeyListener;

    return-object v1
.end method

.method public getOnImageSelectedListener()Landroid/webkit/EditableWebView$OnImageSelectedListener;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mOnImageSelectedListener:Landroid/webkit/EditableWebView$OnImageSelectedListener;

    return-object v0
.end method

.method public getPenHighlightListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mPenHighlightListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public getPenSelectionListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mPenSelectionListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public getRegionCapture(IIIIZ)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "l"
    .parameter "t"
    .parameter "w"
    .parameter "h"
    .parameter "isContentDim"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/EditableWebViewImpl;->getRegionCapture(IIIIZLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v7, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/webkit/EditableWebViewImpl;->getRegionCapture(IIIIZLandroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getRegionCapture(IIIIZLandroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "l"
    .parameter "t"
    .parameter "w"
    .parameter "h"
    .parameter "isContentDim"
    .parameter "bmp"
    .parameter "bgColor"

    .prologue
    move v7, p1

    .local v7, vl:I
    move v8, p2

    .local v8, vt:I
    if-nez p5, :cond_1

    iget-object v9, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9, p1}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result p1

    iget-object v9, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9, p2}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result p2

    iget-object v9, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9, p3}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result p3

    iget-object v9, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    move/from16 v0, p4

    invoke-virtual {v9, v0}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result p4

    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v0, p4

    invoke-direct {v2, v9, v10, p3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v2, clip:Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v6, 0x0

    :cond_0
    :goto_1
    return-object v6

    .end local v2           #clip:Landroid/graphics/Rect;
    :cond_1
    iget-object v9, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9, p1}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v7

    iget-object v9, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9, p2}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v8

    goto :goto_0

    .restart local v2       #clip:Landroid/graphics/Rect;
    :cond_2
    const/4 v5, 0x0

    .local v5, needAlocate:Z
    move-object/from16 v6, p6

    .local v6, ret:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_3

    :try_start_0
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    const/4 v5, 0x1

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p4

    invoke-static {p3, v0, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_4
    move/from16 v0, p7

    invoke-virtual {v6, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v1, c:Landroid/graphics/Canvas;
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    neg-int v9, v7

    int-to-float v9, v9

    neg-int v10, v8

    int-to-float v10, v10

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v9, p0, Landroid/webkit/EditableWebViewImpl;->mEditableWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v9}, Landroid/webkit/EditableWebView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    iget-object v10, p0, Landroid/webkit/EditableWebViewImpl;->mEditableWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v10}, Landroid/webkit/EditableWebView;->getScale()F

    move-result v10

    div-float v3, v9, v10

    .local v3, defaulScale:F
    const/high16 v9, 0x3f80

    cmpl-float v9, v3, v9

    if-eqz v9, :cond_5

    int-to-float v9, v7

    int-to-float v10, v8

    invoke-virtual {v1, v3, v3, v9, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_5
    sget-boolean v9, Landroid/webkit/EditableWebViewImpl;->DEBUG:Z

    if-eqz v9, :cond_6

    const-string v9, "EditableWebView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[EditableWebView::getRegionCapture] >> l="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " t="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " w="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " h="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " scale="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/webkit/EditableWebViewImpl;->mEditableWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v11}, Landroid/webkit/EditableWebView;->getScale()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " density="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/webkit/EditableWebViewImpl;->mEditableWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v11}, Landroid/webkit/EditableWebView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v9, p0, Landroid/webkit/EditableWebViewImpl;->mEditableWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v9, v1}, Landroid/webkit/EditableWebView;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_7

    const/4 v6, 0x0

    .end local v1           #c:Landroid/graphics/Canvas;
    .end local v3           #defaulScale:F
    :cond_7
    :goto_2
    if-nez v5, :cond_0

    move-object/from16 v6, p6

    goto/16 :goto_1

    :catch_0
    move-exception v4

    .local v4, e:Ljava/lang/OutOfMemoryError;
    const-string v9, "EditableWebView"

    const-string v10, ""

    invoke-static {v9, v10, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v6, 0x0

    goto :goto_2
.end method

.method public getRegionCapture(Landroid/graphics/Rect;Z)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "r"
    .parameter "isContentDim"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

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

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/EditableWebViewImpl;->getRegionCapture(IIIIZLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getRegionCapture(Landroid/graphics/Rect;ZLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "r"
    .parameter "isContentDim"
    .parameter "bmp"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

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

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/EditableWebViewImpl;->getRegionCapture(IIIIZLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getRegionCaptureByMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "m"

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/graphics/Rect;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->captureMessages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/EditableWebViewImpl;->captureAfterDraw:Z

    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->invalidate()V

    goto :goto_0
.end method

.method public getSelectionMethod()Landroid/webkit/WebViewSelectionMethod;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    return-object v0
.end method

.method public getStrikethroughState()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/HTCWebCoreImpl;->nativeGetStrikethroughState(I)I

    move-result v0

    return v0
.end method

.method public getUnderlineState()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/HTCWebCoreImpl;->nativeGetUnderlineState(I)I

    move-result v0

    return v0
.end method

.method public gethTCWebCoreInst()Landroid/webkit/HTCWebCore;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->gethTCWebCoreInst()Landroid/webkit/HTCWebCore;

    move-result-object v0

    return-object v0
.end method

.method public hideSingleTapQuickActions()V
    .locals 0

    .prologue
    return-void
.end method

.method public insertAnchorSpan(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "title"
    .parameter "msg"

    .prologue
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x222

    invoke-virtual {v0, v1, p2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public insertHTML(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x1fa

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public insertHTMLString(Ljava/lang/String;)V
    .locals 2
    .parameter "html"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x1fb

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public insertHtmlContainsAnchorSpan(Ljava/lang/String;)V
    .locals 3
    .parameter "html"

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x224

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getSelectLeftCaretHeight()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getSelectRightCaretHeight()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x12

    invoke-virtual {p0, v2, v0}, Landroid/webkit/EditableWebViewImpl;->setCaretPos(II)V

    :cond_0
    invoke-virtual {p0, v2}, Landroid/webkit/EditableWebViewImpl;->updateContentFromMessage(I)V

    return-void
.end method

.method public insertHtmlToTheEnd(Ljava/lang/String;)V
    .locals 3
    .parameter "htmlString"

    .prologue
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x220

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public insertImage(Ljava/lang/String;II)V
    .locals 3
    .parameter "src"
    .parameter "width"
    .parameter "height"

    .prologue
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mEditableWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v1, p1, p2, p3}, Landroid/webkit/EditableWebView;->getImageInfoObj(Ljava/lang/String;II)Landroid/webkit/EditableWebView$ImageInfo;

    move-result-object v0

    .local v0, imageInfo:Landroid/webkit/EditableWebView$ImageInfo;
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getSelectLeftCaretHeight()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getSelectRightCaretHeight()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0x12

    invoke-virtual {p0, v1, v2}, Landroid/webkit/EditableWebViewImpl;->setCaretPos(II)V

    :cond_0
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x1fe

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/webkit/EditableWebViewImpl;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/EditableWebViewImpl;->m_bEnableEditable:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mEditableWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v0}, Landroid/webkit/EditableWebView;->super_onCheckIsTextEditor()Z

    move-result v0

    goto :goto_0
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0
    .parameter "text"

    .prologue
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .parameter "outAttrs"

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    iget-boolean v0, p0, Landroid/webkit/EditableWebViewImpl;->captureAfterDraw:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/EditableWebViewImpl;->captureAfterDraw:Z

    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onEditorAction(I)V
    .locals 0
    .parameter "actionCode"

    .prologue
    return-void
.end method

.method public onEndSelect()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/EditableWebViewImpl;->onEndSelect(Z)V

    return-void
.end method

.method public onEndSelect(Z)V
    .locals 3
    .parameter "removeSelection"

    .prologue
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mEditableWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v1}, Landroid/webkit/EditableWebView;->getSelectionMethod()Landroid/webkit/WebViewSelectionMethod;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v1

    sget-object v2, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->syncSelectionCursors()V

    const/4 v1, 0x4

    new-array v0, v1, [I

    .local v0, selectionhandles:[I
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1, v0}, Landroid/webkit/WebViewClassic;->getSelectionHandles([I)V

    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->selectionDone()V

    const/4 v1, 0x2

    aget v1, v0, v1

    const/4 v2, 0x3

    aget v2, v0, v2

    invoke-virtual {p0, v1, v2}, Landroid/webkit/EditableWebViewImpl;->setCaretPos(II)V

    .end local v0           #selectionhandles:[I
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onPreDraw()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .parameter "action"
    .parameter "data"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onTextContextMenuItem(I)Z
    .locals 1
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasWindowFocus"

    .prologue
    return-void
.end method

.method public overScrollBy(IIIIIIIIZ)Z
    .locals 20
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
    sget v2, Landroid/webkit/WebViewClassic;->mOverscrollMode:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    sget v2, Landroid/webkit/WebViewClassic;->mOverscrollMode:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/EditableWebViewImpl;->mEditableWebView:Landroid/webkit/EditableWebView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Landroid/webkit/EditableWebView;->super_overScrollBy(IIIIIIIIZ)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    add-int v16, p3, p1

    .local v16, newScrollX:I
    add-int v17, p4, p2

    .local v17, newScrollY:I
    if-gez v17, :cond_1

    sget-boolean v2, Landroid/webkit/WebViewClassic;->mTopOverScrollEnabled:Z

    if-eqz v2, :cond_2

    :cond_1
    move/from16 v0, v17

    move/from16 v1, p6

    if-le v0, v1, :cond_7

    sget-boolean v2, Landroid/webkit/WebViewClassic;->mBottomOverScrollEnabled:Z

    if-nez v2, :cond_7

    :cond_2
    const/16 p8, 0x0

    :cond_3
    :goto_1
    const/16 p7, 0x0

    move/from16 v0, p7

    neg-int v15, v0

    .local v15, left:I
    add-int v18, p7, p5

    .local v18, right:I
    move/from16 v0, p8

    neg-int v0, v0

    move/from16 v19, v0

    .local v19, top:I
    add-int v12, p8, p6

    .local v12, bottom:I
    const/4 v13, 0x0

    .local v13, clampedX:Z
    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_8

    move/from16 v16, v18

    const/4 v13, 0x1

    :cond_4
    :goto_2
    const/4 v14, 0x0

    .local v14, clampedY:Z
    move/from16 v0, v17

    if-le v0, v12, :cond_9

    move/from16 v17, v12

    const/4 v14, 0x1

    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1, v13, v14}, Landroid/webkit/WebViewClassic;->onOverScrolled(IIZZ)V

    if-nez v13, :cond_6

    if-eqz v14, :cond_a

    :cond_6
    const/4 v2, 0x1

    goto :goto_0

    .end local v12           #bottom:I
    .end local v13           #clampedX:Z
    .end local v14           #clampedY:Z
    .end local v15           #left:I
    .end local v18           #right:I
    .end local v19           #top:I
    :cond_7
    if-lez v17, :cond_3

    move/from16 v0, v17

    move/from16 v1, p6

    if-ge v0, v1, :cond_3

    const/4 v2, 0x0

    sput-boolean v2, Landroid/webkit/WebViewClassic;->mBottomOverScrollEnabled:Z

    sput-boolean v2, Landroid/webkit/WebViewClassic;->mTopOverScrollEnabled:Z

    goto :goto_1

    .restart local v12       #bottom:I
    .restart local v13       #clampedX:Z
    .restart local v15       #left:I
    .restart local v18       #right:I
    .restart local v19       #top:I
    :cond_8
    move/from16 v0, v16

    if-ge v0, v15, :cond_4

    move/from16 v16, v15

    const/4 v13, 0x1

    goto :goto_2

    .restart local v14       #clampedY:Z
    :cond_9
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    move/from16 v17, v19

    const/4 v14, 0x1

    goto :goto_3

    :cond_a
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public pasteLatestContentFromClipboard()V
    .locals 0

    .prologue
    return-void
.end method

.method public pastePlainText()V
    .locals 0

    .prologue
    return-void
.end method

.method public pasteWithStyle()V
    .locals 0

    .prologue
    return-void
.end method

.method public pauseTextReflow(I)V
    .locals 0
    .parameter "nTextWrapWidth"

    .prologue
    return-void
.end method

.method public performLongClick()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public resumeTextReflow()V
    .locals 0

    .prologue
    return-void
.end method

.method public setAllowVerticalBouncing(ZILandroid/webkit/EditableWebView$OnOverScrollListener;)V
    .locals 2
    .parameter "allow"
    .parameter "threshold"
    .parameter "l"

    .prologue
    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->setOverScrollMode(I)V

    iput-object p3, p0, Landroid/webkit/EditableWebViewImpl;->mOnOverScrollListener:Landroid/webkit/EditableWebView$OnOverScrollListener;

    iput p2, p0, Landroid/webkit/EditableWebViewImpl;->mOverScrollThreshold:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->setOverScrollMode(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mOnOverScrollListener:Landroid/webkit/EditableWebView$OnOverScrollListener;

    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/EditableWebViewImpl;->mOverScrollThreshold:I

    goto :goto_0
.end method

.method public setCaretPos(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    iget-boolean v0, p0, Landroid/webkit/EditableWebViewImpl;->isNoteAP:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mEditableWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v0}, Landroid/webkit/EditableWebView;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mEditableWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v0}, Landroid/webkit/EditableWebView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x8e

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    :cond_0
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    invoke-virtual {v0, p1, p2, v3}, Landroid/webkit/HTCWebCoreImpl;->doSelection(IIZ)V

    return-void
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public setEditable(Z)V
    .locals 1
    .parameter "editable"

    .prologue
    iget-boolean v0, p0, Landroid/webkit/EditableWebViewImpl;->m_bEnableEditable:Z

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Landroid/webkit/EditableWebViewImpl;->m_bEnableEditable:Z

    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    invoke-virtual {v0, p1}, Landroid/webkit/HTCWebCoreImpl;->setEditable(Z)V

    goto :goto_0
.end method

.method public setOnContentChangedListener(Landroid/webkit/EditableWebView$OnContentChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    iput-object p1, p0, Landroid/webkit/EditableWebViewImpl;->mOnContentChangedListener:Landroid/webkit/EditableWebView$OnContentChangedListener;

    return-void
.end method

.method public setOnImageSelectedListener(Landroid/webkit/EditableWebView$OnImageSelectedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    iput-object p1, p0, Landroid/webkit/EditableWebViewImpl;->mOnImageSelectedListener:Landroid/webkit/EditableWebView$OnImageSelectedListener;

    return-void
.end method

.method public setPrivateImeOptions(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    return-void
.end method

.method public setScaleWithoutCheck(Z)V
    .locals 1
    .parameter "bSet"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewClassic;->setScaleWithoutCheck(Z)V

    return-void
.end method

.method public setWillDrawFind(Z)V
    .locals 0
    .parameter "willDraw"

    .prologue
    return-void
.end method

.method public setZoomLowerBound(F)V
    .locals 1
    .parameter "fLower"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewClassic;->setZoomLowerBound(F)V

    return-void
.end method

.method public setZoomUpperBound(F)V
    .locals 1
    .parameter "fUpper"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewClassic;->setZoomUpperBound(F)V

    return-void
.end method

.method public showSingleTapQuickActions()V
    .locals 0

    .prologue
    return-void
.end method

.method public toggleBold()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x1ff

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    return-void
.end method

.method public toggleItalic()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x201

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    return-void
.end method

.method public toggleStrikethrough()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x202

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    return-void
.end method

.method public toggleUnderline()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    return-void
.end method

.method public transferDimension(Landroid/graphics/Point;Z)Landroid/graphics/Point;
    .locals 4
    .parameter "source"
    .parameter "viewToContent"

    .prologue
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .local v0, target:Landroid/graphics/Point;
    if-eqz p2, :cond_0

    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v2, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v1

    iget-object v2, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v3, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v2, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v1

    iget-object v2, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v3, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method

.method public transferDimension(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;
    .locals 6
    .parameter "source"
    .parameter "viewToContent"

    .prologue
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .local v0, target:Landroid/graphics/Rect;
    if-eqz p2, :cond_0

    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v1

    iget-object v2, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v2

    iget-object v3, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v4, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v4}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v3

    iget-object v4, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/webkit/EditableWebViewImpl;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected updateContentFromMessage(I)V
    .locals 3
    .parameter "pointer"

    .prologue
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->isSelectingText()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, -0xa

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/EditableWebViewImpl;->onEndSelect()V

    :cond_0
    iget-boolean v0, p0, Landroid/webkit/EditableWebViewImpl;->m_bRemoveSelectRangeDuringUpdateContent:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/EditableWebViewImpl;->m_bRemoveSelectRangeDuringUpdateContent:Z

    :cond_1
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mOnContentChangedListener:Landroid/webkit/EditableWebView$OnContentChangedListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mOnContentChangedListener:Landroid/webkit/EditableWebView$OnContentChangedListener;

    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mEditableWebView:Landroid/webkit/EditableWebView;

    iget-object v2, p0, Landroid/webkit/EditableWebViewImpl;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    iget-object v2, v2, Landroid/webkit/HTCWebCoreImpl;->mEventHub:Landroid/webkit/HTCWebCoreImpl$EditEventHub;

    iget v2, v2, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->mLastContentChangedMsg:I

    invoke-interface {v0, v1, v2}, Landroid/webkit/EditableWebView$OnContentChangedListener;->onContentChanged(Landroid/webkit/WebView;I)V

    :cond_2
    return-void
.end method
