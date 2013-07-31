.class public Lcom/android/internal/telephony/HtcMessageHelper;
.super Ljava/lang/Object;
.source "HtcMessageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/HtcMessageHelper$KddiReplaceUnicodeEmojiResult;,
        Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;
    }
.end annotation


# static fields
.field private static final DEBUG_SIGNATURE:Z = true

.field private static final DELAY_WHEN_SIGNATURE_MISMATCH_MS:J = 0x1388L

.field private static final KDDI_MESSAGE_ID_ETWS_KDDI_TEST_MESSAGE:I = 0xac00

.field private static final SPRINT_EMS_ASCII_SEGMENT_LENGTH:I = 0x9a

.field private static final SPRINT_EMS_UNICODE_SEGMENT_LENGTH:I = 0x40

.field private static final SPRINT_MAX_SEGMENT_COUNT:I = 0x6

.field private static final SPRINT_REASSEMBLE_TAG:Ljava/lang/String; = "getSprintReassembleSmsInformation"

.field private static final TAG:Ljava/lang/String; = "SMS"

.field private static VZWSIGNATURE:[Ljava/lang/String;

.field private static mKddiMCTimestamp:J

.field private static mKddiMessageId:I

.field private static mKddiUserData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.verizon.permissions.qos"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.verizon.permissions.appdirectedsms"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.verizon.permissions.vzwappapn"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.verizon.permissions.sso"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.verizon.permissions.securesettings"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->VZWSIGNATURE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMsgRef2PendingList(Landroid/content/Context;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Landroid/net/Uri;
    .locals 16
    .parameter "context"
    .parameter "tracker"

    .prologue
    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    .local v9, msgRef:I
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .local v6, deliveryIntent:Landroid/app/PendingIntent;
    invoke-virtual {v6}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .local v8, intent:Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .local v1, action:Ljava/lang/String;
    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .local v5, data:Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .local v3, cn:Landroid/content/ComponentName;
    const/4 v10, 0x0

    .local v10, pkg:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, cls:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    :cond_0
    new-instance v12, Landroid/content/ContentValues;

    const/4 v13, 0x5

    invoke-direct {v12, v13}, Landroid/content/ContentValues;-><init>(I)V

    .local v12, values:Landroid/content/ContentValues;
    const-string v13, "tp_mr"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    const-string v13, "action"

    invoke-virtual {v12, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v5, :cond_2

    const-string v13, "uri"

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string v13, "pkg_name"

    invoke-virtual {v12, v13, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    const-string v13, "class_name"

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 v11, 0x0

    .local v11, retUri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .local v4, cr:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/android/internal/telephony/HtcMessageHelper;->deleteMsgRefFromPendingList(Landroid/content/Context;I)I

    sget-object v13, Landroid/provider/HtcMessages$HtcSms$PendingMsg;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v13, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .end local v4           #cr:Landroid/content/ContentResolver;
    :goto_0
    return-object v11

    :catch_0
    move-exception v7

    .local v7, e:Ljava/lang/Exception;
    const-string v13, "SMS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "insert pending list failure: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static appendSprintSegmentIndex(Ljava/lang/CharSequence;Z)Ljava/lang/String;
    .locals 16
    .parameter "oriString"
    .parameter "isAscii"

    .prologue
    if-eqz p1, :cond_0

    const/16 v8, 0x9a

    .local v8, seglen:I
    :goto_0
    const/4 v2, 0x6

    .local v2, maxseg:I
    const/4 v10, 0x0

    .local v10, strlen:I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, newString:Ljava/lang/String;
    if-nez p0, :cond_1

    const/4 v13, 0x0

    :goto_1
    return-object v13

    .end local v2           #maxseg:I
    .end local v4           #newString:Ljava/lang/String;
    .end local v8           #seglen:I
    .end local v10           #strlen:I
    :cond_0
    const/16 v8, 0x40

    goto :goto_0

    .restart local v2       #maxseg:I
    .restart local v4       #newString:Ljava/lang/String;
    .restart local v8       #seglen:I
    .restart local v10       #strlen:I
    :cond_1
    const/4 v0, 0x1

    .local v0, currentseg:I
    :goto_2
    if-gt v0, v2, :cond_2

    add-int/lit8 v13, v0, -0x1

    mul-int v12, v13, v8

    .local v12, thisSegmentStart:I
    mul-int v5, v0, v8

    .local v5, nextSegmentStart:I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v5, v10, :cond_3

    .end local v5           #nextSegmentStart:I
    .end local v12           #thisSegmentStart:I
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    div-int v14, v13, v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    rem-int/2addr v13, v8

    if-lez v13, :cond_7

    const/4 v13, 0x1

    :goto_3
    add-int v7, v14, v13

    .local v7, segcount:I
    new-array v9, v7, [Ljava/lang/String;

    .local v9, strarray:[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .local v3, newAppendedString:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    if-ge v1, v7, :cond_9

    add-int/lit8 v13, v7, -0x1

    if-ne v1, v13, :cond_8

    const/16 v13, 0x28

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v14, v1, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x2f

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ") "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    mul-int v14, v1, v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v4, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .end local v1           #i:I
    .end local v3           #newAppendedString:Ljava/lang/StringBuilder;
    .end local v7           #segcount:I
    .end local v9           #strarray:[Ljava/lang/String;
    .restart local v5       #nextSegmentStart:I
    .restart local v12       #thisSegmentStart:I
    :cond_3
    const-string v13, "SMS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "char at checkPos "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v5

    .local v11, thisSegmentEnd:I
    :cond_4
    invoke-virtual {v4, v11}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Lcom/android/internal/telephony/HtcMessageHelper;->isMiddleWord(C)Z

    move-result v13

    if-nez v13, :cond_5

    :goto_6
    const-string v13, "SMS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "emptyPos/checkPos: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v6, sb:Ljava/lang/StringBuilder;
    if-lt v11, v12, :cond_6

    if-ge v11, v5, :cond_6

    add-int/lit8 v1, v11, 0x1

    .restart local v1       #i:I
    :goto_7
    if-ge v1, v5, :cond_6

    add-int/lit8 v13, v11, 0x1

    const/16 v14, 0x20

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .end local v1           #i:I
    .end local v6           #sb:Ljava/lang/StringBuilder;
    :cond_5
    add-int/lit8 v11, v11, -0x1

    if-ge v11, v12, :cond_4

    goto :goto_6

    .restart local v6       #sb:Ljava/lang/StringBuilder;
    :cond_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .end local v5           #nextSegmentStart:I
    .end local v6           #sb:Ljava/lang/StringBuilder;
    .end local v11           #thisSegmentEnd:I
    .end local v12           #thisSegmentStart:I
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_3

    .restart local v1       #i:I
    .restart local v3       #newAppendedString:Ljava/lang/StringBuilder;
    .restart local v7       #segcount:I
    .restart local v9       #strarray:[Ljava/lang/String;
    :cond_8
    const/16 v13, 0x28

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v14, v1, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x2f

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ") "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    mul-int v14, v1, v8

    add-int/lit8 v15, v1, 0x1

    mul-int/2addr v15, v8

    invoke-virtual {v4, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1
.end method

.method public static bBuildinSystemAP(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .local v1, pkgInfo:Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :catch_0
    move-exception v0

    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "SMS"

    const-string v4, "exception when get packageinfo"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static bVZWSignedAP(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "packageName"

    .prologue
    sget-object v2, Lcom/android/internal/telephony/HtcMessageHelper;->VZWSIGNATURE:[Ljava/lang/String;

    array-length v1, v2

    .local v1, vzwSignaturelen:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check vzwSig "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/HtcMessageHelper;->VZWSIGNATURE:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    const-string v2, "SMS"

    const-string v3, "check success"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "SMS"

    const-string v3, "check fail"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static callingWithSignatureNoneBlocking(Landroid/content/Context;IILjava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "uid"
    .parameter "pid"
    .parameter "packageName"

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .local v1, mPm:Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .local v2, pkgInfo:Landroid/content/pm/PackageInfo;
    const/16 v4, 0x40

    :try_start_0
    invoke-virtual {v1, p3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v1, p1, p2, v4, v3}, Lcom/android/internal/telephony/HtcMessageHelper;->checkCallingSignature(Landroid/content/pm/PackageManager;II[Landroid/content/pm/Signature;Z)Z

    move-result v3

    :goto_0
    return v3

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No packageInfo found for UID/PID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static check3gpp2BCSMSDuplication(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 1
    .parameter "context"
    .parameter "smsb"

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/HtcMessageHelper;->kddiCheck3gpp2JEADuplication(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_CONFIG:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/internal/telephony/HtcMessageHelper;->kddiCheckEarthquakeAlertDuplication(Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static check3gppBCSMSDuplication(Landroid/content/Context;[B)Z
    .locals 1
    .parameter "context"
    .parameter "pdu"

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/HtcMessageHelper;->kddiCheck3gppJEADuplication(Landroid/content/Context;[B)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkCallingSignature(Landroid/content/pm/PackageManager;II[Landroid/content/pm/Signature;Z)Z
    .locals 11
    .parameter "mPm"
    .parameter "callingUid"
    .parameter "callingPid"
    .parameter "matching"
    .parameter "delayWhenNotMatch"

    .prologue
    const/4 v9, 0x1

    if-eqz p3, :cond_0

    array-length v10, p3

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return v9

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/HtcMessageHelper;->getUidSignatures(Landroid/content/pm/PackageManager;II)[Landroid/content/pm/Signature;

    move-result-object v2

    .local v2, callingSignatures:[Landroid/content/pm/Signature;
    if-eqz v2, :cond_4

    move-object v0, v2

    .local v0, arr$:[Landroid/content/pm/Signature;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v4, v3

    .end local v0           #arr$:[Landroid/content/pm/Signature;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v8, v0, v4

    .local v8, sig:Landroid/content/pm/Signature;
    move-object v1, p3

    .local v1, arr$:[Landroid/content/pm/Signature;
    array-length v6, v1

    .local v6, len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_2
    if-ge v3, v6, :cond_3

    aget-object v7, v1, v3

    .local v7, matchSig:Landroid/content/pm/Signature;
    if-eqz v7, :cond_2

    invoke-virtual {v8, v7}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v7           #matchSig:Landroid/content/pm/Signature;
    :cond_3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_1

    .end local v1           #arr$:[Landroid/content/pm/Signature;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .end local v8           #sig:Landroid/content/pm/Signature;
    :cond_4
    if-eqz p4, :cond_5

    const-wide/16 v9, 0x1388

    :try_start_0
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_3
    const/4 v9, 0x0

    goto :goto_0

    :catch_0
    move-exception v9

    goto :goto_3
.end method

.method public static checkCmasDuplication(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 1
    .parameter "context"
    .parameter "smsb"

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isSupportSprintDuplicatedCmasDetection()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/internal/telephony/HtcMessageHelper;->deleteMarkedOldCmasMessage(Landroid/content/Context;)V

    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/HtcMessageHelper;->checkCmasDuplicationByMessageID(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v0

    return v0
.end method

.method private static checkCmasDuplicationByMessageID(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 13
    .parameter "context"
    .parameter "smsb"

    .prologue
    const/4 v12, 0x0

    .local v12, result:Z
    const/4 v10, 0x1

    .local v10, isCdma:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageIdentifier()I

    move-result v11

    .local v11, msg_id:I
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_ID: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "protocol"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "pdu"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "is_cdma_format"

    aput-object v1, v2, v0

    .local v2, projection:[Ljava/lang/String;
    const-string v3, "protocol = ?  AND is_cdma_format = ? "

    .local v3, selection:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isSupportSprintDuplicatedCmasDetection()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND ( exp > ? ) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v1, 0x1

    if-eqz v10, :cond_4

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v4, v1

    .local v4, selectionArgs:[Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isSupportSprintDuplicatedCmasDetection()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .local v7, currentTimeMillis:J
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    .end local v4           #selectionArgs:[Ljava/lang/String;
    const/4 v0, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v1, 0x1

    if-eqz v10, :cond_5

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v4, v1

    const/4 v0, 0x2

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .end local v7           #currentTimeMillis:J
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$HtcCmas;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Detecte duplicated CMAS: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v5, 0x2

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v12, 0x1

    :cond_2
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_3
    :goto_2
    return v12

    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v3       #selection:Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .restart local v7       #currentTimeMillis:J
    :cond_5
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .end local v7           #currentTimeMillis:J
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    .restart local v6       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .local v9, e:Ljava/lang/Exception;
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception when checking CMAS duplication: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static checkSmsDuplication(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 1
    .parameter "context"
    .parameter "smsb"

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/HtcMessageHelper;->kddiCheckSmsDuplication(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static deleteMarkedOldCmasMessage(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, currentTimeMillis:J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ( c_type =  0 ) AND (exp < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " or "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "exp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = 0 ) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, selectionForDeleteOldCmas:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$HtcCmas;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static deleteMsgRefFromPendingList(Landroid/content/Context;I)I
    .locals 6
    .parameter "context"
    .parameter "msgRef"

    .prologue
    const/4 v0, 0x0

    .local v0, count:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/HtcMessages$HtcSms$PendingMsg;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tp_mr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete pending list failure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static encodeShiftJis(Ljava/lang/String;)[B
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v5

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, charCount:I
    const-string v6, "kddi-emoji"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    .local v1, encoder:Ljava/nio/charset/CharsetEncoder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "kddi-emoji"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, ex:Ljava/io/UnsupportedEncodingException;
    const-string v6, "encodeShiftJis"

    const-string v7, "SJIS encode failed: "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getGooglePuaFromSurrogatePair([C)I
    .locals 7
    .parameter "pair"

    .prologue
    const v6, 0xdc00

    const v5, 0xd800

    const/4 v3, 0x0

    const/4 v2, 0x0

    .local v2, result:I
    aget-char v0, p0, v3

    .local v0, hi_char:C
    const/4 v4, 0x1

    aget-char v1, p0, v4

    .local v1, lo_char:C
    if-lt v0, v5, :cond_0

    const v4, 0xdbff

    if-le v0, v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-lt v1, v6, :cond_0

    const v4, 0xdfff

    if-gt v1, v4, :cond_0

    sub-int v3, v0, v5

    mul-int/lit16 v3, v3, 0x400

    sub-int v4, v1, v6

    add-int/2addr v3, v4

    const/high16 v4, 0x1

    add-int v2, v3, v4

    move v3, v2

    goto :goto_0
.end method

.method private static getIntentFromPendingList(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 14
    .parameter "context"
    .parameter "messageRef"

    .prologue
    const/4 v4, 0x0

    const/4 v13, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "action"

    aput-object v0, v2, v1

    const-string v0, "uri"

    aput-object v0, v2, v3

    const-string v0, "pkg_name"

    aput-object v0, v2, v5

    const-string v0, "class_name"

    aput-object v0, v2, v13

    const/4 v0, 0x4

    const-string v1, "tp_mr"

    aput-object v1, v2, v0

    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/HtcMessages$HtcSms$PendingMsg;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tp_mr = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .local v7, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .local v9, intent:Landroid/content/Intent;
    if-eqz v7, :cond_2

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .local v6, action:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .local v12, uriStr:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .local v11, pkg:Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .local v8, cls:Ljava/lang/String;
    new-instance v10, Landroid/content/Intent;

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v10, v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v9           #intent:Landroid/content/Intent;
    .local v10, intent:Landroid/content/Intent;
    :try_start_1
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v11, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    move-object v9, v10

    .end local v6           #action:Ljava/lang/String;
    .end local v8           #cls:Ljava/lang/String;
    .end local v10           #intent:Landroid/content/Intent;
    .end local v11           #pkg:Ljava/lang/String;
    .end local v12           #uriStr:Ljava/lang/String;
    .restart local v9       #intent:Landroid/content/Intent;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v9

    :catchall_0
    move-exception v0

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .end local v9           #intent:Landroid/content/Intent;
    .restart local v6       #action:Ljava/lang/String;
    .restart local v8       #cls:Ljava/lang/String;
    .restart local v10       #intent:Landroid/content/Intent;
    .restart local v11       #pkg:Ljava/lang/String;
    .restart local v12       #uriStr:Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10           #intent:Landroid/content/Intent;
    .restart local v9       #intent:Landroid/content/Intent;
    goto :goto_0
.end method

.method public static getKddiEmailSignalAction()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "com.kddi.android.intent.action.ESIGNAL_RECEIVED"

    return-object v0
.end method

.method public static getKddiEmailSignalPermission()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "com.kddi.android.permission.RECEIVE_ESIGNAL"

    return-object v0
.end method

.method public static getKddiVoiceMailNotificationType1String([BZ)Ljava/lang/String;
    .locals 14
    .parameter "userdata"
    .parameter "skipEsnCheck"

    .prologue
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9}, Ljava/lang/String;-><init>()V

    .local v9, resultString:Ljava/lang/String;
    const/16 v11, 0x10

    new-array v5, v11, [B

    fill-array-data v5, :array_0

    .local v5, repKddislamdownData:[B
    const/4 v11, 0x1

    new-array v6, v11, [B

    const/4 v11, 0x0

    const/16 v12, 0x2f

    aput-byte v12, v6, v11

    .local v6, repKddislamdownData2:[B
    const/4 v11, 0x2

    new-array v7, v11, [B

    fill-array-data v7, :array_1

    .local v7, repKddislamdownData3:[B
    array-length v11, v5

    add-int/lit8 v11, v11, 0x7

    new-array v8, v11, [B

    .local v8, resultData:[B
    const/4 v11, 0x1

    if-ne p1, v11, :cond_1

    const/4 v4, 0x0

    .local v4, offset:I
    :goto_0
    const/4 v1, 0x0

    .local v1, destPos:I
    const/4 v11, 0x0

    array-length v12, v5

    invoke-static {v5, v11, v8, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v11, v5

    add-int/2addr v1, v11

    array-length v11, p0

    sub-int/2addr v11, v4

    const/4 v12, 0x4

    if-lt v11, v12, :cond_0

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v11, "00"

    invoke-direct {v2, v11}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .local v2, df:Ljava/text/DecimalFormat;
    add-int/lit8 v11, v4, 0x2

    aget-byte v11, p0, v11

    int-to-long v11, v11

    invoke-virtual {v2, v11, v12}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    .local v0, countValue:Ljava/lang/String;
    const-string v11, "SMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "total: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-static {v11, v12, v8, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v6, v11, v8, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v11, v4, 0x3

    aget-byte v11, p0, v11

    int-to-long v11, v11

    invoke-virtual {v2, v11, v12}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    const-string v11, "SMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "unread: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-static {v11, v12, v8, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-static {v7, v11, v8, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .end local v0           #countValue:Ljava/lang/String;
    .end local v2           #df:Ljava/text/DecimalFormat;
    :cond_0
    :try_start_0
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    array-length v12, v8

    const-string v13, "kddi-emoji"

    invoke-direct {v10, v8, v11, v12, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v9           #resultString:Ljava/lang/String;
    .local v10, resultString:Ljava/lang/String;
    :try_start_1
    const-string v11, "SMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "format data: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v9, v10

    .end local v10           #resultString:Ljava/lang/String;
    .restart local v9       #resultString:Ljava/lang/String;
    :goto_1
    return-object v9

    .end local v1           #destPos:I
    .end local v4           #offset:I
    :cond_1
    const/4 v4, 0x2

    .restart local v4       #offset:I
    goto/16 :goto_0

    .restart local v1       #destPos:I
    :catch_0
    move-exception v3

    .local v3, ex:Ljava/io/UnsupportedEncodingException;
    :goto_2
    const-string v11, "SMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SJIS decode failed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v3           #ex:Ljava/io/UnsupportedEncodingException;
    .end local v9           #resultString:Ljava/lang/String;
    .restart local v10       #resultString:Ljava/lang/String;
    :catch_1
    move-exception v3

    move-object v9, v10

    .end local v10           #resultString:Ljava/lang/String;
    .restart local v9       #resultString:Ljava/lang/String;
    goto :goto_2

    :array_0
    .array-data 0x1
        0x93t
        0x60t
        0x8ct
        0xbet
        0x82t
        0xa8t
        0x92t
        0x6dt
        0x82t
        0xe7t
        0x82t
        0xb9t
        0xdt
        0xat
        0x96t
        0xa2t
    .end array-data

    :array_1
    .array-data 0x1
        0x8ct
        0x8ft
    .end array-data
.end method

.method public static getLfCount(Ljava/lang/String;)I
    .locals 5
    .parameter "s"

    .prologue
    if-nez p0, :cond_1

    const/4 v2, 0x0

    :cond_0
    return v2

    :cond_1
    const/4 v2, 0x0

    .local v2, lfCount:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, characterCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    const/16 v3, 0xa

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getPackageName(Landroid/content/pm/PackageManager;II)Ljava/lang/String;
    .locals 6
    .parameter "mPm"
    .parameter "uid"
    .parameter "pid"

    .prologue
    const/4 v2, 0x0

    .local v2, psName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .local v1, packages:[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    const/4 v3, 0x0

    aget-object v2, v1, v3

    .end local v1           #packages:[Ljava/lang/String;
    :goto_0
    return-object v2

    .restart local v1       #packages:[Ljava/lang/String;
    :cond_0
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No packages with UID/PID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1           #packages:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to get UID/PID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " packageName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getShiftJisEncodingDetails(Ljava/lang/String;)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 4
    .parameter "message"

    .prologue
    new-instance v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .local v1, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->kddiCalculateMsgSize(Ljava/lang/String;)I

    move-result v0

    .local v0, byteSize:I
    div-int/lit16 v3, v0, 0x8c

    rem-int/lit16 v2, v0, 0x8c

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    add-int/2addr v2, v3

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    if-lez v0, :cond_1

    iget v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    mul-int/lit16 v2, v2, 0x8c

    sub-int/2addr v2, v0

    :goto_1
    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    const/4 v2, 0x3

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    return-object v1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/16 v2, 0x8c

    goto :goto_1
.end method

.method public static getSmscForKddi(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "originalSmsc"

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/HtcMsgConfig;->getSenseVersion()F

    move-result v3

    const/high16 v4, 0x4090

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    const/4 v0, 0x0

    .local v0, isKddiSim:Z
    const-string v3, "gsm.sim.operator.numeric"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, simMccMnc:Ljava/lang/String;
    const-string v3, "getSmscForKddi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimOperator : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "44007"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "44008"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "44050"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "44051"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "44052"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "44053"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "44054"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "44055"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "44056"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "44070"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "44071"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "44072"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "44073"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "44074"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "44075"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "44076"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "44077"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "44078"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "44079"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "44080"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "44081"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "44082"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "44083"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "44084"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "44085"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "44086"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "44087"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "44088"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "44089"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "44150"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "44151"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "44170"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string v3, "+85294981704"

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v1

    .local v1, kddiSmsc:[B
    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p0

    .end local v0           #isKddiSim:Z
    .end local v1           #kddiSmsc:[B
    .end local v2           #simMccMnc:Ljava/lang/String;
    .end local p0
    :cond_1
    return-object p0
.end method

.method public static getSprintReassembleSmsInformation(Ljava/lang/String;)Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;
    .locals 28
    .parameter "text"

    .prologue
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "start to parse"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v25

    const/16 v26, 0x5

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_1

    :cond_0
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Null text or length too shhort, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    :goto_0
    return-object v19

    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v23

    .local v23, totalLength:I
    const-string v25, "("

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .local v15, indexOfFirstOpenParenthesis:I
    const/4 v10, -0x1

    .local v10, indexOfFirstCloseParenthesis:I
    const-string v25, "{"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .local v13, indexOfFirstOpenBraces:I
    const/4 v8, -0x1

    .local v8, indexOfFirstCloseBraces:I
    const-string v25, "["

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .local v14, indexOfFirstOpenBrackets:I
    const/4 v9, -0x1

    .local v9, indexOfFirstCloseBrackets:I
    const-string v25, "/"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .local v11, indexOfFirstForwardSlash:I
    const-string v25, "of"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .local v12, indexOfFirstOf:I
    const/4 v6, -0x1

    .local v6, indexOfContent:I
    const/4 v3, -0x1

    .local v3, currentSegment:I
    const/16 v24, -0x1

    .local v24, totalSegment:I
    if-eqz v15, :cond_2

    if-eqz v13, :cond_2

    if-nez v14, :cond_10

    :cond_2
    const/16 v16, -0x1

    .local v16, indexOfOpen:I
    const/4 v5, -0x1

    .local v5, indexOfClose:I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v11, v0, :cond_3

    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Type 1 without forward slash, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    goto :goto_0

    :cond_3
    if-nez v15, :cond_5

    const-string v25, ")"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    move/from16 v16, v15

    move v5, v10

    :cond_4
    :goto_1
    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v5, v0, :cond_7

    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Type 1 without close parenthesis, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    goto :goto_0

    :cond_5
    if-nez v13, :cond_6

    const-string v25, "}"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    move/from16 v16, v13

    move v5, v8

    goto :goto_1

    :cond_6
    if-nez v14, :cond_4

    const-string v25, "]"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    move/from16 v16, v14

    move v5, v9

    goto :goto_1

    :cond_7
    if-le v11, v5, :cond_8

    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Type 1 forward parenthesis behind close parenthesis, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v25, v5, -0x1

    move/from16 v0, v25

    if-eq v11, v0, :cond_9

    add-int/lit8 v25, v16, 0x1

    move/from16 v0, v25

    if-ne v11, v0, :cond_a

    :cond_9
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Type 1 without current segment or total segment, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v17, v5, 0x1

    .local v17, indexOfRightOfClose:I
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_c

    const-string v25, " "

    add-int/lit8 v26, v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_c

    const-string v25, "getSprintReassembleSmsInformation"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "indexOfRightOfClose : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v25, "getSprintReassembleSmsInformation"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "totalLength : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_b

    const-string v25, "getSprintReassembleSmsInformation"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "right of close : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    add-int/lit8 v27, v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Type 1 space is not after close parenthesis, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_c
    add-int/lit8 v6, v5, 0x2

    move/from16 v0, v23

    if-lt v6, v0, :cond_d

    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Type 1 has no content, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_d
    add-int/lit8 v25, v16, 0x1

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    add-int/lit8 v25, v11, 0x1

    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v24

    .end local v5           #indexOfClose:I
    .end local v16           #indexOfOpen:I
    .end local v17           #indexOfRightOfClose:I
    :cond_e
    :goto_2
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v3, v0, :cond_f

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_f

    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v6, v0, :cond_1e

    :cond_f
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Can\'t get some information, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    goto/16 :goto_0

    .restart local v5       #indexOfClose:I
    .restart local v16       #indexOfOpen:I
    .restart local v17       #indexOfRightOfClose:I
    :catch_0
    move-exception v20

    .local v20, nfe1:Ljava/lang/NumberFormatException;
    const-string v25, "getSprintReassembleSmsInformation"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "currentSegment string : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    add-int/lit8 v27, v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Type 1 current segment parse fail, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    goto/16 :goto_0

    .end local v20           #nfe1:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v21

    .local v21, nfe2:Ljava/lang/NumberFormatException;
    const-string v25, "getSprintReassembleSmsInformation"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "totalSegment string : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    add-int/lit8 v27, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Type 1 without total segment parse fail, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    goto/16 :goto_0

    .end local v5           #indexOfClose:I
    .end local v16           #indexOfOpen:I
    .end local v17           #indexOfRightOfClose:I
    .end local v21           #nfe2:Ljava/lang/NumberFormatException;
    :cond_10
    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v11, v0, :cond_11

    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v12, v0, :cond_e

    :cond_11
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v11, v0, :cond_12

    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v12, v0, :cond_12

    const-string v4, "/"

    .local v4, delim:Ljava/lang/String;
    move v7, v11

    .local v7, indexOfDelim:I
    :goto_3
    const/16 v25, 0x0

    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v3

    const-string v25, "/"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_15

    add-int/lit8 v25, v23, -0x1

    move/from16 v0, v25

    if-ne v7, v0, :cond_15

    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Type 2 forward slash is the last character, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    goto/16 :goto_0

    .end local v4           #delim:Ljava/lang/String;
    .end local v7           #indexOfDelim:I
    :cond_12
    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v11, v0, :cond_13

    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v12, v0, :cond_13

    const-string v4, "of"

    .restart local v4       #delim:Ljava/lang/String;
    move v7, v12

    .restart local v7       #indexOfDelim:I
    goto :goto_3

    .end local v4           #delim:Ljava/lang/String;
    .end local v7           #indexOfDelim:I
    :cond_13
    if-ge v11, v12, :cond_14

    const-string v4, "/"

    .restart local v4       #delim:Ljava/lang/String;
    move v7, v11

    .restart local v7       #indexOfDelim:I
    goto :goto_3

    .end local v4           #delim:Ljava/lang/String;
    .end local v7           #indexOfDelim:I
    :cond_14
    const-string v4, "of"

    .restart local v4       #delim:Ljava/lang/String;
    move v7, v12

    .restart local v7       #indexOfDelim:I
    goto :goto_3

    :catch_2
    move-exception v20

    .restart local v20       #nfe1:Ljava/lang/NumberFormatException;
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Type 2 current segment parse fail, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    goto/16 :goto_0

    .end local v20           #nfe1:Ljava/lang/NumberFormatException;
    :cond_15
    const-string v25, "of"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_16

    add-int/lit8 v25, v23, -0x2

    move/from16 v0, v25

    if-ne v7, v0, :cond_16

    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Type 2 without of is the last word, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_16
    const-string v25, "/"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_17

    add-int/lit8 v18, v7, 0x1

    .local v18, indexOfTotalSegment:I
    :goto_4
    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_18

    const-string v25, " "

    add-int/lit8 v26, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_18

    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .end local v18           #indexOfTotalSegment:I
    :cond_17
    add-int/lit8 v18, v7, 0x2

    .restart local v18       #indexOfTotalSegment:I
    goto :goto_4

    :cond_18
    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_19

    const-string v25, " "

    add-int/lit8 v26, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1a

    :cond_19
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Type 2 can\'t find total segment, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_1a
    move/from16 v6, v18

    :goto_5
    move/from16 v0, v23

    if-ge v6, v0, :cond_1b

    const-string v25, " "

    add-int/lit8 v26, v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_1b

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_1b
    add-int/lit8 v6, v6, 0x1

    move/from16 v0, v23

    if-lt v6, v0, :cond_1c

    const-string v25, "getSprintReassembleSmsInformation"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "indexOfContent : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Type 2 can\'t find content, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_1c
    add-int/lit8 v25, v18, 0x1

    move/from16 v0, v25

    if-ne v0, v6, :cond_1d

    const-string v25, "getSprintReassembleSmsInformation"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "indexOfContent : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v25, "getSprintReassembleSmsInformation"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "indexOfTotalSegment : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Type 2 can\'t find space between segment & content, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_1d
    add-int/lit8 v25, v6, -0x1

    :try_start_3
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v24

    goto/16 :goto_2

    :catch_3
    move-exception v21

    .restart local v21       #nfe2:Ljava/lang/NumberFormatException;
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Type 2 total segment parse fail, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    goto/16 :goto_0

    .end local v4           #delim:Ljava/lang/String;
    .end local v7           #indexOfDelim:I
    .end local v18           #indexOfTotalSegment:I
    .end local v21           #nfe2:Ljava/lang/NumberFormatException;
    :cond_1e
    if-eqz v3, :cond_1f

    if-nez v24, :cond_20

    :cond_1f
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "currentSegment or totalSegment is 0, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_20
    const/16 v25, 0xff

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_21

    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "totalSegment size more than one byte, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_21
    move/from16 v0, v24

    if-le v3, v0, :cond_22

    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "currentSegment greater than totalSegment, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_22
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .local v22, sb:Ljava/lang/StringBuilder;
    const-string v25, "("

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v25, "/"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v25, ") "

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v19, Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;-><init>()V

    .local v19, info:Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;
    move-object/from16 v0, v19

    iput v3, v0, Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;->currentSegment:I

    move/from16 v0, v24

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;->totalSegment:I

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;->normalizedText:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZI)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 1
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "originPort"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "statusReportRequested"
    .parameter "phoneType"

    .prologue
    invoke-static/range {p0 .. p6}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZI)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSurrogatePairFromGooglePua(I)[C
    .locals 8
    .parameter "codePoint"

    .prologue
    const v7, 0xdc00

    const v6, 0xd800

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x1

    sub-int v0, p0, v3

    .local v0, cp2:I
    const v3, 0xfffff

    if-le v0, v3, :cond_1

    move-object v1, v2

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v3, 0x2

    new-array v1, v3, [C

    .local v1, pair:[C
    shr-int/lit8 v3, v0, 0xa

    and-int/lit16 v3, v3, 0x3ff

    add-int/2addr v3, v6

    int-to-char v3, v3

    aput-char v3, v1, v4

    and-int/lit16 v3, v0, 0x3ff

    add-int/2addr v3, v7

    int-to-char v3, v3

    aput-char v3, v1, v5

    aget-char v3, v1, v4

    if-lt v3, v6, :cond_2

    aget-char v3, v1, v4

    const v4, 0xdbff

    if-le v3, v4, :cond_3

    :cond_2
    move-object v1, v2

    goto :goto_0

    :cond_3
    aget-char v3, v1, v5

    if-lt v3, v7, :cond_4

    aget-char v3, v1, v5

    const v4, 0xdfff

    if-le v3, v4, :cond_0

    :cond_4
    move-object v1, v2

    goto :goto_0
.end method

.method private static getUidSignatures(Landroid/content/pm/PackageManager;II)[Landroid/content/pm/Signature;
    .locals 6
    .parameter "mPm"
    .parameter "uid"
    .parameter "pid"

    .prologue
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/HtcMessageHelper;->getPackageName(Landroid/content/pm/PackageManager;II)Ljava/lang/String;

    move-result-object v1

    .local v1, packageName:Ljava/lang/String;
    if-eqz v1, :cond_1

    const/16 v3, 0x40

    invoke-virtual {p0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .local v2, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .end local v1           #packageName:Ljava/lang/String;
    .end local v2           #pkgInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v3

    .restart local v1       #packageName:Ljava/lang/String;
    .restart local v2       #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No packageInfo found for : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #packageName:Ljava/lang/String;
    .end local v2           #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to get UID/PID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " signature : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static htcSendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZ)V
    .locals 7
    .parameter "smsc"
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "bFirstOfAll"
    .parameter "bLastOfAll"

    .prologue
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .local v0, sm:Landroid/telephony/SmsManager;
    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->htcSendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZ)V

    :cond_0
    return-void
.end method

.method public static insertDummyDataForTwoCharacterLf(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .parameter "msg"

    .prologue
    if-nez p0, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/HtcMessageHelper;->getLfCount(Ljava/lang/String;)I

    move-result v1

    .local v1, lfCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static isCDMAHideLanguageIndicator()Z
    .locals 5

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x0

    .local v0, mccMnc:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorExt(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNetworkOperator : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    const-string v2, "45429"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "SMS"

    const-string v3, "Hide Language Indicator"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isCDMAHidePriorityIndicator()Z
    .locals 5

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x0

    .local v0, mccMnc:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorExt(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNetworkOperator : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    const-string v2, "45429"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "SMS"

    const-string v3, "Hide Language Indicator"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isCmasAckReturnEnable()Z
    .locals 2

    .prologue
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isKddiEmergencyAlert(I)Z
    .locals 2
    .parameter "id"

    .prologue
    const/4 v0, 0x1

    const/16 v1, 0x1100

    if-eq p0, v1, :cond_0

    const/16 v1, 0x1103

    if-eq p0, v1, :cond_0

    const v1, 0xac00

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const v1, 0xa000

    if-lt p0, v1, :cond_2

    const v1, 0xafff

    if-le p0, v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKddiOptionService(I)Z
    .locals 1
    .parameter "typeId"

    .prologue
    const v0, 0xef40

    if-lt p0, v0, :cond_0

    const v0, 0xef7e

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKddiOtherService(I)Z
    .locals 1
    .parameter "typeId"

    .prologue
    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKddiRoaming()Z
    .locals 4

    .prologue
    const-string v1, "gsm.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, mccMnc:Ljava/lang/String;
    const-string v1, "isKddiRoaming"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkOperator : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const-string v1, "440"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isKddiSmsTypeCmail(I)Z
    .locals 2
    .parameter "typeId"

    .prologue
    const/4 v0, 0x0

    .local v0, isCmail:Z
    const/16 v1, 0x100

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x103

    if-lt p0, v1, :cond_2

    const/16 v1, 0x1ff

    if-gt p0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0x202

    if-lt p0, v1, :cond_3

    const v1, 0xef39

    if-gt p0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const v1, 0xef7f

    if-lt p0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isMiddleWord(C)Z
    .locals 2
    .parameter "ch"

    .prologue
    const/16 v1, 0x61

    if-gt v1, p0, :cond_0

    const/16 v1, 0x7a

    if-le p0, v1, :cond_1

    :cond_0
    const/16 v1, 0x41

    if-gt v1, p0, :cond_2

    const/16 v1, 0x5a

    if-gt p0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    .local v0, bEnglishChar:Z
    :goto_0
    return v0

    .end local v0           #bEnglishChar:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSendCdmaMoSms()Z
    .locals 4

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :try_start_0
    const-string v3, "isms"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v2

    .local v2, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/android/internal/telephony/ISms;->isSendCdmaMoSms()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, result:Z
    move v3, v1

    .end local v1           #result:Z
    :goto_0
    return v3

    :catch_0
    move-exception v3

    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .local v0, activePhone:I
    const/4 v3, 0x2

    if-ne v3, v0, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isSupportSegmentIndicator()Z
    .locals 2

    .prologue
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x94

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportSprintDuplicatedCmasDetection()Z
    .locals 2

    .prologue
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x94

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xaf

    if-ne v0, v1, :cond_2

    :cond_0
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x95

    if-eq v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x50

    if-eq v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe2

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupported3gpp2BCSMS(Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 3
    .parameter "smsb"

    .prologue
    const/4 v0, 0x1

    .local v0, result:Z
    move-object v1, p0

    check-cast v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    .local v1, sms:Lcom/android/internal/telephony/cdma/SmsMessage;
    sget-boolean v2, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_CONFIG:Z

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/android/internal/telephony/HtcMessageHelper;->kddiIsSupported3gpp2BCSMS(Lcom/android/internal/telephony/cdma/SmsMessage;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method private static kddiAppendCallerNames(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .parameter "cxt"
    .parameter "s"

    .prologue
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    const/4 v8, 0x0

    .local v8, sb:Ljava/lang/StringBuilder;
    sget-object v12, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .local v5, m:Ljava/util/regex/Matcher;
    const/4 v7, 0x0

    .local v7, offset:I
    :cond_2
    :goto_1
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    .local v9, start:I
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .local v2, end:I
    sget-object v6, Landroid/text/util/Linkify;->sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    .local v6, matchFilter:Landroid/text/util/Linkify$MatchFilter;
    sget-object v10, Landroid/text/util/Linkify;->sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    .local v10, transformFilter:Landroid/text/util/Linkify$TransformFilter;
    move-object/from16 v0, p1

    invoke-interface {v6, v0, v9, v2}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v5, v12}, Landroid/text/util/Linkify$TransformFilter;->transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .local v11, url:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v3

    .local v3, info:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v3, :cond_2

    iget-wide v12, v3, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_2

    iget-object v12, v3, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    if-nez v8, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8           #sb:Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .restart local v8       #sb:Ljava/lang/StringBuilder;
    :cond_3
    iget-object v12, v3, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v4, v12, 0x1

    .local v4, len:I
    add-int v12, v2, v7

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v3, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v7, v4

    goto :goto_1

    .end local v2           #end:I
    .end local v3           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v4           #len:I
    .end local v6           #matchFilter:Landroid/text/util/Linkify$MatchFilter;
    .end local v9           #start:I
    .end local v10           #transformFilter:Landroid/text/util/Linkify$TransformFilter;
    .end local v11           #url:Ljava/lang/String;
    :cond_4
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, body:Ljava/lang/String;
    const-string v12, "SMS"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Replace Cmail body> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1           #body:Ljava/lang/String;
    :cond_5
    move-object/from16 v1, p1

    goto/16 :goto_0
.end method

.method private static kddiCheck3gpp2JEADuplication(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 4
    .parameter "context"
    .parameter "smsb"

    .prologue
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->isKddiBCSMS()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageIdentifier()I

    move-result v0

    .local v0, msg_id:I
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v0}, Lcom/android/internal/telephony/HtcMessageHelper;->kddiCheckJEADuplication(Landroid/content/Context;I)Z

    move-result v1

    .end local v0           #msg_id:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static kddiCheck3gppJEADuplication(Landroid/content/Context;[B)Z
    .locals 6
    .parameter "context"
    .parameter "pdu"

    .prologue
    const/4 v2, 0x0

    new-instance v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([B)V

    .local v0, header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "3GPP CBS - Is UMTS format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isUmtsFormat()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "3GPP CBS - Is ETWS Primary format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsPrimaryNotification()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "3GPP Service Category: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/HtcMessageHelper;->isKddiEmergencyAlert(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, -0x1

    .local v1, sn:I
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isGsmFormat()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsPrimaryNotification()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    :cond_1
    :goto_0
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v1}, Lcom/android/internal/telephony/HtcMessageHelper;->kddiCheckJEADuplication(Landroid/content/Context;I)Z

    move-result v2

    .end local v1           #sn:I
    :cond_2
    return v2

    .restart local v1       #sn:I
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isUmtsFormat()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x4

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    goto :goto_0
.end method

.method private static kddiCheckEarthquakeAlertDuplication(Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 5
    .parameter "smsb"

    .prologue
    move-object v0, p0

    check-cast v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    .local v0, sms:Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->isKddiEarthquakeAlert()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Last MessageId / MCTimestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/telephony/HtcMessageHelper;->mKddiMessageId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/android/internal/telephony/HtcMessageHelper;->mKddiMCTimestamp:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This MessageId / MCTimestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->messageRef:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTimestampMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->messageRef:I

    sget v2, Lcom/android/internal/telephony/HtcMessageHelper;->mKddiMessageId:I

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTimestampMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/android/internal/telephony/HtcMessageHelper;->mKddiMCTimestamp:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/HtcMessageHelper;->mKddiUserData:[B

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SMS"

    const-string v2, "Get duplicated KDDI Earthquake Alert, drop it!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->messageRef:I

    sput v1, Lcom/android/internal/telephony/HtcMessageHelper;->mKddiMessageId:I

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTimestampMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/android/internal/telephony/HtcMessageHelper;->mKddiMCTimestamp:J

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/HtcMessageHelper;->mKddiUserData:[B

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static kddiCheckJEADuplication(Landroid/content/Context;I)Z
    .locals 9
    .parameter "context"
    .parameter "msg_id"

    .prologue
    const/4 v8, 0x0

    .local v8, result:Z
    const/4 v0, 0x4

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "protocol"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "pdu"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "is_cdma_format"

    aput-object v1, v2, v0

    .local v2, projection:[Ljava/lang/String;
    const-string v3, "protocol = ? "

    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .local v4, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$HtcCmas;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Detect duplicated JEA: 0x"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v5, 0x2

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "format: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v5, 0x3

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v8, 0x1

    :cond_0
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_1
    :goto_0
    return v8

    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    .restart local v6       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .local v7, e:Ljava/lang/Exception;
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception when checking JEA duplication: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static kddiCheckSmsDuplication(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 12
    .parameter "context"
    .parameter "smsb"

    .prologue
    const/4 v11, 0x0

    .local v11, result:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v6

    .local v6, address:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v8

    .local v8, date:J
    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "address"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "date"

    aput-object v1, v2, v0

    .local v2, projection:[Ljava/lang/String;
    const-string v3, "address = ? AND date = ? "

    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v6, v4, v0

    const/4 v0, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .local v4, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SMS"

    const-string v1, "Detecte duplicated SMS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v11, 0x1

    :cond_0
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v7           #c:Landroid/database/Cursor;
    :cond_1
    :goto_0
    return v11

    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    .restart local v7       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v7           #c:Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .local v10, e:Ljava/lang/Exception;
    const-string v0, "SMS"

    const-string v1, "exception when checking duplication"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static kddiFormatCmailBody(Landroid/content/Context;Landroid/telephony/SmsMessage;)V
    .locals 4
    .parameter "cxt"
    .parameter "sms"

    .prologue
    sget-boolean v3, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_CONFIG:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p1, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    .local v2, smsb:Lcom/android/internal/telephony/SmsMessageBase;
    instance-of v3, v2, Lcom/android/internal/telephony/cdma/SmsMessage;

    if-eqz v3, :cond_0

    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    .local v0, msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->kddiHasSmsTypeId()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->kddiGetSmsTypeId()I

    move-result v1

    .local v1, smsId:I
    const/16 v3, 0x101

    if-eq v1, v3, :cond_2

    const/16 v3, 0x102

    if-eq v1, v3, :cond_2

    const/16 v3, 0x201

    if-ne v1, v3, :cond_0

    :cond_2
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/HtcMessageHelper;->kddiAppendCallerNames(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->setMessageBody(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static kddiIsDiscarded3gpp2BCSMS(Lcom/android/internal/telephony/cdma/SmsMessage;)Z
    .locals 5
    .parameter "sms"

    .prologue
    const/4 v0, 0x0

    .local v0, result:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "kddi.lab.test"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, testMode:Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .end local v1           #testMode:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "discarded BCSMS category: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getServiceCategory()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0

    :cond_2
    sget-boolean v2, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_CONFIG:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static kddiIsSupported3gpp2BCSMS(Lcom/android/internal/telephony/cdma/SmsMessage;)Z
    .locals 4
    .parameter "sms"

    .prologue
    const/4 v0, 0x1

    .local v0, result:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KDDI doesn\'t support 3GPP2 BCSMS category: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getServiceCategory()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->isKddiBroadcastSmsReceived()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static kddidReplaceSurrogatePairWithUnicodeEmoji(Ljava/lang/String;)Lcom/android/internal/telephony/HtcMessageHelper$KddiReplaceUnicodeEmojiResult;
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    new-instance v4, Lcom/android/internal/telephony/HtcMessageHelper$KddiReplaceUnicodeEmojiResult;

    invoke-direct {v4}, Lcom/android/internal/telephony/HtcMessageHelper$KddiReplaceUnicodeEmojiResult;-><init>()V

    :goto_0
    return-object v4

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .local v5, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v2, v8, -0x2

    .local v2, endPosition:I
    const/4 v8, 0x2

    new-array v6, v8, [C

    .local v6, singleEmoji:[C
    new-instance v4, Lcom/android/internal/telephony/HtcMessageHelper$KddiReplaceUnicodeEmojiResult;

    invoke-direct {v4}, Lcom/android/internal/telephony/HtcMessageHelper$KddiReplaceUnicodeEmojiResult;-><init>()V

    .local v4, result:Lcom/android/internal/telephony/HtcMessageHelper$KddiReplaceUnicodeEmojiResult;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-gt v3, v2, :cond_4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aput-char v8, v6, v9

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aput-char v8, v6, v10

    invoke-static {v6}, Lcom/android/internal/telephony/HtcMessageHelper;->getGooglePuaFromSurrogatePair([C)I

    move-result v1

    .local v1, codePoint:I
    if-nez v1, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lcom/android/internal/telephony/KddiEmojiAlphabet;->puaToUnicode(I)C

    move-result v7

    .local v7, unicode:C
    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    new-array v0, v10, [C

    aput-char v7, v0, v9

    .local v0, chars:[C
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v4, Lcom/android/internal/telephony/HtcMessageHelper$KddiReplaceUnicodeEmojiResult;->emojiCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v4, Lcom/android/internal/telephony/HtcMessageHelper$KddiReplaceUnicodeEmojiResult;->emojiCount:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0           #chars:[C
    :cond_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .end local v1           #codePoint:I
    .end local v7           #unicode:C
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_5

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/internal/telephony/HtcMessageHelper$KddiReplaceUnicodeEmojiResult;->userDataString:Ljava/lang/String;

    goto :goto_0
.end method

.method public static kddidReplaceUnicodeEmojiWithSurrogatePair(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const-string v6, ""

    :goto_0
    return-object v6

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, endPosition:I
    new-array v5, v9, [C

    .local v5, singleEmoji:[C
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-gt v3, v2, :cond_4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/KddiEmojiAlphabet;->unicodeToPua(C)I

    move-result v1

    .local v1, codePoint:I
    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eq v1, v6, :cond_2

    invoke-static {v1}, Lcom/android/internal/telephony/HtcMessageHelper;->getSurrogatePairFromGooglePua(I)[C

    move-result-object v5

    if-eqz v5, :cond_2

    :cond_2
    if-nez v5, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    new-array v0, v9, [C

    aget-char v6, v5, v7

    aput-char v6, v0, v7

    aget-char v6, v5, v8

    aput-char v6, v0, v8

    .local v0, chars:[C
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .end local v0           #chars:[C
    .end local v1           #codePoint:I
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static sendPendingIntent(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "messageRef"
    .parameter "fillIn"

    .prologue
    invoke-static {p0, p1}, Lcom/android/internal/telephony/HtcMessageHelper;->getIntentFromPendingList(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v2

    .local v2, retIntent:Landroid/content/Intent;
    if-eqz v2, :cond_1

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v2, p2, v1}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .local v0, am:Landroid/app/IActivityManager;
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {}, Landroid/os/Binder;->getOrigCallingUser()I

    move-result v11

    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZI)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #am:Landroid/app/IActivityManager;
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v12

    .local v12, e:Ljava/lang/Exception;
    const-string v1, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can not broadcast intent TP-MR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
