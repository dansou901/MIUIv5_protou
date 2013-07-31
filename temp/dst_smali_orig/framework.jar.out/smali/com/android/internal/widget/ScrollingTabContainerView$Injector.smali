.class Lcom/android/internal/widget/ScrollingTabContainerView$Injector;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static onTabViewClick(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/view/View;)V
    .locals 1
    .parameter "tabContainer"
    .parameter "tabView"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiui/util/UiUtils;->isV5Ui(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;

    .end local p0
    invoke-virtual {p0, p1}, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->animateIndicatorToTab(Landroid/view/View;)V

    :cond_0
    return-void
.end method
