.class Landroid/webkit/BrowserFrame$3;
.super Landroid/webkit/SslErrorHandler;
.source "BrowserFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/BrowserFrame;->reportSslCertError(II[BLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/BrowserFrame;

.field final synthetic val$certError:I

.field final synthetic val$handle:I

.field final synthetic val$sslError:Landroid/net/http/SslError;


# direct methods
.method constructor <init>(Landroid/webkit/BrowserFrame;Landroid/net/http/SslError;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1209
    iput-object p1, p0, Landroid/webkit/BrowserFrame$3;->this$0:Landroid/webkit/BrowserFrame;

    iput-object p2, p0, Landroid/webkit/BrowserFrame$3;->val$sslError:Landroid/net/http/SslError;

    iput p3, p0, Landroid/webkit/BrowserFrame$3;->val$handle:I

    iput p4, p0, Landroid/webkit/BrowserFrame$3;->val$certError:I

    invoke-direct {p0}, Landroid/webkit/SslErrorHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 1230
    new-instance v0, Landroid/webkit/BrowserFrame$3$2;

    invoke-direct {v0, p0}, Landroid/webkit/BrowserFrame$3$2;-><init>(Landroid/webkit/BrowserFrame$3;)V

    invoke-virtual {p0, v0}, Landroid/webkit/BrowserFrame$3;->post(Ljava/lang/Runnable;)Z

    .line 1235
    return-void
.end method

.method public proceed()V
    .locals 5

    .prologue
    .line 1212
    invoke-static {}, Landroid/webkit/SslCertLookupTable;->getInstance()Landroid/webkit/SslCertLookupTable;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/BrowserFrame$3;->val$sslError:Landroid/net/http/SslError;

    invoke-virtual {v3, v4}, Landroid/webkit/SslCertLookupTable;->setIsAllowed(Landroid/net/http/SslError;)V

    .line 1215
    invoke-static {}, Landroid/webkit/SslCertLookupTable;->getInstance()Landroid/webkit/SslCertLookupTable;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/BrowserFrame$3;->val$sslError:Landroid/net/http/SslError;

    invoke-virtual {v3, v4}, Landroid/webkit/SslCertLookupTable;->removePendingHandles(Landroid/net/http/SslError;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1216
    .local v1, handles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v1, :cond_1

    .line 1227
    :cond_0
    return-void

    .line 1217
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1218
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1220
    .local v0, handle:I
    new-instance v3, Landroid/webkit/BrowserFrame$3$1;

    invoke-direct {v3, p0, v0}, Landroid/webkit/BrowserFrame$3$1;-><init>(Landroid/webkit/BrowserFrame$3;I)V

    invoke-virtual {p0, v3}, Landroid/webkit/BrowserFrame$3;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
