.class final Landroid/view/ViewDebug$1;
.super Ljava/lang/Object;
.source "ViewDebug.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewDebug;->setVisibility(Landroid/view/View;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Landroid/view/ViewDebug$1;->val$view:Landroid/view/View;

    iput p2, p0, Landroid/view/ViewDebug$1;->val$visibility:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/view/ViewDebug$1;->val$view:Landroid/view/View;

    iget v1, p0, Landroid/view/ViewDebug$1;->val$visibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
