.class Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;
.super Lcom/android/internal/app/ActionBarImpl$TabImpl;
.source "ActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/v5/app/ActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabImpl"
.end annotation


# instance fields
.field mSystemLisenter:Landroid/app/ActionBar$TabListener;

.field mUserLisenter:Landroid/app/ActionBar$TabListener;

.field final synthetic this$0:Lcom/miui/internal/v5/app/ActionBarImpl;


# direct methods
.method public constructor <init>(Lcom/miui/internal/v5/app/ActionBarImpl;)V
    .locals 1
    .parameter

    .prologue
    .line 523
    iput-object p1, p0, Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;->this$0:Lcom/miui/internal/v5/app/ActionBarImpl;

    .line 524
    invoke-direct {p0, p1}, Lcom/android/internal/app/ActionBarImpl$TabImpl;-><init>(Lcom/android/internal/app/ActionBarImpl;)V

    .line 525
    sget-object v0, Lcom/miui/internal/v5/app/ActionBarImpl;->sLisenter:Landroid/app/ActionBar$TabListener;

    invoke-super {p0, v0}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 526
    return-void
.end method


# virtual methods
.method setSystemTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;
    .locals 0
    .parameter "callback"

    .prologue
    .line 535
    iput-object p1, p0, Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;->mSystemLisenter:Landroid/app/ActionBar$TabListener;

    .line 536
    return-object p0
.end method

.method public setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;
    .locals 0
    .parameter "callback"

    .prologue
    .line 530
    iput-object p1, p0, Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;->mUserLisenter:Landroid/app/ActionBar$TabListener;

    .line 531
    return-object p0
.end method
