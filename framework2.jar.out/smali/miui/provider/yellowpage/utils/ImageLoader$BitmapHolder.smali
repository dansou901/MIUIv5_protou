.class Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/yellowpage/utils/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapHolder"
.end annotation


# static fields
.field private static final LOADED:I = 0x1

.field private static final LOADING:I = 0x2

.field private static final NEEDED:I


# instance fields
.field mBitmapRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field mBytes:[B

.field mState:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/provider/yellowpage/utils/ImageLoader$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lmiui/provider/yellowpage/utils/ImageLoader$BitmapHolder;-><init>()V

    return-void
.end method
