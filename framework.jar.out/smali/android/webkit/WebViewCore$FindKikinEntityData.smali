.class Landroid/webkit/WebViewCore$FindKikinEntityData;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FindKikinEntityData"
.end annotation


# instance fields
.field mIsCheckingForTextAtPointOfTouch:Z

.field mIsFirstTouch:Z

.field mShouldLookNearbyText:Z

.field mX:I

.field mY:I


# direct methods
.method constructor <init>(IIZZZ)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "shouldLookNearbyText"
    .parameter "isFirstTouch"
    .parameter "isCheckingForTextAtPointOfTouch"

    .prologue
    .line 1049
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1050
    iput p1, p0, Landroid/webkit/WebViewCore$FindKikinEntityData;->mX:I

    .line 1051
    iput p2, p0, Landroid/webkit/WebViewCore$FindKikinEntityData;->mY:I

    .line 1052
    iput-boolean p3, p0, Landroid/webkit/WebViewCore$FindKikinEntityData;->mShouldLookNearbyText:Z

    .line 1053
    iput-boolean p4, p0, Landroid/webkit/WebViewCore$FindKikinEntityData;->mIsFirstTouch:Z

    .line 1054
    iput-boolean p5, p0, Landroid/webkit/WebViewCore$FindKikinEntityData;->mIsCheckingForTextAtPointOfTouch:Z

    .line 1055
    return-void
.end method
