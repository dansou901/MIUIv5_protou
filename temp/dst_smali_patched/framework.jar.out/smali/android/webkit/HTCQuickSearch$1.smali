.class Landroid/webkit/HTCQuickSearch$1;
.super Ljava/lang/Thread;
.source "HTCQuickSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/HTCQuickSearch;->startTranslation(Ljava/lang/String;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HTCQuickSearch;


# direct methods
.method constructor <init>(Landroid/webkit/HTCQuickSearch;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/webkit/HTCQuickSearch$1;->this$0:Landroid/webkit/HTCQuickSearch;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const-string v1, "JuLOG"

    const-string v2, "translate start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v1, p0, Landroid/webkit/HTCQuickSearch$1;->this$0:Landroid/webkit/HTCQuickSearch;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/webkit/HTCQuickSearch;->mTranslateResult:Ljava/lang/String;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    const-string v1, "JuLOG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTranslateThread end: result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/HTCQuickSearch$1;->this$0:Landroid/webkit/HTCQuickSearch;

    iget-object v3, v3, Landroid/webkit/HTCQuickSearch;->mTranslateResult:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/webkit/HTCQuickSearch$1;->this$0:Landroid/webkit/HTCQuickSearch;

    #getter for: Landroid/webkit/HTCQuickSearch;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v1}, Landroid/webkit/HTCQuickSearch;->access$000(Landroid/webkit/HTCQuickSearch;)Landroid/webkit/WebViewClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/HTCQuickSearch$1;->this$0:Landroid/webkit/HTCQuickSearch;

    iget-object v2, v2, Landroid/webkit/HTCQuickSearch;->mProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    iget-object v1, p0, Landroid/webkit/HTCQuickSearch$1;->this$0:Landroid/webkit/HTCQuickSearch;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/webkit/HTCQuickSearch;->mProvider:Landroid/content/IContentProvider;

    return-void
.end method
