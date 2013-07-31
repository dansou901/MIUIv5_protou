.class Landroid/webkit/WebViewClassic$AutoScrollerWrapper;
.super Ljava/lang/Object;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AutoScrollerWrapper"
.end annotation


# instance fields
.field private checkParent:Z

.field private mParentAutoScroller:Landroid/webkit/WebViewAutoScroller;

.field private mWebviewScroller:Landroid/webkit/WebViewAutoScroller;

.field private scrolling:Z

.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 11664
    iput-object p1, p0, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11665
    new-instance v0, Landroid/webkit/WebViewAutoScroller;

    invoke-direct {v0}, Landroid/webkit/WebViewAutoScroller;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->mWebviewScroller:Landroid/webkit/WebViewAutoScroller;

    .line 11666
    new-instance v0, Landroid/webkit/WebViewAutoScroller;

    invoke-direct {v0}, Landroid/webkit/WebViewAutoScroller;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->mParentAutoScroller:Landroid/webkit/WebViewAutoScroller;

    .line 11667
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->scrolling:Z

    .line 11668
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->checkParent:Z

    return-void
.end method


# virtual methods
.method doAutoSCroll(FF)Z
    .locals 3
    .parameter "sx"
    .parameter "sy"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 11697
    iget-object v2, p0, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->mWebviewScroller:Landroid/webkit/WebViewAutoScroller;

    invoke-virtual {v2, p1, p2, v0}, Landroid/webkit/WebViewAutoScroller;->checkAutoScroll(FFZ)V

    .line 11698
    iget-object v2, p0, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->mWebviewScroller:Landroid/webkit/WebViewAutoScroller;

    invoke-virtual {v2}, Landroid/webkit/WebViewAutoScroller;->isScrolling()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11699
    iput-boolean v0, p0, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->scrolling:Z

    .line 11712
    :goto_0
    return v0

    .line 11703
    :cond_0
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->checkParent:Z

    if-eqz v2, :cond_1

    .line 11704
    iget-object v2, p0, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->mParentAutoScroller:Landroid/webkit/WebViewAutoScroller;

    invoke-virtual {v2, p1, p2, v0}, Landroid/webkit/WebViewAutoScroller;->checkAutoScroll(FFZ)V

    .line 11705
    iget-object v2, p0, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->mParentAutoScroller:Landroid/webkit/WebViewAutoScroller;

    invoke-virtual {v2}, Landroid/webkit/WebViewAutoScroller;->isScrolling()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11706
    iput-boolean v0, p0, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->scrolling:Z

    goto :goto_0

    .line 11711
    :cond_1
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->scrolling:Z

    move v0, v1

    .line 11712
    goto :goto_0
.end method

.method findScrollableView(Landroid/webkit/WebView;)V
    .locals 2
    .parameter "webview"

    .prologue
    const/4 v0, 0x0

    .line 11671
    iput-boolean v0, p0, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->scrolling:Z

    .line 11672
    iput-boolean v0, p0, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->checkParent:Z

    .line 11674
    iget-object v0, p0, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->mWebviewScroller:Landroid/webkit/WebViewAutoScroller;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewAutoScroller;->findScrollableView(Landroid/view/View;)V

    .line 11675
    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 11676
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->checkParent:Z

    .line 11677
    iget-object v1, p0, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->mParentAutoScroller:Landroid/webkit/WebViewAutoScroller;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/webkit/WebViewAutoScroller;->findScrollableView(Landroid/view/View;)V

    .line 11679
    :cond_0
    return-void
.end method

.method isScrolling()Z
    .locals 1

    .prologue
    .line 11716
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->scrolling:Z

    return v0
.end method

.method stopScroll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11682
    iget-object v0, p0, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->mWebviewScroller:Landroid/webkit/WebViewAutoScroller;

    invoke-virtual {v0}, Landroid/webkit/WebViewAutoScroller;->stopScroll()V

    .line 11683
    iget-object v0, p0, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->mParentAutoScroller:Landroid/webkit/WebViewAutoScroller;

    invoke-virtual {v0}, Landroid/webkit/WebViewAutoScroller;->stopScroll()V

    .line 11685
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->scrolling:Z

    .line 11686
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic$AutoScrollerWrapper;->checkParent:Z

    .line 11687
    return-void
.end method
