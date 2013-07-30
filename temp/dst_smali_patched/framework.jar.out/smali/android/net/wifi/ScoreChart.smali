.class public Landroid/net/wifi/ScoreChart;
.super Ljava/lang/Object;
.source "ScoreChart.java"


# instance fields
.field public bssid:Ljava/lang/String;

.field public score_activeuse:I

.field public score_disconnect:I

.field public score_frequency:I

.field public score_rssi:I

.field public score_tx:I

.field public ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/ScoreChart;->ssid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/ScoreChart;->bssid:Ljava/lang/String;

    iput v1, p0, Landroid/net/wifi/ScoreChart;->score_tx:I

    iput v1, p0, Landroid/net/wifi/ScoreChart;->score_frequency:I

    iput v1, p0, Landroid/net/wifi/ScoreChart;->score_rssi:I

    iput v1, p0, Landroid/net/wifi/ScoreChart;->score_disconnect:I

    iput v1, p0, Landroid/net/wifi/ScoreChart;->score_activeuse:I

    return-void
.end method


# virtual methods
.method public Score()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/net/wifi/ScoreChart;->score_tx:I

    iget v1, p0, Landroid/net/wifi/ScoreChart;->score_frequency:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/net/wifi/ScoreChart;->score_rssi:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/net/wifi/ScoreChart;->score_disconnect:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/net/wifi/ScoreChart;->score_activeuse:I

    add-int/2addr v0, v1

    return v0
.end method
