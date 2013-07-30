.class Lcom/android/server/wm/DummyHtcAnimationManager;
.super Ljava/lang/Object;
.source "DummyHtcAnimationManager.java"

# interfaces
.implements Lcom/android/server/wm/HtcAnimationManager;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcGlAnimation"

    const-string v1, "DummyHtcGlAnimManager is created..., dummy dummy..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public applyAnimationLockedInner(Lcom/android/server/wm/AppWindowToken;Landroid/view/animation/Animation;ZZ)Z
    .locals 1
    .parameter "wtoken"
    .parameter "a"
    .parameter "initialized"
    .parameter "isEnter"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public applyOverrideAppTranAnimLocked(Z)Landroid/view/animation/Animation;
    .locals 1
    .parameter "isEnter"

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public cleanAnimParamsLocked()V
    .locals 0

    .prologue
    return-void
.end method

.method public clearCurrentAnimationLocked()V
    .locals 0

    .prologue
    return-void
.end method

.method public deinitAnimationLocked(Lcom/android/server/wm/AppWindowToken;)V
    .locals 0
    .parameter "appToken"

    .prologue
    return-void
.end method

.method public doHack(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, openingApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .local p2, closingApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    return-void
.end method

.method public getAnimationDuration()I
    .locals 1

    .prologue
    const/4 v0, -0x1

    return v0
.end method

.method public getAnimationRate()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public includeWindowForAnimationLocked(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;I)V
    .locals 0
    .parameter "w"
    .parameter "attrs"
    .parameter "attrFlags"

    .prologue
    return-void
.end method

.method public isOverrideAnimDuration()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isOverrideAnimRate()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isOverrideAppTransAnim()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public monitorTransAnim(Lcom/htc/view/animation/HtcBaseGlTransAnim;Z)V
    .locals 0
    .parameter "targetAnim"
    .parameter "isStart"

    .prologue
    return-void
.end method

.method public overrideHtcGlAppTransAnimLocked(Lcom/htc/view/animation/HtcBaseGlTransAnim;Lcom/htc/view/animation/HtcBaseGlTransAnim;)V
    .locals 0
    .parameter "animEnter"
    .parameter "animExit"

    .prologue
    return-void
.end method

.method public prepareRecentAppTransitionAnimation(Z)V
    .locals 0
    .parameter "isExcludeFromRecent"

    .prologue
    return-void
.end method

.method public progressAnimationLocked()V
    .locals 0

    .prologue
    return-void
.end method

.method public sendActionUpPositionForAnimationLocked(Lcom/android/server/wm/WindowState;FF)V
    .locals 0
    .parameter "win"
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    return-void
.end method

.method public setAnimationRate(I)V
    .locals 0
    .parameter "rate"

    .prologue
    return-void
.end method

.method public setTransitLocked(I)V
    .locals 0
    .parameter "transit"

    .prologue
    return-void
.end method

.method public startHomeByHomeKey()V
    .locals 0

    .prologue
    return-void
.end method
