.class public final Lcom/android/server/DeviceManager3LMService;
.super Landroid/os/IDeviceManager3LM$Stub;
.source "DeviceManager3LMService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DeviceManager3LMService$ClearUserDataObserver;,
        Lcom/android/server/DeviceManager3LMService$PublicKey3LM;,
        Lcom/android/server/DeviceManager3LMService$PackageDeleteObserver;,
        Lcom/android/server/DeviceManager3LMService$PackageInstallObserver;,
        Lcom/android/server/DeviceManager3LMService$RulesEngine;
    }
.end annotation


# static fields
.field private static final API_VERSION:I = 0xc

.field private static final DNS1:Ljava/lang/String; = "net.dns1"

.field private static final DNS2:Ljava/lang/String; = "net.dns2"

.field private static final DNS_DOMAIN_SUFFICES:Ljava/lang/String; = "net.dns.search"

.field private static final EXTRA_POLICY_STATUS:Ljava/lang/String; = "com.htc.3lm.intent.extra.POLICY_STATUS"

.field private static final INTENT_NFC_POLICY_STATUS_CHANGE:Ljava/lang/String; = "com.htc.3lm.intent.NFC_POLICY_STATUS_CHANGE"

.field private static final PROPERTY_NFC_LOCKOUT:Ljava/lang/String; = "persist.security.nfc.lockout"

.field private static final PROPERTY_WIFI_LOCKOUT:Ljava/lang/String; = "persist.security.wifi.lockout"

.field private static final SD_NOTIFICATION_ID:I = 0x4070057

.field private static final TAG:Ljava/lang/String; = "DeviceManager3LM"

.field private static final TUN_DNS1:Ljava/lang/String; = "vpn.net.tun.dns1"

.field private static final TUN_DNS2:Ljava/lang/String; = "vpn.net.tun.dns2"

.field private static final USB_DISABLED_FILE:Ljava/lang/String; = "/sys/devices/platform/android_usb/usb_disable"

.field static sService:Lcom/android/server/DeviceManager3LMService;


# instance fields
.field private final DEBUG:Z

.field public final MAX_WAIT_TIME:J

.field private final SCAN_3LM_RESULT_ALLOW:I

.field private final SCAN_3LM_RESULT_DENY:I

.field public final STATE_DISABLED:I

.field public final STATE_ENABLED:I

.field public final STATE_UNSUPPORTED:I

.field public final WAIT_TIME_INCR:J

.field private mAllowedPackages:Lcom/android/server/DeviceManager3LMService$RulesEngine;

.field private mAndroidIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothEnabled:Z

.field private mBluetoothPan:Landroid/bluetooth/BluetoothPan;

.field private mBootLocked:Z

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field mContext:Landroid/content/Context;

.field private mInitialized:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mNetworkManager:Landroid/os/INetworkManagementService;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationText:Ljava/lang/String;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackagePerms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/DeviceManager3LMService$RulesEngine;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageScanFailOnTimeout:Z

.field private mPackageScanTimeoutMillis:I

.field private mPackageScanner:Ljava/lang/String;

.field private mPackageScannerMutex:Ljava/lang/Object;

.field private mPermNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

.field private mPkgNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mPubKeyRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

.field private mPublicKey3LM:Lcom/android/server/DeviceManager3LMService$PublicKey3LM;

.field private mSdRequired:Z

.field private mSecureClipboardRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

.field private mSecurePrimaryClip:Z

.field private mUid:I

.field private mUninstallPkgNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

.field private mVpnHasOriginalData:Z

.field private mVpnOriginalDns1:Ljava/lang/String;

.field private mVpnOriginalDns2:Ljava/lang/String;

.field private mVpnOriginalDnsSuffixes:Ljava/lang/String;

.field private mVpnSettingsMutex:Ljava/lang/String;

.field private mWifiFilter:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/os/IDeviceManager3LM$Stub;-><init>()V

    iput-boolean v2, p0, Lcom/android/server/DeviceManager3LMService;->DEBUG:Z

    const-wide/16 v0, 0x61a8

    iput-wide v0, p0, Lcom/android/server/DeviceManager3LMService;->MAX_WAIT_TIME:J

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/server/DeviceManager3LMService;->WAIT_TIME_INCR:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/DeviceManager3LMService;->STATE_UNSUPPORTED:I

    iput v2, p0, Lcom/android/server/DeviceManager3LMService;->STATE_DISABLED:I

    iput v3, p0, Lcom/android/server/DeviceManager3LMService;->STATE_ENABLED:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mVpnOriginalDnsSuffixes:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mVpnOriginalDns1:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mVpnOriginalDns2:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/server/DeviceManager3LMService;->mVpnHasOriginalData:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mVpnSettingsMutex:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mPackageScannerMutex:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mPackageScanner:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/server/DeviceManager3LMService;->mPackageScanFailOnTimeout:Z

    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/server/DeviceManager3LMService;->mPackageScanTimeoutMillis:I

    iput-boolean v2, p0, Lcom/android/server/DeviceManager3LMService;->mSdRequired:Z

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/DeviceManager3LMService;->SCAN_3LM_RESULT_ALLOW:I

    const/16 v0, 0x3e9

    iput v0, p0, Lcom/android/server/DeviceManager3LMService;->SCAN_3LM_RESULT_DENY:I

    new-instance v0, Lcom/android/server/DeviceManager3LMService$3;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceManager3LMService$3;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->initAndroidIds()V

    iput-boolean v2, p0, Lcom/android/server/DeviceManager3LMService;->mInitialized:Z

    iput-boolean v3, p0, Lcom/android/server/DeviceManager3LMService;->mBluetoothEnabled:Z

    new-instance v0, Lcom/android/server/DeviceManager3LMService$RulesEngine;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceManager3LMService$RulesEngine;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mPkgNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    new-instance v0, Lcom/android/server/DeviceManager3LMService$RulesEngine;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceManager3LMService$RulesEngine;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mPermNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    new-instance v0, Lcom/android/server/DeviceManager3LMService$RulesEngine;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceManager3LMService$RulesEngine;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mPubKeyRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    new-instance v0, Lcom/android/server/DeviceManager3LMService$RulesEngine;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceManager3LMService$RulesEngine;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mUninstallPkgNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    new-instance v0, Lcom/android/server/DeviceManager3LMService$RulesEngine;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceManager3LMService$RulesEngine;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mAllowedPackages:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mPackagePerms:Ljava/util/Map;

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mKeyStore:Landroid/security/KeyStore;

    new-instance v0, Lcom/android/server/DeviceManager3LMService$RulesEngine;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceManager3LMService$RulesEngine;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mSecureClipboardRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    iput-boolean v2, p0, Lcom/android/server/DeviceManager3LMService;->mSecurePrimaryClip:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/DeviceManager3LMService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mNotificationText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/DeviceManager3LMService;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/DeviceManager3LMService;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/server/DeviceManager3LMService;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method private broadcastIntent(Ljava/lang/String;I)V
    .locals 2
    .parameter "strIntent"
    .parameter "result"

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.3lm.intent.extra.POLICY_STATUS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "pkgName"

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/android/server/DeviceManager3LMService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .local v1, pi:Landroid/content/pm/PackageInfo;
    iget-object v2, p0, Lcom/android/server/DeviceManager3LMService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :catch_0
    move-exception v0

    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/DeviceManager3LMService;
    .locals 2

    .prologue
    const-class v1, Lcom/android/server/DeviceManager3LMService;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_FEATURE_3LM:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/DeviceManager3LMService;->sService:Lcom/android/server/DeviceManager3LMService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/DeviceManager3LMService;

    invoke-direct {v0}, Lcom/android/server/DeviceManager3LMService;-><init>()V

    sput-object v0, Lcom/android/server/DeviceManager3LMService;->sService:Lcom/android/server/DeviceManager3LMService;

    :cond_0
    sget-object v0, Lcom/android/server/DeviceManager3LMService;->sService:Lcom/android/server/DeviceManager3LMService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initAndroidIds()V
    .locals 3

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mAndroidIds:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mAndroidIds:Ljava/util/HashMap;

    const/16 v1, 0x3ef

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.READ_LOGS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mAndroidIds:Ljava/util/HashMap;

    const/16 v1, 0x3f7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mAndroidIds:Ljava/util/HashMap;

    const/16 v1, 0xbb9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mAndroidIds:Ljava/util/HashMap;

    const/16 v1, 0xbba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mAndroidIds:Ljava/util/HashMap;

    const/16 v1, 0xbbb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.INTERNET"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mAndroidIds:Ljava/util/HashMap;

    const/16 v1, 0xbbc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.INTERNET"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mAndroidIds:Ljava/util/HashMap;

    const/16 v1, 0xbbd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.INTERNET"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private isAccessPermitted()Z
    .locals 15

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .local v2, callerUid:I
    iget v12, p0, Lcom/android/server/DeviceManager3LMService;->mUid:I

    if-ne v2, v12, :cond_0

    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/server/DeviceManager3LMService;->mInitialized:Z

    const/4 v12, 0x1

    :goto_0
    return v12

    :cond_0
    iget-object v12, p0, Lcom/android/server/DeviceManager3LMService;->mPublicKey3LM:Lcom/android/server/DeviceManager3LMService$PublicKey3LM;

    if-nez v12, :cond_1

    const/4 v12, 0x0

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v12, p0, Lcom/android/server/DeviceManager3LMService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v12, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    .local v9, packages:[Ljava/lang/String;
    move-object v0, v9

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    move v5, v4

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_4

    aget-object v10, v0, v5

    .local v10, pkg:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/DeviceManager3LMService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v13, 0x40

    invoke-virtual {v12, v10, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .local v8, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v1, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v1, arr$:[Landroid/content/pm/Signature;
    array-length v7, v1

    .local v7, len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    :goto_2
    if-ge v4, v7, :cond_3

    aget-object v11, v1, v4

    .local v11, pkgSignature:Landroid/content/pm/Signature;
    iget-object v12, p0, Lcom/android/server/DeviceManager3LMService;->mPublicKey3LM:Lcom/android/server/DeviceManager3LMService$PublicKey3LM;

    invoke-virtual {v11}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/server/DeviceManager3LMService$PublicKey3LM;->comparePublicKey([B)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/server/DeviceManager3LMService;->mInitialized:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v11           #pkgSignature:Landroid/content/pm/Signature;
    :cond_3
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    goto :goto_1

    .end local v1           #arr$:[Landroid/content/pm/Signature;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .end local v8           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v9           #packages:[Ljava/lang/String;
    .end local v10           #pkg:Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, e:Ljava/lang/Exception;
    const-string v12, "DeviceManager3LM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error trying to verify package public key against 3LM pub key:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3           #e:Ljava/lang/Exception;
    :cond_4
    const-string v12, "DeviceManager3LM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Access denied to UID:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    goto :goto_0
.end method

.method private isBootLocked(Ljava/lang/String;)Z
    .locals 9
    .parameter "pkgName"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/android/server/DeviceManager3LMService;->mBootLocked:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "boot_lock"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    move v5, v6

    :cond_1
    :goto_0
    return v5

    :cond_2
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v7, p0, Lcom/android/server/DeviceManager3LMService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v8, 0x40

    invoke-virtual {v7, p1, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .local v3, pi:Landroid/content/pm/PackageInfo;
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3

    move v5, v6

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/android/server/DeviceManager3LMService;->mPublicKey3LM:Lcom/android/server/DeviceManager3LMService$PublicKey3LM;

    if-eqz v7, :cond_1

    iget-object v0, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v0, arr$:[Landroid/content/pm/Signature;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .local v4, pkgSignature:Landroid/content/pm/Signature;
    iget-object v7, p0, Lcom/android/server/DeviceManager3LMService;->mPublicKey3LM:Lcom/android/server/DeviceManager3LMService$PublicKey3LM;

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/DeviceManager3LMService$PublicKey3LM;->comparePublicKey([B)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_4

    move v5, v6

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #arr$:[Landroid/content/pm/Signature;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #pi:Landroid/content/pm/PackageInfo;
    .end local v4           #pkgSignature:Landroid/content/pm/Signature;
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private notify(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 7
    .parameter "id"
    .parameter "notificationBar"
    .parameter "title"
    .parameter "text"
    .parameter "intent"

    .prologue
    const/16 v6, 0x10

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/DeviceManager3LMService;->notify(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    return-void
.end method

.method private notify(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V
    .locals 8
    .parameter "id"
    .parameter "notificationBar"
    .parameter "title"
    .parameter "text"
    .parameter "intent"
    .parameter "flags"

    .prologue
    new-instance v0, Lcom/android/server/DeviceManager3LMService$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move-object v5, p3

    move-object v6, p4

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/DeviceManager3LMService$2;-><init>(Lcom/android/server/DeviceManager3LMService;Ljava/lang/String;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/android/server/DeviceManager3LMService$2;->start()V

    return-void
.end method

.method private setPackageState(Ljava/lang/String;I)V
    .locals 8
    .parameter "pkgName"
    .parameter "state"

    .prologue
    :try_start_0
    iget-object v5, p0, Lcom/android/server/DeviceManager3LMService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x40

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .local v0, app:Landroid/content/pm/PackageInfo;
    iget-object v5, p0, Lcom/android/server/DeviceManager3LMService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android"

    const/16 v7, 0x40

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .local v4, sys:Landroid/content/pm/PackageInfo;
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, intent:Landroid/content/Intent;
    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/DeviceManager3LMService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .local v2, homes:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_1

    :cond_0
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .end local v0           #app:Landroid/content/pm/PackageInfo;
    .end local v2           #homes:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #sys:Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_0
    return-void

    .restart local v0       #app:Landroid/content/pm/PackageInfo;
    .restart local v2       #homes:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v4       #sys:Landroid/content/pm/PackageInfo;
    :cond_2
    iget-object v5, p0, Lcom/android/server/DeviceManager3LMService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, p2, v6}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0           #app:Landroid/content/pm/PackageInfo;
    .end local v2           #homes:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #sys:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "DeviceManager3LM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package not found, unable to disable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setUSBEnabled(Z)V
    .locals 6
    .parameter "on"

    .prologue
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/sys/devices/platform/android_usb/usb_disable"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .local v2, fos:Ljava/io/FileOutputStream;
    const/4 v3, 0x2

    new-array v0, v3, [B

    .local v0, bytes:[B
    const/4 v4, 0x0

    if-eqz p1, :cond_0

    const/16 v3, 0x30

    :goto_0
    int-to-byte v3, v3

    aput-byte v3, v0, v4

    const/4 v3, 0x1

    const/16 v4, 0xa

    aput-byte v4, v0, v3

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    const-string v3, "DeviceManager3LM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Write usb_disable:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #bytes:[B
    .end local v2           #fos:Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .restart local v0       #bytes:[B
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :cond_0
    const/16 v3, 0x31

    goto :goto_0

    .end local v0           #bytes:[B
    .end local v2           #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const-string v3, "DeviceManager3LM"

    const-string v4, "Wriete usb_disable exception:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private updateNetworkRules(Lcom/android/server/DeviceManager3LMService$RulesEngine;)V
    .locals 9
    .parameter "re"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/DeviceManager3LMService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .local v1, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .local v0, app:Landroid/content/pm/ApplicationInfo;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/android/server/DeviceManager3LMService$RulesEngine;->checkPolicy(Ljava/lang/String;Z)Z

    move-result v2

    .local v2, check:Z
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    iget-object v7, p0, Lcom/android/server/DeviceManager3LMService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-nez v2, :cond_0

    move v4, v5

    :goto_1
    invoke-interface {v7, v8, v4}, Landroid/os/INetworkManagementService;->setUidNetworkRules(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0

    :cond_0
    move v4, v6

    goto :goto_1

    .end local v0           #app:Landroid/content/pm/ApplicationInfo;
    .end local v2           #check:Z
    :cond_1
    return-void
.end method


# virtual methods
.method public addApn(Ljava/util/Map;)V
    .locals 9
    .parameter "list"

    .prologue
    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v7

    if-nez v7, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v7, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .local v5, res:Landroid/content/res/Resources;
    const v7, 0x4080001

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .local v2, key:[Ljava/lang/String;
    const v7, 0x4080002

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .local v3, oem:[Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .local v6, values:Landroid/content/ContentValues;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .local v4, pair:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    array-length v7, v2

    if-ge v0, v7, :cond_2

    aget-object v7, v2, v0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_2
    array-length v7, v2

    if-eq v0, v7, :cond_1

    const-string v7, "authtype"

    aget-object v8, v2, v0

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "bearer"

    aget-object v8, v2, v0

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_3
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    aget-object v8, v3, v0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    aget-object v8, v3, v0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v0           #i:I
    .end local v4           #pair:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    iget-object v7, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0
.end method

.method public blockAdb(Z)V
    .locals 5
    .parameter "block"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "adb_blocked"

    if-eqz p1, :cond_4

    move v0, v1

    :goto_1
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "adb_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/DeviceManager3LMService;->isUsbBlocked()Z

    move-result v0

    if-eq v1, v0, :cond_0

    :cond_3
    if-nez p1, :cond_5

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/server/DeviceManager3LMService;->setUSBEnabled(Z)V

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_2
.end method

.method public blockScreenshot(Z)V
    .locals 3
    .parameter "block"

    .prologue
    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screenshot_blocked"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public blockTethering(Z)V
    .locals 6
    .parameter "block"

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    iget-object v2, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tethering_blocked"

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    iget-object v2, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .local v1, wm:Landroid/net/wifi/WifiManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    iget-object v2, p0, Lcom/android/server/DeviceManager3LMService;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/DeviceManager3LMService;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    goto :goto_0

    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #wm:Landroid/net/wifi/WifiManager;
    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method public blockUsb(Z)V
    .locals 5
    .parameter "block"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "usb_blocked"

    if-eqz p1, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/DeviceManager3LMService;->isAdbBlocked()Z

    move-result v0

    if-eq v1, v0, :cond_0

    :cond_2
    if-nez p1, :cond_4

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/server/DeviceManager3LMService;->setUSBEnabled(Z)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method public checkAppInstallPolicies(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Z
    .locals 14
    .parameter "pkgName"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, requestedPermissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, pkgSigs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/android/server/DeviceManager3LMService;->mInitialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/DeviceManager3LMService;->isBootLocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .local v13, res:Landroid/content/res/Resources;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x4070066

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/server/DeviceManager3LMService;->getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, title:Ljava/lang/String;
    const v0, 0x4070063

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, text:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/DeviceManager3LMService;->notify(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    const/4 v0, 0x0

    goto :goto_0

    .end local v2           #title:Ljava/lang/String;
    .end local v4           #text:Ljava/lang/String;
    .end local v13           #res:Landroid/content/res/Resources;
    :cond_1
    iget-object v1, p0, Lcom/android/server/DeviceManager3LMService;->mPkgNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mPkgNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    invoke-virtual {v0}, Lcom/android/server/DeviceManager3LMService$RulesEngine;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mPkgNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v3}, Lcom/android/server/DeviceManager3LMService$RulesEngine;->checkPolicy(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .restart local v13       #res:Landroid/content/res/Resources;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x4070066

    invoke-virtual {v13, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/server/DeviceManager3LMService;->getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #title:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v9, 0x0

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    move-object v5, p0

    move-object v7, v2

    move-object v8, v2

    invoke-direct/range {v5 .. v10}, Lcom/android/server/DeviceManager3LMService;->notify(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    const-string v0, "DeviceManager3LM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Install blocked: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    monitor-exit v1

    goto/16 :goto_0

    .end local v2           #title:Ljava/lang/String;
    .end local v13           #res:Landroid/content/res/Resources;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/android/server/DeviceManager3LMService;->mPermNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mPermNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    invoke-virtual {v0}, Lcom/android/server/DeviceManager3LMService$RulesEngine;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .local v12, permissionName:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mPermNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    const/4 v3, 0x1

    invoke-virtual {v0, v12, v3}, Lcom/android/server/DeviceManager3LMService$RulesEngine;->checkPolicy(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .restart local v13       #res:Landroid/content/res/Resources;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x4070066

    invoke-virtual {v13, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/server/DeviceManager3LMService;->getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #title:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v9, 0x0

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    move-object v5, p0

    move-object v7, v2

    move-object v8, v2

    invoke-direct/range {v5 .. v10}, Lcom/android/server/DeviceManager3LMService;->notify(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    const-string v0, "DeviceManager3LM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Install blocked: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " due to blocked permission: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    monitor-exit v1

    goto/16 :goto_0

    .end local v2           #title:Ljava/lang/String;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #permissionName:Ljava/lang/String;
    .end local v13           #res:Landroid/content/res/Resources;
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_4
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public checkAppUninstallPolicies(Ljava/lang/String;)Z
    .locals 13
    .parameter "pkgName"

    .prologue
    const/4 v5, 0x0

    const v3, 0x4070067

    const/4 v12, 0x0

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/server/DeviceManager3LMService;->mInitialized:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, v5}, Lcom/android/server/DeviceManager3LMService;->isBootLocked(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .local v11, res:Landroid/content/res/Resources;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/server/DeviceManager3LMService;->getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, title:Ljava/lang/String;
    const v0, 0x4070063

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, text:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/DeviceManager3LMService;->notify(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    move v0, v12

    goto :goto_0

    .end local v2           #title:Ljava/lang/String;
    .end local v4           #text:Ljava/lang/String;
    .end local v11           #res:Landroid/content/res/Resources;
    :cond_1
    iget-object v1, p0, Lcom/android/server/DeviceManager3LMService;->mUninstallPkgNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    monitor-enter v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/DeviceManager3LMService;->mUninstallPkgNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    invoke-virtual {v3}, Lcom/android/server/DeviceManager3LMService$RulesEngine;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/DeviceManager3LMService;->mUninstallPkgNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    const/4 v5, 0x1

    invoke-virtual {v3, p1, v5}, Lcom/android/server/DeviceManager3LMService$RulesEngine;->checkPolicy(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .restart local v11       #res:Landroid/content/res/Resources;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x4070067

    invoke-virtual {v11, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/server/DeviceManager3LMService;->getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #title:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v9, 0x0

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    move-object v5, p0

    move-object v7, v2

    move-object v8, v2

    invoke-direct/range {v5 .. v10}, Lcom/android/server/DeviceManager3LMService;->notify(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    const-string v0, "DeviceManager3LM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pkg name policy does not permit uninstalling "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    move v0, v12

    goto/16 :goto_0

    .end local v2           #title:Ljava/lang/String;
    .end local v11           #res:Landroid/content/res/Resources;
    :cond_2
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public checkPackagePermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "permName"
    .parameter "pkgName"

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/server/DeviceManager3LMService;->mInitialized:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .local v8, res:Landroid/content/res/Resources;
    invoke-direct {p0, v4}, Lcom/android/server/DeviceManager3LMService;->isBootLocked(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    const-string v1, "com.android.permission.CAMERA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const v0, 0x4070065

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, title:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/DeviceManager3LMService;->notify(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    move v0, v9

    goto :goto_0

    .end local v2           #title:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/server/DeviceManager3LMService;->mPackagePerms:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/DeviceManager3LMService;->mPackagePerms:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/DeviceManager3LMService$RulesEngine;

    .local v7, re:Lcom/android/server/DeviceManager3LMService$RulesEngine;
    if-eqz v7, :cond_3

    const/4 v3, 0x1

    invoke-virtual {v7, p2, v3}, Lcom/android/server/DeviceManager3LMService$RulesEngine;->checkPolicy(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    monitor-exit v1

    goto :goto_0

    .end local v7           #re:Lcom/android/server/DeviceManager3LMService$RulesEngine;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .restart local v7       #re:Lcom/android/server/DeviceManager3LMService$RulesEngine;
    :cond_4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .local v6, perm:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x407005b

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/android/server/DeviceManager3LMService;->getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #title:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/DeviceManager3LMService;->notify(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    move v0, v9

    goto/16 :goto_0
.end method

.method public checkPrimaryClipAccess(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/DeviceManager3LMService;->mSecurePrimaryClip:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/DeviceManager3LMService;->mSecureClipboardRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mSecureClipboardRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/android/server/DeviceManager3LMService$RulesEngine;->checkPolicy(Ljava/lang/String;Z)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public checkSignature(I)Z
    .locals 14
    .parameter "uid"

    .prologue
    iget-object v11, p0, Lcom/android/server/DeviceManager3LMService;->mPublicKey3LM:Lcom/android/server/DeviceManager3LMService$PublicKey3LM;

    if-nez v11, :cond_0

    const/4 v11, 0x0

    :goto_0
    return v11

    :cond_0
    :try_start_0
    iget-object v11, p0, Lcom/android/server/DeviceManager3LMService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    .local v8, packages:[Ljava/lang/String;
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v4, v3

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v9, v0, v4

    .local v9, pkg:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/DeviceManager3LMService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v12, 0x40

    invoke-virtual {v11, v9, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .local v7, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v1, v7, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v1, arr$:[Landroid/content/pm/Signature;
    array-length v6, v1

    .local v6, len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_2
    if-ge v3, v6, :cond_2

    aget-object v10, v1, v3

    .local v10, pkgSignature:Landroid/content/pm/Signature;
    iget-object v11, p0, Lcom/android/server/DeviceManager3LMService;->mPublicKey3LM:Lcom/android/server/DeviceManager3LMService$PublicKey3LM;

    invoke-virtual {v10}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/DeviceManager3LMService$PublicKey3LM;->comparePublicKey([B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v10           #pkgSignature:Landroid/content/pm/Signature;
    :cond_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_1

    .end local v1           #arr$:[Landroid/content/pm/Signature;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .end local v7           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v8           #packages:[Ljava/lang/String;
    .end local v9           #pkg:Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    const-string v11, "DeviceManager3LM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error trying to verify package public key against 3LM pub key:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2           #e:Ljava/lang/Exception;
    :cond_3
    const/4 v11, 0x0

    goto :goto_0
.end method

.method public checkUidPermission(Ljava/lang/String;I)Z
    .locals 7
    .parameter "permName"
    .parameter "uid"

    .prologue
    const/4 v5, 0x1

    iget-boolean v6, p0, Lcom/android/server/DeviceManager3LMService;->mInitialized:Z

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v6, p0, Lcom/android/server/DeviceManager3LMService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .local v4, pkgNames:[Ljava/lang/String;
    if-eqz v4, :cond_0

    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .local v3, name:Ljava/lang/String;
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DeviceManager3LMService;->checkPackagePermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public checkVpnDns(Ljava/lang/String;)Z
    .locals 8
    .parameter "vpnSuffixes"

    .prologue
    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v6

    if-nez v6, :cond_0

    :goto_0
    return v5

    :cond_0
    iget-object v6, p0, Lcom/android/server/DeviceManager3LMService;->mVpnSettingsMutex:Ljava/lang/String;

    monitor-enter v6

    :try_start_0
    iget-boolean v7, p0, Lcom/android/server/DeviceManager3LMService;->mVpnHasOriginalData:Z

    if-nez v7, :cond_1

    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_1
    :try_start_1
    const-string v5, "net.dns1"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, current_dns1:Ljava/lang/String;
    const-string v5, "net.dns2"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, current_dns2:Ljava/lang/String;
    const-string v5, "net.dns.search"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, current_suffixes:Ljava/lang/String;
    const-string v5, "vpn.net.tun.dns1"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, current_tun_dns1:Ljava/lang/String;
    const-string v5, "vpn.net.tun.dns2"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, current_tun_dns2:Ljava/lang/String;
    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    if-nez v1, :cond_3

    const-string v1, ""

    :cond_3
    if-nez v2, :cond_4

    const-string v2, ""

    :cond_4
    if-nez v3, :cond_5

    const-string v3, ""

    :cond_5
    if-nez v4, :cond_6

    const-string v4, ""

    :cond_6
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    iput-object v2, p0, Lcom/android/server/DeviceManager3LMService;->mVpnOriginalDnsSuffixes:Ljava/lang/String;

    const-string v5, "net.dns.search"

    invoke-static {v5, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mVpnOriginalDns1:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/DeviceManager3LMService;->mVpnOriginalDns2:Ljava/lang/String;

    const-string v5, "net.dns1"

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "net.dns2"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x1

    goto :goto_0
.end method

.method public clear()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v4, p0, Lcom/android/server/DeviceManager3LMService;->mInitialized:Z

    iput-boolean v5, p0, Lcom/android/server/DeviceManager3LMService;->mBluetoothEnabled:Z

    new-instance v1, Lcom/android/server/DeviceManager3LMService$RulesEngine;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceManager3LMService$RulesEngine;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    iput-object v1, p0, Lcom/android/server/DeviceManager3LMService;->mPkgNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    new-instance v1, Lcom/android/server/DeviceManager3LMService$RulesEngine;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceManager3LMService$RulesEngine;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    iput-object v1, p0, Lcom/android/server/DeviceManager3LMService;->mPermNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    new-instance v1, Lcom/android/server/DeviceManager3LMService$RulesEngine;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceManager3LMService$RulesEngine;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    iput-object v1, p0, Lcom/android/server/DeviceManager3LMService;->mPubKeyRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    new-instance v1, Lcom/android/server/DeviceManager3LMService$RulesEngine;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceManager3LMService$RulesEngine;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    iput-object v1, p0, Lcom/android/server/DeviceManager3LMService;->mUninstallPkgNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    new-instance v1, Lcom/android/server/DeviceManager3LMService$RulesEngine;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceManager3LMService$RulesEngine;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    iput-object v1, p0, Lcom/android/server/DeviceManager3LMService;->mAllowedPackages:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    new-instance v1, Lcom/android/server/DeviceManager3LMService$RulesEngine;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceManager3LMService$RulesEngine;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    iput-object v1, p0, Lcom/android/server/DeviceManager3LMService;->mSecureClipboardRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    iget-object v1, p0, Lcom/android/server/DeviceManager3LMService;->mPackagePerms:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/android/server/DeviceManager3LMService;->mWifiFilter:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    invoke-virtual {p0, v4}, Lcom/android/server/DeviceManager3LMService;->blockAdb(Z)V

    invoke-virtual {p0, v4}, Lcom/android/server/DeviceManager3LMService;->blockUsb(Z)V

    const-string v1, "1"

    const-string v2, "ro.3LM.extended"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .local v0, isExtended:Z
    invoke-virtual {p0, v0}, Lcom/android/server/DeviceManager3LMService;->lockAdmin(Z)V

    invoke-virtual {p0, v4}, Lcom/android/server/DeviceManager3LMService;->setOtaDelay(I)V

    invoke-virtual {p0, v4}, Lcom/android/server/DeviceManager3LMService;->setBootLock(Z)V

    invoke-virtual {p0, v5}, Lcom/android/server/DeviceManager3LMService;->setNfcState(I)V

    invoke-virtual {p0, v5}, Lcom/android/server/DeviceManager3LMService;->setWifiState(I)V

    iput-boolean v4, p0, Lcom/android/server/DeviceManager3LMService;->mSecurePrimaryClip:Z

    invoke-virtual {p0, v4}, Lcom/android/server/DeviceManager3LMService;->blockScreenshot(Z)V

    invoke-virtual {p0, v4}, Lcom/android/server/DeviceManager3LMService;->blockTethering(Z)V

    invoke-virtual {p0}, Lcom/android/server/DeviceManager3LMService;->isApnLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/server/DeviceManager3LMService;->lockApn(Z)V

    new-instance v1, Lcom/android/server/DeviceManager3LMService$1;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceManager3LMService$1;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    invoke-virtual {v1}, Lcom/android/server/DeviceManager3LMService$1;->start()V

    goto :goto_0
.end method

.method public clearApn()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    iget-object v2, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v2, "content://telephony/carriers/preferapn"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .local v0, preferedApn:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "apn_id"

    const-string v3, "-1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public clearApplicationUserData(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, am:Landroid/app/ActivityManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    new-instance v1, Lcom/android/server/DeviceManager3LMService$ClearUserDataObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/DeviceManager3LMService$ClearUserDataObserver;-><init>(Lcom/android/server/DeviceManager3LMService;Lcom/android/server/DeviceManager3LMService$1;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v1

    goto :goto_0
.end method

.method public clearPackagePermissions()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/DeviceManager3LMService;->mPackagePerms:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mPackagePerms:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public completePackageScan(II)V
    .locals 1
    .parameter "scanId"
    .parameter "result"

    .prologue
    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x3e8

    if-eq p2, v0, :cond_2

    const/16 v0, 0x3e9

    if-ne p2, v0, :cond_0

    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->verifyPendingInstall(II)V

    goto :goto_0
.end method

.method public connectToVpn(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "abstractSocketName"
    .parameter "vpnSubnets"

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return v3

    :cond_0
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect local "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, cmd:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/DeviceManager3LMService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configure "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/DeviceManager3LMService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v3, "DeviceManager3LM"

    const-string v4, "tund connected and configured"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    goto :goto_0

    .end local v0           #cmd:Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .local v1, code:I
    const-string v4, "DeviceManager3LM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tund connect failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #code:I
    .end local v2           #e:Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0       #cmd:Ljava/lang/String;
    :catch_1
    move-exception v2

    .restart local v2       #e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .restart local v1       #code:I
    const-string v4, "DeviceManager3LM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tund configure failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deletePackage(Ljava/lang/String;Z)V
    .locals 11
    .parameter "pkgName"
    .parameter "deleteData"

    .prologue
    const-wide/16 v9, 0x1388

    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v5

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    :try_start_0
    new-instance v2, Lcom/android/server/DeviceManager3LMService$PackageDeleteObserver;

    invoke-direct {v2, p0}, Lcom/android/server/DeviceManager3LMService$PackageDeleteObserver;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    .local v2, observer:Lcom/android/server/DeviceManager3LMService$PackageDeleteObserver;
    const/4 v1, 0x0

    .local v1, flags:I
    if-nez p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v6, p0, Lcom/android/server/DeviceManager3LMService;->mPackageManager:Landroid/content/pm/PackageManager;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v5, p0, Lcom/android/server/DeviceManager3LMService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, p1, v2, v1}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    const-wide/16 v3, 0x0

    .local v3, waitTime:J
    :goto_1
    invoke-virtual {v2}, Lcom/android/server/DeviceManager3LMService$PackageDeleteObserver;->isDone()Z

    move-result v5

    if-nez v5, :cond_2

    const-wide/16 v7, 0x61a8

    cmp-long v5, v3, v7

    if-gez v5, :cond_2

    const-wide/16 v7, 0x1388

    invoke-virtual {v2, v7, v8}, Ljava/lang/Object;->wait(J)V

    add-long/2addr v3, v9

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/android/server/DeviceManager3LMService$PackageDeleteObserver;->isDone()Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "DeviceManager3LM"

    const-string v7, "Timed out waiting for packageRemoved callback"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v2

    goto :goto_0

    .end local v3           #waitTime:J
    :catchall_0
    move-exception v5

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .end local v1           #flags:I
    .end local v2           #observer:Lcom/android/server/DeviceManager3LMService$PackageDeleteObserver;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/InterruptedException;
    const-string v5, "DeviceManager3LM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Interrupted exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v1       #flags:I
    .restart local v2       #observer:Lcom/android/server/DeviceManager3LMService$PackageDeleteObserver;
    :catchall_1
    move-exception v5

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public disablePackage(Ljava/lang/String;)V
    .locals 2
    .parameter "pkgName"

    .prologue
    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/android/server/DeviceManager3LMService;->setPackageState(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mAllowedPackages:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/DeviceManager3LMService$RulesEngine;->updatePolicy(Ljava/lang/String;Z)Z

    goto :goto_0
.end method

.method public disconnectFromVpn(Z)Z
    .locals 6
    .parameter "doReset"

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/DeviceManager3LMService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "reset"

    invoke-virtual {v3, v4}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v2, "DeviceManager3LM"

    const-string v3, "tund disconnected"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/DeviceManager3LMService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "disconnect"

    invoke-virtual {v3, v4}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .local v0, code:I
    const-string v3, "DeviceManager3LM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tund connect failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enablePackage(Ljava/lang/String;)V
    .locals 2
    .parameter "pkgName"

    .prologue
    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/DeviceManager3LMService;->setPackageState(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mAllowedPackages:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/DeviceManager3LMService$RulesEngine;->updatePolicy(Ljava/lang/String;Z)Z

    goto :goto_0
.end method

.method public encryptPackage(Ljava/lang/String;ZZ)V
    .locals 0
    .parameter "pkgName"
    .parameter "encrypt"
    .parameter "required"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public getBluetoothEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/DeviceManager3LMService;->mBluetoothEnabled:Z

    return v0
.end method

.method public getNfcState()I
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.nfc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "persist.security.nfc.lockout"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getOtaDelay()I
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ota_delay"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getOwnerInfo()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_owner_info"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerInfoEnabled()I
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_owner_info_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPackageGids(Ljava/lang/String;)[I
    .locals 13
    .parameter "pkgName"

    .prologue
    const/4 v12, 0x0

    const/4 v9, 0x0

    .local v9, skip:I
    :try_start_0
    iget-object v10, p0, Lcom/android/server/DeviceManager3LMService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, p1}, Landroid/content/pm/PackageManager;->getPackageGids(Ljava/lang/String;)[I

    move-result-object v0

    .local v0, appGids:[I
    if-nez v0, :cond_1

    const/4 v10, 0x0

    new-array v3, v10, [I

    .end local v0           #appGids:[I
    :cond_0
    :goto_0
    return-object v3

    .restart local v0       #appGids:[I
    :cond_1
    move-object v1, v0

    .local v1, arr$:[I
    array-length v7, v1

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_1
    if-ge v6, v7, :cond_3

    aget v4, v1, v6

    .local v4, gid:I
    iget-object v10, p0, Lcom/android/server/DeviceManager3LMService;->mAndroidIds:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .local v8, perm:Ljava/lang/String;
    if-eqz v8, :cond_2

    invoke-virtual {p0, v8, p1}, Lcom/android/server/DeviceManager3LMService;->checkPackagePermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    add-int/lit8 v9, v9, 0x1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v4           #gid:I
    .end local v8           #perm:Ljava/lang/String;
    :cond_3
    array-length v10, v0

    sub-int/2addr v10, v9

    new-array v3, v10, [I

    .local v3, filteredGids:[I
    const/4 v9, 0x0

    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    array-length v10, v0

    if-ge v5, v10, :cond_0

    iget-object v10, p0, Lcom/android/server/DeviceManager3LMService;->mAndroidIds:Ljava/util/HashMap;

    aget v11, v0, v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .restart local v8       #perm:Ljava/lang/String;
    if-eqz v8, :cond_4

    invoke-virtual {p0, v8, p1}, Lcom/android/server/DeviceManager3LMService;->checkPackagePermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    add-int/lit8 v9, v9, 0x1

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    sub-int v10, v5, v9

    aget v11, v0, v5

    aput v11, v3, v10
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .end local v0           #appGids:[I
    .end local v1           #arr$:[I
    .end local v3           #filteredGids:[I
    .end local v5           #i:I
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v8           #perm:Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-array v3, v12, [I

    goto :goto_0
.end method

.method public getPackageScanner()[Ljava/lang/String;
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/server/DeviceManager3LMService;->mPackageScannerMutex:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/DeviceManager3LMService;->mPackageScanner:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/server/DeviceManager3LMService;->mPackageScanFailOnTimeout:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/server/DeviceManager3LMService;->mPackageScanTimeoutMillis:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    const/16 v0, 0xc

    return v0
.end method

.method public getWifiState()I
    .locals 2

    .prologue
    const-string v0, "persist.security.wifi.lockout"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/DeviceManager3LMService$PublicKey3LM;

    invoke-direct {v2, p1}, Lcom/android/server/DeviceManager3LMService$PublicKey3LM;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/DeviceManager3LMService;->mPublicKey3LM:Lcom/android/server/DeviceManager3LMService$PublicKey3LM;

    iget-object v2, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/DeviceManager3LMService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iput v2, p0, Lcom/android/server/DeviceManager3LMService;->mUid:I

    iget-object v2, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/android/server/DeviceManager3LMService;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v2, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "boot_lock"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/DeviceManager3LMService;->mBootLocked:Z

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/DeviceManager3LMService;->mWifiFilter:Ljava/util/Set;

    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/DeviceManager3LMService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x407005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/DeviceManager3LMService;->mNotificationText:Ljava/lang/String;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/DeviceManager3LMService;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v5, 0x5

    invoke-virtual {v0, v2, v3, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/DeviceManager3LMService;->isUsbBlocked()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/DeviceManager3LMService;->isAdbBlocked()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-direct {p0, v4}, Lcom/android/server/DeviceManager3LMService;->setUSBEnabled(Z)V

    :cond_2
    return-void

    .end local v0           #adapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v1           #res:Landroid/content/res/Resources;
    :cond_3
    move v2, v4

    goto :goto_0
.end method

.method public installPackage(Ljava/lang/String;)V
    .locals 11
    .parameter "packageURIAsString"

    .prologue
    const-wide/16 v9, 0x1388

    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v5

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .local v2, packageURI:Landroid/net/Uri;
    new-instance v1, Lcom/android/server/DeviceManager3LMService$PackageInstallObserver;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceManager3LMService$PackageInstallObserver;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    .local v1, observer:Lcom/android/server/DeviceManager3LMService$PackageInstallObserver;
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v6, p0, Lcom/android/server/DeviceManager3LMService;->mPackageManager:Landroid/content/pm/PackageManager;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v5, p0, Lcom/android/server/DeviceManager3LMService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v5, v2, v1, v7, v8}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    const-wide/16 v3, 0x0

    .local v3, waitTime:J
    :goto_1
    invoke-virtual {v1}, Lcom/android/server/DeviceManager3LMService$PackageInstallObserver;->isDone()Z

    move-result v5

    if-nez v5, :cond_1

    const-wide/16 v7, 0x61a8

    cmp-long v5, v3, v7

    if-gez v5, :cond_1

    const-wide/16 v7, 0x1388

    invoke-virtual {v1, v7, v8}, Ljava/lang/Object;->wait(J)V

    add-long/2addr v3, v9

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/DeviceManager3LMService$PackageInstallObserver;->isDone()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "DeviceManager3LM"

    const-string v7, "Timed out waiting for packageInstalled callback"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v5, v1, Lcom/android/server/DeviceManager3LMService$PackageInstallObserver;->returnCode:I

    const/4 v7, 0x1

    if-eq v5, v7, :cond_3

    const-string v5, "DeviceManager3LM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to install with error code = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Lcom/android/server/DeviceManager3LMService$PackageInstallObserver;->returnCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v1

    goto :goto_0

    .end local v3           #waitTime:J
    :catchall_0
    move-exception v5

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v1           #observer:Lcom/android/server/DeviceManager3LMService$PackageInstallObserver;
    .end local v2           #packageURI:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v5, "DeviceManager3LM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Null URI to install package from:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    .restart local v1       #observer:Lcom/android/server/DeviceManager3LMService$PackageInstallObserver;
    .restart local v2       #packageURI:Landroid/net/Uri;
    :catchall_1
    move-exception v5

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v1           #observer:Lcom/android/server/DeviceManager3LMService$PackageInstallObserver;
    .end local v2           #packageURI:Landroid/net/Uri;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/InterruptedException;
    const-string v5, "DeviceManager3LM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Interrupted exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public isAdbBlocked()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "adb_blocked"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isAdminLocked()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "admin_locked"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isApnLocked()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "apn_locked"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isDataEncrypted()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isDataEncryptionRequired()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isPackage3LM(Ljava/lang/String;)Z
    .locals 9
    .parameter "pkg"

    .prologue
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/DeviceManager3LMService;->mPublicKey3LM:Lcom/android/server/DeviceManager3LMService$PublicKey3LM;

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/android/server/DeviceManager3LMService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v8, 0x40

    invoke-virtual {v7, p1, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .local v4, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v0, arr$:[Landroid/content/pm/Signature;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    .local v5, pkgSignature:Landroid/content/pm/Signature;
    iget-object v7, p0, Lcom/android/server/DeviceManager3LMService;->mPublicKey3LM:Lcom/android/server/DeviceManager3LMService$PublicKey3LM;

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/DeviceManager3LMService$PublicKey3LM;->comparePublicKey([B)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    .end local v0           #arr$:[Landroid/content/pm/Signature;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v5           #pkgSignature:Landroid/content/pm/Signature;
    :catch_0
    move-exception v3

    .local v3, nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .end local v3           #nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #arr$:[Landroid/content/pm/Signature;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v4       #packageInfo:Landroid/content/pm/PackageInfo;
    .restart local v5       #pkgSignature:Landroid/content/pm/Signature;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public isPackageDisabled(Ljava/lang/String;)Z
    .locals 9
    .parameter "pkgName"

    .prologue
    const/4 v8, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/DeviceManager3LMService;->isBootLocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .local v7, res:Landroid/content/res/Resources;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x4070061

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/server/DeviceManager3LMService;->getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, bar:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/server/DeviceManager3LMService;->getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x4070062

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, title:Ljava/lang/String;
    const v0, 0x4070063

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, text:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/DeviceManager3LMService;->notify(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    move v6, v8

    .end local v2           #bar:Ljava/lang/String;
    .end local v3           #title:Ljava/lang/String;
    .end local v4           #text:Ljava/lang/String;
    .end local v7           #res:Landroid/content/res/Resources;
    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    .local v6, disabled:Z
    iget-object v1, p0, Lcom/android/server/DeviceManager3LMService;->mAllowedPackages:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mAllowedPackages:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    const/4 v5, 0x1

    invoke-virtual {v0, p1, v5}, Lcom/android/server/DeviceManager3LMService$RulesEngine;->checkPolicy(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    move v6, v8

    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public isPackageEncrypted(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isPackageEncryptionRequired(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isScreenshotBlocked()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screenshot_blocked"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isSdEncrypted()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "sd_encryption_256"

    invoke-virtual {p0, v2}, Lcom/android/server/DeviceManager3LMService;->keyStoreContains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sd_encryption"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isSdEncryptionRequired()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-boolean v0, p0, Lcom/android/server/DeviceManager3LMService;->mSdRequired:Z

    return v0
.end method

.method public isSsidAllowed(Ljava/lang/String;)Z
    .locals 5
    .parameter "ssid"

    .prologue
    const/16 v4, 0x22

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/DeviceManager3LMService;->mWifiFilter:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .local v0, name:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-object v1, p0, Lcom/android/server/DeviceManager3LMService;->mWifiFilter:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public isTetheringBlocked()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tethering_blocked"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isUsbBlocked()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "usb_blocked"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public keyStoreChangePassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "oldPassword"
    .parameter "newPassword"

    .prologue
    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0, p1}, Landroid/security/KeyStore;->unlock(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0, p2}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public keyStoreContains(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0, p1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public keyStoreDeleteKey(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/DeviceManager3LMService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v1

    sget-object v2, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v1, v2, :cond_1

    const-string v1, "DeviceManager3LM"

    const-string v2, "Keystore locked or not initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0, p1}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public keyStoreGetKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/DeviceManager3LMService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v1

    sget-object v2, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v1, v2, :cond_1

    const-string v1, "DeviceManager3LM"

    const-string v2, "Keystore locked or not initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/DeviceManager3LMService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, p1}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public keyStoreGetLastError()I
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->getLastError()I

    move-result v0

    goto :goto_0
.end method

.method public keyStoreLock()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->lock()Z

    move-result v0

    goto :goto_0
.end method

.method public keyStorePutKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "name"
    .parameter "key"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/DeviceManager3LMService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v1

    sget-object v2, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v1, v2, :cond_1

    const-string v1, "DeviceManager3LM"

    const-string v2, "Keystore locked or not initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public keyStoreReset()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->reset()Z

    move-result v0

    goto :goto_0
.end method

.method public keyStoreSetPassword(Ljava/lang/String;)V
    .locals 1
    .parameter "password"

    .prologue
    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0, p1}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public keyStoreTest()I
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public keyStoreUnlock(Ljava/lang/String;)Z
    .locals 1
    .parameter "password"

    .prologue
    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0, p1}, Landroid/security/KeyStore;->unlock(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public lockAdmin(Z)V
    .locals 3
    .parameter "lock"

    .prologue
    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "admin_locked"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public lockApn(Z)V
    .locals 3
    .parameter "lock"

    .prologue
    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "apn_locked"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public notification(III)V
    .locals 7
    .parameter "barId"
    .parameter "titleId"
    .parameter "textId"

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .local v6, res:Landroid/content/res/Resources;
    if-nez p1, :cond_1

    move-object v2, v4

    .local v2, bar:Ljava/lang/String;
    :goto_1
    if-nez p2, :cond_2

    move-object v3, v4

    .local v3, title:Ljava/lang/String;
    :goto_2
    if-nez p3, :cond_3

    .local v4, text:Ljava/lang/String;
    :goto_3
    add-int v0, p1, p2

    add-int v1, v0, p3

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/DeviceManager3LMService;->notify(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .end local v2           #bar:Ljava/lang/String;
    .end local v3           #title:Ljava/lang/String;
    .end local v4           #text:Ljava/lang/String;
    :cond_1
    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .restart local v2       #bar:Ljava/lang/String;
    :cond_2
    invoke-virtual {v6, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .restart local v3       #title:Ljava/lang/String;
    :cond_3
    invoke-virtual {v6, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3
.end method

.method public putSettingsSecureInt(Ljava/lang/String;I)Z
    .locals 4
    .parameter "name"
    .parameter "value"

    .prologue
    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, identityToken:J
    iget-object v3, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    .local v2, ret:Z
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public putSettingsSecureString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "name"
    .parameter "value"

    .prologue
    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, identityToken:J
    iget-object v3, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .local v2, ret:Z
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public restoreDefaultApns()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    const-string v3, "content://telephony/carriers/restore"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, restore:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v3, "content://telephony/carriers/preferapn"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .local v0, preferedApn:Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "apn_id"

    const-string v4, "-1"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public restoreOriginalDns(Ljava/lang/String;)Z
    .locals 6
    .parameter "vpnSuffixes"

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return v3

    :cond_0
    iget-object v4, p0, Lcom/android/server/DeviceManager3LMService;->mVpnSettingsMutex:Ljava/lang/String;

    monitor-enter v4

    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/DeviceManager3LMService;->mVpnHasOriginalData:Z

    if-nez v5, :cond_1

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    const-string v3, "net.dns1"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, current_dns1:Ljava/lang/String;
    const-string v3, "net.dns.search"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, current_suffixes:Ljava/lang/String;
    const-string v3, "vpn.net.tun.dns1"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, current_tun_dns1:Ljava/lang/String;
    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    if-nez v1, :cond_3

    const-string v1, ""

    :cond_3
    if-nez v2, :cond_4

    const-string v2, ""

    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "net.dns1"

    iget-object v5, p0, Lcom/android/server/DeviceManager3LMService;->mVpnOriginalDns1:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "net.dns2"

    iget-object v5, p0, Lcom/android/server/DeviceManager3LMService;->mVpnOriginalDns2:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "net.dns.search"

    iget-object v5, p0, Lcom/android/server/DeviceManager3LMService;->mVpnOriginalDnsSuffixes:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/DeviceManager3LMService;->mVpnHasOriginalData:Z

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public setAllowedPackages(Ljava/util/Map;)Z
    .locals 1
    .parameter "pkgNames"

    .prologue
    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mAllowedPackages:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    invoke-virtual {v0, p1}, Lcom/android/server/DeviceManager3LMService$RulesEngine;->loadPolicy(Ljava/util/Map;)Z

    move-result v0

    goto :goto_0
.end method

.method public setAppInstallPermissionPolicies(Ljava/util/Map;)Z
    .locals 5
    .parameter "permNameRegexPermMap"

    .prologue
    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/android/server/DeviceManager3LMService;->mPermNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/DeviceManager3LMService;->mPermNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    invoke-virtual {v1, p1}, Lcom/android/server/DeviceManager3LMService$RulesEngine;->loadPolicy(Ljava/util/Map;)Z

    move-result v0

    .local v0, loadResult:Z
    const-string v1, "DeviceManager3LM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading perm name rules result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    goto :goto_0

    .end local v0           #loadResult:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAppInstallPkgNamePolicies(Ljava/util/Map;)Z
    .locals 5
    .parameter "pkgNameRegexPermMap"

    .prologue
    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/android/server/DeviceManager3LMService;->mPkgNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/DeviceManager3LMService;->mPkgNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    invoke-virtual {v1, p1}, Lcom/android/server/DeviceManager3LMService$RulesEngine;->loadPolicy(Ljava/util/Map;)Z

    move-result v0

    .local v0, loadResult:Z
    const-string v1, "DeviceManager3LM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading pkg name rules result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    goto :goto_0

    .end local v0           #loadResult:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAppInstallPubkeyPolicies(Ljava/util/Map;)Z
    .locals 5
    .parameter "pubkeyRegexPermMap"

    .prologue
    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/android/server/DeviceManager3LMService;->mPubKeyRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/DeviceManager3LMService;->mPubKeyRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    invoke-virtual {v1, p1}, Lcom/android/server/DeviceManager3LMService$RulesEngine;->loadPolicy(Ljava/util/Map;)Z

    move-result v0

    .local v0, loadResult:Z
    const-string v1, "DeviceManager3LM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading perm name rules result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    goto :goto_0

    .end local v0           #loadResult:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAppUninstallPkgNamePolicies(Ljava/util/Map;)Z
    .locals 5
    .parameter "uninstallPkgNameRegexPermMap"

    .prologue
    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/android/server/DeviceManager3LMService;->mUninstallPkgNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/DeviceManager3LMService;->mUninstallPkgNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    invoke-virtual {v1, p1}, Lcom/android/server/DeviceManager3LMService$RulesEngine;->loadPolicy(Ljava/util/Map;)Z

    move-result v0

    .local v0, loadResult:Z
    const-string v1, "DeviceManager3LM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading app uninstall package name policy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    goto :goto_0

    .end local v0           #loadResult:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBluetoothEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/DeviceManager3LMService;->mBluetoothEnabled:Z

    goto :goto_0
.end method

.method public setBootLock(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "boot_lock"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setDataEncryptionRequired(Z)V
    .locals 0
    .parameter "required"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public setLocationProviderEnabled(Ljava/lang/String;Z)V
    .locals 1
    .parameter "provider"
    .parameter "enabled"

    .prologue
    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public setNfcState(I)V
    .locals 3
    .parameter "state"

    .prologue
    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.nfc"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "persist.security.nfc.lockout"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "nfc"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v0

    .local v0, nfcService:Landroid/nfc/INfcAdapter;
    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :try_start_0
    invoke-interface {v0, v1}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    const-string v1, "com.htc.3lm.intent.NFC_POLICY_STATUS_CHANGE"

    invoke-direct {p0, v1, p1}, Lcom/android/server/DeviceManager3LMService;->broadcastIntent(Ljava/lang/String;I)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public setNotificationText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x407005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DeviceManager3LMService;->mNotificationText:Ljava/lang/String;

    goto :goto_0

    .end local v0           #res:Landroid/content/res/Resources;
    :cond_2
    iput-object p1, p0, Lcom/android/server/DeviceManager3LMService;->mNotificationText:Ljava/lang/String;

    goto :goto_0
.end method

.method public setOtaDelay(I)V
    .locals 2
    .parameter "delay"

    .prologue
    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ltz p1, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ota_delay"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public setPackagePermission(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 5
    .parameter "permName"
    .parameter "pkgName"
    .parameter "enable"

    .prologue
    const/4 v1, 0x0

    .local v1, ret:Z
    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v3

    if-nez v3, :cond_0

    move v2, v1

    .end local v1           #ret:Z
    .local v2, ret:I
    :goto_0
    return v2

    .end local v2           #ret:I
    .restart local v1       #ret:Z
    :cond_0
    if-nez p2, :cond_1

    const-string p2, ".*"

    :cond_1
    iget-object v4, p0, Lcom/android/server/DeviceManager3LMService;->mPackagePerms:Ljava/util/Map;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/DeviceManager3LMService;->mPackagePerms:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceManager3LMService$RulesEngine;

    .local v0, re:Lcom/android/server/DeviceManager3LMService$RulesEngine;
    if-nez v0, :cond_2

    new-instance v0, Lcom/android/server/DeviceManager3LMService$RulesEngine;

    .end local v0           #re:Lcom/android/server/DeviceManager3LMService$RulesEngine;
    invoke-direct {v0, p0}, Lcom/android/server/DeviceManager3LMService$RulesEngine;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    .restart local v0       #re:Lcom/android/server/DeviceManager3LMService$RulesEngine;
    iget-object v3, p0, Lcom/android/server/DeviceManager3LMService;->mPackagePerms:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0, p2, p3}, Lcom/android/server/DeviceManager3LMService$RulesEngine;->updatePolicy(Ljava/lang/String;Z)Z

    move-result v1

    monitor-exit v4

    move v2, v1

    .restart local v2       #ret:I
    goto :goto_0

    .end local v0           #re:Lcom/android/server/DeviceManager3LMService$RulesEngine;
    .end local v2           #ret:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public setPackageScanner(Ljava/lang/String;ZI)V
    .locals 2
    .parameter "scannerComponent"
    .parameter "failOnTimeout"
    .parameter "timeoutMillis"

    .prologue
    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/DeviceManager3LMService;->mPackageScannerMutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/android/server/DeviceManager3LMService;->mPackageScanner:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/server/DeviceManager3LMService;->mPackageScanFailOnTimeout:Z

    iput p3, p0, Lcom/android/server/DeviceManager3LMService;->mPackageScanTimeoutMillis:I

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPrimaryClipOwner(I)V
    .locals 8
    .parameter "uid"

    .prologue
    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/server/DeviceManager3LMService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .local v3, packages:[Ljava/lang/String;
    if-eqz v3, :cond_0

    iput-boolean v6, p0, Lcom/android/server/DeviceManager3LMService;->mSecurePrimaryClip:Z

    iget-object v6, p0, Lcom/android/server/DeviceManager3LMService;->mSecureClipboardRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    monitor-enter v6

    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    :try_start_0
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    .local v4, pkg:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/DeviceManager3LMService;->mSecureClipboardRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7}, Lcom/android/server/DeviceManager3LMService$RulesEngine;->checkPolicy(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/DeviceManager3LMService;->mSecurePrimaryClip:Z

    monitor-exit v6

    goto :goto_0

    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #pkg:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v4       #pkg:Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v4           #pkg:Ljava/lang/String;
    :cond_3
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setSdEncryptionRequired(Z)V
    .locals 9
    .parameter "required"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const v1, 0x4070057

    const/4 v7, 0x1

    iput-boolean p1, p0, Lcom/android/server/DeviceManager3LMService;->mSdRequired:Z

    if-ne v7, p1, :cond_0

    iget-object v2, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sd_encryption"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v7, :cond_1

    .local v7, isSDEncrypted:Z
    :goto_0
    if-nez v7, :cond_0

    new-instance v5, Landroid/content/Intent;

    const-string v0, "com.htc.settings.action.START_ENCRYPTION"

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v5, intent:Landroid/content/Intent;
    const-string v0, "storage_type"

    const-string v2, "sd_card"

    invoke-virtual {v5, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "action_type"

    const-string v2, "encrypt"

    invoke-virtual {v5, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .local v8, res:Landroid/content/res/Resources;
    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x4070058

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x30

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/DeviceManager3LMService;->notify(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    .end local v5           #intent:Landroid/content/Intent;
    .end local v7           #isSDEncrypted:Z
    .end local v8           #res:Landroid/content/res/Resources;
    :cond_0
    return-void

    :cond_1
    move v7, v0

    goto :goto_0
.end method

.method public setSecureClipboard(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, packageNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/server/DeviceManager3LMService;->mSecureClipboardRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    monitor-enter v4

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, packageName:Ljava/lang/String;
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #packageName:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/DeviceManager3LMService;->mSecureClipboardRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    invoke-virtual {v3, v1}, Lcom/android/server/DeviceManager3LMService$RulesEngine;->loadPolicy(Ljava/util/Map;)Z

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setSsidFilter(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, filter:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/server/DeviceManager3LMService;->mWifiFilter:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    iget-object v4, p0, Lcom/android/server/DeviceManager3LMService;->mWifiFilter:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v4, p0, Lcom/android/server/DeviceManager3LMService;->mWifiFilter:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .local v3, wm:Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .local v1, configList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/server/DeviceManager3LMService;->isSsidAllowed(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    goto :goto_0
.end method

.method public setWifiState(I)V
    .locals 2
    .parameter "state"

    .prologue
    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "persist.security.wifi.lockout"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setupVpnDns(Ljava/lang/String;)Z
    .locals 9
    .parameter "vpnSuffixes"

    .prologue
    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v5, 0x0

    :goto_0
    return v5

    :cond_0
    iget-object v6, p0, Lcom/android/server/DeviceManager3LMService;->mVpnSettingsMutex:Ljava/lang/String;

    monitor-enter v6

    :try_start_0
    const-string v7, "net.dns1"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, current_dns1:Ljava/lang/String;
    const-string v7, "net.dns2"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, current_dns2:Ljava/lang/String;
    const-string v7, "net.dns.search"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, current_suffixes:Ljava/lang/String;
    const-string v7, "vpn.net.tun.dns1"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, current_tun_dns1:Ljava/lang/String;
    const-string v7, "vpn.net.tun.dns2"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, current_tun_dns2:Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    iput-object v2, p0, Lcom/android/server/DeviceManager3LMService;->mVpnOriginalDnsSuffixes:Ljava/lang/String;

    const-string v7, "net.dns.search"

    invoke-static {v7, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mVpnOriginalDns1:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/DeviceManager3LMService;->mVpnOriginalDns2:Ljava/lang/String;

    const-string v7, "net.dns1"

    invoke-static {v7, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "net.dns2"

    invoke-static {v7, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/DeviceManager3LMService;->mVpnHasOriginalData:Z

    monitor-exit v6

    goto :goto_0

    .end local v0           #current_dns1:Ljava/lang/String;
    .end local v1           #current_dns2:Ljava/lang/String;
    .end local v2           #current_suffixes:Ljava/lang/String;
    .end local v3           #current_tun_dns1:Ljava/lang/String;
    .end local v4           #current_tun_dns2:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public unlock()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceManager3LMService;->mBootLocked:Z

    goto :goto_0
.end method
