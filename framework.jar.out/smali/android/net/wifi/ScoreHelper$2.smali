.class Landroid/net/wifi/ScoreHelper$2;
.super Ljava/lang/Object;
.source "ScoreHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/ScoreHelper;->computeScore()Ljava/util/List;
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
        "Landroid/net/wifi/ScanResult;",
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
    .line 135
    iput-object p1, p0, Landroid/net/wifi/ScoreHelper$2;->this$0:Landroid/net/wifi/ScoreHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/net/wifi/ScanResult;Landroid/net/wifi/ScanResult;)I
    .locals 7
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 138
    iget-object v3, p0, Landroid/net/wifi/ScoreHelper$2;->this$0:Landroid/net/wifi/ScoreHelper;

    iget-object v3, v3, Landroid/net/wifi/ScoreHelper;->scoreMap:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScoreChart;

    invoke-virtual {v3}, Landroid/net/wifi/ScoreChart;->Score()I

    move-result v1

    .line 139
    .local v1, lScore:I
    iget-object v3, p0, Landroid/net/wifi/ScoreHelper$2;->this$0:Landroid/net/wifi/ScoreHelper;

    iget-object v3, v3, Landroid/net/wifi/ScoreHelper;->scoreMap:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScoreChart;

    invoke-virtual {v3}, Landroid/net/wifi/ScoreChart;->Score()I

    move-result v2

    .line 140
    .local v2, rScore:I
    sub-int v0, v1, v2

    .line 141
    .local v0, delta:I
    if-nez v0, :cond_0

    .line 142
    iget-object v3, p0, Landroid/net/wifi/ScoreHelper$2;->this$0:Landroid/net/wifi/ScoreHelper;

    iget-object v3, v3, Landroid/net/wifi/ScoreHelper;->scoreMap:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScoreChart;

    iget v4, v3, Landroid/net/wifi/ScoreChart;->score_frequency:I

    iget-object v3, p0, Landroid/net/wifi/ScoreHelper$2;->this$0:Landroid/net/wifi/ScoreHelper;

    iget-object v3, v3, Landroid/net/wifi/ScoreHelper;->scoreMap:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScoreChart;

    iget v3, v3, Landroid/net/wifi/ScoreChart;->score_frequency:I

    sub-int v0, v4, v3

    .line 143
    if-nez v0, :cond_0

    .line 144
    iget-object v3, p0, Landroid/net/wifi/ScoreHelper$2;->this$0:Landroid/net/wifi/ScoreHelper;

    iget-object v3, v3, Landroid/net/wifi/ScoreHelper;->scoreMap:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScoreChart;

    iget v4, v3, Landroid/net/wifi/ScoreChart;->score_rssi:I

    iget-object v3, p0, Landroid/net/wifi/ScoreHelper$2;->this$0:Landroid/net/wifi/ScoreHelper;

    iget-object v3, v3, Landroid/net/wifi/ScoreHelper;->scoreMap:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScoreChart;

    iget v3, v3, Landroid/net/wifi/ScoreChart;->score_rssi:I

    sub-int v0, v4, v3

    .line 145
    if-nez v0, :cond_0

    .line 146
    iget-object v3, p0, Landroid/net/wifi/ScoreHelper$2;->this$0:Landroid/net/wifi/ScoreHelper;

    iget-object v3, v3, Landroid/net/wifi/ScoreHelper;->scoreMap:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScoreChart;

    iget v4, v3, Landroid/net/wifi/ScoreChart;->score_tx:I

    iget-object v3, p0, Landroid/net/wifi/ScoreHelper$2;->this$0:Landroid/net/wifi/ScoreHelper;

    iget-object v3, v3, Landroid/net/wifi/ScoreHelper;->scoreMap:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScoreChart;

    iget v3, v3, Landroid/net/wifi/ScoreChart;->score_tx:I

    sub-int v0, v4, v3

    .line 147
    if-nez v0, :cond_0

    .line 148
    iget-object v3, p0, Landroid/net/wifi/ScoreHelper$2;->this$0:Landroid/net/wifi/ScoreHelper;

    iget-object v3, v3, Landroid/net/wifi/ScoreHelper;->scoreMap:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScoreChart;

    iget v4, v3, Landroid/net/wifi/ScoreChart;->score_activeuse:I

    iget-object v3, p0, Landroid/net/wifi/ScoreHelper$2;->this$0:Landroid/net/wifi/ScoreHelper;

    iget-object v3, v3, Landroid/net/wifi/ScoreHelper;->scoreMap:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScoreChart;

    iget v3, v3, Landroid/net/wifi/ScoreChart;->score_activeuse:I

    sub-int v0, v4, v3

    .line 149
    if-nez v0, :cond_0

    const/4 v3, 0x0

    .line 154
    :goto_0
    return v3

    :cond_0
    if-lez v0, :cond_1

    const/4 v3, -0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    check-cast p1, Landroid/net/wifi/ScanResult;

    .end local p1
    check-cast p2, Landroid/net/wifi/ScanResult;

    .end local p2
    invoke-virtual {p0, p1, p2}, Landroid/net/wifi/ScoreHelper$2;->compare(Landroid/net/wifi/ScanResult;Landroid/net/wifi/ScanResult;)I

    move-result v0

    return v0
.end method
