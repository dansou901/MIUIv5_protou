.class public Lmiui/provider/yellowpage/YellowPageContract;
.super Ljava/lang/Object;
.source "YellowPageContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/yellowpage/YellowPageContract$AntispamWhiteList;,
        Lmiui/provider/yellowpage/YellowPageContract$ImageDomain;,
        Lmiui/provider/yellowpage/YellowPageContract$BuiltinVersion;,
        Lmiui/provider/yellowpage/YellowPageContract$DataStatus;,
        Lmiui/provider/yellowpage/YellowPageContract$T9Lookup;,
        Lmiui/provider/yellowpage/YellowPageContract$PhoneUsage;,
        Lmiui/provider/yellowpage/YellowPageContract$Provider;,
        Lmiui/provider/yellowpage/YellowPageContract$AntispamNumber;,
        Lmiui/provider/yellowpage/YellowPageContract$AntispamCategory;,
        Lmiui/provider/yellowpage/YellowPageContract$PhoneLookup;,
        Lmiui/provider/yellowpage/YellowPageContract$ImageLookup;,
        Lmiui/provider/yellowpage/YellowPageContract$YellowPage;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "miui.yellowpage"

.field private static final BASE_URI_STRING:Ljava/lang/String; = "content://miui.yellowpage"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
