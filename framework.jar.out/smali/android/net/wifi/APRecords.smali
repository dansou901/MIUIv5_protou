.class public Landroid/net/wifi/APRecords;
.super Ljava/lang/Object;
.source "APRecords.java"


# instance fields
.field _avgRSSI:I

.field _bssid:Ljava/lang/String;

.field _cci:I

.field _connectedTime:Ljava/lang/String;

.field _disconnectedRSSI:Ljava/lang/String;

.field _disconnectedReason:Ljava/lang/String;

.field _disconnectedTime:Ljava/lang/String;

.field _extremeRSSI:I

.field _extreme_txrate:I

.field _frequency:I

.field _security:Ljava/lang/String;

.field _ssid:Ljava/lang/String;

.field _txPER:I

.field _txrate:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "_bssid"
    .parameter "_txPER"

    .prologue
    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Landroid/net/wifi/APRecords;->_bssid:Ljava/lang/String;

    .line 70
    iput p2, p0, Landroid/net/wifi/APRecords;->_txPER:I

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .parameter "_bssid"
    .parameter "_avgRSSI"
    .parameter "_txrate"
    .parameter "_extremeRSSI"
    .parameter "_extreme_txrate"

    .prologue
    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Landroid/net/wifi/APRecords;->_bssid:Ljava/lang/String;

    .line 60
    iput p2, p0, Landroid/net/wifi/APRecords;->_avgRSSI:I

    .line 61
    iput p3, p0, Landroid/net/wifi/APRecords;->_txrate:I

    .line 62
    iput p4, p0, Landroid/net/wifi/APRecords;->_extremeRSSI:I

    .line 63
    iput p5, p0, Landroid/net/wifi/APRecords;->_extreme_txrate:I

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "_bssid"
    .parameter "_ssid"
    .parameter "_frequency"
    .parameter "_security"
    .parameter "_connectedTime"

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroid/net/wifi/APRecords;->_bssid:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Landroid/net/wifi/APRecords;->_ssid:Ljava/lang/String;

    .line 51
    iput p3, p0, Landroid/net/wifi/APRecords;->_frequency:I

    .line 52
    iput-object p4, p0, Landroid/net/wifi/APRecords;->_security:Ljava/lang/String;

    .line 53
    iput-object p5, p0, Landroid/net/wifi/APRecords;->_connectedTime:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "_bssid"
    .parameter "_disconnectedRSSI"
    .parameter "_disconnectedTime"
    .parameter "_disconnectedReason"

    .prologue
    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Landroid/net/wifi/APRecords;->_bssid:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Landroid/net/wifi/APRecords;->_disconnectedRSSI:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Landroid/net/wifi/APRecords;->_disconnectedTime:Ljava/lang/String;

    .line 79
    iput-object p4, p0, Landroid/net/wifi/APRecords;->_disconnectedReason:Ljava/lang/String;

    .line 80
    return-void
.end method


# virtual methods
.method public getBSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Landroid/net/wifi/APRecords;->_bssid:Ljava/lang/String;

    return-object v0
.end method

.method public getCCI()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Landroid/net/wifi/APRecords;->_cci:I

    return v0
.end method

.method public getConnectedTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Landroid/net/wifi/APRecords;->_connectedTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDisconnectedRSSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Landroid/net/wifi/APRecords;->_disconnectedRSSI:Ljava/lang/String;

    return-object v0
.end method

.method public getDisconnectedReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Landroid/net/wifi/APRecords;->_disconnectedReason:Ljava/lang/String;

    return-object v0
.end method

.method public getDisconnectedTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Landroid/net/wifi/APRecords;->_disconnectedTime:Ljava/lang/String;

    return-object v0
.end method

.method public getExtremeRSSI()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Landroid/net/wifi/APRecords;->_extremeRSSI:I

    return v0
.end method

.method public getExtremeTXRATE()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Landroid/net/wifi/APRecords;->_extreme_txrate:I

    return v0
.end method

.method public getFREQ()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Landroid/net/wifi/APRecords;->_frequency:I

    return v0
.end method

.method public getRSSI()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Landroid/net/wifi/APRecords;->_avgRSSI:I

    return v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Landroid/net/wifi/APRecords;->_ssid:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Landroid/net/wifi/APRecords;->_security:Ljava/lang/String;

    return-object v0
.end method

.method public getTXPER()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Landroid/net/wifi/APRecords;->_txPER:I

    return v0
.end method

.method public getTXRATE()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Landroid/net/wifi/APRecords;->_txrate:I

    return v0
.end method

.method public setBSSID(Ljava/lang/String;)V
    .locals 0
    .parameter "_bssid"

    .prologue
    .line 99
    iput-object p1, p0, Landroid/net/wifi/APRecords;->_bssid:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setCCI(I)V
    .locals 0
    .parameter "_cci"

    .prologue
    .line 109
    iput p1, p0, Landroid/net/wifi/APRecords;->_cci:I

    .line 110
    return-void
.end method

.method public setConnectedTime(Ljava/lang/String;)V
    .locals 0
    .parameter "_connectedTime"

    .prologue
    .line 170
    iput-object p1, p0, Landroid/net/wifi/APRecords;->_connectedTime:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setDisconnectedRSSI(Ljava/lang/String;)V
    .locals 0
    .parameter "_disconnectedRSSI"

    .prologue
    .line 200
    iput-object p1, p0, Landroid/net/wifi/APRecords;->_disconnectedRSSI:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setDisconnectedReason(Ljava/lang/String;)V
    .locals 0
    .parameter "_disconnectedReason"

    .prologue
    .line 220
    iput-object p1, p0, Landroid/net/wifi/APRecords;->_disconnectedReason:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setDisconnectedTime(Ljava/lang/String;)V
    .locals 0
    .parameter "_disconnectedTime"

    .prologue
    .line 210
    iput-object p1, p0, Landroid/net/wifi/APRecords;->_disconnectedTime:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public setExtremeRSSI(I)V
    .locals 0
    .parameter "_extremeRSSI"

    .prologue
    .line 190
    iput p1, p0, Landroid/net/wifi/APRecords;->_extremeRSSI:I

    .line 191
    return-void
.end method

.method public setExtremeTXRATE(I)V
    .locals 0
    .parameter "_extreme_txrate"

    .prologue
    .line 130
    iput p1, p0, Landroid/net/wifi/APRecords;->_extreme_txrate:I

    .line 131
    return-void
.end method

.method public setFREQ(I)V
    .locals 0
    .parameter "_frequency"

    .prologue
    .line 150
    iput p1, p0, Landroid/net/wifi/APRecords;->_frequency:I

    .line 151
    return-void
.end method

.method public setRSSI(I)V
    .locals 0
    .parameter "_avgRSSI"

    .prologue
    .line 180
    iput p1, p0, Landroid/net/wifi/APRecords;->_avgRSSI:I

    .line 181
    return-void
.end method

.method public setSSID(Ljava/lang/String;)V
    .locals 0
    .parameter "_ssid"

    .prologue
    .line 89
    iput-object p1, p0, Landroid/net/wifi/APRecords;->_ssid:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setSecurity(Ljava/lang/String;)V
    .locals 0
    .parameter "_security"

    .prologue
    .line 160
    iput-object p1, p0, Landroid/net/wifi/APRecords;->_security:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setTXPER(I)V
    .locals 0
    .parameter "_txPER"

    .prologue
    .line 140
    iput p1, p0, Landroid/net/wifi/APRecords;->_txPER:I

    .line 141
    return-void
.end method

.method public setTXRATE(I)V
    .locals 0
    .parameter "_txrate"

    .prologue
    .line 120
    iput p1, p0, Landroid/net/wifi/APRecords;->_txrate:I

    .line 121
    return-void
.end method
