.class Landroid/webkit/WebViewClassic$WebViewInputConnection$LaunchIMEHelper;
.super Landroid/os/ResultReceiver;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic$WebViewInputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LaunchIMEHelper"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/WebViewClassic$WebViewInputConnection;


# direct methods
.method public constructor <init>(Landroid/webkit/WebViewClassic$WebViewInputConnection;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 231
    iput-object p1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection$LaunchIMEHelper;->this$1:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    .line 232
    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 234
    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 239
    iget-object v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection$LaunchIMEHelper;->this$1:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    iget-object v0, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->focusCandidateIsRichEditable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection$LaunchIMEHelper;->this$1:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mayNeedRestartInput:Z

    if-eqz v0, :cond_1

    .line 243
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection$LaunchIMEHelper;->this$1:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    #calls: Landroid/webkit/WebViewClassic$WebViewInputConnection;->restartInput()V
    invoke-static {v0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->access$000(Landroid/webkit/WebViewClassic$WebViewInputConnection;)V

    .line 246
    :cond_1
    return-void
.end method
