.class Landroid/webkit/EditableSelectActionModeCallback$8;
.super Ljava/lang/Object;
.source "EditableSelectActionModeCallback.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/EditableSelectActionModeCallback;->onCreateDialogFontsize(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/EditableSelectActionModeCallback;


# direct methods
.method constructor <init>(Landroid/webkit/EditableSelectActionModeCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 624
    iput-object p1, p0, Landroid/webkit/EditableSelectActionModeCallback$8;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 627
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 629
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback$8;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback$8;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    #getter for: Landroid/webkit/EditableSelectActionModeCallback;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl;
    invoke-static {v1}, Landroid/webkit/EditableSelectActionModeCallback;->access$300(Landroid/webkit/EditableSelectActionModeCallback;)Landroid/webkit/EditableWebViewImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/EditableWebViewImpl;->getFontSize()I

    move-result v1

    #calls: Landroid/webkit/EditableSelectActionModeCallback;->getFontSizeIdx(I)I
    invoke-static {v0, v1}, Landroid/webkit/EditableSelectActionModeCallback;->access$800(Landroid/webkit/EditableSelectActionModeCallback;I)I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 630
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback$8;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    #getter for: Landroid/webkit/EditableSelectActionModeCallback;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl;
    invoke-static {v0}, Landroid/webkit/EditableSelectActionModeCallback;->access$300(Landroid/webkit/EditableSelectActionModeCallback;)Landroid/webkit/EditableWebViewImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/EditableWebViewImpl;->onEndSelect()V

    .line 631
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback$8;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    invoke-virtual {v0}, Landroid/webkit/EditableSelectActionModeCallback;->finish()V

    .line 659
    :goto_0
    return-void

    .line 634
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 636
    :pswitch_0
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback$8;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    #getter for: Landroid/webkit/EditableSelectActionModeCallback;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl;
    invoke-static {v0}, Landroid/webkit/EditableSelectActionModeCallback;->access$300(Landroid/webkit/EditableSelectActionModeCallback;)Landroid/webkit/EditableWebViewImpl;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/webkit/EditableWebViewImpl;->SetFontSize(I)V

    .line 637
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback$8;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    invoke-virtual {v0}, Landroid/webkit/EditableSelectActionModeCallback;->finish()V

    goto :goto_0

    .line 640
    :pswitch_1
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback$8;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    #getter for: Landroid/webkit/EditableSelectActionModeCallback;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl;
    invoke-static {v0}, Landroid/webkit/EditableSelectActionModeCallback;->access$300(Landroid/webkit/EditableSelectActionModeCallback;)Landroid/webkit/EditableWebViewImpl;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/webkit/EditableWebViewImpl;->SetFontSize(I)V

    .line 641
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback$8;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    invoke-virtual {v0}, Landroid/webkit/EditableSelectActionModeCallback;->finish()V

    goto :goto_0

    .line 644
    :pswitch_2
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback$8;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    #getter for: Landroid/webkit/EditableSelectActionModeCallback;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl;
    invoke-static {v0}, Landroid/webkit/EditableSelectActionModeCallback;->access$300(Landroid/webkit/EditableSelectActionModeCallback;)Landroid/webkit/EditableWebViewImpl;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/EditableWebViewImpl;->SetFontSize(I)V

    .line 645
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback$8;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    invoke-virtual {v0}, Landroid/webkit/EditableSelectActionModeCallback;->finish()V

    goto :goto_0

    .line 648
    :pswitch_3
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback$8;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    #getter for: Landroid/webkit/EditableSelectActionModeCallback;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl;
    invoke-static {v0}, Landroid/webkit/EditableSelectActionModeCallback;->access$300(Landroid/webkit/EditableSelectActionModeCallback;)Landroid/webkit/EditableWebViewImpl;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/webkit/EditableWebViewImpl;->SetFontSize(I)V

    .line 649
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback$8;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    invoke-virtual {v0}, Landroid/webkit/EditableSelectActionModeCallback;->finish()V

    goto :goto_0

    .line 634
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
