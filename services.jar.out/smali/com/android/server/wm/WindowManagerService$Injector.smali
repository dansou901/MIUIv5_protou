.class Lcom/android/server/wm/WindowManagerService$Injector;
.super Ljava/lang/Object;
.source "WindowManagerService.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static findTopWindow(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/WindowState;
    .locals 5
    .parameter "wms"

    .prologue
    const/4 v4, -0x1

    .line 171
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_3

    .line 172
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 173
    .local v1, w:Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_2

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x63

    if-gt v2, v3, :cond_2

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v2, v4, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v2, v4, :cond_1

    :cond_0
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    instance-of v2, v2, Landroid/view/IApplicationToken;

    if-eqz v2, :cond_2

    .line 183
    .end local v1           #w:Lcom/android/server/wm/WindowState;
    :cond_1
    :goto_1
    return-object v1

    .line 171
    .restart local v1       #w:Lcom/android/server/wm/WindowState;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 183
    .end local v1           #w:Lcom/android/server/wm/WindowState;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static hideFloatingWindow(Lcom/android/server/wm/WindowManagerService;)V
    .locals 5
    .parameter "wms"

    .prologue
    .line 282
    invoke-static {p0}, Lcom/android/server/wm/WindowManagerService$Injector;->findTopWindow(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 283
    .local v1, topWindow:Lcom/android/server/wm/WindowState;
    if-nez v1, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_0

    .line 289
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 290
    .local v2, w:Lcom/android/server/wm/WindowState;
    if-ne v2, v1, :cond_2

    .line 291
    invoke-static {p0, v2}, Lcom/android/server/wm/WindowManagerService$Injector;->showWindow(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;)V

    goto :goto_0

    .line 299
    :cond_2
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-nez v3, :cond_3

    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v3, :cond_3

    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mFloatingWindowAllowed:Z

    if-nez v3, :cond_3

    iget v3, v2, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    const/high16 v4, -0x4080

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 288
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 306
    :cond_4
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    if-eqz v3, :cond_3

    .line 307
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v3, v3, Lcom/android/server/wm/Session;->mUid:I

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v4, v4, Lcom/android/server/wm/Session;->mUid:I

    if-eq v3, v4, :cond_6

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d5

    if-ne v3, v4, :cond_5

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    instance-of v3, v3, Landroid/view/IApplicationToken;

    if-nez v3, :cond_6

    .line 310
    invoke-static {p0, v2}, Lcom/android/server/wm/WindowManagerService$Injector;->hideWindow(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;)V

    goto :goto_2

    .line 312
    :cond_6
    invoke-static {p0, v2}, Lcom/android/server/wm/WindowManagerService$Injector;->showWindow(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;)V

    goto :goto_2
.end method

.method static hideWindow(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;)V
    .locals 3
    .parameter "wms"
    .parameter "w"

    .prologue
    .line 251
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mMiuiHidden:Z

    if-nez v1, :cond_2

    .line 252
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/wm/WindowStateAnimator;->mMiuiHidden:Z

    .line 254
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->hide()V

    .line 258
    :cond_0
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v1, :cond_1

    .line 259
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v1, v2}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 260
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    iput-object v1, p1, Lcom/android/server/wm/WindowState;->mInputChannelSaved:Landroid/view/InputChannel;

    .line 261
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 264
    :cond_1
    invoke-static {p1}, Lcom/android/server/wm/WindowManagerService$Injector;->saveFloatingWindowState(Lcom/android/server/wm/WindowState;)V

    .line 267
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 268
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-static {p0, v1}, Lcom/android/server/wm/WindowManagerService$Injector;->hideWindow(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;)V

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    :cond_3
    return-void
.end method

.method static isFloatingWindowAllowed(I)Z
    .locals 8
    .parameter "uid"

    .prologue
    const/high16 v7, 0x800

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 192
    const/4 v1, 0x0

    .line 193
    .local v1, isAllowed:Z
    const/16 v6, 0x3e8

    if-eq p0, v6, :cond_0

    const/16 v6, 0x3e9

    if-eq p0, v6, :cond_0

    const/16 v6, 0x7d0

    if-eq p0, v6, :cond_0

    const/16 v6, 0x3ef

    if-eq p0, v6, :cond_0

    const/16 v6, 0x3f2

    if-eq p0, v6, :cond_0

    const/16 v6, 0x3f5

    if-eq p0, v6, :cond_0

    const/16 v6, 0x3fb

    if-eq p0, v6, :cond_0

    const/16 v6, 0x3f8

    if-eq p0, v6, :cond_0

    const/16 v6, 0x403

    if-ne p0, v6, :cond_2

    .line 202
    :cond_0
    const/4 v1, 0x1

    .line 216
    :cond_1
    :goto_0
    return v1

    .line 204
    :cond_2
    const-string v6, "package"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageManagerService;

    .line 206
    .local v3, pms:Lcom/android/server/pm/PackageManagerService;
    invoke-virtual {v3, p0}, Lcom/android/server/pm/PackageManagerService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, packages:[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v6, v2

    if-lez v6, :cond_1

    .line 208
    aget-object v6, v2, v4

    invoke-virtual {v3, v6, v4, v4}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 209
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1

    .line 210
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eq v6, v5, :cond_3

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_4

    :cond_3
    move v1, v5

    :goto_1
    goto :goto_0

    :cond_4
    move v1, v4

    goto :goto_1
.end method

.method static restoreFloatingWindowState(Lcom/android/server/wm/WindowState;)V
    .locals 2
    .parameter "w"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mMiuiHidden:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAttrFlagsSaved:Z

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAttrFlags:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 325
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAttrFlagsSaved:Z

    .line 327
    :cond_0
    return-void
.end method

.method static saveFloatingWindowState(Lcom/android/server/wm/WindowState;)V
    .locals 2
    .parameter "w"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mMiuiHidden:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAttrFlagsSaved:Z

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttrFlags:I

    .line 336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAttrFlagsSaved:Z

    .line 337
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 340
    :cond_0
    return-void
.end method

.method static showWindow(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;)V
    .locals 4
    .parameter "wms"
    .parameter "w"

    .prologue
    .line 225
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mMiuiHidden:Z

    if-eqz v1, :cond_1

    .line 226
    invoke-static {p1}, Lcom/android/server/wm/WindowManagerService$Injector;->restoreFloatingWindowState(Lcom/android/server/wm/WindowState;)V

    .line 228
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/wm/WindowStateAnimator;->mMiuiHidden:Z

    .line 230
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mInputChannelSaved:Landroid/view/InputChannel;

    iput-object v1, p1, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 231
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;)V

    .line 235
    :cond_0
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v1, :cond_1

    .line 236
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->show()V

    .line 240
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 241
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-static {p0, v1}, Lcom/android/server/wm/WindowManagerService$Injector;->showWindow(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;)V

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    :cond_2
    return-void
.end method

.method static updateFocusAndLayout(Lcom/android/server/wm/WindowManagerService;I)Z
    .locals 2
    .parameter "wms"
    .parameter "tokenPos"

    .prologue
    .line 346
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
