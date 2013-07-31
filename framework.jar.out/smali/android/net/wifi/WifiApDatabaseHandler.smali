.class public Landroid/net/wifi/WifiApDatabaseHandler;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "WifiApDatabaseHandler.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "WifiConnectedAP"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final TABLE_CONNTECTED_AP:Ljava/lang/String; = "APRecords"

.field private static final TAG:Ljava/lang/String; = "WifiApDatabaseHandler"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 27
    const-string v0, "WifiConnectedAP"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 28
    return-void
.end method


# virtual methods
.method public addConnectedAP(Landroid/net/wifi/APRecords;)V
    .locals 4
    .parameter "records"

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiApDatabaseHandler;->checkDuplicate(Ljava/lang/String;)V

    .line 102
    const-string v2, "WifiApDatabaseHandler"

    const-string v3, "addConnectedAP NEW one"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0}, Landroid/net/wifi/WifiApDatabaseHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 104
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 105
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "bssid"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string/jumbo v2, "ssid"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v2, "cci"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getCCI()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    const-string/jumbo v2, "tx_rate"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getTXRATE()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    const-string v2, "extreme_tx_rate"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getExtremeTXRATE()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    const-string/jumbo v2, "tx_PER"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getTXPER()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 111
    const-string v2, "frequency"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getFREQ()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 112
    const-string/jumbo v2, "security"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getSecurity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v2, "connectedTime"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getConnectedTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string/jumbo v2, "rssi"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getRSSI()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    const-string v2, "extreme_rssi"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getExtremeRSSI()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    const-string v2, "disconnectedRSSI"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getDisconnectedRSSI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v2, "disconnectedTime"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getDisconnectedTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v2, "disconnectedReason"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getDisconnectedReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v2, "APRecords"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 122
    return-void
.end method

.method public checkDuplicate(Ljava/lang/String;)V
    .locals 5
    .parameter "bssid"

    .prologue
    .line 87
    const/4 v1, 0x0

    .line 88
    .local v1, isDuplicate:Z
    invoke-virtual {p0}, Landroid/net/wifi/WifiApDatabaseHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 89
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bssid =\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, where:Ljava/lang/String;
    const-string v3, "WifiApDatabaseHandler"

    const-string v4, "checkDuplicate..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string v3, "APRecords"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method public deleteContact(Landroid/net/wifi/APRecords;)V
    .locals 6
    .parameter "records"

    .prologue
    .line 224
    invoke-virtual {p0}, Landroid/net/wifi/WifiApDatabaseHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 225
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "APRecords"

    const-string v2, "bssid = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getBSSID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 227
    return-void
.end method

.method public getAllConnectedAP()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/APRecords;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v0, APRecordsList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/APRecords;>;"
    const-string v4, "SELECT  * FROM APRecords"

    .line 130
    .local v4, sql:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/wifi/WifiApDatabaseHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 131
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 134
    .local v1, cur:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 136
    :cond_0
    new-instance v3, Landroid/net/wifi/APRecords;

    invoke-direct {v3}, Landroid/net/wifi/APRecords;-><init>()V

    .line 137
    .local v3, records:Landroid/net/wifi/APRecords;
    const-string v5, "bssid"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/APRecords;->setBSSID(Ljava/lang/String;)V

    .line 138
    const-string/jumbo v5, "ssid"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/APRecords;->setSSID(Ljava/lang/String;)V

    .line 139
    const-string v5, "cci"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/APRecords;->setCCI(I)V

    .line 140
    const-string/jumbo v5, "tx_rate"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/APRecords;->setTXRATE(I)V

    .line 141
    const-string v5, "extreme_tx_rate"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/APRecords;->setExtremeTXRATE(I)V

    .line 142
    const-string/jumbo v5, "tx_PER"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/APRecords;->setTXPER(I)V

    .line 143
    const-string v5, "frequency"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/APRecords;->setFREQ(I)V

    .line 144
    const-string/jumbo v5, "security"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/APRecords;->setSecurity(Ljava/lang/String;)V

    .line 145
    const-string v5, "connectedTime"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/APRecords;->setConnectedTime(Ljava/lang/String;)V

    .line 146
    const-string/jumbo v5, "rssi"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/APRecords;->setRSSI(I)V

    .line 147
    const-string v5, "extreme_rssi"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/APRecords;->setExtremeRSSI(I)V

    .line 148
    const-string v5, "disconnectedRSSI"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/APRecords;->setDisconnectedRSSI(Ljava/lang/String;)V

    .line 149
    const-string v5, "disconnectedTime"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/APRecords;->setDisconnectedTime(Ljava/lang/String;)V

    .line 150
    const-string v5, "disconnectedReason"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/APRecords;->setDisconnectedReason(Ljava/lang/String;)V

    .line 153
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 157
    .end local v3           #records:Landroid/net/wifi/APRecords;
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 159
    return-object v0
.end method

.method public getConnectedAPCount()I
    .locals 4

    .prologue
    .line 232
    const-string v0, "SELECT  * FROM APRecords"

    .line 233
    .local v0, countQuery:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/wifi/WifiApDatabaseHandler;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 234
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 235
    .local v1, cursor:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 237
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    return v3
.end method

.method public isDuplicate(Ljava/lang/String;)Z
    .locals 7
    .parameter "bssid"

    .prologue
    .line 71
    const/4 v2, 0x0

    .line 72
    .local v2, isDuplicate:Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT  * FROM APRecords where bssid =\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, sql:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/wifi/WifiApDatabaseHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 74
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 76
    .local v0, cur:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 77
    const/4 v2, 0x1

    .line 79
    :cond_0
    const-string v4, "WifiApDatabaseHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDuplicate in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 82
    return v2
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 34
    const-string v1, "WifiApDatabaseHandler"

    const-string v2, "APRecords db onCreate.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const-string v0, "CREATE TABLE APRecords (bssid TEXT PRIMARY KEY, ssid TEXT, cci INTEGER, tx_rate INTEGER, extreme_tx_rate INTEGER, tx_PER INTEGER, frequency INTEGER, security TEXT, connectedTime TEXT, rssi INTEGER, extreme_rssi INTEGER, disconnectedRSSI TEXT, disconnectedTime TEXT, disconnectedReason TEXT)"

    .line 52
    .local v0, sql:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 59
    const-string v0, "DROP TABLE IF EXISTS APRecords"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiApDatabaseHandler;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 63
    return-void
.end method

.method public updateConnectedAP(Landroid/net/wifi/APRecords;)I
    .locals 9
    .parameter "records"

    .prologue
    .line 164
    invoke-virtual {p0}, Landroid/net/wifi/WifiApDatabaseHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 165
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, -0x1

    .line 167
    .local v1, ret:I
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 169
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "WifiApDatabaseHandler"

    const-string/jumbo v5, "updateConnectedAP..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getBSSID()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 171
    const-string v4, "WifiApDatabaseHandler"

    const-string/jumbo v5, "updateConnectedAP but BSSID is null, failed to update..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 219
    .end local v1           #ret:I
    .local v2, ret:I
    :goto_0
    return v2

    .line 175
    .end local v2           #ret:I
    .restart local v1       #ret:I
    :cond_0
    const-string v4, "bssid"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getBSSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getSSID()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 178
    const-string/jumbo v4, "ssid"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getCCI()I

    move-result v4

    if-eqz v4, :cond_2

    .line 181
    const-string v4, "cci"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getCCI()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 183
    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getTXRATE()I

    move-result v4

    if-eqz v4, :cond_3

    .line 184
    const-string/jumbo v4, "tx_rate"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getTXRATE()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 186
    :cond_3
    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getExtremeTXRATE()I

    move-result v4

    if-eqz v4, :cond_4

    .line 187
    const-string v4, "extreme_tx_rate"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getExtremeTXRATE()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 189
    :cond_4
    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getTXPER()I

    move-result v4

    if-eqz v4, :cond_5

    .line 190
    const-string/jumbo v4, "tx_PER"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getTXPER()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 192
    :cond_5
    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getFREQ()I

    move-result v4

    if-eqz v4, :cond_6

    .line 193
    const-string v4, "frequency"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getFREQ()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 195
    :cond_6
    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getSecurity()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 196
    const-string/jumbo v4, "security"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getSecurity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_7
    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getConnectedTime()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 199
    const-string v4, "connectedTime"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getConnectedTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_8
    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getRSSI()I

    move-result v4

    if-eqz v4, :cond_9

    .line 202
    const-string/jumbo v4, "rssi"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getRSSI()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 204
    :cond_9
    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getExtremeRSSI()I

    move-result v4

    if-eqz v4, :cond_a

    .line 205
    const-string v4, "extreme_rssi"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getExtremeRSSI()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 207
    :cond_a
    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getDisconnectedRSSI()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 208
    const-string v4, "disconnectedRSSI"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getDisconnectedRSSI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_b
    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getDisconnectedTime()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 211
    const-string v4, "disconnectedTime"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getDisconnectedTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_c
    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getDisconnectedReason()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 214
    const-string v4, "disconnectedReason"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getDisconnectedReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_d
    const-string v4, "APRecords"

    const-string v5, "bssid = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getBSSID()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    move v2, v1

    .line 219
    .end local v1           #ret:I
    .restart local v2       #ret:I
    goto/16 :goto_0
.end method
