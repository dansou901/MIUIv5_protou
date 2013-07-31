.class final Lcom/miui/internal/v5/app/ActionBarImpl$2;
.super Ljava/lang/Object;
.source "ActionBarImpl.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/v5/app/ActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 509
    move-object v0, p1

    check-cast v0, Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;

    .line 510
    .local v0, impl:Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;
    iget-object v1, v0, Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;->mSystemLisenter:Landroid/app/ActionBar$TabListener;

    if-eqz v1, :cond_0

    .line 511
    iget-object v1, v0, Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;->mSystemLisenter:Landroid/app/ActionBar$TabListener;

    invoke-interface {v1, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 513
    :cond_0
    iget-object v1, v0, Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;->mUserLisenter:Landroid/app/ActionBar$TabListener;

    if-eqz v1, :cond_1

    .line 514
    iget-object v1, v0, Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;->mUserLisenter:Landroid/app/ActionBar$TabListener;

    invoke-interface {v1, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 516
    :cond_1
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 498
    move-object v0, p1

    check-cast v0, Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;

    .line 499
    .local v0, impl:Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;
    iget-object v1, v0, Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;->mSystemLisenter:Landroid/app/ActionBar$TabListener;

    if-eqz v1, :cond_0

    .line 500
    iget-object v1, v0, Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;->mSystemLisenter:Landroid/app/ActionBar$TabListener;

    invoke-interface {v1, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 502
    :cond_0
    iget-object v1, v0, Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;->mUserLisenter:Landroid/app/ActionBar$TabListener;

    if-eqz v1, :cond_1

    .line 503
    iget-object v1, v0, Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;->mUserLisenter:Landroid/app/ActionBar$TabListener;

    invoke-interface {v1, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 505
    :cond_1
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 487
    move-object v0, p1

    check-cast v0, Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;

    .line 488
    .local v0, impl:Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;
    iget-object v1, v0, Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;->mSystemLisenter:Landroid/app/ActionBar$TabListener;

    if-eqz v1, :cond_0

    .line 489
    iget-object v1, v0, Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;->mSystemLisenter:Landroid/app/ActionBar$TabListener;

    invoke-interface {v1, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 491
    :cond_0
    iget-object v1, v0, Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;->mUserLisenter:Landroid/app/ActionBar$TabListener;

    if-eqz v1, :cond_1

    .line 492
    iget-object v1, v0, Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;->mUserLisenter:Landroid/app/ActionBar$TabListener;

    invoke-interface {v1, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 494
    :cond_1
    return-void
.end method
