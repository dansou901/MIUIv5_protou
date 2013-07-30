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
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "_bssid"
    .parameter "_txPER"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/APRecords;->_bssid:Ljava/lang/String;

    iput p2, p0, Landroid/net/wifi/APRecords;->_txPER:I

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
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/APRecords;->_bssid:Ljava/lang/String;

    iput p2, p0, Landroid/net/wifi/APRecords;->_avgRSSI:I

    iput p3, p0, Landroid/net/wifi/APRecords;->_txrate:I

    iput p4, p0, Landroid/net/wifi/APRecords;->_extremeRSSI:I

    iput p5, p0, Landroid/net/wifi/APRecords;->_extreme_txrate:I

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
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/APRecords;->_bssid:Ljava/lang/String;

    iput-object p2, p0, Landroid/net/wifi/APRecords;->_ssid:Ljava/lang/String;

    iput p3, p0, Landroid/net/wifi/APRecords;->_frequency:I

    iput-object p4, p0, Landroid/net/wifi/APRecords;->_security:Ljava/lang/String;

    iput-object p5, p0, Landroid/net/wifi/APRecords;->_connectedTime:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "_bssid"
    .parameter "_disconnectedRSSI"
    .parameter "_disconnectedTime"
    .parameter "_disconnectedReason"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/APRecords;->_bssid:Ljava/lang/String;

    iput-object p2, p0, Landroid/net/wifi/APRecords;->_disconnectedRSSI:Ljava/lang/String;

    iput-object p3, p0, Landroid/net/wifi/APRecords;->_disconnectedTime:Ljava/lang/String;

    iput-object p4, p0, Landroid/net/wifi/APRecords;->_disconnectedReason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBSSID()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/APRecords;->_bssid:Ljava/lang/String;

    return-object v0
.end method

.method public getCCI()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/wifi/APRecords;->_cci:I

    return v0
.end method

.method public getConnectedTime()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/APRecords;->_connectedTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDisconnectedRSSI()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/APRecords;->_disconnectedRSSI:Ljava/lang/String;

    return-object v0
.end method

.method public getDisconnectedReason()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/APRecords;->_disconnectedReason:Ljava/lang/String;

    return-object v0
.end method

.method public getDisconnectedTime()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/APRecords;->_disconnectedTime:Ljava/lang/String;

    return-object v0
.end method

.method public getExtremeRSSI()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/wifi/APRecords;->_extremeRSSI:I

    return v0
.end method

.method public getExtremeTXRATE()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/wifi/APRecords;->_extreme_txrate:I

    return v0
.end method

.method public getFREQ()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/wifi/APRecords;->_frequency:I

    return v0
.end method

.method public getRSSI()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/wifi/APRecords;->_avgRSSI:I

    return v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/APRecords;->_ssid:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurity()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/APRecords;->_security:Ljava/lang/String;

    return-object v0
.end method

.method public getTXPER()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/wifi/APRecords;->_txPER:I

    return v0
.end method

.method public getTXRATE()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/wifi/APRecords;->_txrate:I

    return v0
.end method

.method public setBSSID(Ljava/lang/String;)V
    .locals 0
    .parameter "_bssid"

    .prologue
    iput-object p1, p0, Landroid/net/wifi/APRecords;->_bssid:Ljava/lang/String;

    return-void
.end method

.method public setCCI(I)V
    .locals 0
    .parameter "_cci"

    .prologue
    iput p1, p0, Landroid/net/wifi/APRecords;->_cci:I

    return-void
.end method

.method public setConnectedTime(Ljava/lang/String;)V
    .locals 0
    .parameter "_connectedTime"

    .prologue
    iput-object p1, p0, Landroid/net/wifi/APRecords;->_connectedTime:Ljava/lang/String;

    return-void
.end method

.method public setDisconnectedRSSI(Ljava/lang/String;)V
    .locals 0
    .parameter "_disconnectedRSSI"

    .prologue
    iput-object p1, p0, Landroid/net/wifi/APRecords;->_disconnectedRSSI:Ljava/lang/String;

    return-void
.end method

.method public setDisconnectedReason(Ljava/lang/String;)V
    .locals 0
    .parameter "_disconnectedReason"

    .prologue
    iput-object p1, p0, Landroid/net/wifi/APRecords;->_disconnectedReason:Ljava/lang/String;

    return-void
.end method

.method public setDisconnectedTime(Ljava/lang/String;)V
    .locals 0
    .parameter "_disconnectedTime"

    .prologue
    iput-object p1, p0, Landroid/net/wifi/APRecords;->_disconnectedTime:Ljava/lang/String;

    return-void
.end method

.method public setExtremeRSSI(I)V
    .locals 0
    .parameter "_extremeRSSI"

    .prologue
    iput p1, p0, Landroid/net/wifi/APRecords;->_extremeRSSI:I

    return-void
.end method

.method public setExtremeTXRATE(I)V
    .locals 0
    .parameter "_extreme_txrate"

    .prologue
    iput p1, p0, Landroid/net/wifi/APRecords;->_extreme_txrate:I

    return-void
.end method

.method public setFREQ(I)V
    .locals 0
    .parameter "_frequency"

    .prologue
    iput p1, p0, Landroid/net/wifi/APRecords;->_frequency:I

    return-void
.end method

.method public setRSSI(I)V
    .locals 0
    .parameter "_avgRSSI"

    .prologue
    iput p1, p0, Landroid/net/wifi/APRecords;->_avgRSSI:I

    return-void
.end method

.method public setSSID(Ljava/lang/String;)V
    .locals 0
    .parameter "_ssid"

    .prologue
    iput-object p1, p0, Landroid/net/wifi/APRecords;->_ssid:Ljava/lang/String;

    return-void
.end method

.method public setSecurity(Ljava/lang/String;)V
    .locals 0
    .parameter "_security"

    .prologue
    iput-object p1, p0, Landroid/net/wifi/APRecords;->_security:Ljava/lang/String;

    return-void
.end method

.method public setTXPER(I)V
    .locals 0
    .parameter "_txPER"

    .prologue
    iput p1, p0, Landroid/net/wifi/APRecords;->_txPER:I

    return-void
.end method

.method public setTXRATE(I)V
    .locals 0
    .parameter "_txrate"

    .prologue
    iput p1, p0, Landroid/net/wifi/APRecords;->_txrate:I

    return-void
.end method
