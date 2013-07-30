.class final Landroid/webkit/QuickActionsHelper;
.super Ljava/lang/Object;
.source "QuickActionsHelper.java"


# instance fields
.field private ENABLE_QUICKACTION:Z

.field private GAP_DIP:I

.field private innerAnimation:Z

.field private lastSize:I

.field private mActionMenu:Landroid/webkit/DefaultActionMenu;

.field private mContext:Landroid/content/Context;

.field private mDefaultClickListener:Landroid/view/View$OnClickListener;

.field private mQuickActions:Lcom/htc/textselection/QuickActions;

.field private mQuickActionsWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Landroid/webkit/QuickActionsHelper;->ENABLE_QUICKACTION:Z

    const/4 v0, 0x3

    iput v0, p0, Landroid/webkit/QuickActionsHelper;->GAP_DIP:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/QuickActionsHelper;->innerAnimation:Z

    iput v1, p0, Landroid/webkit/QuickActionsHelper;->lastSize:I

    new-instance v0, Landroid/webkit/DefaultActionMenu;

    invoke-direct {v0}, Landroid/webkit/DefaultActionMenu;-><init>()V

    iput-object v0, p0, Landroid/webkit/QuickActionsHelper;->mActionMenu:Landroid/webkit/DefaultActionMenu;

    new-instance v0, Landroid/webkit/QuickActionsHelper$1;

    invoke-direct {v0, p0}, Landroid/webkit/QuickActionsHelper$1;-><init>(Landroid/webkit/QuickActionsHelper;)V

    iput-object v0, p0, Landroid/webkit/QuickActionsHelper;->mDefaultClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Landroid/webkit/QuickActionsHelper;->mContext:Landroid/content/Context;

    iget v0, p0, Landroid/webkit/QuickActionsHelper;->GAP_DIP:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/webkit/QuickActionsHelper;->GAP_DIP:I

    return-void
.end method

.method static synthetic access$000(Landroid/webkit/QuickActionsHelper;)Lcom/htc/textselection/QuickActions;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/webkit/QuickActionsHelper;->mQuickActions:Lcom/htc/textselection/QuickActions;

    return-object v0
.end method


# virtual methods
.method public hideQuickAction()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/webkit/QuickActionsHelper;->ENABLE_QUICKACTION:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/webkit/QuickActionsHelper;->mQuickActionsWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/QuickActionsHelper;->hideQuickAction(Z)V

    goto :goto_0
.end method

.method public hideQuickAction(Z)V
    .locals 1
    .parameter "fastHide"

    .prologue
    iget-boolean v0, p0, Landroid/webkit/QuickActionsHelper;->ENABLE_QUICKACTION:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/webkit/QuickActionsHelper;->mQuickActionsWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->fakeDismiss()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/webkit/QuickActionsHelper;->mQuickActionsWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->dismiss()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/QuickActionsHelper;->innerAnimation:Z

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/webkit/QuickActionsHelper;->ENABLE_QUICKACTION:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/QuickActionsHelper;->mQuickActionsWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnableQuickAction(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    iput-boolean p1, p0, Landroid/webkit/QuickActionsHelper;->ENABLE_QUICKACTION:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/webkit/QuickActionsHelper;->mQuickActionsWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;

    iget-object v1, p0, Landroid/webkit/QuickActionsHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/quickselection/HtcQuickSelectionWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/QuickActionsHelper;->mQuickActionsWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    :cond_0
    return-void
.end method

.method public setQuickActions(Lcom/htc/textselection/QuickActions;)V
    .locals 1
    .parameter "actions"

    .prologue
    iget-boolean v0, p0, Landroid/webkit/QuickActionsHelper;->ENABLE_QUICKACTION:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/webkit/QuickActionsHelper;->mQuickActions:Lcom/htc/textselection/QuickActions;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Landroid/webkit/QuickActionsHelper;->mQuickActions:Lcom/htc/textselection/QuickActions;

    iget-object v0, p0, Landroid/webkit/QuickActionsHelper;->mActionMenu:Landroid/webkit/DefaultActionMenu;

    invoke-virtual {v0}, Landroid/webkit/DefaultActionMenu;->clearMenu()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/webkit/QuickActionsHelper;->mActionMenu:Landroid/webkit/DefaultActionMenu;

    invoke-interface {p1, v0}, Lcom/htc/textselection/QuickActions;->onCreateQuickActions(Lcom/htc/textselection/ActionMenu;)V

    goto :goto_0
.end method

.method public showQuickAction(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 11
    .parameter "viewAnchorRect"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x0

    iget-boolean v4, p0, Landroid/webkit/QuickActionsHelper;->ENABLE_QUICKACTION:Z

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Landroid/webkit/QuickActionsHelper;->mQuickActionsWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->reset()V

    const/4 v1, 0x0

    .local v1, currentSize:I
    const/4 v2, 0x0

    .local v2, hasVisibleItems:Z
    iget-object v4, p0, Landroid/webkit/QuickActionsHelper;->mQuickActions:Lcom/htc/textselection/QuickActions;

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroid/webkit/QuickActionsHelper;->mQuickActions:Lcom/htc/textselection/QuickActions;

    iget-object v6, p0, Landroid/webkit/QuickActionsHelper;->mActionMenu:Landroid/webkit/DefaultActionMenu;

    invoke-interface {v4, v6}, Lcom/htc/textselection/QuickActions;->onPrepareShowQuicActions(Lcom/htc/textselection/ActionMenu;)V

    iget-object v4, p0, Landroid/webkit/QuickActionsHelper;->mActionMenu:Landroid/webkit/DefaultActionMenu;

    invoke-virtual {v4}, Landroid/webkit/DefaultActionMenu;->getActions()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/textselection/Action;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget v4, p0, Landroid/webkit/QuickActionsHelper;->lastSize:I

    if-ge v1, v4, :cond_3

    iget-object v4, p0, Landroid/webkit/QuickActionsHelper;->mQuickActionsWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->dismiss()V

    iput-object v5, p0, Landroid/webkit/QuickActionsHelper;->mQuickActionsWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    :cond_3
    iput v10, p0, Landroid/webkit/QuickActionsHelper;->lastSize:I

    iget-object v4, p0, Landroid/webkit/QuickActionsHelper;->mQuickActionsWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    if-nez v4, :cond_4

    new-instance v4, Lcom/htc/quickselection/HtcQuickSelectionWindow;

    iget-object v6, p0, Landroid/webkit/QuickActionsHelper;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/htc/quickselection/HtcQuickSelectionWindow;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroid/webkit/QuickActionsHelper;->mQuickActionsWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    :cond_4
    iget-object v4, p0, Landroid/webkit/QuickActionsHelper;->mActionMenu:Landroid/webkit/DefaultActionMenu;

    invoke-virtual {v4}, Landroid/webkit/DefaultActionMenu;->getActions()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/textselection/Action;

    .local v0, a:Lcom/htc/textselection/Action;
    invoke-interface {v0}, Lcom/htc/textselection/Action;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v6, p0, Landroid/webkit/QuickActionsHelper;->mQuickActionsWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-interface {v0}, Lcom/htc/textselection/Action;->getID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0}, Lcom/htc/textselection/Action;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iget-object v9, p0, Landroid/webkit/QuickActionsHelper;->mDefaultClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0}, Lcom/htc/textselection/Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Lcom/htc/textselection/Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-virtual {v6, v7, v8, v9, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    const/4 v2, 0x1

    iget v4, p0, Landroid/webkit/QuickActionsHelper;->lastSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/webkit/QuickActionsHelper;->lastSize:I

    goto :goto_2

    :cond_6
    move-object v4, v5

    goto :goto_3

    .end local v0           #a:Lcom/htc/textselection/Action;
    .end local v3           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/textselection/Action;>;"
    :cond_7
    if-eqz v2, :cond_0

    iget v4, p0, Landroid/webkit/QuickActionsHelper;->GAP_DIP:I

    invoke-virtual {p1, v10, v4}, Landroid/graphics/Rect;->inset(II)V

    iget-object v4, p0, Landroid/webkit/QuickActionsHelper;->mQuickActionsWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    iget-boolean v5, p0, Landroid/webkit/QuickActionsHelper;->innerAnimation:Z

    invoke-virtual {v4, p2, p1, v5}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->show(Landroid/view/View;Landroid/graphics/Rect;Z)V

    iget-boolean v4, p0, Landroid/webkit/QuickActionsHelper;->innerAnimation:Z

    if-eqz v4, :cond_0

    iput-boolean v10, p0, Landroid/webkit/QuickActionsHelper;->innerAnimation:Z

    goto/16 :goto_0
.end method
