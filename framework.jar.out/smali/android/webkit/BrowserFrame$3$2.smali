.class Landroid/webkit/BrowserFrame$3$2;
.super Ljava/lang/Object;
.source "BrowserFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/BrowserFrame$3;->cancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/BrowserFrame$3;


# direct methods
.method constructor <init>(Landroid/webkit/BrowserFrame$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1230
    iput-object p1, p0, Landroid/webkit/BrowserFrame$3$2;->this$1:Landroid/webkit/BrowserFrame$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1232
    iget-object v0, p0, Landroid/webkit/BrowserFrame$3$2;->this$1:Landroid/webkit/BrowserFrame$3;

    iget-object v0, v0, Landroid/webkit/BrowserFrame$3;->this$0:Landroid/webkit/BrowserFrame;

    iget-object v1, p0, Landroid/webkit/BrowserFrame$3$2;->this$1:Landroid/webkit/BrowserFrame$3;

    iget v1, v1, Landroid/webkit/BrowserFrame$3;->val$handle:I

    iget-object v2, p0, Landroid/webkit/BrowserFrame$3$2;->this$1:Landroid/webkit/BrowserFrame$3;

    iget v2, v2, Landroid/webkit/BrowserFrame$3;->val$certError:I

    #calls: Landroid/webkit/BrowserFrame;->nativeSslCertErrorCancel(II)V
    invoke-static {v0, v1, v2}, Landroid/webkit/BrowserFrame;->access$500(Landroid/webkit/BrowserFrame;II)V

    .line 1233
    return-void
.end method
