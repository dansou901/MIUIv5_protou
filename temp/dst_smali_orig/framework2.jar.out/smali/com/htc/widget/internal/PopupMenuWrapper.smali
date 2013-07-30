.class public Lcom/htc/widget/internal/PopupMenuWrapper;
.super Ljava/lang/Object;
.source "PopupMenuWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableHtcPopup(Lcom/android/internal/view/menu/MenuPopupHelper;Z)V
    .locals 0
    .parameter "helper"
    .parameter "enable"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuPopupHelper;->enableHtcPopup(Z)V

    return-void
.end method
