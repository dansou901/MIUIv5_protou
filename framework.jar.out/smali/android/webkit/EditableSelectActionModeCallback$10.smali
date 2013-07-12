.class Landroid/webkit/EditableSelectActionModeCallback$10;
.super Ljava/lang/Object;
.source "EditableSelectActionModeCallback.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/EditableSelectActionModeCallback;->onCreateDialogFontcolor(Landroid/content/Context;)V
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
    .line 685
    iput-object p1, p0, Landroid/webkit/EditableSelectActionModeCallback$10;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 688
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 690
    packed-switch p2, :pswitch_data_0

    .line 723
    :goto_0
    return-void

    .line 692
    :pswitch_0
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback$10;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    #getter for: Landroid/webkit/EditableSelectActionModeCallback;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl;
    invoke-static {v0}, Landroid/webkit/EditableSelectActionModeCallback;->access$300(Landroid/webkit/EditableSelectActionModeCallback;)Landroid/webkit/EditableWebViewImpl;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback$10;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    #getter for: Landroid/webkit/EditableSelectActionModeCallback;->m_nWhiteColor_select:I
    invoke-static {v1}, Landroid/webkit/EditableSelectActionModeCallback;->access$900(Landroid/webkit/EditableSelectActionModeCallback;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/EditableWebViewImpl;->SetForeColor(I)V

    .line 693
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback$10;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    invoke-virtual {v0}, Landroid/webkit/EditableSelectActionModeCallback;->finish()V

    goto :goto_0

    .line 696
    :pswitch_1
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback$10;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    #getter for: Landroid/webkit/EditableSelectActionModeCallback;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl;
    invoke-static {v0}, Landroid/webkit/EditableSelectActionModeCallback;->access$300(Landroid/webkit/EditableSelectActionModeCallback;)Landroid/webkit/EditableWebViewImpl;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback$10;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    #getter for: Landroid/webkit/EditableSelectActionModeCallback;->m_nBlackColor_select:I
    invoke-static {v1}, Landroid/webkit/EditableSelectActionModeCallback;->access$1000(Landroid/webkit/EditableSelectActionModeCallback;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/EditableWebViewImpl;->SetForeColor(I)V

    .line 697
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback$10;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    invoke-virtual {v0}, Landroid/webkit/EditableSelectActionModeCallback;->finish()V

    goto :goto_0

    .line 700
    :pswitch_2
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback$10;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    #getter for: Landroid/webkit/EditableSelectActionModeCallback;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl;
    invoke-static {v0}, Landroid/webkit/EditableSelectActionModeCallback;->access$300(Landroid/webkit/EditableSelectActionModeCallback;)Landroid/webkit/EditableWebViewImpl;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback$10;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    #getter for: Landroid/webkit/EditableSelectActionModeCallback;->m_nGrayColor_select:I
    invoke-static {v1}, Landroid/webkit/EditableSelectActionModeCallback;->access$1100(Landroid/webkit/EditableSelectActionModeCallback;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/EditableWebViewImpl;->SetForeColor(I)V

    .line 701
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback$10;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    invoke-virtual {v0}, Landroid/webkit/EditableSelectActionModeCallback;->finish()V

    goto :goto_0

    .line 704
    :pswitch_3
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback$10;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    #getter for: Landroid/webkit/EditableSelectActionModeCallback;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl;
    invoke-static {v0}, Landroid/webkit/EditableSelectActionModeCallback;->access$300(Landroid/webkit/EditableSelectActionModeCallback;)Landroid/webkit/EditableWebViewImpl;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback$10;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    #getter for: Landroid/webkit/EditableSelectActionModeCallback;->m_nRedColor_select:I
    invoke-static {v1}, Landroid/webkit/EditableSelectActionModeCallback;->access$1200(Landroid/webkit/EditableSelectActionModeCallback;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/EditableWebViewImpl;->SetForeColor(I)V

    .line 705
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback$10;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    invoke-virtual {v0}, Landroid/webkit/EditableSelectActionModeCallback;->finish()V

    goto :goto_0

    .line 708
    :pswitch_4
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback$10;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    #getter for: Landroid/webkit/EditableSelectActionModeCallback;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl;
    invoke-static {v0}, Landroid/webkit/EditableSelectActionModeCallback;->access$300(Landroid/webkit/EditableSelectActionModeCallback;)Landroid/webkit/EditableWebViewImpl;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback$10;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    #getter for: Landroid/webkit/EditableSelectActionModeCallback;->m_nGreenColor_select:I
    invoke-static {v1}, Landroid/webkit/EditableSelectActionModeCallback;->access$1300(Landroid/webkit/EditableSelectActionModeCallback;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/EditableWebViewImpl;->SetForeColor(I)V

    .line 709
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback$10;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    invoke-virtual {v0}, Landroid/webkit/EditableSelectActionModeCallback;->finish()V

    goto :goto_0

    .line 712
    :pswitch_5
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback$10;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    #getter for: Landroid/webkit/EditableSelectActionModeCallback;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl;
    invoke-static {v0}, Landroid/webkit/EditableSelectActionModeCallback;->access$300(Landroid/webkit/EditableSelectActionModeCallback;)Landroid/webkit/EditableWebViewImpl;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback$10;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    #getter for: Landroid/webkit/EditableSelectActionModeCallback;->m_nYellowColor_select:I
    invoke-static {v1}, Landroid/webkit/EditableSelectActionModeCallback;->access$1400(Landroid/webkit/EditableSelectActionModeCallback;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/EditableWebViewImpl;->SetForeColor(I)V

    .line 713
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback$10;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    invoke-virtual {v0}, Landroid/webkit/EditableSelectActionModeCallback;->finish()V

    goto :goto_0

    .line 716
    :pswitch_6
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback$10;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    #getter for: Landroid/webkit/EditableSelectActionModeCallback;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl;
    invoke-static {v0}, Landroid/webkit/EditableSelectActionModeCallback;->access$300(Landroid/webkit/EditableSelectActionModeCallback;)Landroid/webkit/EditableWebViewImpl;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback$10;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    #getter for: Landroid/webkit/EditableSelectActionModeCallback;->m_nBlueColor_select:I
    invoke-static {v1}, Landroid/webkit/EditableSelectActionModeCallback;->access$1500(Landroid/webkit/EditableSelectActionModeCallback;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/EditableWebViewImpl;->SetForeColor(I)V

    .line 717
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback$10;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    invoke-virtual {v0}, Landroid/webkit/EditableSelectActionModeCallback;->finish()V

    goto/16 :goto_0

    .line 690
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
