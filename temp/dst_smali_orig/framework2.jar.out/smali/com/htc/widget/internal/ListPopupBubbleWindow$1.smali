.class Lcom/htc/widget/internal/ListPopupBubbleWindow$1;
.super Ljava/lang/Object;
.source "ListPopupBubbleWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/internal/ListPopupBubbleWindow;->buildDropDown()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;


# direct methods
.method constructor <init>(Lcom/htc/widget/internal/ListPopupBubbleWindow;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow$1;->this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow$1;->this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow$1;->this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->show()V

    :cond_0
    return-void
.end method
