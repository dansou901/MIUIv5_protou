.class Landroid/webkit/WebViewClassic$InnerScrollChangedListener;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerScrollChangedListener"
.end annotation


# instance fields
.field newLocInWin:[I

.field newScrollX:I

.field newScrollY:I

.field oldLocInWin:[I

.field oldScrollX:I

.field oldScrollY:I

.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method private constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x2

    iput-object p1, p0, Landroid/webkit/WebViewClassic$InnerScrollChangedListener;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Landroid/webkit/WebViewClassic$InnerScrollChangedListener;->oldLocInWin:[I

    new-array v0, v1, [I

    iput-object v0, p0, Landroid/webkit/WebViewClassic$InnerScrollChangedListener;->newLocInWin:[I

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewClassic$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic$InnerScrollChangedListener;-><init>(Landroid/webkit/WebViewClassic;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/WebViewClassic$InnerScrollChangedListener;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v0

    iput v0, p0, Landroid/webkit/WebViewClassic$InnerScrollChangedListener;->oldScrollX:I

    iget-object v0, p0, Landroid/webkit/WebViewClassic$InnerScrollChangedListener;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v0

    iput v0, p0, Landroid/webkit/WebViewClassic$InnerScrollChangedListener;->oldScrollY:I

    iget-object v0, p0, Landroid/webkit/WebViewClassic$InnerScrollChangedListener;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$200(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/WebViewClassic$InnerScrollChangedListener;->oldLocInWin:[I

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->getLocationInWindow([I)V

    return-void
.end method

.method public onScrollChanged()V
    .locals 6

    .prologue
    const/16 v5, 0xb8

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .local v0, scrollChanged:Z
    iget-object v3, p0, Landroid/webkit/WebViewClassic$InnerScrollChangedListener;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    iput v3, p0, Landroid/webkit/WebViewClassic$InnerScrollChangedListener;->newScrollX:I

    iget-object v3, p0, Landroid/webkit/WebViewClassic$InnerScrollChangedListener;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v3

    iput v3, p0, Landroid/webkit/WebViewClassic$InnerScrollChangedListener;->newScrollY:I

    iget v3, p0, Landroid/webkit/WebViewClassic$InnerScrollChangedListener;->oldScrollX:I

    iget v4, p0, Landroid/webkit/WebViewClassic$InnerScrollChangedListener;->newScrollX:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Landroid/webkit/WebViewClassic$InnerScrollChangedListener;->oldScrollY:I

    iget v4, p0, Landroid/webkit/WebViewClassic$InnerScrollChangedListener;->newScrollY:I

    if-eq v3, v4, :cond_4

    :cond_0
    move v0, v2

    :goto_0
    iget v3, p0, Landroid/webkit/WebViewClassic$InnerScrollChangedListener;->newScrollX:I

    iput v3, p0, Landroid/webkit/WebViewClassic$InnerScrollChangedListener;->oldScrollX:I

    iget v3, p0, Landroid/webkit/WebViewClassic$InnerScrollChangedListener;->newScrollY:I

    iput v3, p0, Landroid/webkit/WebViewClassic$InnerScrollChangedListener;->oldScrollY:I

    if-nez v0, :cond_2

    iget-object v3, p0, Landroid/webkit/WebViewClassic$InnerScrollChangedListener;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$200(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/WebViewClassic$InnerScrollChangedListener;->newLocInWin:[I

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->getLocationInWindow([I)V

    iget-object v3, p0, Landroid/webkit/WebViewClassic$InnerScrollChangedListener;->oldLocInWin:[I

    aget v3, v3, v1

    iget-object v4, p0, Landroid/webkit/WebViewClassic$InnerScrollChangedListener;->newLocInWin:[I

    aget v4, v4, v1

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Landroid/webkit/WebViewClassic$InnerScrollChangedListener;->oldLocInWin:[I

    aget v3, v3, v2

    iget-object v4, p0, Landroid/webkit/WebViewClassic$InnerScrollChangedListener;->newLocInWin:[I

    aget v4, v4, v2

    if-eq v3, v4, :cond_5

    :cond_1
    move v0, v2

    :goto_1
    iget-object v3, p0, Landroid/webkit/WebViewClassic$InnerScrollChangedListener;->oldLocInWin:[I

    iget-object v4, p0, Landroid/webkit/WebViewClassic$InnerScrollChangedListener;->newLocInWin:[I

    aget v4, v4, v1

    aput v4, v3, v1

    iget-object v1, p0, Landroid/webkit/WebViewClassic$InnerScrollChangedListener;->oldLocInWin:[I

    iget-object v3, p0, Landroid/webkit/WebViewClassic$InnerScrollChangedListener;->newLocInWin:[I

    aget v3, v3, v2

    aput v3, v1, v2

    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/webkit/WebViewClassic$InnerScrollChangedListener;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->updateSelectionPopup()V
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$10900(Landroid/webkit/WebViewClassic;)V

    iget-object v1, p0, Landroid/webkit/WebViewClassic$InnerScrollChangedListener;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v1, v1, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Landroid/webkit/WebViewClassic$InnerScrollChangedListener;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v1, v1, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1e

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method
