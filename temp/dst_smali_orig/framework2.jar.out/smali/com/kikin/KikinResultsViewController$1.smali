.class Lcom/kikin/KikinResultsViewController$1;
.super Landroid/view/OrientationEventListener;
.source "KikinResultsViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kikin/KikinResultsViewController;-><init>(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kikin/KikinResultsViewController;


# direct methods
.method constructor <init>(Lcom/kikin/KikinResultsViewController;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    iput-object p1, p0, Lcom/kikin/KikinResultsViewController$1;->this$0:Lcom/kikin/KikinResultsViewController;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController$1;->this$0:Lcom/kikin/KikinResultsViewController;

    invoke-virtual {v0, p1}, Lcom/kikin/KikinResultsViewController;->onOrientationChanged(I)V

    return-void
.end method
