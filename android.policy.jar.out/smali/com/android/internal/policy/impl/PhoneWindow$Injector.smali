.class Lcom/android/internal/policy/impl/PhoneWindow$Injector;
.super Ljava/lang/Object;
.source "PhoneWindow.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getActionBarOverlayResourceId(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 148
    invoke-static {p0}, Lmiui/util/UiUtils;->isV5Ui(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x6030041

    :goto_0
    return v0

    :cond_0
    const v0, 0x6030062

    invoke-static {p0, v0}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0
.end method

.method static getActionBarResourceId(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 133
    const/4 v0, -0x1

    .line 134
    .local v0, retval:I
    invoke-static {p0}, Lmiui/util/UiUtils;->isV5Ui(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    const v1, 0x601003d

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lmiui/util/UiUtils;->getBoolean(Landroid/content/Context;IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    const v0, 0x6030042

    .line 144
    :goto_0
    return v0

    .line 138
    :cond_0
    const v0, 0x6030040

    goto :goto_0

    .line 141
    :cond_1
    const v1, 0x6030061

    invoke-static {p0, v1}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0
.end method

.method static getFloatingWindowWidth(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 129
    invoke-static {p0}, Lmiui/util/UiUtils;->isV5Ui(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method static handleAppLayoutParams(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/view/WindowManager;Landroid/view/WindowManager$LayoutParams;)V
    .locals 3
    .parameter "wnd"
    .parameter "wm"
    .parameter "lp"

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmiui/util/UiUtils;->isV5Ui(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 117
    .local v0, rotation:I
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 119
    const/4 v1, -0x1

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 120
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x101005f

    invoke-static {v1, v2}, Lmiui/util/UiUtils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 121
    const/4 v1, 0x5

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 123
    :cond_0
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 124
    const v1, 0x3f333333

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 126
    .end local v0           #rotation:I
    :cond_1
    return-void
.end method

.method static handleStartingWindow(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/widget/ActionBarView;)V
    .locals 6
    .parameter "win"
    .parameter "abView"

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 154
    .local v2, context:Landroid/content/Context;
    invoke-static {v2}, Lmiui/util/UiUtils;->isV5Ui(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    move-object v4, p1

    .line 155
    check-cast v4, Lcom/miui/internal/v5/widget/ActionBarView;

    invoke-virtual {v4}, Lcom/miui/internal/v5/widget/ActionBarView;->hasTitle()Z

    move-result v4

    if-nez v4, :cond_0

    .line 156
    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Lcom/android/internal/widget/ActionBarView;->setVisibility(I)V

    .line 158
    :cond_0
    const v4, 0x601003e

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lmiui/util/UiUtils;->getBoolean(Landroid/content/Context;IZ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 159
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Lcom/android/internal/widget/ActionBarView;->setNavigationMode(I)V

    .line 160
    new-instance v3, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;

    invoke-direct {v3, v2}, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    .line 161
    .local v3, v:Lcom/miui/internal/v5/widget/ScrollingTabContainerView;
    invoke-static {v2}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v1

    .line 162
    .local v1, abp:Lcom/android/internal/view/ActionBarPolicy;
    invoke-virtual {v1}, Lcom/android/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 163
    invoke-virtual {p1, v3}, Lcom/android/internal/widget/ActionBarView;->setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    .line 172
    .end local v1           #abp:Lcom/android/internal/view/ActionBarPolicy;
    .end local v3           #v:Lcom/miui/internal/v5/widget/ScrollingTabContainerView;
    :cond_1
    :goto_0
    return-void

    .line 165
    .restart local v1       #abp:Lcom/android/internal/view/ActionBarPolicy;
    .restart local v3       #v:Lcom/miui/internal/v5/widget/ScrollingTabContainerView;
    :cond_2
    const v4, 0x60b0007

    invoke-static {v2, v4}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarContainer;

    .line 168
    .local v0, abc:Lcom/android/internal/widget/ActionBarContainer;
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ActionBarContainer;->setTabContainer(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    goto :goto_0
.end method
