.class public Lmiui/v5/app/SearchMode$SearchActionMode;
.super Lmiui/v5/view/MiuiActionMode;
.source "SearchMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/app/SearchMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchActionMode"
.end annotation


# instance fields
.field private final mToken:Lmiui/v5/app/SearchMode$Token;


# direct methods
.method constructor <init>(Lmiui/v5/app/SearchMode$Token;)V
    .locals 0
    .parameter "token"

    .prologue
    invoke-direct {p0}, Lmiui/v5/view/MiuiActionMode;-><init>()V

    iput-object p1, p0, Lmiui/v5/app/SearchMode$SearchActionMode;->mToken:Lmiui/v5/app/SearchMode$Token;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/v5/app/SearchMode$SearchActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/app/SearchMode$SearchActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p0}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    :cond_0
    invoke-super {p0}, Lmiui/v5/view/MiuiActionMode;->finish()V

    return-void
.end method

.method public getToken()Lmiui/v5/app/SearchMode$Token;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/v5/app/SearchMode$SearchActionMode;->mToken:Lmiui/v5/app/SearchMode$Token;

    return-object v0
.end method

.method public start(Landroid/view/ActionMode$Callback;)V
    .locals 1
    .parameter "callback"

    .prologue
    invoke-super {p0, p1}, Lmiui/v5/view/MiuiActionMode;->start(Landroid/view/ActionMode$Callback;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    :cond_0
    return-void
.end method
