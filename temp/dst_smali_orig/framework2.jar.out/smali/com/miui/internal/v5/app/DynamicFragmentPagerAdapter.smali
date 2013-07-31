.class Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;
.super Lmiui/v5/view/PagerAdapter;
.source "ViewPagerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurTransaction:Landroid/app/FragmentTransaction;

.field private mCurrentPrimaryItem:Landroid/app/Fragment;

.field private mFragmentInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mViewPager:Lmiui/v5/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/FragmentManager;Lmiui/v5/view/ViewPager;)V
    .locals 2
    .parameter "context"
    .parameter "fm"
    .parameter "viewPager"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Lmiui/v5/view/PagerAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    iput-object v1, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    iput-object p1, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    iput-object p3, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mViewPager:Lmiui/v5/view/ViewPager;

    iget-object v0, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mViewPager:Lmiui/v5/view/ViewPager;

    invoke-virtual {v0, p0}, Lmiui/v5/view/ViewPager;->setAdapter(Lmiui/v5/view/PagerAdapter;)V

    return-void
.end method

.method private removeAllFragmentFromManager()V
    .locals 5

    .prologue
    iget-object v4, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .local v1, ft:Landroid/app/FragmentTransaction;
    iget-object v4, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->getFragment(IZ)Landroid/app/Fragment;

    move-result-object v0

    .local v0, fragment:Landroid/app/Fragment;
    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #fragment:Landroid/app/Fragment;
    :cond_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object v4, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v4}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method

.method private removeFragmentFromManager(Landroid/app/Fragment;)V
    .locals 2
    .parameter "fragment"

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .local v0, fm:Landroid/app/FragmentManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .local v1, ft:Landroid/app/FragmentTransaction;
    invoke-virtual {v1, p1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .end local v0           #fm:Landroid/app/FragmentManager;
    .end local v1           #ft:Landroid/app/FragmentTransaction;
    :cond_0
    return-void
.end method


# virtual methods
.method addFragment(Ljava/lang/String;ILjava/lang/Class;Landroid/os/Bundle;Landroid/app/ActionBar$Tab;Z)I
    .locals 8
    .parameter "tag"
    .parameter "index"
    .parameter
    .parameter "args"
    .parameter "tab"
    .parameter "hasActionMenu"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/app/ActionBar$Tab;",
            "Z)I"
        }
    .end annotation

    .prologue
    .local p3, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Fragment;>;"
    iget-object v7, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    new-instance v0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;-><init>(Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;Landroid/app/ActionBar$Tab;Z)V

    invoke-virtual {v7, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->notifyDataSetChanged()V

    return p2
.end method

.method addFragment(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;Landroid/app/ActionBar$Tab;Z)I
    .locals 8
    .parameter "tag"
    .parameter
    .parameter "args"
    .parameter "tab"
    .parameter "hasActionMenu"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/app/ActionBar$Tab;",
            "Z)I"
        }
    .end annotation

    .prologue
    .local p2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Fragment;>;"
    iget-object v7, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    new-instance v0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;-><init>(Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;Landroid/app/ActionBar$Tab;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    iget-object v0, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    check-cast p3, Landroid/app/Fragment;

    .end local p3
    invoke-virtual {v0, p3}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    return-void
.end method

.method findPositionByTag(Ljava/lang/String;)I
    .locals 4
    .parameter "tag"

    .prologue
    iget-object v3, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;

    .local v0, fi:Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;
    iget-object v3, v0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;->tag:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .end local v0           #fi:Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;
    .end local v1           #i:I
    :goto_1
    return v1

    .restart local v0       #fi:Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #fi:Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 1
    .parameter "container"

    .prologue
    iget-object v0, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    iget-object v0, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getFragment(IZ)Landroid/app/Fragment;
    .locals 5
    .parameter "position"
    .parameter "create"

    .prologue
    const/4 v4, 0x0

    iget-object v1, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;

    .local v0, fi:Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;
    iget-object v1, v0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;->fragment:Landroid/app/Fragment;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    iget-object v2, v0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;->fragment:Landroid/app/Fragment;

    iget-object v1, v0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;->fragment:Landroid/app/Fragment;

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;->clazz:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;->args:Landroid/os/Bundle;

    invoke-static {v1, v2, v3}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;->fragment:Landroid/app/Fragment;

    iput-object v4, v0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;->clazz:Ljava/lang/Class;

    iput-object v4, v0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;->args:Landroid/os/Bundle;

    :cond_0
    iget-object v1, v0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;->fragment:Landroid/app/Fragment;

    return-object v1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 3
    .parameter "object"

    .prologue
    iget-object v2, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;

    iget-object v2, v2, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;->fragment:Landroid/app/Fragment;

    if-ne p1, v2, :cond_0

    .end local v0           #i:I
    :goto_1
    return v0

    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x2

    goto :goto_1
.end method

.method getTabAt(I)Landroid/app/ActionBar$Tab;
    .locals 1
    .parameter "position"

    .prologue
    iget-object v0, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;

    iget-object v0, v0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;->tab:Landroid/app/ActionBar$Tab;

    return-object v0
.end method

.method public hasActionMenu(I)Z
    .locals 1
    .parameter "position"

    .prologue
    iget-object v0, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;

    iget-boolean v0, v0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;->hasActionMenu:Z

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5
    .parameter "container"
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    iget-object v1, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p2, v1}, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->getFragment(IZ)Landroid/app/Fragment;

    move-result-object v0

    .local v0, fragment:Landroid/app/Fragment;
    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :goto_0
    iget-object v1, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eq v0, v1, :cond_1

    invoke-virtual {v0, v4}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    invoke-virtual {v0, v4}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    :cond_1
    return-object v0

    :cond_2
    iget-object v2, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    iget-object v1, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;

    iget-object v1, v1, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    check-cast p2, Landroid/app/Fragment;

    .end local p2
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method removeAllFragment()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->removeAllFragmentFromManager()V

    iget-object v0, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method removeFragment(Landroid/app/ActionBar$Tab;)I
    .locals 4
    .parameter "tab"

    .prologue
    iget-object v3, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;

    .local v0, fi:Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;
    iget-object v3, v0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;->tab:Landroid/app/ActionBar$Tab;

    if-ne v3, p1, :cond_0

    iget-object v3, v0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;->fragment:Landroid/app/Fragment;

    invoke-direct {p0, v3}, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->removeFragmentFromManager(Landroid/app/Fragment;)V

    iget-object v3, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->notifyDataSetChanged()V

    .end local v0           #fi:Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;
    .end local v1           #i:I
    :goto_1
    return v1

    .restart local v0       #fi:Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #fi:Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method removeFragment(Landroid/app/Fragment;)I
    .locals 3
    .parameter "fragment"

    .prologue
    iget-object v2, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->getFragment(IZ)Landroid/app/Fragment;

    move-result-object v2

    if-ne v2, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->removeFragmentFromManager(Landroid/app/Fragment;)V

    iget-object v2, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->notifyDataSetChanged()V

    .end local v0           #i:I
    :goto_1
    return v0

    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method removeFragmentAt(I)V
    .locals 1
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->getFragment(IZ)Landroid/app/Fragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->removeFragmentFromManager(Landroid/app/Fragment;)V

    iget-object v0, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method setFragmentActionMenuAt(IZ)V
    .locals 2
    .parameter "position"
    .parameter "hasActionMenu"

    .prologue
    iget-object v1, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;

    .local v0, fi:Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;
    iget-boolean v1, v0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;->hasActionMenu:Z

    if-eq v1, p2, :cond_0

    iput-boolean p2, v0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;->hasActionMenu:Z

    invoke-virtual {p0}, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    move-object v0, p3

    check-cast v0, Landroid/app/Fragment;

    .local v0, fragment:Landroid/app/Fragment;
    iget-object v1, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    iget-object v1, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    invoke-virtual {v0, v3}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    :cond_1
    iput-object v0, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    :cond_2
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "container"

    .prologue
    return-void
.end method
