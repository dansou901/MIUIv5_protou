.class public Lcom/android/internal/telephony/IccProvider;
.super Landroid/content/ContentProvider;
.source "IccProvider.java"


# static fields
.field private static final ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String; = null

.field private static final ADN:I = 0x1

.field private static final DBG:Z = false

.field private static final DELETE_RAW_CONTACT_WHERE:Ljava/lang/String; = "sourceid=? AND account_name=\'SIM\' AND account_type=\'com.anddroid.contacts.sim\'"

.field private static final FDN:I = 0x2

.field private static final HTC_SDN:I = 0x6

.field private static final PHONEBOOK_ENTRY:I = 0x4

.field private static final PHONEBOOK_ENTRY_ID:I = 0x5

.field private static final SDN:I = 0x3

.field private static final STR_EMAILS:Ljava/lang/String; = "emails"

.field private static final STR_NUMBER:Ljava/lang/String; = "number"

.field private static final STR_PIN2:Ljava/lang/String; = "pin2"

.field private static final STR_TAG:Ljava/lang/String; = "tag"

.field private static final TAG:Ljava/lang/String; = "IccProvider"

.field private static final URL_MATCHER:Landroid/content/UriMatcher;

.field static VERIZON_WPHONE_CONFIG:Z

.field private static mUrl:I


# instance fields
.field private mAdnError:Lcom/android/internal/telephony/ADNErrorType;

.field private mSimulator:Z

.field mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 207
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x5a

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xaa

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/IccProvider;->VERIZON_WPHONE_CONFIG:Z

    .line 211
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "name"

    aput-object v3, v0, v1

    const-string v3, "number"

    aput-object v3, v0, v2

    const-string v3, "emails"

    aput-object v3, v0, v4

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    .line 225
    sput v1, Lcom/android/internal/telephony/IccProvider;->mUrl:I

    .line 239
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    .line 243
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v3, "adn"

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 244
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 245
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "sdn"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 247
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "htc_sdn"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 250
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "phonebook"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 251
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "phonebook/#"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 253
    return-void

    :cond_1
    move v0, v1

    .line 207
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "pin2"

    .prologue
    .line 934
    const/4 v7, 0x0

    .line 942
    .local v7, success:Z
    :try_start_0
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 944
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 945
    const-string v2, ""

    const-string v3, ""

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 954
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v7

    .line 950
    :catch_0
    move-exception v1

    goto :goto_0

    .line 948
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "pin2"

    .prologue
    .line 987
    const/4 v7, 0x0

    .line 990
    .local v7, success:Z
    :try_start_0
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 992
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 993
    const-string v4, ""

    const-string v5, ""

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 1002
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v7

    .line 998
    :catch_0
    move-exception v1

    goto :goto_0

    .line 996
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static deleteRawContact(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 10
    .parameter "resolver"
    .parameter "recordNumber"

    .prologue
    .line 1261
    const/4 v7, 0x1

    new-array v2, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v2, v7

    .line 1263
    .local v2, deleteArgs:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 1265
    .local v5, result:I
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 1266
    .local v3, deleteUri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "caller_is_syncadapter"

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 1267
    .local v1, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1269
    const-string v7, "sourceid=? AND account_name=\'SIM\' AND account_type=\'com.anddroid.contacts.sim\'"

    invoke-virtual {p0, v3, v7, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 1274
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAdditionalNumbersInSim()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1275
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1276
    .local v4, recordNumber_id:Ljava/lang/Long;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "recordNumber="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1278
    .local v0, WHERE:Ljava/lang/String;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1279
    .local v6, updateValues:Landroid/content/ContentValues;
    const-string v7, "raw_contact_id"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1280
    const-string v7, "data_id"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1281
    const-string v7, "recordNumber"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1282
    const-string v7, "recordLocation"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1284
    sget-object v7, Landroid/provider/HtcContactsContract$SpeedDial;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v6, v0, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1287
    .end local v0           #WHERE:Ljava/lang/String;
    .end local v4           #recordNumber_id:Ljava/lang/Long;
    .end local v6           #updateValues:Landroid/content/ContentValues;
    :cond_0
    return v5
.end method

.method private filterOutInvalidCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "dialString"

    .prologue
    .line 421
    const-string v2, ""

    .line 422
    .local v2, rtn:Ljava/lang/String;
    if-nez p1, :cond_1

    .line 423
    const/4 p1, 0x0

    .line 444
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 426
    .restart local p1
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 427
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 428
    .local v0, c:C
    const/16 v3, 0x2e

    if-ne v0, v3, :cond_3

    .line 426
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 431
    :cond_3
    const/16 v3, 0x2c

    if-eq v0, v3, :cond_2

    .line 434
    const/16 v3, 0x20

    if-eq v0, v3, :cond_2

    .line 438
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 440
    .end local v0           #c:C
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    move-object p1, v2

    .line 444
    goto :goto_0
.end method

.method private getLastError()Lcom/android/internal/telephony/ADNErrorType;
    .locals 3

    .prologue
    .line 1188
    :try_start_0
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 1190
    .local v0, simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 1191
    const-string v1, "SimProvider"

    const-string v2, "getLastError"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    invoke-interface {v0}, Lcom/android/internal/telephony/IIccPhoneBook;->getLastError()Lcom/android/internal/telephony/ADNErrorType;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1199
    .end local v0           #simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :goto_0
    return-object v1

    .line 1196
    :catch_0
    move-exception v1

    .line 1199
    :cond_0
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1194
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private static insertIntoContact(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter "resolver"
    .parameter "name"
    .parameter "number"
    .parameter "hidden"
    .parameter "recordNumber"
    .parameter "number1"
    .parameter "number2"
    .parameter "emails"
    .parameter "rawContactId"

    .prologue
    .line 1238
    new-instance v0, Landroid/accounts/Account;

    const-string v2, "SIM"

    const-string v3, "com.anddroid.contacts.sim"

    invoke-direct {v0, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    .local v0, account:Landroid/accounts/Account;
    invoke-static/range {p1 .. p8}, Lcom/android/internal/telephony/ImportUtils;->generateSimCursorToUpdate(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1250
    .local v1, simCursor:Landroid/database/Cursor;
    if-lez p9, :cond_1

    .line 1251
    invoke-static {v1, p0, v0, p9}, Lcom/android/internal/telephony/ImportUtils;->insertSimDataIntoContactDb(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;I)I

    .line 1255
    :goto_0
    if-eqz v1, :cond_0

    .line 1256
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1258
    :cond_0
    return-void

    .line 1253
    :cond_1
    invoke-static {v1, p0, v0}, Lcom/android/internal/telephony/ImportUtils;->importSimIntoContactDb(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)I

    goto :goto_0
.end method

.method private loadFromEf(I)Ljava/util/ArrayList;
    .locals 7
    .parameter "efType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 896
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 897
    .local v4, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    const/4 v1, 0x0

    .line 902
    .local v1, adnRecords:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/AdnRecord;>;"
    :try_start_0
    const-string v5, "simphonebook"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v3

    .line 904
    .local v3, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v3, :cond_0

    .line 905
    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEf(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 912
    .end local v3           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 915
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 917
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 918
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/AdnRecord;

    invoke-direct {p0, v5, v4}, Lcom/android/internal/telephony/IccProvider;->loadRecord(Lcom/android/internal/telephony/AdnRecord;Ljava/util/ArrayList;)V

    .line 917
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 922
    .end local v0           #N:I
    .end local v2           #i:I
    :cond_1
    const-string v5, "IccProvider"

    const-string v6, "Cannot load ADN records"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 926
    :cond_2
    return-object v4

    .line 909
    :catch_0
    move-exception v5

    goto :goto_0

    .line 907
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method private loadPBKEntry(Lcom/android/internal/telephony/PhoneBookEntry;Ljava/util/ArrayList;)V
    .locals 10
    .parameter "record"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/PhoneBookEntry;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1156
    .local p2, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBookEntry;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1157
    new-instance v1, Ljava/util/ArrayList;

    const/4 v8, 0x7

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1158
    .local v1, contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBookEntry;->text:Ljava/lang/String;

    .line 1159
    .local v0, alphaTag:Ljava/lang/String;
    iget-object v4, p1, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    .line 1160
    .local v4, number:Ljava/lang/String;
    iget-object v8, p1, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v5, v8, v9

    .line 1161
    .local v5, number1:Ljava/lang/String;
    iget-object v8, p1, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    const/4 v9, 0x1

    aget-object v6, v8, v9

    .line 1162
    .local v6, number2:Ljava/lang/String;
    iget v8, p1, Lcom/android/internal/telephony/PhoneBookEntry;->hidden:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1163
    .local v3, hidden:Ljava/lang/String;
    iget v8, p1, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 1164
    .local v7, recordNumber:Ljava/lang/String;
    iget-object v2, p1, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    .line 1167
    .local v2, email:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1168
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1169
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1170
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1171
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1172
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1173
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1175
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1177
    .end local v0           #alphaTag:Ljava/lang/String;
    .end local v1           #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #email:Ljava/lang/String;
    .end local v3           #hidden:Ljava/lang/String;
    .end local v4           #number:Ljava/lang/String;
    .end local v5           #number1:Ljava/lang/String;
    .end local v6           #number2:Ljava/lang/String;
    .end local v7           #recordNumber:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private loadPBKEntryFromRIL()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1120
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1121
    .local v3, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    const/4 v2, 0x0

    .line 1126
    .local v2, phoneBookEntries:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/PhoneBookEntry;>;"
    :try_start_0
    const-string v5, "simphonebook"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v4

    .line 1128
    .local v4, simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v4, :cond_0

    .line 1129
    invoke-interface {v4}, Lcom/android/internal/telephony/IIccPhoneBook;->getPBKEntries()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1137
    .end local v4           #simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 1140
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 1142
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1143
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/PhoneBookEntry;

    invoke-direct {p0, v5, v3}, Lcom/android/internal/telephony/IccProvider;->loadPBKEntry(Lcom/android/internal/telephony/PhoneBookEntry;Ljava/util/ArrayList;)V

    .line 1142
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1147
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_1
    const-string v5, "IccProvider"

    const-string v6, "Cannot load phone book Eentries"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1151
    :cond_2
    return-object v3

    .line 1133
    :catch_0
    move-exception v5

    goto :goto_0

    .line 1131
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method private loadRecord(Lcom/android/internal/telephony/AdnRecord;Ljava/util/ArrayList;)V
    .locals 13
    .parameter "record"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/AdnRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    const/4 v12, 0x0

    .line 1013
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 1014
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1015
    .local v2, contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 1016
    .local v0, alphaTag:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v8

    .line 1017
    .local v8, number:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v5

    .line 1020
    .local v5, emails:[Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1021
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1024
    sget v10, Lcom/android/internal/telephony/IccProvider;->mUrl:I

    const/4 v11, 0x6

    if-ne v10, v11, :cond_0

    .line 1025
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getRecordNumber()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 1026
    .local v9, recordnumber:Ljava/lang/String;
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1027
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1028
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1029
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1033
    .end local v9           #recordnumber:Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1035
    .local v4, emailString:Ljava/lang/StringBuilder;
    if-eqz v5, :cond_3

    .line 1036
    move-object v1, v5

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v3, v1, v6

    .line 1038
    .local v3, email:Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    const-string v10, ","

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1036
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1041
    .end local v3           #email:Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1045
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v7           #len$:I
    :goto_1
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1047
    .end local v0           #alphaTag:Ljava/lang/String;
    .end local v2           #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #emailString:Ljava/lang/StringBuilder;
    .end local v5           #emails:[Ljava/lang/String;
    .end local v8           #number:Ljava/lang/String;
    :cond_2
    return-void

    .line 1043
    .restart local v0       #alphaTag:Ljava/lang/String;
    .restart local v2       #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4       #emailString:Ljava/lang/StringBuilder;
    .restart local v5       #emails:[Ljava/lang/String;
    .restart local v8       #number:Ljava/lang/String;
    :cond_3
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1181
    const-string v0, "IccProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccProvider] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    return-void
.end method

.method private normalizeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "inVal"

    .prologue
    const/16 v3, 0x27

    .line 599
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 600
    .local v0, len:I
    move-object v1, p1

    .line 602
    .local v1, retVal:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    .line 603
    const/4 v2, 0x1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 606
    :cond_0
    return-object v1
.end method

.method private udateSpeedDialList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 13
    .parameter "recordNumber"
    .parameter "number"
    .parameter "number1"
    .parameter "number2"
    .parameter "resolver"

    .prologue
    .line 834
    :try_start_0
    sget-object v1, Landroid/provider/HtcContactsContract$SpeedDial;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "updatelist"

    invoke-static {v1, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 837
    .local v2, CONTENT_URI_UPDATELIST:Landroid/net/Uri;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recordNumber="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 840
    .local v4, selection:Ljava/lang/String;
    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v1

    const/4 v1, 0x1

    const-string v5, "number"

    aput-object v5, v3, v1

    const/4 v1, 0x2

    const-string v5, "recordNumber"

    aput-object v5, v3, v1

    const/4 v1, 0x3

    const-string v5, "recordLocation"

    aput-object v5, v3, v1

    .line 845
    .local v3, PROJECTION_MAP:[Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p5

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 848
    .local v8, cur_updateList:Landroid/database/Cursor;
    if-eqz v8, :cond_5

    .line 849
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 851
    :cond_0
    const/4 v11, 0x0

    .line 852
    .local v11, updateLocation:I
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 853
    .local v10, speeddial:Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 854
    invoke-virtual {p2, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 855
    const/4 v11, 0x1

    .line 858
    :cond_1
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 859
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 860
    const/4 v11, 0x2

    .line 863
    :cond_2
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 864
    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 865
    const/4 v11, 0x3

    .line 869
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v5, 0x0

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 871
    .local v7, WHERE:Ljava/lang/String;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 873
    .local v12, updateValues:Landroid/content/ContentValues;
    if-nez v11, :cond_6

    .line 874
    const-string v1, "raw_contact_id"

    invoke-virtual {v12, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 875
    const-string v1, "data_id"

    invoke-virtual {v12, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 876
    const-string v1, "recordNumber"

    invoke-virtual {v12, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 877
    const-string v1, "recordLocation"

    invoke-virtual {v12, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 882
    :goto_0
    sget-object v1, Landroid/provider/HtcContactsContract$SpeedDial;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v1, v12, v7, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 885
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 887
    .end local v7           #WHERE:Ljava/lang/String;
    .end local v10           #speeddial:Ljava/lang/String;
    .end local v11           #updateLocation:I
    .end local v12           #updateValues:Landroid/content/ContentValues;
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 892
    .end local v2           #CONTENT_URI_UPDATELIST:Landroid/net/Uri;
    .end local v3           #PROJECTION_MAP:[Ljava/lang/String;
    .end local v4           #selection:Ljava/lang/String;
    .end local v8           #cur_updateList:Landroid/database/Cursor;
    :cond_5
    :goto_1
    return-void

    .line 880
    .restart local v2       #CONTENT_URI_UPDATELIST:Landroid/net/Uri;
    .restart local v3       #PROJECTION_MAP:[Ljava/lang/String;
    .restart local v4       #selection:Ljava/lang/String;
    .restart local v7       #WHERE:Ljava/lang/String;
    .restart local v8       #cur_updateList:Landroid/database/Cursor;
    .restart local v10       #speeddial:Ljava/lang/String;
    .restart local v11       #updateLocation:I
    .restart local v12       #updateValues:Landroid/content/ContentValues;
    :cond_6
    const-string v1, "recordLocation"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 889
    .end local v2           #CONTENT_URI_UPDATELIST:Landroid/net/Uri;
    .end local v3           #PROJECTION_MAP:[Ljava/lang/String;
    .end local v4           #selection:Ljava/lang/String;
    .end local v7           #WHERE:Ljava/lang/String;
    .end local v8           #cur_updateList:Landroid/database/Cursor;
    .end local v10           #speeddial:Ljava/lang/String;
    .end local v11           #updateLocation:I
    .end local v12           #updateValues:Landroid/content/ContentValues;
    :catch_0
    move-exception v9

    .line 890
    .local v9, e:Ljava/lang/Exception;
    const-string v1, "IccProvider"

    const-string v5, "update Speed dial list Failed:"

    invoke-static {v1, v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "efType"
    .parameter "oldName"
    .parameter "oldNumber"
    .parameter "newName"
    .parameter "newNumber"
    .parameter "pin2"

    .prologue
    .line 963
    const/4 v7, 0x0

    .line 966
    .local v7, success:Z
    :try_start_0
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 968
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 969
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 978
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v7

    .line 974
    :catch_0
    move-exception v1

    goto :goto_0

    .line 972
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static updateIntoContact(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "resolver"
    .parameter "name"
    .parameter "number"
    .parameter "hidden"
    .parameter "recordNumber"
    .parameter "number1"
    .parameter "number2"
    .parameter "emails"

    .prologue
    .line 1211
    new-instance v0, Landroid/accounts/Account;

    const-string v2, "SIM"

    const-string v3, "com.anddroid.contacts.sim"

    invoke-direct {v0, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    .local v0, account:Landroid/accounts/Account;
    invoke-static/range {p1 .. p8}, Lcom/android/internal/telephony/ImportUtils;->generateSimCursorToUpdate(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1223
    .local v1, simCursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 1224
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1226
    :cond_0
    return-void
.end method


# virtual methods
.method addSimPbkEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/ADNErrorType;
    .locals 7
    .parameter "name"
    .parameter "number"
    .parameter "number1"
    .parameter "number2"
    .parameter "email"

    .prologue
    .line 1051
    const/4 v6, 0x0

    .line 1056
    .local v6, error:Lcom/android/internal/telephony/ADNErrorType;
    :try_start_0
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 1059
    .local v0, simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1060
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/IIccPhoneBook;->addSimPbkEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/ADNErrorType;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1071
    .end local v0           #simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return-object v6

    .line 1068
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1065
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 20
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 616
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v10

    .line 619
    .local v10, match:I
    const/4 v2, 0x1

    if-eq v10, v2, :cond_0

    const/4 v2, 0x4

    if-ne v10, v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSupportSimPhonebook()Z

    move-result v2

    if-nez v2, :cond_1

    .line 620
    const-string v2, "IccProvider"

    const-string v18, "This project does not support SIM phonebook."

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const/4 v2, 0x0

    .line 714
    :goto_0
    return v2

    .line 627
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccProvider;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/16 v18, 0x5

    move/from16 v0, v18

    if-eq v2, v0, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v2

    if-nez v2, :cond_2

    .line 629
    const-string v2, "IccProvider"

    const-string v18, "SIM state is not ready. Can not access SIM phonebook."

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const/4 v2, 0x0

    goto :goto_0

    .line 638
    :cond_2
    const/4 v2, 0x5

    if-ne v10, v2, :cond_5

    .line 639
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v14

    .line 641
    .local v14, recordNumber:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/IccProvider;->deleteSimPbkEntry(Ljava/lang/String;)Lcom/android/internal/telephony/ADNErrorType;

    move-result-object v8

    .line 642
    .local v8, error:Lcom/android/internal/telephony/ADNErrorType;
    if-eqz v8, :cond_3

    iget-boolean v2, v8, Lcom/android/internal/telephony/ADNErrorType;->success:Z

    if-eqz v2, :cond_4

    .line 645
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v14}, Lcom/android/internal/telephony/IccProvider;->deleteRawContact(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 648
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 651
    .end local v8           #error:Lcom/android/internal/telephony/ADNErrorType;
    .end local v14           #recordNumber:Ljava/lang/String;
    :cond_5
    packed-switch v10, :pswitch_data_0

    .line 661
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Cannot insert into URL: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 653
    :pswitch_0
    const/16 v3, 0x6f3a

    .line 667
    .local v3, efType:I
    :goto_1
    const/4 v4, 0x0

    .line 668
    .local v4, tag:Ljava/lang/String;
    const/4 v5, 0x0

    .line 669
    .local v5, number:Ljava/lang/String;
    const/4 v6, 0x0

    .line 670
    .local v6, emails:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 672
    .local v7, pin2:Ljava/lang/String;
    const-string v2, "AND"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 673
    .local v16, tokens:[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v11, v0

    .line 675
    .local v11, n:I
    :cond_6
    :goto_2
    add-int/lit8 v11, v11, -0x1

    if-ltz v11, :cond_b

    .line 676
    aget-object v13, v16, v11

    .line 679
    .local v13, param:Ljava/lang/String;
    const-string v2, "="

    invoke-virtual {v13, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 681
    .local v12, pair:[Ljava/lang/String;
    array-length v2, v12

    const/16 v18, 0x2

    move/from16 v0, v18

    if-eq v2, v0, :cond_7

    .line 682
    const-string v2, "IccProvider"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "resolve: bad whereClause parameter: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 657
    .end local v3           #efType:I
    .end local v4           #tag:Ljava/lang/String;
    .end local v5           #number:Ljava/lang/String;
    .end local v6           #emails:[Ljava/lang/String;
    .end local v7           #pin2:Ljava/lang/String;
    .end local v11           #n:I
    .end local v12           #pair:[Ljava/lang/String;
    .end local v13           #param:Ljava/lang/String;
    .end local v16           #tokens:[Ljava/lang/String;
    :pswitch_1
    const/16 v3, 0x6f3b

    .line 658
    .restart local v3       #efType:I
    goto :goto_1

    .line 686
    .restart local v4       #tag:Ljava/lang/String;
    .restart local v5       #number:Ljava/lang/String;
    .restart local v6       #emails:[Ljava/lang/String;
    .restart local v7       #pin2:Ljava/lang/String;
    .restart local v11       #n:I
    .restart local v12       #pair:[Ljava/lang/String;
    .restart local v13       #param:Ljava/lang/String;
    .restart local v16       #tokens:[Ljava/lang/String;
    :cond_7
    const/4 v2, 0x0

    aget-object v2, v12, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 687
    .local v9, key:Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v12, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .line 689
    .local v17, val:Ljava/lang/String;
    const-string v2, "tag"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 690
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 691
    :cond_8
    const-string v2, "number"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 692
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 693
    :cond_9
    const-string v2, "emails"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 695
    const/4 v6, 0x0

    goto :goto_2

    .line 696
    :cond_a
    const-string v2, "pin2"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 697
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 701
    .end local v9           #key:Ljava/lang/String;
    .end local v12           #pair:[Ljava/lang/String;
    .end local v13           #param:Ljava/lang/String;
    .end local v17           #val:Ljava/lang/String;
    :cond_b
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 702
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 705
    :cond_c
    const/16 v2, 0x6f3b

    if-ne v3, v2, :cond_d

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 706
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_d
    move-object/from16 v2, p0

    .line 709
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/IccProvider;->deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    .line 710
    .local v15, success:Z
    if-nez v15, :cond_e

    .line 711
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 714
    :cond_e
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 651
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method deleteSimPbkEntry(Ljava/lang/String;)Lcom/android/internal/telephony/ADNErrorType;
    .locals 5
    .parameter "recordNumber"

    .prologue
    const/4 v4, 0x0

    .line 1076
    const/4 v0, 0x0

    .line 1079
    .local v0, error:Lcom/android/internal/telephony/ADNErrorType;
    :try_start_0
    const-string v3, "simphonebook"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .line 1082
    .local v2, simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v2, :cond_0

    .line 1083
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IIccPhoneBook;->deleteSimPbkEntry(I)Lcom/android/internal/telephony/ADNErrorType;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1095
    .end local v2           #simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return-object v0

    .line 1085
    :catch_0
    move-exception v1

    .line 1086
    .local v1, ex:Landroid/os/RemoteException;
    new-instance v0, Lcom/android/internal/telephony/ADNErrorType;

    .end local v0           #error:Lcom/android/internal/telephony/ADNErrorType;
    invoke-direct {v0}, Lcom/android/internal/telephony/ADNErrorType;-><init>()V

    .line 1087
    .restart local v0       #error:Lcom/android/internal/telephony/ADNErrorType;
    iput-boolean v4, v0, Lcom/android/internal/telephony/ADNErrorType;->success:Z

    goto :goto_0

    .line 1089
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1091
    .local v1, ex:Ljava/lang/SecurityException;
    new-instance v0, Lcom/android/internal/telephony/ADNErrorType;

    .end local v0           #error:Lcom/android/internal/telephony/ADNErrorType;
    invoke-direct {v0}, Lcom/android/internal/telephony/ADNErrorType;-><init>()V

    .line 1092
    .restart local v0       #error:Lcom/android/internal/telephony/ADNErrorType;
    iput-boolean v4, v0, Lcom/android/internal/telephony/ADNErrorType;->success:Z

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 408
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 415
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/sim-contact"

    return-object v0

    .line 408
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 23
    .parameter "url"
    .parameter "initialValues"

    .prologue
    .line 453
    const/16 v20, 0x0

    .line 457
    .local v20, pin2:Ljava/lang/String;
    sget-object v1, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v19

    .line 460
    .local v19, match:I
    const/4 v1, 0x1

    move/from16 v0, v19

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    move/from16 v0, v19

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSupportSimPhonebook()Z

    move-result v1

    if-nez v1, :cond_1

    .line 461
    const-string v1, "IccProvider"

    const-string v7, "This project does not support SIM phonebook."

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const/16 v21, 0x0

    move-object/from16 v12, v20

    .line 594
    .end local v20           #pin2:Ljava/lang/String;
    .local v12, pin2:Ljava/lang/String;
    :goto_0
    return-object v21

    .line 469
    .end local v12           #pin2:Ljava/lang/String;
    .restart local v20       #pin2:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x4

    move/from16 v0, v19

    if-ne v0, v1, :cond_6

    .line 470
    const-string v1, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 471
    .local v2, name:Ljava/lang/String;
    const-string v1, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 472
    .local v3, number:Ljava/lang/String;
    const-string v1, "number1"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 473
    .local v4, number1:Ljava/lang/String;
    const-string v1, "number2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 474
    .local v5, number2:Ljava/lang/String;
    const-string v1, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 475
    .local v6, emails:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/IccProvider;->filterOutInvalidCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 476
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/IccProvider;->filterOutInvalidCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 477
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/IccProvider;->filterOutInvalidCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v1, p0

    .line 479
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/IccProvider;->addSimPbkEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/ADNErrorType;

    move-result-object v18

    .line 481
    .local v18, error:Lcom/android/internal/telephony/ADNErrorType;
    if-eqz v18, :cond_4

    move-object/from16 v0, v18

    iget-boolean v1, v0, Lcom/android/internal/telephony/ADNErrorType;->success:Z

    if-nez v1, :cond_4

    .line 483
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->getHtcSenseVersion()F

    move-result v1

    const v7, 0x3fcccccd

    cmpl-float v1, v1, v7

    if-lez v1, :cond_2

    .line 485
    move-object/from16 v0, v18

    iget v1, v0, Lcom/android/internal/telephony/ADNErrorType;->mError:I

    packed-switch v1, :pswitch_data_0

    .line 493
    :pswitch_0
    sget-object v21, Landroid/provider/HtcUnionContact$SimContacts;->ERROR_URI:Landroid/net/Uri;

    .local v21, resultUri:Landroid/net/Uri;
    :goto_1
    move-object/from16 v12, v20

    .line 535
    .end local v20           #pin2:Ljava/lang/String;
    .restart local v12       #pin2:Ljava/lang/String;
    goto :goto_0

    .line 487
    .end local v12           #pin2:Ljava/lang/String;
    .end local v21           #resultUri:Landroid/net/Uri;
    .restart local v20       #pin2:Ljava/lang/String;
    :pswitch_1
    sget-object v21, Landroid/provider/HtcUnionContact$SimContacts;->ADN_FULL_URI:Landroid/net/Uri;

    .line 488
    .restart local v21       #resultUri:Landroid/net/Uri;
    goto :goto_1

    .line 490
    .end local v21           #resultUri:Landroid/net/Uri;
    :pswitch_2
    sget-object v1, Landroid/provider/HtcUnionContact$SimContacts;->EMAIL_ANR_FULL_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    iget v7, v0, Lcom/android/internal/telephony/ADNErrorType;->mError_type:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 491
    .restart local v21       #resultUri:Landroid/net/Uri;
    goto :goto_1

    .line 496
    .end local v21           #resultUri:Landroid/net/Uri;
    :cond_2
    move-object/from16 v0, v18

    iget v1, v0, Lcom/android/internal/telephony/ADNErrorType;->mError:I

    const/4 v7, 0x1

    if-ne v1, v7, :cond_3

    .line 499
    sget-object v21, Landroid/provider/HtcUnionContact$SimContacts;->ADN_FULL_URI:Landroid/net/Uri;

    .restart local v21       #resultUri:Landroid/net/Uri;
    goto :goto_1

    .line 504
    .end local v21           #resultUri:Landroid/net/Uri;
    :cond_3
    sget-object v21, Landroid/provider/HtcUnionContact$SimContacts;->ERROR_URI:Landroid/net/Uri;

    .restart local v21       #resultUri:Landroid/net/Uri;
    goto :goto_1

    .line 514
    .end local v21           #resultUri:Landroid/net/Uri;
    :cond_4
    if-nez v18, :cond_5

    .line 515
    sget-object v21, Landroid/provider/HtcUnionContact$SimContacts;->ERROR_URI:Landroid/net/Uri;

    .restart local v21       #resultUri:Landroid/net/Uri;
    goto :goto_1

    .line 520
    .end local v21           #resultUri:Landroid/net/Uri;
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/IccContract$IccPhonebook;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    iget-wide v10, v0, Lcom/android/internal/telephony/ADNErrorType;->index:J

    invoke-static {v1, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    .line 523
    .restart local v21       #resultUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v10, 0x0

    move-object/from16 v0, v18

    iget-wide v11, v0, Lcom/android/internal/telephony/ADNErrorType;->index:J

    const/16 v16, 0x0

    move-object v8, v2

    move-object v9, v3

    move-object v13, v4

    move-object v14, v5

    move-object v15, v6

    invoke-static/range {v7 .. v16}, Lcom/android/internal/telephony/IccProvider;->insertIntoContact(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 540
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #number:Ljava/lang/String;
    .end local v4           #number1:Ljava/lang/String;
    .end local v5           #number2:Ljava/lang/String;
    .end local v6           #emails:Ljava/lang/String;
    .end local v18           #error:Lcom/android/internal/telephony/ADNErrorType;
    .end local v21           #resultUri:Landroid/net/Uri;
    :cond_6
    packed-switch v19, :pswitch_data_1

    .line 551
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot insert into URL: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 542
    :pswitch_3
    const/16 v8, 0x6f3a

    .local v8, efType:I
    move-object/from16 v12, v20

    .line 555
    .end local v20           #pin2:Ljava/lang/String;
    .restart local v12       #pin2:Ljava/lang/String;
    :goto_2
    const-string v1, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 556
    .local v9, tag:Ljava/lang/String;
    const-string v1, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 558
    .restart local v3       #number:Ljava/lang/String;
    const/4 v11, 0x0

    move-object/from16 v7, p0

    move-object v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/IccProvider;->addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    .line 560
    .local v22, success:Z
    if-nez v22, :cond_8

    .line 562
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getLastError()Lcom/android/internal/telephony/ADNErrorType;

    move-result-object v18

    .line 564
    .restart local v18       #error:Lcom/android/internal/telephony/ADNErrorType;
    if-eqz v18, :cond_7

    move-object/from16 v0, v18

    iget v1, v0, Lcom/android/internal/telephony/ADNErrorType;->mError:I

    const/4 v7, 0x1

    if-ne v1, v7, :cond_7

    .line 566
    sget-object v21, Landroid/provider/HtcUnionContact$SimContacts;->ADN_FULL_URI:Landroid/net/Uri;

    goto/16 :goto_0

    .line 546
    .end local v3           #number:Ljava/lang/String;
    .end local v8           #efType:I
    .end local v9           #tag:Ljava/lang/String;
    .end local v12           #pin2:Ljava/lang/String;
    .end local v18           #error:Lcom/android/internal/telephony/ADNErrorType;
    .end local v22           #success:Z
    .restart local v20       #pin2:Ljava/lang/String;
    :pswitch_4
    const/16 v8, 0x6f3b

    .line 547
    .restart local v8       #efType:I
    const-string v1, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 548
    .end local v20           #pin2:Ljava/lang/String;
    .restart local v12       #pin2:Ljava/lang/String;
    goto :goto_2

    .line 569
    .restart local v3       #number:Ljava/lang/String;
    .restart local v9       #tag:Ljava/lang/String;
    .restart local v18       #error:Lcom/android/internal/telephony/ADNErrorType;
    .restart local v22       #success:Z
    :cond_7
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 572
    .end local v18           #error:Lcom/android/internal/telephony/ADNErrorType;
    :cond_8
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v1, "content://icc/"

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 573
    .local v17, buf:Ljava/lang/StringBuilder;
    packed-switch v19, :pswitch_data_2

    .line 584
    :goto_3
    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 586
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 594
    .restart local v21       #resultUri:Landroid/net/Uri;
    goto/16 :goto_0

    .line 575
    .end local v21           #resultUri:Landroid/net/Uri;
    :pswitch_5
    const-string v1, "adn/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 579
    :pswitch_6
    const-string v1, "fdn/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 485
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 540
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 573
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 270
    const-string v0, "ro.kernel.qemu"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccProvider;->mSimulator:Z

    .line 287
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/telephony/IccProvider;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 290
    return v2

    .line 274
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccProvider;->mSimulator:Z

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "url"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    const/4 v2, 0x0

    const/16 v7, 0x6f49

    const/4 v6, 0x6

    const/4 v5, 0x4

    .line 299
    sget-object v3, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    sget-object v3, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    if-ne v3, v5, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSupportSimPhonebook()Z

    move-result v3

    if-nez v3, :cond_1

    .line 301
    const-string v3, "IccProvider"

    const-string v4, "This project does not support SIM phonebook."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :goto_0
    return-object v2

    .line 308
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/IccProvider;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v3

    if-nez v3, :cond_2

    .line 310
    const-string v3, "IccProvider"

    const-string v4, "SIM state is not ready. Can not access SIM phonebook."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 319
    :cond_2
    const/4 v2, 0x0

    sput v2, Lcom/android/internal/telephony/IccProvider;->mUrl:I

    .line 322
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccProvider;->mSimulator:Z

    if-nez v2, :cond_3

    .line 323
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 350
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 325
    :pswitch_1
    const/16 v2, 0x6f3a

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 394
    .local v1, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :goto_1
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 395
    new-instance v2, Lcom/android/internal/telephony/ArrayListCursor;

    sget-object v3, Lcom/android/internal/telephony/ImportUtils;->PB_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/android/internal/telephony/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 329
    .end local v1           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :pswitch_2
    const/16 v2, 0x6f3b

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 330
    .restart local v1       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    goto :goto_1

    .line 333
    .end local v1           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :pswitch_3
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 334
    .restart local v1       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    goto :goto_1

    .line 338
    .end local v1           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :pswitch_4
    sput v6, Lcom/android/internal/telephony/IccProvider;->mUrl:I

    .line 339
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 340
    .restart local v1       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    goto :goto_1

    .line 345
    .end local v1           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :pswitch_5
    invoke-direct {p0}, Lcom/android/internal/telephony/IccProvider;->loadPBKEntryFromRIL()Ljava/util/ArrayList;

    move-result-object v1

    .line 346
    .restart local v1       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    goto :goto_1

    .line 354
    .end local v1           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 357
    .restart local v1       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .local v0, contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "Ron Stevens/H"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    const-string v2, "512-555-5038"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .restart local v0       #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "Ron Stevens/M"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    const-string v2, "512-555-8305"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .restart local v0       #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "Melissa Owens"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    const-string v2, "512-555-8305"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    const-string v2, "3"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .restart local v0       #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "Directory Assistence"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    const-string v2, "411"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    const-string v2, "4"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 397
    .end local v0           #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    if-ne v2, v6, :cond_5

    .line 398
    new-instance v2, Lcom/android/internal/telephony/ArrayListCursor;

    sget-object v3, Lcom/android/internal/telephony/ImportUtils;->PB_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/android/internal/telephony/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 402
    :cond_5
    new-instance v2, Lcom/android/internal/telephony/ArrayListCursor;

    sget-object v3, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/android/internal/telephony/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 31
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 720
    const/16 v28, 0x0

    .line 721
    .local v28, pin2:Ljava/lang/String;
    const/16 v24, 0x0

    .line 724
    .local v24, error:Lcom/android/internal/telephony/ADNErrorType;
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v25

    .line 727
    .local v25, match:I
    const/4 v2, 0x1

    move/from16 v0, v25

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    move/from16 v0, v25

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSupportSimPhonebook()Z

    move-result v2

    if-nez v2, :cond_1

    .line 728
    const-string v2, "IccProvider"

    const-string v9, "This project does not support SIM phonebook."

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    const/16 v27, 0x0

    move-object/from16 v21, v28

    .line 826
    .end local v28           #pin2:Ljava/lang/String;
    .local v21, pin2:Ljava/lang/String;
    :goto_0
    return v27

    .line 735
    .end local v21           #pin2:Ljava/lang/String;
    .restart local v28       #pin2:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccProvider;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v9, 0x5

    if-eq v2, v9, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v2

    if-nez v2, :cond_2

    .line 737
    const-string v2, "IccProvider"

    const-string v9, "SIM state is not ready. Can not access SIM phonebook."

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const/16 v27, 0x0

    move-object/from16 v21, v28

    .end local v28           #pin2:Ljava/lang/String;
    .restart local v21       #pin2:Ljava/lang/String;
    goto :goto_0

    .line 744
    .end local v21           #pin2:Ljava/lang/String;
    .restart local v28       #pin2:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x5

    move/from16 v0, v25

    if-ne v0, v2, :cond_6

    .line 745
    const/16 v27, 0x1

    .line 746
    .local v27, numerOfUpdate:I
    const-string v2, "recordNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 747
    .local v3, recordNumber:Ljava/lang/String;
    const-string v2, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 748
    .local v4, name:Ljava/lang/String;
    const-string v2, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 749
    .local v5, number:Ljava/lang/String;
    const-string v2, "number1"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 750
    .local v6, number1:Ljava/lang/String;
    const-string v2, "number2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 751
    .local v7, number2:Ljava/lang/String;
    const-string v2, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 754
    .local v8, emails:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/IccProvider;->filterOutInvalidCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 755
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/IccProvider;->filterOutInvalidCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 756
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/IccProvider;->filterOutInvalidCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p0

    .line 759
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/IccProvider;->updateSimPbkEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/ADNErrorType;

    move-result-object v24

    .line 761
    if-eqz v24, :cond_3

    move-object/from16 v0, v24

    iget-boolean v2, v0, Lcom/android/internal/telephony/ADNErrorType;->success:Z

    if-nez v2, :cond_3

    .line 762
    const/16 v27, 0x0

    .line 764
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->getHtcSenseVersion()F

    move-result v2

    const v9, 0x3fcccccd

    cmpl-float v2, v2, v9

    if-lez v2, :cond_5

    .line 766
    move-object/from16 v0, v24

    iget v2, v0, Lcom/android/internal/telephony/ADNErrorType;->mError:I

    packed-switch v2, :pswitch_data_0

    .line 771
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    sget-object v9, Landroid/provider/HtcUnionContact$SimContacts;->ERROR_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 768
    :pswitch_0
    sget-object v2, Landroid/provider/HtcUnionContact$SimContacts;->EMAIL_ANR_FULL_URI:Landroid/net/Uri;

    move-object/from16 v0, v24

    iget v9, v0, Lcom/android/internal/telephony/ADNErrorType;->mError_type:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    .line 769
    .local v29, resultUri:Landroid/net/Uri;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-virtual/range {v29 .. v29}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 777
    .end local v29           #resultUri:Landroid/net/Uri;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 780
    .local v14, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAdditionalNumbersInSim()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v9, p0

    move-object v10, v3

    move-object v11, v5

    move-object v12, v6

    move-object v13, v7

    .line 781
    invoke-direct/range {v9 .. v14}, Lcom/android/internal/telephony/IccProvider;->udateSpeedDialList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    .line 785
    :cond_4
    invoke-static {v14, v3}, Lcom/android/internal/telephony/ImportUtils;->deleteSimContactData(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v23

    .line 788
    .local v23, rawId:I
    if-lez v23, :cond_5

    .line 789
    const/16 v17, 0x0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/android/internal/telephony/ADNErrorType;->index:J

    move-wide/from16 v18, v0

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    invoke-static/range {v14 .. v23}, Lcom/android/internal/telephony/IccProvider;->insertIntoContact(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .end local v14           #resolver:Landroid/content/ContentResolver;
    .end local v23           #rawId:I
    :cond_5
    move-object/from16 v21, v28

    .line 794
    .end local v28           #pin2:Ljava/lang/String;
    .restart local v21       #pin2:Ljava/lang/String;
    goto/16 :goto_0

    .line 797
    .end local v3           #recordNumber:Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #number:Ljava/lang/String;
    .end local v6           #number1:Ljava/lang/String;
    .end local v7           #number2:Ljava/lang/String;
    .end local v8           #emails:Ljava/lang/String;
    .end local v21           #pin2:Ljava/lang/String;
    .end local v27           #numerOfUpdate:I
    .restart local v28       #pin2:Ljava/lang/String;
    :cond_6
    packed-switch v25, :pswitch_data_1

    .line 808
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot insert into URL: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 799
    :pswitch_1
    const/16 v16, 0x6f3a

    .local v16, efType:I
    move-object/from16 v21, v28

    .line 812
    .end local v28           #pin2:Ljava/lang/String;
    .restart local v21       #pin2:Ljava/lang/String;
    :goto_1
    const-string v2, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 813
    .local v17, tag:Ljava/lang/String;
    const-string v2, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 814
    .restart local v5       #number:Ljava/lang/String;
    const/4 v8, 0x0

    .line 815
    .local v8, emails:[Ljava/lang/String;
    const-string v2, "newTag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 816
    .local v19, newTag:Ljava/lang/String;
    const-string v2, "newNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 817
    .local v20, newNumber:Ljava/lang/String;
    const/16 v26, 0x0

    .local v26, newEmails:[Ljava/lang/String;
    move-object/from16 v15, p0

    move-object/from16 v18, v5

    .line 819
    invoke-direct/range {v15 .. v21}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v30

    .line 822
    .local v30, success:Z
    if-nez v30, :cond_7

    .line 823
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 803
    .end local v5           #number:Ljava/lang/String;
    .end local v8           #emails:[Ljava/lang/String;
    .end local v16           #efType:I
    .end local v17           #tag:Ljava/lang/String;
    .end local v19           #newTag:Ljava/lang/String;
    .end local v20           #newNumber:Ljava/lang/String;
    .end local v21           #pin2:Ljava/lang/String;
    .end local v26           #newEmails:[Ljava/lang/String;
    .end local v30           #success:Z
    .restart local v28       #pin2:Ljava/lang/String;
    :pswitch_2
    const/16 v16, 0x6f3b

    .line 804
    .restart local v16       #efType:I
    const-string v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 805
    .end local v28           #pin2:Ljava/lang/String;
    .restart local v21       #pin2:Ljava/lang/String;
    goto :goto_1

    .line 826
    .restart local v5       #number:Ljava/lang/String;
    .restart local v8       #emails:[Ljava/lang/String;
    .restart local v17       #tag:Ljava/lang/String;
    .restart local v19       #newTag:Ljava/lang/String;
    .restart local v20       #newNumber:Ljava/lang/String;
    .restart local v26       #newEmails:[Ljava/lang/String;
    .restart local v30       #success:Z
    :cond_7
    const/16 v27, 0x1

    goto/16 :goto_0

    .line 766
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    .line 797
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method updateSimPbkEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/ADNErrorType;
    .locals 8
    .parameter "recordNumber"
    .parameter "name"
    .parameter "number"
    .parameter "number1"
    .parameter "number2"
    .parameter "email"

    .prologue
    .line 1100
    const/4 v7, 0x0

    .line 1105
    .local v7, error:Lcom/android/internal/telephony/ADNErrorType;
    :try_start_0
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 1107
    .local v0, simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 1108
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateSimPbkEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/ADNErrorType;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1115
    .end local v0           #simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return-object v7

    .line 1112
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1110
    :catch_1
    move-exception v1

    goto :goto_0
.end method
