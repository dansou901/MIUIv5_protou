.class final Lmiui/widget/ScreenView$SavedState$1;
.super Ljava/lang/Object;
.source "ScreenView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ScreenView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lmiui/widget/ScreenView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1811
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lmiui/widget/ScreenView$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiui/widget/ScreenView$SavedState;
    .locals 2
    .parameter "in"

    .prologue
    .line 1813
    new-instance v0, Lmiui/widget/ScreenView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmiui/widget/ScreenView$SavedState;-><init>(Landroid/os/Parcel;Lmiui/widget/ScreenView$1;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1811
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView$SavedState$1;->newArray(I)[Lmiui/widget/ScreenView$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lmiui/widget/ScreenView$SavedState;
    .locals 1
    .parameter "size"

    .prologue
    .line 1817
    new-array v0, p1, [Lmiui/widget/ScreenView$SavedState;

    return-object v0
.end method
