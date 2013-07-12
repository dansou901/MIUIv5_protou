.class Landroid/net/wifi/ScoreHelper$1;
.super Ljava/lang/Object;
.source "ScoreHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/ScoreHelper;->setWifiConfigurationList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/net/wifi/WifiConfiguration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/ScoreHelper;


# direct methods
.method constructor <init>(Landroid/net/wifi/ScoreHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Landroid/net/wifi/ScoreHelper$1;->this$0:Landroid/net/wifi/ScoreHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 46
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v1, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v1, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-le v0, v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    .end local p1
    check-cast p2, Landroid/net/wifi/WifiConfiguration;

    .end local p2
    invoke-virtual {p0, p1, p2}, Landroid/net/wifi/ScoreHelper$1;->compare(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method
