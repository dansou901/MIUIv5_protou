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
    const-string v0, "WifiConnectedAP"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public addConnectedAP(Landroid/net/wifi/APRecords;)V
    .locals 4
    .parameter "records"

    .prologue
    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiApDatabaseHandler;->checkDuplicate(Ljava/lang/String;)V

    const-string v2, "WifiApDatabaseHandler"

    const-string v3, "addConnectedAP NEW one"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/net/wifi/WifiApDatabaseHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "bssid"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ssid"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cci"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getCCI()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "tx_rate"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getTXRATE()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "extreme_tx_rate"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getExtremeTXRATE()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "tx_PER"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getTXPER()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "frequency"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getFREQ()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "security"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getSecurity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "connectedTime"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getConnectedTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "rssi"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getRSSI()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "extreme_rssi"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getExtremeRSSI()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "disconnectedRSSI"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getDisconnectedRSSI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "disconnectedTime"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getDisconnectedTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "disconnectedReason"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getDisconnectedReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "APRecords"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method public checkDuplicate(Ljava/lang/String;)V
    .locals 5
    .parameter "bssid"

    .prologue
    const/4 v1, 0x0

    .local v1, isDuplicate:Z
    invoke-virtual {p0}, Landroid/net/wifi/WifiApDatabaseHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

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

    .local v2, where:Ljava/lang/String;
    const-string v3, "WifiApDatabaseHandler"

    const-string v4, "checkDuplicate..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "APRecords"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public deleteContact(Landroid/net/wifi/APRecords;)V
    .locals 6
    .parameter "records"

    .prologue
    invoke-virtual {p0}, Landroid/net/wifi/WifiApDatabaseHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, APRecordsList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/APRecords;>;"
    const-string v4, "SELECT  * FROM APRecords"

    .local v4, sql:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/wifi/WifiApDatabaseHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .local v1, cur:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    new-instance v3, Landroid/net/wifi/APRecords;

    invoke-direct {v3}, Landroid/net/wifi/APRecords;-><init>()V

    .local v3, records:Landroid/net/wifi/APRecords;
    const-string v5, "bssid"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/APRecords;->setBSSID(Ljava/lang/String;)V

    const-string v5, "ssid"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/APRecords;->setSSID(Ljava/lang/String;)V

    const-string v5, "cci"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/APRecords;->setCCI(I)V

    const-string v5, "tx_rate"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/APRecords;->setTXRATE(I)V

    const-string v5, "extreme_tx_rate"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/APRecords;->setExtremeTXRATE(I)V

    const-string v5, "tx_PER"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/APRecords;->setTXPER(I)V

    const-string v5, "frequency"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/APRecords;->setFREQ(I)V

    const-string v5, "security"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/APRecords;->setSecurity(Ljava/lang/String;)V

    const-string v5, "connectedTime"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/APRecords;->setConnectedTime(Ljava/lang/String;)V

    const-string v5, "rssi"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/APRecords;->setRSSI(I)V

    const-string v5, "extreme_rssi"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/APRecords;->setExtremeRSSI(I)V

    const-string v5, "disconnectedRSSI"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/APRecords;->setDisconnectedRSSI(Ljava/lang/String;)V

    const-string v5, "disconnectedTime"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/APRecords;->setDisconnectedTime(Ljava/lang/String;)V

    const-string v5, "disconnectedReason"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/APRecords;->setDisconnectedReason(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .end local v3           #records:Landroid/net/wifi/APRecords;
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public getConnectedAPCount()I
    .locals 4

    .prologue
    const-string v0, "SELECT  * FROM APRecords"

    .local v0, countQuery:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/wifi/WifiApDatabaseHandler;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .local v1, cursor:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    return v3
.end method

.method public isDuplicate(Ljava/lang/String;)Z
    .locals 7
    .parameter "bssid"

    .prologue
    const/4 v2, 0x0

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

    .local v3, sql:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/wifi/WifiApDatabaseHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .local v0, cur:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

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

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v2
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    const-string v1, "WifiApDatabaseHandler"

    const-string v2, "APRecords db onCreate.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CREATE TABLE APRecords (bssid TEXT PRIMARY KEY, ssid TEXT, cci INTEGER, tx_rate INTEGER, extreme_tx_rate INTEGER, tx_PER INTEGER, frequency INTEGER, security TEXT, connectedTime TEXT, rssi INTEGER, extreme_rssi INTEGER, disconnectedRSSI TEXT, disconnectedTime TEXT, disconnectedReason TEXT)"

    .local v0, sql:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const-string v0, "DROP TABLE IF EXISTS APRecords"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiApDatabaseHandler;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public updateConnectedAP(Landroid/net/wifi/APRecords;)I
    .locals 9
    .parameter "records"

    .prologue
    invoke-virtual {p0}, Landroid/net/wifi/WifiApDatabaseHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, -0x1

    .local v1, ret:I
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "WifiApDatabaseHandler"

    const-string v5, "updateConnectedAP..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getBSSID()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, "WifiApDatabaseHandler"

    const-string v5, "updateConnectedAP but BSSID is null, failed to update..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .end local v1           #ret:I
    .local v2, ret:I
    :goto_0
    return v2

    .end local v2           #ret:I
    .restart local v1       #ret:I
    :cond_0
    const-string v4, "bssid"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getBSSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getSSID()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v4, "ssid"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getCCI()I

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "cci"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getCCI()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getTXRATE()I

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "tx_rate"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getTXRATE()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getExtremeTXRATE()I

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "extreme_tx_rate"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getExtremeTXRATE()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getTXPER()I

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "tx_PER"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getTXPER()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getFREQ()I

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "frequency"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getFREQ()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_6
    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getSecurity()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    const-string v4, "security"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getSecurity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getConnectedTime()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    const-string v4, "connectedTime"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getConnectedTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getRSSI()I

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "rssi"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getRSSI()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_9
    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getExtremeRSSI()I

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "extreme_rssi"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getExtremeRSSI()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_a
    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getDisconnectedRSSI()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    const-string v4, "disconnectedRSSI"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getDisconnectedRSSI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getDisconnectedTime()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    const-string v4, "disconnectedTime"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getDisconnectedTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getDisconnectedReason()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    const-string v4, "disconnectedReason"

    invoke-virtual {p1}, Landroid/net/wifi/APRecords;->getDisconnectedReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

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

    .end local v1           #ret:I
    .restart local v2       #ret:I
    goto/16 :goto_0
.end method
