.class public Lcom/android/server/LocationManagerService;
.super Landroid/location/ILocationManager$Stub;
.source "LocationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LocationManagerService$LocationWorkerHandler;,
        Lcom/android/server/LocationManagerService$ProximityListener;,
        Lcom/android/server/LocationManagerService$ProximityAlert;,
        Lcom/android/server/LocationManagerService$UpdateRecord;,
        Lcom/android/server/LocationManagerService$LpCapabilityComparator;,
        Lcom/android/server/LocationManagerService$LpAccuracyComparator;,
        Lcom/android/server/LocationManagerService$LpPowerComparator;,
        Lcom/android/server/LocationManagerService$SettingsObserver;,
        Lcom/android/server/LocationManagerService$Receiver;
    }
.end annotation


# static fields
.field private static final ACCESS_COARSE_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_COARSE_LOCATION"

.field private static final ACCESS_FINE_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_FINE_LOCATION"

.field private static final ACCESS_LOCATION_EXTRA_COMMANDS:Ljava/lang/String; = "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

.field private static final ACCESS_MOCK_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_MOCK_LOCATION"

#the value of this static final field might be set in the static constructor
.field private static final CUSTOMIZED_NLP_FEATURE:Z = false

.field private static final INSTALL_LOCATION_PROVIDER:Ljava/lang/String; = "android.permission.INSTALL_LOCATION_PROVIDER"

.field private static final LOCAL_LOGV:Z = true

.field private static final LPSDEBUG:Z = true

.field private static final MAX_PROVIDER_SCHEDULING_JITTER:I = 0x64

.field private static final MESSAGE_LOCATION_CHANGED:I = 0x1

.field private static final MESSAGE_PACKAGE_UPDATED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LocationManagerService"

.field private static final TAG_MOCK:Ljava/lang/String; = "HTCMock"

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "LocationManagerService"

.field public static final htcMock_PROVIDER:Ljava/lang/String; = "htcMock"

.field private static mForceUpdateGpsLocationProvider:Z = false

.field private static mHtcAllowAPTrigger:Z = false

.field private static mPrivacyLock:I = 0x0

.field public static final mocLocationProvider:Ljava/lang/String; = "htcMock"

.field private static sProvidersLoaded:Z


# instance fields
.field private final SKIP_NAVIGATION_AP1:Ljava/lang/String;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

.field private final mContext:Landroid/content/Context;

.field private mCustProviderSettings:Landroid/content/ContentQueryMap;

.field private mCustProviderValue:Ljava/lang/String;

.field private final mDisabledProviders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnabledProviders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

.field private mGeocodeProviderPackageName:Ljava/lang/String;

.field mGpsLocationProvider:Lcom/android/server/location/LocationProviderInterface;

.field private final mGpsProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/GpsLocationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

.field private mLastKnownLocation:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private mLastWriteTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

.field private final mLock:Ljava/lang/Object;

.field private final mMockProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/MockProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field mNetworkLocationProvider:Lcom/android/server/location/LocationProviderProxy;

.field private mNetworkLocationProviderPackageName:Ljava/lang/String;

.field private mNetworkState:I

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPendingBroadcasts:I

.field private final mProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/location/LocationProviderInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final mProvidersByName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/LocationProviderInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mProximitiesEntered:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/LocationManagerService$ProximityAlert;",
            ">;"
        }
    .end annotation
.end field

.field private mProximityAlerts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/app/PendingIntent;",
            "Lcom/android/server/LocationManagerService$ProximityAlert;",
            ">;"
        }
    .end annotation
.end field

.field private mProximityListener:Landroid/location/ILocationListener;

.field private mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;

.field private final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/server/LocationManagerService$Receiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecordsByProvider:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/LocationManagerService$UpdateRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSettings:Landroid/content/ContentQueryMap;

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mockProvider:Lcom/android/server/location/MockProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 136
    sput-boolean v2, Lcom/android/server/LocationManagerService;->sProvidersLoaded:Z

    .line 138
    const/4 v0, -0x1

    sput v0, Lcom/android/server/LocationManagerService;->mPrivacyLock:I

    .line 216
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/LocationManagerService;->CUSTOMIZED_NLP_FEATURE:Z

    .line 221
    sput-boolean v1, Lcom/android/server/LocationManagerService;->mForceUpdateGpsLocationProvider:Z

    .line 224
    sput-boolean v2, Lcom/android/server/LocationManagerService;->mHtcAllowAPTrigger:Z

    return-void

    :cond_0
    move v0, v2

    .line 216
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 625
    invoke-direct {p0}, Landroid/location/ILocationManager$Stub;-><init>()V

    .line 108
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mLastWriteTime:Ljava/util/HashMap;

    .line 128
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    .line 131
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    .line 134
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    .line 161
    iput-object v2, p0, Lcom/android/server/LocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 167
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    .line 173
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    .line 175
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    .line 181
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    .line 186
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    .line 193
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mTmpWorkSource:Landroid/os/WorkSource;

    .line 196
    iput-object v2, p0, Lcom/android/server/LocationManagerService;->mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;

    .line 197
    iput-object v2, p0, Lcom/android/server/LocationManagerService;->mProximityListener:Landroid/location/ILocationListener;

    .line 198
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;

    .line 200
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mProximitiesEntered:Ljava/util/HashSet;

    .line 204
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    .line 207
    iput v3, p0, Lcom/android/server/LocationManagerService;->mNetworkState:I

    .line 228
    const-string v1, "com.htc.laputa"

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->SKIP_NAVIGATION_AP1:Ljava/lang/String;

    .line 236
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mGpsProviders:Ljava/util/HashMap;

    .line 2314
    new-instance v1, Lcom/android/server/LocationManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/LocationManagerService$1;-><init>(Lcom/android/server/LocationManagerService;)V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2441
    new-instance v1, Lcom/android/server/LocationManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/LocationManagerService$2;-><init>(Lcom/android/server/LocationManagerService;)V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 626
    iput-object p1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 627
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 630
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x104001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;

    .line 632
    const v1, 0x1040020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;

    .line 635
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 638
    const-string v1, "LocationManagerService"

    const-string v2, "Constructed LocationManager Service"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    return-void
.end method

.method private _getAllProvidersLocked()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 768
    const-string v3, "LocationManagerService"

    const-string v4, "getAllProviders"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 771
    .local v1, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 772
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationProviderInterface;

    .line 773
    .local v2, p:Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v2}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 775
    .end local v2           #p:Lcom/android/server/location/LocationProviderInterface;
    :cond_0
    return-object v1
.end method

.method private _getLastKnownLocationLocked(Ljava/lang/String;)Landroid/location/Location;
    .locals 5
    .parameter "provider"

    .prologue
    const/4 v2, 0x0

    .line 2083
    invoke-direct {p0, p1, v2}, Lcom/android/server/LocationManagerService;->checkPermissionsSafe(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2085
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 2086
    .local v0, p:Lcom/android/server/location/LocationProviderInterface;
    if-nez v0, :cond_1

    .line 2095
    :cond_0
    :goto_0
    return-object v2

    .line 2090
    :cond_1
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 2091
    .local v1, pkgName:Ljava/lang/String;
    const-string v3, "com.htc.laputa"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2095
    :cond_2
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    goto :goto_0
.end method

.method private _getProviderInfoLocked(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .parameter "provider"

    .prologue
    const/4 v0, 0x0

    .line 2010
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationProviderInterface;

    .line 2011
    .local v1, p:Lcom/android/server/location/LocationProviderInterface;
    if-nez v1, :cond_0

    .line 2028
    :goto_0
    return-object v0

    .line 2015
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/LocationManagerService;->checkPermissionsSafe(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2017
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2018
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "network"

    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->requiresNetwork()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2019
    const-string v2, "satellite"

    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->requiresSatellite()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2020
    const-string v2, "cell"

    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->requiresCell()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2021
    const-string v2, "cost"

    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->hasMonetaryCost()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2022
    const-string v2, "altitude"

    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->supportsAltitude()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2023
    const-string v2, "speed"

    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->supportsSpeed()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2024
    const-string v2, "bearing"

    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->supportsBearing()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2025
    const-string v2, "power"

    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->getPowerRequirement()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2026
    const-string v2, "accuracy"

    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->getAccuracy()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private _getProvidersLocked(Landroid/location/Criteria;Z)Ljava/util/List;
    .locals 6
    .parameter "criteria"
    .parameter "enabledOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Criteria;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 793
    const-string v4, "LocationManagerService"

    const-string v5, "getProviders"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 796
    .local v2, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_3

    .line 797
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationProviderInterface;

    .line 798
    .local v3, p:Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v3}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v1

    .line 799
    .local v1, name:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->isAllowedProviderSafe(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 800
    if-eqz p2, :cond_1

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 796
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 803
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {v3, p1}, Lcom/android/server/location/LocationProviderInterface;->meetsCriteria(Landroid/location/Criteria;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 806
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 809
    .end local v1           #name:Ljava/lang/String;
    .end local v3           #p:Lcom/android/server/location/LocationProviderInterface;
    :cond_3
    return-object v2
.end method

.method private _isProviderEnabledLocked(Ljava/lang/String;)Z
    .locals 2
    .parameter "provider"

    .prologue
    .line 2057
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/LocationManagerService;->checkPermissionsSafe(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2059
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 2060
    .local v0, p:Lcom/android/server/location/LocationProviderInterface;
    if-nez v0, :cond_0

    .line 2061
    const/4 v1, 0x0

    .line 2063
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private _loadProvidersLocked()V
    .locals 15

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 525
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    new-instance v12, Lcom/android/server/location/GpsLocationProvider;

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v12, v0, p0}, Lcom/android/server/location/GpsLocationProvider;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;)V

    .line 528
    .local v12, gpsProvider:Lcom/android/server/location/GpsLocationProvider;
    invoke-virtual {v12}, Lcom/android/server/location/GpsLocationProvider;->getGpsStatusProvider()Landroid/location/IGpsStatusProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    .line 529
    invoke-virtual {v12}, Lcom/android/server/location/GpsLocationProvider;->getNetInitiatedListener()Landroid/location/INetInitiatedListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 530
    invoke-direct {p0, v12}, Lcom/android/server/LocationManagerService;->addProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 531
    iput-object v12, p0, Lcom/android/server/LocationManagerService;->mGpsLocationProvider:Lcom/android/server/location/LocationProviderInterface;

    .line 534
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGpsProviders:Ljava/util/HashMap;

    invoke-virtual {v12}, Lcom/android/server/location/GpsLocationProvider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    new-instance v0, Lcom/android/server/location/CarGpsProvider;

    const-string v1, "gps"

    const/4 v10, 0x2

    move-object v2, p0

    move v5, v3

    move v6, v3

    move v7, v4

    move v8, v4

    move v9, v4

    move v11, v4

    invoke-direct/range {v0 .. v11}, Lcom/android/server/location/CarGpsProvider;-><init>(Ljava/lang/String;Landroid/location/ILocationManager;ZZZZZZZII)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    .line 540
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iput-object v1, v0, Lcom/android/server/location/CarGpsProvider;->mContext:Landroid/content/Context;

    .line 545
    .end local v12           #gpsProvider:Lcom/android/server/location/GpsLocationProvider;
    :cond_0
    new-instance v14, Lcom/android/server/location/PassiveProvider;

    invoke-direct {v14, p0}, Lcom/android/server/location/PassiveProvider;-><init>(Landroid/location/ILocationManager;)V

    .line 546
    .local v14, passiveProvider:Lcom/android/server/location/PassiveProvider;
    invoke-direct {p0, v14}, Lcom/android/server/LocationManagerService;->addProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 547
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-virtual {v14}, Lcom/android/server/location/PassiveProvider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 557
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 558
    const-string v0, "com.android.location.service.NetworkLocationProvider"

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/LocationManagerService;->findBestPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 560
    .local v13, packageName:Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 561
    new-instance v0, Lcom/android/server/location/LocationProviderProxy;

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "network"

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-direct {v0, v1, v2, v13, v3}, Lcom/android/server/location/LocationProviderProxy;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProvider:Lcom/android/server/location/LocationProviderProxy;

    .line 564
    iput-object v13, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;

    .line 565
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProvider:Lcom/android/server/location/LocationProviderProxy;

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->addProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 568
    .end local v13           #packageName:Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 569
    const-string v0, "com.android.location.service.GeocodeProvider"

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/LocationManagerService;->findBestPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 571
    .restart local v13       #packageName:Ljava/lang/String;
    if-eqz v13, :cond_2

    .line 572
    new-instance v0, Lcom/android/server/location/GeocoderProxy;

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v13}, Lcom/android/server/location/GeocoderProxy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    .line 573
    iput-object v13, p0, Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;

    .line 577
    .end local v13           #packageName:Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 578
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/LocationManagerService;)Landroid/location/ILocationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProximityListener:Landroid/location/ILocationListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/LocationManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/LocationManagerService;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProximitiesEntered:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/LocationManagerService;Landroid/app/PendingIntent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->removeProximityAlertLocked(Landroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    return-object v0
.end method

.method static synthetic access$2000()Z
    .locals 1

    .prologue
    .line 102
    sget-boolean v0, Lcom/android/server/LocationManagerService;->mHtcAllowAPTrigger:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/LocationManagerService;Landroid/location/Location;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->handleLocationChangedLocked(Landroid/location/Location;Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/LocationManagerService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/server/LocationManagerService;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/LocationManagerService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/GeocoderProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/LocationManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Lcom/android/server/LocationManagerService;->mNetworkState:I

    return v0
.end method

.method static synthetic access$2602(Lcom/android/server/LocationManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput p1, p0, Lcom/android/server/LocationManagerService;->mNetworkState:I

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/LocationManagerService;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->handleStatusChangedLocked(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Receiver;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->decrementPendingBroadcasts()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->incrementPendingBroadcasts()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    return-void
.end method

.method private addProvider(Lcom/android/server/location/LocationProviderInterface;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    return-void
.end method

.method private addProximityAlertLocked(DDFJLandroid/app/PendingIntent;)V
    .locals 15
    .parameter "latitude"
    .parameter "longitude"
    .parameter "radius"
    .parameter "expiration"
    .parameter "intent"

    .prologue
    .line 1929
    const-string v3, "LocationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addProximityAlert: latitude = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", longitude = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", expiration = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p6

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", intent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    const-string v3, "gps"

    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->isAllowedProviderSafe(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "network"

    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->isAllowedProviderSafe(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1938
    :cond_0
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires ACCESS_FINE_LOCATION permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1941
    :cond_1
    const-wide/16 v3, -0x1

    cmp-long v3, p6, v3

    if-eqz v3, :cond_2

    .line 1942
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long p6, p6, v3

    .line 1944
    :cond_2
    new-instance v2, Lcom/android/server/LocationManagerService$ProximityAlert;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v3, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move/from16 v9, p5

    move-wide/from16 v10, p6

    move-object/from16 v12, p8

    invoke-direct/range {v2 .. v12}, Lcom/android/server/LocationManagerService$ProximityAlert;-><init>(Lcom/android/server/LocationManagerService;IDDFJLandroid/app/PendingIntent;)V

    .line 1946
    .local v2, alert:Lcom/android/server/LocationManagerService$ProximityAlert;
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;

    move-object/from16 v0, p8

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1948
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;

    if-nez v3, :cond_3

    .line 1949
    new-instance v3, Lcom/android/server/LocationManagerService$ProximityListener;

    invoke-direct {v3, p0}, Lcom/android/server/LocationManagerService$ProximityListener;-><init>(Lcom/android/server/LocationManagerService;)V

    iput-object v3, p0, Lcom/android/server/LocationManagerService;->mProximityListener:Landroid/location/ILocationListener;

    .line 1950
    new-instance v3, Lcom/android/server/LocationManagerService$Receiver;

    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mProximityListener:Landroid/location/ILocationListener;

    invoke-direct {v3, p0, v4}, Lcom/android/server/LocationManagerService$Receiver;-><init>(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;)V

    iput-object v3, p0, Lcom/android/server/LocationManagerService;->mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;

    .line 1952
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v13, v3, -0x1

    .local v13, i:I
    :goto_0
    if-ltz v13, :cond_3

    .line 1953
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/location/LocationProviderInterface;

    .line 1954
    .local v14, provider:Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v14}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/LocationManagerService;->requestLocationUpdatesLocked(Ljava/lang/String;JFZLcom/android/server/LocationManagerService$Receiver;)V

    .line 1952
    add-int/lit8 v13, v13, -0x1

    goto :goto_0

    .line 1958
    .end local v13           #i:I
    .end local v14           #provider:Lcom/android/server/location/LocationProviderInterface;
    :cond_3
    return-void
.end method

.method private best(Ljava/util/List;)Lcom/android/server/location/LocationProviderInterface;
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/location/LocationProviderInterface;"
        }
    .end annotation

    .prologue
    .local p1, providerNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 889
    iget-object v10, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 890
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 891
    .local v5, providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/location/LocationProviderInterface;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 892
    .local v3, name:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 894
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/location/LocationProviderInterface;>;"
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v5       #providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/location/LocationProviderInterface;>;"
    :cond_0
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 896
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x2

    if-ge v9, v10, :cond_1

    .line 897
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    .line 934
    :goto_1
    return-object v9

    .line 901
    :cond_1
    new-instance v9, Lcom/android/server/LocationManagerService$LpPowerComparator;

    invoke-direct {v9, p0, v12}, Lcom/android/server/LocationManagerService$LpPowerComparator;-><init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V

    invoke-static {v5, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 902
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v9}, Lcom/android/server/location/LocationProviderInterface;->getPowerRequirement()I

    move-result v4

    .line 903
    .local v4, power:I
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v9}, Lcom/android/server/location/LocationProviderInterface;->getPowerRequirement()I

    move-result v9

    if-ge v4, v9, :cond_2

    .line 904
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    goto :goto_1

    .line 909
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 910
    .local v7, tmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/location/LocationProviderInterface;>;"
    const/4 v2, 0x0

    .line 911
    .local v2, idx:I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 912
    .local v6, size:I
    :goto_2
    if-ge v2, v6, :cond_3

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v9}, Lcom/android/server/location/LocationProviderInterface;->getPowerRequirement()I

    move-result v9

    if-ne v9, v4, :cond_3

    .line 913
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 914
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 918
    :cond_3
    new-instance v9, Lcom/android/server/LocationManagerService$LpAccuracyComparator;

    invoke-direct {v9, p0, v12}, Lcom/android/server/LocationManagerService$LpAccuracyComparator;-><init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V

    invoke-static {v7, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 919
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v9}, Lcom/android/server/location/LocationProviderInterface;->getAccuracy()I

    move-result v0

    .line 920
    .local v0, acc:I
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v9}, Lcom/android/server/location/LocationProviderInterface;->getAccuracy()I

    move-result v9

    if-ge v0, v9, :cond_4

    .line 921
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    goto :goto_1

    .line 924
    :cond_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 925
    .local v8, tmp2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/location/LocationProviderInterface;>;"
    const/4 v2, 0x0

    .line 926
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 927
    :goto_3
    if-ge v2, v6, :cond_5

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v9}, Lcom/android/server/location/LocationProviderInterface;->getAccuracy()I

    move-result v9

    if-ne v9, v0, :cond_5

    .line 928
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 929
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 933
    :cond_5
    new-instance v9, Lcom/android/server/LocationManagerService$LpCapabilityComparator;

    invoke-direct {v9, p0, v12}, Lcom/android/server/LocationManagerService$LpCapabilityComparator;-><init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 934
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    goto/16 :goto_1
.end method

.method private checkMockPermissionsSafe()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2520
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    invoke-virtual {v2}, Lcom/android/server/location/CarGpsProvider;->isHtcMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2521
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    invoke-virtual {v2}, Lcom/android/server/location/CarGpsProvider;->isUsedMock()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2522
    const-string v1, "HTCMock"

    const-string v2, "checkMockPermissionsSafe, isHtcMode using Mock"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    :cond_0
    return-void

    .line 2527
    :cond_1
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mock_location"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 2529
    .local v0, allowMocks:Z
    :goto_0
    if-nez v0, :cond_3

    .line 2530
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires ACCESS_MOCK_LOCATION secure setting"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0           #allowMocks:Z
    :cond_2
    move v0, v1

    .line 2527
    goto :goto_0

    .line 2533
    .restart local v0       #allowMocks:Z
    :cond_3
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_MOCK_LOCATION"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 2535
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires ACCESS_MOCK_LOCATION permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkPermissionsSafe(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "provider"
    .parameter "lastPermission"

    .prologue
    .line 710
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "passive"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 714
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires ACCESS_FINE_LOCATION permission"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 717
    :cond_1
    const-string p2, "android.permission.ACCESS_FINE_LOCATION"

    .line 728
    .end local p2
    :cond_2
    :goto_0
    return-object p2

    .line 721
    .restart local p2
    :cond_3
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 723
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p2, "android.permission.ACCESS_COARSE_LOCATION"

    goto :goto_0

    .line 726
    :cond_4
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 728
    const-string p2, "android.permission.ACCESS_FINE_LOCATION"

    goto :goto_0

    .line 731
    :cond_5
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires ACCESS_FINE_LOCATION or ACCESS_COARSE_LOCATION permission"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private decrementPendingBroadcasts()V
    .locals 4

    .prologue
    .line 2467
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 2468
    :try_start_0
    iget v1, p0, Lcom/android/server/LocationManagerService;->mPendingBroadcasts:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/LocationManagerService;->mPendingBroadcasts:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 2471
    :try_start_1
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2472
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2473
    const-string v1, "Released wakelock"

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2483
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2484
    return-void

    .line 2475
    :cond_1
    :try_start_3
    const-string v1, "Can\'t release wakelock again!"

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 2477
    :catch_0
    move-exception v0

    .line 2480
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    const-string v1, "LocationManagerService"

    const-string v3, "exception in releaseWakeLock()"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2483
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private getMinTimeLocked(Ljava/lang/String;)J
    .locals 13
    .parameter "provider"

    .prologue
    .line 1169
    const-wide v5, 0x7fffffffffffffffL

    .line 1170
    .local v5, minTime:J
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 1171
    .local v7, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v9}, Landroid/os/WorkSource;->clear()V

    .line 1172
    if-eqz v7, :cond_3

    .line 1173
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 1174
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1175
    .local v8, ur:Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-wide v0, v8, Lcom/android/server/LocationManagerService$UpdateRecord;->mMinTime:J

    .line 1176
    .local v0, curTime:J
    cmp-long v9, v0, v5

    if-gez v9, :cond_0

    .line 1177
    move-wide v5, v0

    .line 1173
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1180
    .end local v0           #curTime:J
    .end local v8           #ur:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_1
    const-wide/16 v9, 0x3

    mul-long/2addr v9, v5

    const-wide/16 v11, 0x2

    div-long v3, v9, v11

    .line 1181
    .local v3, inclTime:J
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    :goto_1
    if-ltz v2, :cond_3

    .line 1182
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1183
    .restart local v8       #ur:Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-wide v9, v8, Lcom/android/server/LocationManagerService$UpdateRecord;->mMinTime:J

    cmp-long v9, v9, v3

    if-gtz v9, :cond_2

    .line 1184
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mTmpWorkSource:Landroid/os/WorkSource;

    iget v10, v8, Lcom/android/server/LocationManagerService$UpdateRecord;->mUid:I

    invoke-virtual {v9, v10}, Landroid/os/WorkSource;->add(I)Z

    .line 1181
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1188
    .end local v2           #i:I
    .end local v3           #inclTime:J
    .end local v8           #ur:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_3
    return-wide v5
.end method

.method private getReceiver(Landroid/app/PendingIntent;)Lcom/android/server/LocationManagerService$Receiver;
    .locals 2
    .parameter "intent"

    .prologue
    .line 1282
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService$Receiver;

    .line 1283
    .local v0, receiver:Lcom/android/server/LocationManagerService$Receiver;
    if-nez v0, :cond_0

    .line 1284
    new-instance v0, Lcom/android/server/LocationManagerService$Receiver;

    .end local v0           #receiver:Lcom/android/server/LocationManagerService$Receiver;
    invoke-direct {v0, p0, p1}, Lcom/android/server/LocationManagerService$Receiver;-><init>(Lcom/android/server/LocationManagerService;Landroid/app/PendingIntent;)V

    .line 1285
    .restart local v0       #receiver:Lcom/android/server/LocationManagerService$Receiver;
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1287
    :cond_0
    return-object v0
.end method

.method private getReceiver(Landroid/location/ILocationListener;)Lcom/android/server/LocationManagerService$Receiver;
    .locals 5
    .parameter "listener"

    .prologue
    .line 1263
    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1264
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$Receiver;

    .line 1265
    .local v2, receiver:Lcom/android/server/LocationManagerService$Receiver;
    if-nez v2, :cond_0

    .line 1266
    new-instance v2, Lcom/android/server/LocationManagerService$Receiver;

    .end local v2           #receiver:Lcom/android/server/LocationManagerService$Receiver;
    invoke-direct {v2, p0, p1}, Lcom/android/server/LocationManagerService$Receiver;-><init>(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;)V

    .line 1267
    .restart local v2       #receiver:Lcom/android/server/LocationManagerService$Receiver;
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1270
    :try_start_0
    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$Receiver;->isListener()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1271
    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$Receiver;->getListener()Landroid/location/ILocationListener;

    move-result-object v3

    invoke-interface {v3}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move-object v3, v2

    .line 1278
    :goto_0
    return-object v3

    .line 1273
    :catch_0
    move-exception v1

    .line 1274
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "LocationManagerService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1275
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private handleLocationChangedLocked(Landroid/location/Location;Z)V
    .locals 22
    .parameter "location"
    .parameter "passive"

    .prologue
    .line 2122
    if-eqz p2, :cond_1

    const-string v13, "passive"

    .line 2123
    .local v13, provider:Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 2124
    .local v17, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v17, :cond_0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-nez v19, :cond_2

    .line 2198
    :cond_0
    return-void

    .line 2122
    .end local v13           #provider:Ljava/lang/String;
    .end local v17           #records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    .line 2128
    .restart local v13       #provider:Ljava/lang/String;
    .restart local v17       #records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/location/LocationProviderInterface;

    .line 2129
    .local v10, p:Lcom/android/server/location/LocationProviderInterface;
    if-eqz v10, :cond_0

    .line 2134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/Location;

    .line 2135
    .local v7, lastLocation:Landroid/location/Location;
    if-nez v7, :cond_a

    .line 2136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    move-object/from16 v19, v0

    new-instance v20, Landroid/location/Location;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2142
    :goto_1
    invoke-interface {v10}, Lcom/android/server/location/LocationProviderInterface;->getStatusUpdateTime()J

    move-result-wide v8

    .line 2145
    .local v8, newStatusUpdateTime:J
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2146
    .local v4, extras:Landroid/os/Bundle;
    invoke-interface {v10, v4}, Lcom/android/server/location/LocationProviderInterface;->getStatus(Landroid/os/Bundle;)I

    move-result v18

    .line 2148
    .local v18, status:I
    const/4 v3, 0x0

    .line 2151
    .local v3, deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2152
    .local v2, N:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    if-ge v5, v2, :cond_c

    .line 2153
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2154
    .local v14, r:Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v15, v14, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    .line 2155
    .local v15, receiver:Lcom/android/server/LocationManagerService$Receiver;
    const/16 v16, 0x0

    .line 2157
    .local v16, receiverDead:Z
    iget-object v6, v14, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    .line 2158
    .local v6, lastLoc:Landroid/location/Location;
    if-eqz v6, :cond_3

    move-object/from16 v0, p1

    invoke-static {v0, v6, v14}, Lcom/android/server/LocationManagerService;->shouldBroadcastSafe(Landroid/location/Location;Landroid/location/Location;Lcom/android/server/LocationManagerService$UpdateRecord;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 2159
    :cond_3
    if-nez v6, :cond_b

    .line 2160
    new-instance v6, Landroid/location/Location;

    .end local v6           #lastLoc:Landroid/location/Location;
    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 2161
    .restart local v6       #lastLoc:Landroid/location/Location;
    iput-object v6, v14, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    .line 2165
    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/android/server/LocationManagerService$Receiver;->callLocationChangedLocked(Landroid/location/Location;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 2166
    const-string v19, "LocationManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "RemoteException calling onLocationChanged on "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    const/16 v16, 0x1

    .line 2171
    :cond_4
    iget-wide v11, v14, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastStatusBroadcast:J

    .line 2172
    .local v11, prevStatusUpdateTime:J
    cmp-long v19, v8, v11

    if-lez v19, :cond_6

    const-wide/16 v19, 0x0

    cmp-long v19, v11, v19

    if-nez v19, :cond_5

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    .line 2175
    :cond_5
    iput-wide v8, v14, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastStatusBroadcast:J

    .line 2176
    move/from16 v0, v18

    invoke-virtual {v15, v13, v0, v4}, Lcom/android/server/LocationManagerService$Receiver;->callStatusChangedLocked(Ljava/lang/String;ILandroid/os/Bundle;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 2177
    const/16 v16, 0x1

    .line 2178
    const-string v19, "LocationManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "RemoteException calling onStatusChanged on "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    :cond_6
    if-nez v16, :cond_7

    iget-boolean v0, v14, Lcom/android/server/LocationManagerService$UpdateRecord;->mSingleShot:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 2184
    :cond_7
    if-nez v3, :cond_8

    .line 2185
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2187
    .restart local v3       #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    :cond_8
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 2188
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2152
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 2138
    .end local v2           #N:I
    .end local v3           #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .end local v4           #extras:Landroid/os/Bundle;
    .end local v5           #i:I
    .end local v6           #lastLoc:Landroid/location/Location;
    .end local v8           #newStatusUpdateTime:J
    .end local v11           #prevStatusUpdateTime:J
    .end local v14           #r:Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v15           #receiver:Lcom/android/server/LocationManagerService$Receiver;
    .end local v16           #receiverDead:Z
    .end local v18           #status:I
    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/location/Location;->set(Landroid/location/Location;)V

    goto/16 :goto_1

    .line 2163
    .restart local v2       #N:I
    .restart local v3       #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .restart local v4       #extras:Landroid/os/Bundle;
    .restart local v5       #i:I
    .restart local v6       #lastLoc:Landroid/location/Location;
    .restart local v8       #newStatusUpdateTime:J
    .restart local v14       #r:Lcom/android/server/LocationManagerService$UpdateRecord;
    .restart local v15       #receiver:Lcom/android/server/LocationManagerService$Receiver;
    .restart local v16       #receiverDead:Z
    .restart local v18       #status:I
    :cond_b
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/location/Location;->set(Landroid/location/Location;)V

    goto/16 :goto_3

    .line 2193
    .end local v6           #lastLoc:Landroid/location/Location;
    .end local v14           #r:Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v15           #receiver:Lcom/android/server/LocationManagerService$Receiver;
    .end local v16           #receiverDead:Z
    :cond_c
    if-eqz v3, :cond_0

    .line 2194
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v5, v19, -0x1

    :goto_4
    if-ltz v5, :cond_0

    .line 2195
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/LocationManagerService$Receiver;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 2194
    add-int/lit8 v5, v5, -0x1

    goto :goto_4
.end method

.method private handleStatusChangedLocked(Ljava/lang/String;Z)V
    .locals 12
    .parameter "provider"
    .parameter "enabled"

    .prologue
    .line 2202
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 2203
    .local v7, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 2246
    :cond_0
    return-void

    .line 2207
    :cond_1
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/LocationProviderInterface;

    .line 2208
    .local v4, p:Lcom/android/server/location/LocationProviderInterface;
    if-eqz v4, :cond_0

    .line 2213
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2214
    .local v2, extras:Landroid/os/Bundle;
    invoke-interface {v4, v2}, Lcom/android/server/location/LocationProviderInterface;->getStatus(Landroid/os/Bundle;)I

    move-result v8

    .line 2216
    .local v8, status:I
    if-eqz p2, :cond_4

    .line 2217
    const/4 v8, 0x2

    .line 2223
    :goto_0
    const/4 v1, 0x0

    .line 2225
    .local v1, deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2226
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_5

    .line 2227
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2228
    .local v5, r:Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v6, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    .line 2230
    .local v6, receiver:Lcom/android/server/LocationManagerService$Receiver;
    invoke-virtual {v6, p1, v8, v2}, Lcom/android/server/LocationManagerService$Receiver;->callStatusChangedLocked(Ljava/lang/String;ILandroid/os/Bundle;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 2231
    const-string v9, "LocationManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RemoteException calling onStatusChanged on "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    if-nez v1, :cond_2

    .line 2233
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2235
    .restart local v1       #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    :cond_2
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 2236
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2226
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2220
    .end local v0           #N:I
    .end local v1           #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .end local v3           #i:I
    .end local v5           #r:Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v6           #receiver:Lcom/android/server/LocationManagerService$Receiver;
    :cond_4
    const/4 v8, 0x1

    goto :goto_0

    .line 2241
    .restart local v0       #N:I
    .restart local v1       #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .restart local v3       #i:I
    :cond_5
    if-eqz v1, :cond_0

    .line 2242
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    :goto_2
    if-ltz v3, :cond_0

    .line 2243
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/LocationManagerService$Receiver;

    invoke-direct {p0, v9}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 2242
    add-int/lit8 v3, v3, -0x1

    goto :goto_2
.end method

.method private incrementPendingBroadcasts()V
    .locals 4

    .prologue
    .line 2452
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 2453
    :try_start_0
    iget v1, p0, Lcom/android/server/LocationManagerService;->mPendingBroadcasts:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/android/server/LocationManagerService;->mPendingBroadcasts:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 2455
    :try_start_1
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2456
    const-string v1, "Acquired wakelock"

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2463
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 2464
    return-void

    .line 2457
    :catch_0
    move-exception v0

    .line 2460
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LocationManagerService"

    const-string v3, "exception in acquireWakeLock()"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2463
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private initialize()V
    .locals 13

    .prologue
    const/4 v2, 0x0

    const/4 v12, 0x1

    .line 650
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .line 651
    .local v7, powerManager:Landroid/os/PowerManager;
    const-string v1, "LocationManagerService"

    invoke-virtual {v7, v12, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 652
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 655
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->loadProviders()V

    .line 658
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 659
    .local v6, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 661
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 662
    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 663
    const-string v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 666
    const-string v1, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 669
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 670
    new-instance v8, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-direct {v8, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 671
    .local v8, sdFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 674
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 675
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v12, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v11, "location_providers_allowed"

    aput-object v11, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 679
    .local v9, settingsCursor:Landroid/database/Cursor;
    new-instance v1, Landroid/content/ContentQueryMap;

    const-string v3, "name"

    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-direct {v1, v9, v3, v12, v4}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mSettings:Landroid/content/ContentQueryMap;

    .line 680
    new-instance v10, Lcom/android/server/LocationManagerService$SettingsObserver;

    invoke-direct {v10, p0, v2}, Lcom/android/server/LocationManagerService$SettingsObserver;-><init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V

    .line 681
    .local v10, settingsObserver:Lcom/android/server/LocationManagerService$SettingsObserver;
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mSettings:Landroid/content/ContentQueryMap;

    invoke-virtual {v1, v10}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 682
    return-void
.end method

.method private isAllowedBySettingsLocked(Ljava/lang/String;)Z
    .locals 2
    .parameter "provider"

    .prologue
    .line 697
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 698
    const/4 v1, 0x1

    .line 706
    :goto_0
    return v1

    .line 700
    :cond_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 701
    const/4 v1, 0x0

    goto :goto_0

    .line 704
    :cond_1
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 706
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-static {v0, p1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private isAllowedProviderSafe(Ljava/lang/String;)Z
    .locals 3
    .parameter "provider"

    .prologue
    const/4 v0, 0x0

    .line 736
    const-string v1, "gps"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "passive"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 750
    :cond_1
    :goto_0
    return v0

    .line 742
    :cond_2
    const-string v1, "network"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 750
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadProviders()V
    .locals 2

    .prologue
    .line 504
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 505
    :try_start_0
    sget-boolean v0, Lcom/android/server/LocationManagerService;->sProvidersLoaded:Z

    if-eqz v0, :cond_0

    .line 506
    monitor-exit v1

    .line 513
    :goto_0
    return-void

    .line 510
    :cond_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->loadProvidersLocked()V

    .line 511
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/LocationManagerService;->sProvidersLoaded:Z

    .line 512
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private loadProvidersLocked()V
    .locals 3

    .prologue
    .line 517
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->_loadProvidersLocked()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    :goto_0
    return-void

    .line 518
    :catch_0
    move-exception v0

    .line 519
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LocationManagerService"

    const-string v2, "Exception loading providers:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .parameter "log"

    .prologue
    .line 2818
    const-string v0, "LocationManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2819
    const-string v0, "LocationManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2821
    :cond_0
    return-void
.end method

.method private nextAccuracy(I)I
    .locals 1
    .parameter "accuracy"

    .prologue
    .line 837
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 838
    const/4 v0, 0x2

    .line 840
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nextPower(I)I
    .locals 1
    .parameter "power"

    .prologue
    const/4 v0, 0x0

    .line 818
    packed-switch p1, :pswitch_data_0

    .line 827
    :goto_0
    :pswitch_0
    return v0

    .line 820
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 822
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 818
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private providerHasListener(Ljava/lang/String;ILcom/android/server/LocationManagerService$Receiver;)Z
    .locals 7
    .parameter "provider"
    .parameter "uid"
    .parameter "excludedReceiver"

    .prologue
    const/4 v5, 0x1

    .line 1291
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1292
    .local v4, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v4, :cond_1

    .line 1293
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 1294
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1295
    .local v3, record:Lcom/android/server/LocationManagerService$UpdateRecord;
    iget v6, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mUid:I

    if-ne v6, p2, :cond_0

    iget-object v6, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    if-eq v6, p3, :cond_0

    .line 1305
    .end local v1           #i:I
    .end local v3           #record:Lcom/android/server/LocationManagerService$UpdateRecord;
    :goto_1
    return v5

    .line 1293
    .restart local v1       #i:I
    .restart local v3       #record:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1300
    .end local v1           #i:I
    .end local v3           #record:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_1
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService$ProximityAlert;

    .line 1301
    .local v0, alert:Lcom/android/server/LocationManagerService$ProximityAlert;
    iget v6, v0, Lcom/android/server/LocationManagerService$ProximityAlert;->mUid:I

    if-ne v6, p2, :cond_2

    goto :goto_1

    .line 1305
    .end local v0           #alert:Lcom/android/server/LocationManagerService$ProximityAlert;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private removeProvider(Lcom/android/server/location/LocationProviderInterface;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 500
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    return-void
.end method

.method private removeProximityAlertLocked(Landroid/app/PendingIntent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 1976
    const-string v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeProximityAlert: intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1980
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1981
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;

    if-eqz v0, :cond_0

    .line 1982
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 1984
    :cond_0
    iput-object v3, p0, Lcom/android/server/LocationManagerService;->mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;

    .line 1985
    iput-object v3, p0, Lcom/android/server/LocationManagerService;->mProximityListener:Landroid/location/ILocationListener;

    .line 1987
    :cond_1
    return-void
.end method

.method private removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V
    .locals 24
    .parameter "receiver"

    .prologue
    .line 1483
    const-string v21, "LocationManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "_removeUpdates: listener = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 1488
    .local v4, callingPid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1489
    .local v5, callingUid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1492
    .local v8, identity:J
    const/4 v14, 0x0

    .line 1493
    .local v14, package_name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 1494
    .local v15, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v15, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v14

    .line 1495
    const/16 v20, 0x0

    .line 1497
    .local v20, sendExtraCmdFlag:Z
    if-eqz v14, :cond_0

    const-string v21, "com.htc.laputa"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 1499
    const-string v21, "LocationManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[LPS] (XXXXX) removeUpdatesLocked: com.htc.laputa , Receiver = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/LocationManagerService$Receiver;->isListener()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 1505
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/LocationManagerService$Receiver;->getListener()Landroid/location/ILocationListener;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1506
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1507
    :try_start_1
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    move/from16 v21, v0

    if-lez v21, :cond_1

    .line 1508
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LocationManagerService;->decrementPendingBroadcasts()V

    .line 1509
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    .line 1511
    :cond_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1515
    :cond_2
    :try_start_2
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .line 1516
    .local v17, providers:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    .line 1517
    .local v12, oldRecords:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v12, :cond_6

    .line 1519
    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1520
    .local v18, record:Lcom/android/server/LocationManagerService$UpdateRecord;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v5, v2}, Lcom/android/server/LocationManagerService;->providerHasListener(Ljava/lang/String;ILcom/android/server/LocationManagerService$Receiver;)Z

    move-result v21

    if-nez v21, :cond_3

    .line 1521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/location/LocationProviderInterface;

    .line 1522
    .local v13, p:Lcom/android/server/location/LocationProviderInterface;
    if-eqz v13, :cond_3

    .line 1523
    invoke-interface {v13, v5}, Lcom/android/server/location/LocationProviderInterface;->removeListener(I)V

    .line 1528
    .end local v13           #p:Lcom/android/server/location/LocationProviderInterface;
    :cond_3
    if-eqz v14, :cond_4

    const-string v21, "com.htc.laputa"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/LocationManagerService$Receiver;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "gps"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 1532
    const-string v21, "gps"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v5, v2}, Lcom/android/server/LocationManagerService;->providerHasListener(Ljava/lang/String;ILcom/android/server/LocationManagerService$Receiver;)Z

    move-result v21

    if-nez v21, :cond_4

    .line 1533
    const/16 v20, 0x1

    .line 1539
    :cond_4
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/LocationManagerService$UpdateRecord;->disposeLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1593
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v12           #oldRecords:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .end local v17           #providers:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v18           #record:Lcom/android/server/LocationManagerService$UpdateRecord;
    :catchall_0
    move-exception v21

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v21

    .line 1511
    :catchall_1
    move-exception v21

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v21

    .line 1542
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v12       #oldRecords:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v17       #providers:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_5
    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1548
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_6
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_7
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 1550
    .local v16, provider:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_8

    .line 1553
    const-string v21, "gps"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    if-eqz v14, :cond_7

    const-string v21, "com.htc.laputa"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 1555
    const-string v21, "LocationManagerService"

    const-string v22, "[LPS] removeUpdatesLocked: Call by back-door AP: com.htc.laputa"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    :cond_8
    const/4 v6, 0x0

    .line 1564
    .local v6, hasOtherListener:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    .line 1565
    .local v19, recordsForProvider:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v19, :cond_9

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_9

    .line 1566
    const/4 v6, 0x1

    .line 1569
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/location/LocationProviderInterface;

    .line 1570
    .restart local v13       #p:Lcom/android/server/location/LocationProviderInterface;
    if-eqz v13, :cond_7

    .line 1571
    if-eqz v6, :cond_a

    .line 1572
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->getMinTimeLocked(Ljava/lang/String;)J

    move-result-wide v10

    .line 1573
    .local v10, minTime:J
    const-string v21, "LocationManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "remove "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " (pid "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "), next minTime = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mTmpWorkSource:Landroid/os/WorkSource;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v13, v10, v11, v0}, Lcom/android/server/location/LocationProviderInterface;->setMinTime(JLandroid/os/WorkSource;)V

    .line 1578
    const-string v21, "LocationManagerService"

    const-string v22, "[LPS] In removeUpdatesLocked.p.setMinTime:"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    const-string v21, "gps"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    if-eqz v20, :cond_7

    sget v21, Lcom/android/server/LocationManagerService;->mPrivacyLock:I

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 1581
    const-string v21, "LocationManagerService"

    const-string v22, "[LPS] (XXX) removeUpdatesLocked: enableLocationTracking(false) calling by back-door AP. "

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v13, v0}, Lcom/android/server/location/LocationProviderInterface;->enableLocationTracking(Z)V

    goto/16 :goto_1

    .line 1586
    .end local v10           #minTime:J
    :cond_a
    const-string v21, "LocationManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "remove "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " (pid "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "), disabled"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v13, v0}, Lcom/android/server/location/LocationProviderInterface;->enableLocationTracking(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 1593
    .end local v6           #hasOtherListener:Z
    .end local v13           #p:Lcom/android/server/location/LocationProviderInterface;
    .end local v16           #provider:Ljava/lang/String;
    .end local v19           #recordsForProvider:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :cond_b
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1597
    if-eqz v14, :cond_c

    const-string v21, "com.htc.laputa"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    if-eqz v20, :cond_c

    .line 1599
    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/server/LocationManagerService;->mHtcAllowAPTrigger:Z

    .line 1600
    const-string v21, "gps"

    const-string v22, "disable_backdoor_gps_request"

    new-instance v23, Landroid/os/Bundle;

    invoke-direct/range {v23 .. v23}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LocationManagerService;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 1601
    const-string v21, "LocationManagerService"

    const-string v22, "[LPS] removeUpdatesLocked: sendExtraCommand(disable_backdoor_gps_request)"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    :cond_c
    return-void
.end method

.method private requestLocationUpdatesLocked(Ljava/lang/String;JFZLcom/android/server/LocationManagerService$Receiver;)V
    .locals 23
    .parameter "provider"
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "singleShot"
    .parameter "receiver"

    .prologue
    .line 1374
    const-string v4, "LocationManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_requestLocationUpdates: listener = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/location/LocationProviderInterface;

    .line 1378
    .local v20, p:Lcom/android/server/location/LocationProviderInterface;
    if-nez v20, :cond_0

    .line 1379
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requested provider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " doesn\'t exisit"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1382
    :cond_0
    move-object/from16 v0, p6

    iget-object v4, v0, Lcom/android/server/LocationManagerService$Receiver;->mRequiredPermissions:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/server/LocationManagerService;->checkPermissionsSafe(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p6

    iput-object v4, v0, Lcom/android/server/LocationManagerService$Receiver;->mRequiredPermissions:Ljava/lang/String;

    .line 1386
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 1387
    .local v12, callingPid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 1388
    .local v11, callingUid:I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11, v4}, Lcom/android/server/LocationManagerService;->providerHasListener(Ljava/lang/String;ILcom/android/server/LocationManagerService$Receiver;)Z

    move-result v4

    if-nez v4, :cond_7

    const/16 v18, 0x1

    .line 1389
    .local v18, newUid:Z
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 1391
    .local v13, identity:J
    :try_start_0
    new-instance v3, Lcom/android/server/LocationManagerService$UpdateRecord;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v3 .. v11}, Lcom/android/server/LocationManagerService$UpdateRecord;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;JFZLcom/android/server/LocationManagerService$Receiver;I)V

    .line 1393
    .local v3, r:Lcom/android/server/LocationManagerService$UpdateRecord;
    move-object/from16 v0, p6

    iget-object v4, v0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1394
    .local v19, oldRecord:Lcom/android/server/LocationManagerService$UpdateRecord;
    if-eqz v19, :cond_1

    .line 1395
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/LocationManagerService$UpdateRecord;->disposeLocked()V

    .line 1398
    :cond_1
    if-eqz v18, :cond_2

    .line 1399
    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Lcom/android/server/location/LocationProviderInterface;->addListener(I)V

    .line 1402
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v15

    .line 1405
    .local v15, isProviderEnabled:Z
    const-string v4, "gps"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1407
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    .line 1408
    .local v22, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v21

    .line 1410
    .local v21, package_name:Ljava/lang/String;
    if-eqz v21, :cond_4

    const-string v4, "com.htc.laputa"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1413
    const-string v4, "LocationManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[LPS] (OOOOO) =6= requestLocationUpdatesLocked: com.htc.laputa , Receiver = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/server/LocationManagerService;->mHtcAllowAPTrigger:Z

    .line 1417
    if-eqz v18, :cond_3

    .line 1419
    const-string v4, "gps"

    const-string v5, "enable_backdoor_gps_request"

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/server/LocationManagerService;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 1422
    :cond_3
    if-nez v15, :cond_4

    .line 1425
    const/4 v15, 0x1

    .line 1431
    .end local v21           #package_name:Ljava/lang/String;
    .end local v22           #pm:Landroid/content/pm/PackageManager;
    :cond_4
    if-eqz v15, :cond_9

    .line 1432
    invoke-direct/range {p0 .. p1}, Lcom/android/server/LocationManagerService;->getMinTimeLocked(Ljava/lang/String;)J

    move-result-wide v16

    .line 1433
    .local v16, minTimeForProvider:J
    const-string v5, "LocationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "request "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " (pid "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ") "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p5, :cond_8

    const-string v4, " (singleshot)"

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/LocationManagerService;->mTmpWorkSource:Landroid/os/WorkSource;

    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    invoke-interface {v0, v1, v2, v4}, Lcom/android/server/location/LocationProviderInterface;->setMinTime(JLandroid/os/WorkSource;)V

    .line 1438
    if-eqz p5, :cond_5

    invoke-interface/range {v20 .. v20}, Lcom/android/server/location/LocationProviderInterface;->requestSingleShotFix()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1439
    :cond_5
    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Lcom/android/server/location/LocationProviderInterface;->enableLocationTracking(Z)V

    .line 1446
    .end local v16           #minTimeForProvider:J
    :cond_6
    :goto_2
    const-string v4, "LocationManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_requestLocationUpdates: provider = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " listener = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1449
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1451
    return-void

    .line 1388
    .end local v3           #r:Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v13           #identity:J
    .end local v15           #isProviderEnabled:Z
    .end local v18           #newUid:Z
    .end local v19           #oldRecord:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_7
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 1433
    .restart local v3       #r:Lcom/android/server/LocationManagerService$UpdateRecord;
    .restart local v13       #identity:J
    .restart local v15       #isProviderEnabled:Z
    .restart local v16       #minTimeForProvider:J
    .restart local v18       #newUid:Z
    .restart local v19       #oldRecord:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_8
    :try_start_1
    const-string v4, ""

    goto :goto_1

    .line 1443
    .end local v16           #minTimeForProvider:J
    :cond_9
    const/4 v4, 0x0

    move-object/from16 v0, p6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/android/server/LocationManagerService$Receiver;->callProviderEnabledLocked(Ljava/lang/String;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1449
    .end local v3           #r:Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v15           #isProviderEnabled:Z
    .end local v19           #oldRecord:Lcom/android/server/LocationManagerService$UpdateRecord;
    :catchall_0
    move-exception v4

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private static shouldBroadcastSafe(Landroid/location/Location;Landroid/location/Location;Lcom/android/server/LocationManagerService$UpdateRecord;)Z
    .locals 10
    .parameter "loc"
    .parameter "lastLoc"
    .parameter "record"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2100
    if-nez p1, :cond_1

    .line 2118
    :cond_0
    :goto_0
    return v4

    .line 2105
    :cond_1
    iget-wide v2, p2, Lcom/android/server/LocationManagerService$UpdateRecord;->mMinTime:J

    .line 2106
    .local v2, minTime:J
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x64

    sub-long v8, v2, v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    move v4, v5

    .line 2107
    goto :goto_0

    .line 2111
    :cond_2
    iget v6, p2, Lcom/android/server/LocationManagerService$UpdateRecord;->mMinDistance:F

    float-to-double v0, v6

    .line 2112
    .local v0, minDistance:D
    const-wide/16 v6, 0x0

    cmpl-double v6, v0, v6

    if-lez v6, :cond_0

    .line 2113
    invoke-virtual {p0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v6

    float-to-double v6, v6

    cmpg-double v6, v6, v0

    if-gtz v6, :cond_0

    move v4, v5

    .line 2114
    goto :goto_0
.end method

.method private updateProviderListenersLocked(Ljava/lang/String;Z)V
    .locals 11
    .parameter "provider"
    .parameter "enabled"

    .prologue
    const/4 v10, 0x1

    .line 1115
    const/4 v3, 0x0

    .line 1117
    .local v3, listeners:I
    iget-object v7, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/LocationProviderInterface;

    .line 1118
    .local v4, p:Lcom/android/server/location/LocationProviderInterface;
    if-nez v4, :cond_1

    .line 1166
    :cond_0
    :goto_0
    return-void

    .line 1122
    :cond_1
    const/4 v1, 0x0

    .line 1124
    .local v1, deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    iget-object v7, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1125
    .local v6, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v6, :cond_4

    .line 1126
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1127
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 1128
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1130
    .local v5, record:Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v7, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v7, p1, p2}, Lcom/android/server/LocationManagerService$Receiver;->callProviderEnabledLocked(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1131
    if-nez v1, :cond_2

    .line 1132
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1134
    .restart local v1       #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    :cond_2
    iget-object v7, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1136
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 1127
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1140
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v5           #record:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_4
    if-eqz v1, :cond_5

    .line 1141
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .restart local v2       #i:I
    :goto_2
    if-ltz v2, :cond_5

    .line 1142
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/LocationManagerService$Receiver;

    invoke-direct {p0, v7}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 1141
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1146
    .end local v2           #i:I
    :cond_5
    if-eqz p2, :cond_6

    .line 1147
    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->enable()V

    .line 1148
    if-lez v3, :cond_0

    .line 1149
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getMinTimeLocked(Ljava/lang/String;)J

    move-result-wide v7

    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-interface {v4, v7, v8, v9}, Lcom/android/server/location/LocationProviderInterface;->setMinTime(JLandroid/os/WorkSource;)V

    .line 1150
    const-string v7, "LocationManagerService"

    const-string v8, "updateProviderListenersLocked: enableLocationTracking(true)"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    invoke-interface {v4, v10}, Lcom/android/server/location/LocationProviderInterface;->enableLocationTracking(Z)V

    goto :goto_0

    .line 1155
    :cond_6
    sget-boolean v7, Lcom/android/server/LocationManagerService;->mHtcAllowAPTrigger:Z

    if-ne v7, v10, :cond_7

    .line 1157
    const-string v7, "LocationManagerService"

    const-string v8, "[LPS] updateProviderListenersLocked: SKIP ... enableLocationTracking(false), due to allow AP has been trigger"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1161
    :cond_7
    const-string v7, "LocationManagerService"

    const-string v8, "updateProviderListenersLocked: enableLocationTracking(false)"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    const/4 v7, 0x0

    invoke-interface {v4, v7}, Lcom/android/server/location/LocationProviderInterface;->enableLocationTracking(Z)V

    .line 1163
    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->disable()V

    goto :goto_0
.end method

.method private updateProvidersLocked()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 1023
    const/4 v1, 0x0

    .line 1026
    .local v1, changesMade:Z
    const-string v10, "LocationManagerService"

    const-string v11, "updateProvidersLocked begin"

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    iget-object v10, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 1030
    .local v8, resolver:Landroid/content/ContentResolver;
    const-string v10, "location_providers_allowed"

    invoke-static {v8, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1031
    .local v0, allowedProviders:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1032
    const-string v10, "gps"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "vzw_lbs"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1033
    :cond_0
    sget v10, Lcom/android/server/LocationManagerService;->mPrivacyLock:I

    if-eqz v10, :cond_1

    .line 1034
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1035
    .local v2, extra:Landroid/os/Bundle;
    sput v13, Lcom/android/server/LocationManagerService;->mPrivacyLock:I

    .line 1036
    const-string v10, "enable_lock"

    invoke-virtual {v2, v10, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1037
    const-string v10, "gps"

    const-string v11, "set_privacy_lock"

    invoke-virtual {p0, v10, v11, v2}, Lcom/android/server/LocationManagerService;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 1042
    .end local v2           #extra:Landroid/os/Bundle;
    :cond_1
    iget-object v10, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    invoke-virtual {v10}, Lcom/android/server/location/CarGpsProvider;->isHtcMode()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1043
    if-eqz v0, :cond_2

    iget-object v10, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    invoke-virtual {v10}, Lcom/android/server/location/CarGpsProvider;->isUsedMock()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1044
    const-string v10, "gps"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1045
    iget-object v10, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    invoke-virtual {v10}, Lcom/android/server/location/CarGpsProvider;->isEnabled()Z

    move-result v10

    if-nez v10, :cond_2

    .line 1046
    const-string v10, "LocationManagerService"

    const-string v11, "updateProvidersLocked setTestProviderEnabled = true"

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    iget-object v11, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1048
    :try_start_0
    iget-object v10, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    const-string v12, "gps"

    invoke-interface {v10, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1049
    iget-object v10, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    const-string v12, "gps"

    invoke-interface {v10, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1050
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1064
    :cond_2
    :goto_0
    iget-object v10, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v4, v10, -0x1

    .local v4, i:I
    :goto_1
    if-ltz v4, :cond_8

    .line 1065
    iget-object v10, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/location/LocationProviderInterface;

    .line 1066
    .local v7, p:Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v7}, Lcom/android/server/location/LocationProviderInterface;->isEnabled()Z

    move-result v5

    .line 1067
    .local v5, isEnabled:Z
    invoke-interface {v7}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1068
    .local v6, name:Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v9

    .line 1072
    .local v9, shouldBeEnabled:Z
    const-string v10, "gps"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    sget-boolean v10, Lcom/android/server/LocationManagerService;->mForceUpdateGpsLocationProvider:Z

    if-eqz v10, :cond_5

    .line 1073
    sput-boolean v13, Lcom/android/server/LocationManagerService;->mForceUpdateGpsLocationProvider:Z

    .line 1074
    const/4 v3, 0x1

    .line 1078
    .local v3, forceUpdate:Z
    :goto_2
    if-eqz v3, :cond_6

    .line 1079
    invoke-direct {p0, v6, v9}, Lcom/android/server/LocationManagerService;->updateProviderListenersLocked(Ljava/lang/String;Z)V

    .line 1080
    const/4 v1, 0x1

    .line 1064
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1050
    .end local v3           #forceUpdate:Z
    .end local v4           #i:I
    .end local v5           #isEnabled:Z
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #p:Lcom/android/server/location/LocationProviderInterface;
    .end local v9           #shouldBeEnabled:Z
    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 1053
    :cond_4
    iget-object v10, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    invoke-virtual {v10}, Lcom/android/server/location/CarGpsProvider;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1054
    const-string v10, "LocationManagerService"

    const-string v11, "updateProvidersLocked setTestProviderEnabled = false"

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    iget-object v11, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1056
    :try_start_2
    iget-object v10, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    const-string v12, "gps"

    invoke-interface {v10, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1057
    iget-object v10, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    const-string v12, "gps"

    invoke-interface {v10, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1058
    monitor-exit v11

    goto :goto_0

    :catchall_1
    move-exception v10

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v10

    .line 1076
    .restart local v4       #i:I
    .restart local v5       #isEnabled:Z
    .restart local v6       #name:Ljava/lang/String;
    .restart local v7       #p:Lcom/android/server/location/LocationProviderInterface;
    .restart local v9       #shouldBeEnabled:Z
    :cond_5
    const/4 v3, 0x0

    .restart local v3       #forceUpdate:Z
    goto :goto_2

    .line 1081
    :cond_6
    if-eqz v5, :cond_7

    if-nez v9, :cond_7

    .line 1082
    invoke-direct {p0, v6, v13}, Lcom/android/server/LocationManagerService;->updateProviderListenersLocked(Ljava/lang/String;Z)V

    .line 1083
    const/4 v1, 0x1

    goto :goto_3

    .line 1084
    :cond_7
    if-nez v5, :cond_3

    if-eqz v9, :cond_3

    .line 1085
    invoke-direct {p0, v6, v14}, Lcom/android/server/LocationManagerService;->updateProviderListenersLocked(Ljava/lang/String;Z)V

    .line 1086
    const/4 v1, 0x1

    goto :goto_3

    .line 1092
    .end local v3           #forceUpdate:Z
    .end local v5           #isEnabled:Z
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #p:Lcom/android/server/location/LocationProviderInterface;
    .end local v9           #shouldBeEnabled:Z
    :cond_8
    if-eqz v0, :cond_9

    .line 1093
    const-string v10, "gps"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    const-string v10, "vzw_lbs"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 1094
    sget v10, Lcom/android/server/LocationManagerService;->mPrivacyLock:I

    if-eq v10, v14, :cond_9

    .line 1095
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1096
    .restart local v2       #extra:Landroid/os/Bundle;
    sput v14, Lcom/android/server/LocationManagerService;->mPrivacyLock:I

    .line 1097
    const-string v10, "enable_lock"

    invoke-virtual {v2, v10, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1098
    const-string v10, "LocationManagerService"

    const-string v11, "##### updateProvidersLocked #####: enable_lock: 1 (Disable)"

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    const-string v10, "gps"

    const-string v11, "set_privacy_lock"

    invoke-virtual {p0, v10, v11, v2}, Lcom/android/server/LocationManagerService;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 1105
    .end local v2           #extra:Landroid/os/Bundle;
    :cond_9
    if-eqz v1, :cond_a

    .line 1106
    iget-object v10, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.location.PROVIDERS_CHANGED"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1110
    :cond_a
    const-string v10, "LocationManagerService"

    const-string v11, "updateProvidersLocked end"

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    return-void
.end method


# virtual methods
.method public addCarGpsProvider(Ljava/lang/String;)V
    .locals 7
    .parameter "name"

    .prologue
    const/4 v5, 0x0

    .line 2551
    const-string v3, "HTCMock"

    const-string v4, "addCarGpsProvider++"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2552
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mGpsLocationProvider:Lcom/android/server/location/LocationProviderInterface;

    if-nez v3, :cond_1

    .line 2553
    const-string v3, "HTCMock"

    const-string v4, "mGpsLocationProvider is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2600
    :cond_0
    :goto_0
    return-void

    .line 2556
    :cond_1
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    if-eqz v3, :cond_0

    .line 2558
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    const-string v4, "gps"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2559
    const-string v3, "HTCMock"

    const-string v4, "addCarGpsProvider, someone register the gps mock first, we don\'t do anything"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2560
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    invoke-virtual {v3}, Lcom/android/server/location/CarGpsProvider;->enableHtcMode()V

    .line 2561
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    invoke-virtual {v3}, Lcom/android/server/location/CarGpsProvider;->disable()V

    .line 2562
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    invoke-virtual {v3, v5}, Lcom/android/server/location/CarGpsProvider;->useMock(Z)V

    .line 2563
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Illegal CarGpsProvider, someone register the gps mock first, we don\'t do anything"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2565
    :cond_2
    const-string v3, "HTCMock"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addCarGpsProvider, name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2567
    const-string v3, "htcMock"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2569
    const-string p1, "gps"

    .line 2570
    const-string v3, "HTCMock"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addCarGpsProvider, LocationManager.GPS_PROVIDER: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2575
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2576
    .local v0, identity:J
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2577
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    invoke-virtual {v3}, Lcom/android/server/location/CarGpsProvider;->enableHtcMode()V

    .line 2578
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/server/location/CarGpsProvider;->useMock(Z)V

    .line 2579
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationProviderInterface;

    .line 2580
    .local v2, p:Lcom/android/server/location/LocationProviderInterface;
    if-eqz v2, :cond_3

    .line 2581
    const-string v3, "HTCMock"

    const-string v5, "addCarGpsProvider: p.disable() and removeProvider(p)"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2582
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/server/location/LocationProviderInterface;->enableLocationTracking(Z)V

    .line 2583
    invoke-interface {v2}, Lcom/android/server/location/LocationProviderInterface;->disable()V

    .line 2584
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->removeProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 2586
    :cond_3
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2587
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" already exists"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2597
    .end local v2           #p:Lcom/android/server/location/LocationProviderInterface;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2572
    .end local v0           #identity:J
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal CarGpsProvider Name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2589
    .restart local v0       #identity:J
    .restart local v2       #p:Lcom/android/server/location/LocationProviderInterface;
    :cond_5
    :try_start_1
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->addProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 2591
    const-string v3, "HTCMock"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addCarGpsProvider++, mMockProviders size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2592
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    invoke-virtual {v3, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2593
    const-string v3, "HTCMock"

    const-string v5, "addCarGpsProvider++, add to mMockProviders"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2594
    const-string v3, "HTCMock"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addCarGpsProvider++, mMockProviders size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2596
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 2597
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2598
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2599
    const-string v3, "HTCMock"

    const-string v4, "addCarGpsProvider--"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public addGpsStatusListener(Landroid/location/IGpsStatusListener;)Z
    .locals 8
    .parameter "listener"

    .prologue
    const/4 v4, 0x0

    .line 1607
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    if-nez v5, :cond_0

    .line 1643
    :goto_0
    return v4

    .line 1610
    :cond_0
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 1612
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Requires ACCESS_FINE_LOCATION permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1616
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1617
    .local v0, callingUid:I
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1618
    .local v3, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 1621
    .local v2, package_name:Ljava/lang/String;
    const-string v5, "com.htc.laputa"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1622
    const-string v5, "gps"

    const-string v6, "enable_backdoor_gps_listener"

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/server/LocationManagerService;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 1626
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    invoke-interface {v5, p1}, Landroid/location/IGpsStatusProvider;->addGpsStatusListener(Landroid/location/IGpsStatusListener;)V

    .line 1629
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    if-eqz v5, :cond_3

    .line 1630
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    invoke-virtual {v5}, Lcom/android/server/location/CarGpsProvider;->getGpsStatusProvider()Landroid/location/IGpsStatusProvider;

    move-result-object v5

    invoke-interface {v5, p1}, Landroid/location/IGpsStatusProvider;->addGpsStatusListener(Landroid/location/IGpsStatusListener;)V

    .line 1631
    const-string v5, "LocationManagerService"

    const-string v6, "add listener to CarGpsProvider to provide NMEA"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1643
    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    .line 1634
    :catch_0
    move-exception v1

    .line 1635
    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "LocationManagerService"

    const-string v6, "mGpsStatusProvider.addGpsStatusListener failed"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addProximityAlert(DDFJLandroid/app/PendingIntent;)V
    .locals 5
    .parameter "latitude"
    .parameter "longitude"
    .parameter "radius"
    .parameter "expiration"
    .parameter "intent"

    .prologue
    .line 1912
    invoke-virtual {p0, p8}, Lcom/android/server/LocationManagerService;->validatePendingIntent(Landroid/app/PendingIntent;)V

    .line 1914
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1915
    :try_start_1
    invoke-direct/range {p0 .. p8}, Lcom/android/server/LocationManagerService;->addProximityAlertLocked(DDFJLandroid/app/PendingIntent;)V

    .line 1916
    monitor-exit v4

    .line 1924
    :goto_0
    return-void

    .line 1916
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1917
    :catch_0
    move-exception v2

    .line 1918
    .local v2, se:Ljava/lang/SecurityException;
    throw v2

    .line 1919
    .end local v2           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 1920
    .local v1, iae:Ljava/lang/IllegalArgumentException;
    throw v1

    .line 1921
    .end local v1           #iae:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1922
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LocationManagerService"

    const-string v4, "addProximityAlert got exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addTestProvider(Ljava/lang/String;ZZZZZZZII)V
    .locals 17
    .parameter "name"
    .parameter "requiresNetwork"
    .parameter "requiresSatellite"
    .parameter "requiresCell"
    .parameter "hasMonetaryCost"
    .parameter "supportsAltitude"
    .parameter "supportsSpeed"
    .parameter "supportsBearing"
    .parameter "powerRequirement"
    .parameter "accuracy"

    .prologue
    .line 2663
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2665
    const-string v2, "passive"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2666
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot mock the passive location provider"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2669
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 2670
    .local v13, identity:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 2671
    :try_start_0
    new-instance v1, Lcom/android/server/location/MockProvider;

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-direct/range {v1 .. v12}, Lcom/android/server/location/MockProvider;-><init>(Ljava/lang/String;Landroid/location/ILocationManager;ZZZZZZZII)V

    .line 2676
    .local v1, provider:Lcom/android/server/location/MockProvider;
    const-string v2, "gps"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "network"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2678
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/location/LocationProviderInterface;

    .line 2679
    .local v15, p:Lcom/android/server/location/LocationProviderInterface;
    if-eqz v15, :cond_2

    .line 2680
    const-string v2, "LocationManagerService"

    const-string v3, "addTestProvider: enableLocationTracking(false)"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2681
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Lcom/android/server/location/LocationProviderInterface;->enableLocationTracking(Z)V

    .line 2682
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/LocationManagerService;->removeProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 2685
    .end local v15           #p:Lcom/android/server/location/LocationProviderInterface;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2686
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" already exists"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2692
    .end local v1           #provider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v2

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2688
    .restart local v1       #provider:Lcom/android/server/location/MockProvider;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->addProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 2689
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2690
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2691
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 2692
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2693
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2694
    return-void
.end method

.method public clearTestProviderEnabled(Ljava/lang/String;)V
    .locals 7
    .parameter "provider"

    .prologue
    .line 2781
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2782
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2783
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/MockProvider;

    .line 2784
    .local v2, mockProvider:Lcom/android/server/location/MockProvider;
    if-nez v2, :cond_0

    .line 2785
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" unknown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2792
    .end local v2           #mockProvider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2787
    .restart local v2       #mockProvider:Lcom/android/server/location/MockProvider;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2788
    .local v0, identity:J
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2789
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2790
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 2791
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2792
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2793
    return-void
.end method

.method public clearTestProviderLocation(Ljava/lang/String;)V
    .locals 5
    .parameter "provider"

    .prologue
    .line 2748
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2749
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2750
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/MockProvider;

    .line 2751
    .local v0, mockProvider:Lcom/android/server/location/MockProvider;
    if-nez v0, :cond_0

    .line 2752
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2755
    .end local v0           #mockProvider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2754
    .restart local v0       #mockProvider:Lcom/android/server/location/MockProvider;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/location/MockProvider;->clearLocation()V

    .line 2755
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2756
    return-void
.end method

.method public clearTestProviderStatus(Ljava/lang/String;)V
    .locals 5
    .parameter "provider"

    .prologue
    .line 2807
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2808
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2809
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/MockProvider;

    .line 2810
    .local v0, mockProvider:Lcom/android/server/location/MockProvider;
    if-nez v0, :cond_0

    .line 2811
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2814
    .end local v0           #mockProvider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2813
    .restart local v0       #mockProvider:Lcom/android/server/location/MockProvider;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/location/MockProvider;->clearStatus()V

    .line 2814
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2815
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 17
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 2824
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v14, "android.permission.DUMP"

    invoke-virtual {v13, v14}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_0

    .line 2826
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Permission Denial: can\'t dump LocationManagerService from from pid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", uid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2908
    :goto_0
    return-void

    .line 2832
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 2833
    :try_start_0
    const-string v13, "Current Location Manager state:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2834
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  sProvidersLoaded="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-boolean v15, Lcom/android/server/LocationManagerService;->sProvidersLoaded:Z

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2835
    const-string v13, "  Listeners:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2836
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 2837
    .local v1, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 2838
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2837
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2840
    :cond_1
    const-string v13, "  Location Listeners:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2841
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v2           #i:I
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$Receiver;

    .line 2842
    .local v2, i:Lcom/android/server/LocationManagerService$Receiver;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ":"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2843
    iget-object v13, v2, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 2844
    .local v10, j:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "      "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ":"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2845
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/LocationManagerService$UpdateRecord;

    const-string v15, "        "

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v15}, Lcom/android/server/LocationManagerService$UpdateRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_2

    .line 2907
    .end local v1           #N:I
    .end local v2           #i:Lcom/android/server/LocationManagerService$Receiver;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #j:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .line 2848
    .restart local v1       #N:I
    :cond_3
    :try_start_1
    const-string v13, "  Records by Provider:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2850
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 2851
    .local v6, i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ":"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2852
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2853
    .local v9, j:Lcom/android/server/LocationManagerService$UpdateRecord;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "      "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ":"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2854
    const-string v13, "        "

    move-object/from16 v0, p2

    invoke-virtual {v9, v0, v13}, Lcom/android/server/LocationManagerService$UpdateRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_3

    .line 2857
    .end local v6           #i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;>;"
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #j:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_5
    const-string v13, "  Last Known Locations:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2859
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2860
    .local v4, i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/location/Location;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ":"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2861
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/location/Location;

    new-instance v15, Landroid/util/PrintWriterPrinter;

    move-object/from16 v0, p2

    invoke-direct {v15, v0}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v16, "      "

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/location/Location;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_4

    .line 2863
    .end local v4           #i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/location/Location;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    move-result v13

    if-lez v13, :cond_7

    .line 2864
    const-string v13, "  Proximity Alerts:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2866
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2867
    .local v3, i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/app/PendingIntent;Lcom/android/server/LocationManagerService$ProximityAlert;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ":"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2868
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/LocationManagerService$ProximityAlert;

    const-string v15, "      "

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v15}, Lcom/android/server/LocationManagerService$ProximityAlert;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_5

    .line 2871
    .end local v3           #i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/app/PendingIntent;Lcom/android/server/LocationManagerService$ProximityAlert;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mProximitiesEntered:Ljava/util/HashSet;

    invoke-virtual {v13}, Ljava/util/HashSet;->size()I

    move-result v13

    if-lez v13, :cond_8

    .line 2872
    const-string v13, "  Proximities Entered:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2873
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mProximitiesEntered:Ljava/util/HashSet;

    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$ProximityAlert;

    .line 2874
    .local v2, i:Lcom/android/server/LocationManagerService$ProximityAlert;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ":"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2875
    const-string v13, "      "

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v13}, Lcom/android/server/LocationManagerService$ProximityAlert;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_6

    .line 2878
    .end local v2           #i:Lcom/android/server/LocationManagerService$ProximityAlert;
    :cond_8
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  mProximityReceiver="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/LocationManagerService;->mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2879
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  mProximityListener="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/LocationManagerService;->mProximityListener:Landroid/location/ILocationListener;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2880
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->size()I

    move-result v13

    if-lez v13, :cond_9

    .line 2881
    const-string v13, "  Enabled Providers:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2882
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2883
    .local v2, i:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 2887
    .end local v2           #i:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->size()I

    move-result v13

    if-lez v13, :cond_a

    .line 2888
    const-string v13, "  Disabled Providers:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2889
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2890
    .restart local v2       #i:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 2894
    .end local v2           #i:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    move-result v13

    if-lez v13, :cond_b

    .line 2895
    const-string v13, "  Mock Providers:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2896
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 2897
    .local v5, i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/location/MockProvider;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/location/MockProvider;

    const-string v15, "      "

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v15}, Lcom/android/server/location/MockProvider;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_9

    .line 2900
    .end local v5           #i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/location/MockProvider;>;"
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_c
    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/location/LocationProviderInterface;

    .line 2901
    .local v11, provider:Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v11}, Lcom/android/server/location/LocationProviderInterface;->getInternalState()Ljava/lang/String;

    move-result-object v12

    .line 2902
    .local v12, state:Ljava/lang/String;
    if-eqz v12, :cond_c

    .line 2903
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v11}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, " Internal State:"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2904
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto :goto_a

    .line 2907
    .end local v11           #provider:Lcom/android/server/location/LocationProviderInterface;
    .end local v12           #state:Ljava/lang/String;
    :cond_d
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method findBestPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "serviceIntentName"
    .parameter "sigPackageName"

    .prologue
    .line 588
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 589
    .local v5, intent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v9, 0x80

    invoke-virtual {v8, v5, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 591
    .local v4, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v4, :cond_1

    const/4 v0, 0x0

    .line 618
    :cond_0
    return-object v0

    .line 593
    :cond_1
    const/high16 v1, -0x8000

    .line 594
    .local v1, bestVersion:I
    const/4 v0, 0x0

    .line 595
    .local v0, bestPackage:Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 596
    .local v3, info:Landroid/content/pm/ResolveInfo;
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v8, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 598
    .local v6, packageName:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v6, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_3

    .line 600
    const-string v8, "LocationManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " implements "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " but its signatures don\'t match those in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", ignoring"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 606
    :cond_3
    const/4 v7, 0x0

    .line 607
    .local v7, version:I
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v8, :cond_4

    .line 608
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "version"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 610
    :cond_4
    const-string v8, "LocationManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " implements "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " with version "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    if-le v7, v1, :cond_2

    .line 613
    move v1, v7

    .line 614
    move-object v0, v6

    goto/16 :goto_0
.end method

.method public geocoderIsPresent()Z
    .locals 1

    .prologue
    .line 2489
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAllProviders()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 755
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 756
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->_getAllProvidersLocked()Ljava/util/List;

    move-result-object v2

    monitor-exit v3

    .line 762
    :goto_0
    return-object v2

    .line 757
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 758
    :catch_0
    move-exception v1

    .line 759
    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .line 760
    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 761
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LocationManagerService"

    const-string v3, "getAllProviders got exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 762
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    .locals 6
    .parameter "criteria"
    .parameter "enabledOnly"

    .prologue
    const/4 v5, 0x0

    .line 960
    invoke-virtual {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    .line 961
    .local v2, goodProviders:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 962
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->best(Ljava/util/List;)Lcom/android/server/location/LocationProviderInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1011
    :goto_0
    return-object v4

    .line 966
    :cond_0
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1, p1}, Landroid/location/Criteria;-><init>(Landroid/location/Criteria;)V

    .line 969
    .end local p1
    .local v1, criteria:Landroid/location/Criteria;
    invoke-virtual {v1}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result v3

    .line 970
    .local v3, power:I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 971
    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->nextPower(I)I

    move-result v3

    .line 972
    invoke-virtual {v1, v3}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 973
    invoke-virtual {p0, v1, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    .line 975
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 976
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->best(Ljava/util/List;)Lcom/android/server/location/LocationProviderInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v4

    move-object p1, v1

    .end local v1           #criteria:Landroid/location/Criteria;
    .restart local p1
    goto :goto_0

    .line 980
    .end local p1
    .restart local v1       #criteria:Landroid/location/Criteria;
    :cond_2
    invoke-virtual {v1}, Landroid/location/Criteria;->getAccuracy()I

    move-result v0

    .line 981
    .local v0, accuracy:I
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    .line 982
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->nextAccuracy(I)I

    move-result v0

    .line 983
    invoke-virtual {v1, v0}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 984
    invoke-virtual {p0, v1, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    goto :goto_2

    .line 986
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 987
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->best(Ljava/util/List;)Lcom/android/server/location/LocationProviderInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v4

    move-object p1, v1

    .end local v1           #criteria:Landroid/location/Criteria;
    .restart local p1
    goto :goto_0

    .line 991
    .end local p1
    .restart local v1       #criteria:Landroid/location/Criteria;
    :cond_4
    invoke-virtual {v1, v5}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 992
    invoke-virtual {p0, v1, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    .line 993
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 994
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->best(Ljava/util/List;)Lcom/android/server/location/LocationProviderInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v4

    move-object p1, v1

    .end local v1           #criteria:Landroid/location/Criteria;
    .restart local p1
    goto :goto_0

    .line 998
    .end local p1
    .restart local v1       #criteria:Landroid/location/Criteria;
    :cond_5
    invoke-virtual {v1, v5}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    .line 999
    invoke-virtual {p0, v1, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    .line 1000
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1001
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->best(Ljava/util/List;)Lcom/android/server/location/LocationProviderInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v4

    move-object p1, v1

    .end local v1           #criteria:Landroid/location/Criteria;
    .restart local p1
    goto/16 :goto_0

    .line 1005
    .end local p1
    .restart local v1       #criteria:Landroid/location/Criteria;
    :cond_6
    invoke-virtual {v1, v5}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 1006
    invoke-virtual {p0, v1, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    .line 1007
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1008
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->best(Ljava/util/List;)Lcom/android/server/location/LocationProviderInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v4

    move-object p1, v1

    .end local v1           #criteria:Landroid/location/Criteria;
    .restart local p1
    goto/16 :goto_0

    .line 1011
    .end local p1
    .restart local v1       #criteria:Landroid/location/Criteria;
    :cond_7
    const/4 v4, 0x0

    move-object p1, v1

    .end local v1           #criteria:Landroid/location/Criteria;
    .restart local p1
    goto/16 :goto_0
.end method

.method public getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .parameter "latitude"
    .parameter "longitude"
    .parameter "maxResults"
    .parameter "params"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2494
    .local p7, addrs:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v0, :cond_0

    .line 2495
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/location/GeocoderProxy;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 2498
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .locals 13
    .parameter "locationName"
    .parameter "lowerLeftLatitude"
    .parameter "lowerLeftLongitude"
    .parameter "upperRightLatitude"
    .parameter "upperRightLongitude"
    .parameter "maxResults"
    .parameter "params"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDDDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2507
    .local p12, addrs:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v0, :cond_0

    .line 2508
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/location/GeocoderProxy;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 2512
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    .locals 5
    .parameter "provider"

    .prologue
    .line 2068
    const-string v2, "LocationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLastKnownLocation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2072
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->_getLastKnownLocationLocked(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    monitor-exit v3

    .line 2078
    :goto_0
    return-object v2

    .line 2073
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2074
    :catch_0
    move-exception v1

    .line 2075
    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .line 2076
    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 2077
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LocationManagerService"

    const-string v3, "getLastKnownLocation got exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2078
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getProviderInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .parameter "provider"

    .prologue
    .line 1996
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1997
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->_getProviderInfoLocked(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    monitor-exit v4

    .line 2005
    :goto_0
    return-object v3

    .line 1998
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1999
    :catch_0
    move-exception v2

    .line 2000
    .local v2, se:Ljava/lang/SecurityException;
    throw v2

    .line 2001
    .end local v2           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 2002
    .local v1, iae:Ljava/lang/IllegalArgumentException;
    throw v1

    .line 2003
    .end local v1           #iae:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 2004
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LocationManagerService"

    const-string v4, "_getProviderInfo got exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2005
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    .locals 4
    .parameter "criteria"
    .parameter "enabledOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Criteria;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 780
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 781
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->_getProvidersLocked(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    monitor-exit v3

    .line 787
    :goto_0
    return-object v2

    .line 782
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 783
    :catch_0
    move-exception v1

    .line 784
    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .line 785
    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 786
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LocationManagerService"

    const-string v3, "getProviders got exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 787
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .locals 4
    .parameter "provider"

    .prologue
    .line 2033
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2034
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->_isProviderEnabledLocked(Ljava/lang/String;)Z

    move-result v2

    monitor-exit v3

    .line 2040
    :goto_0
    return v2

    .line 2035
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2036
    :catch_0
    move-exception v1

    .line 2037
    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .line 2038
    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 2039
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LocationManagerService"

    const-string v3, "isProviderEnabled got exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2040
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public locationCallbackFinished(Landroid/location/ILocationListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 472
    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 473
    .local v0, binder:Landroid/os/IBinder;
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$Receiver;

    .line 474
    .local v3, receiver:Lcom/android/server/LocationManagerService$Receiver;
    if-eqz v3, :cond_0

    .line 475
    monitor-enter v3

    .line 477
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 478
    .local v1, identity:J
    #calls: Lcom/android/server/LocationManagerService$Receiver;->decrementPendingBroadcastsLocked()V
    invoke-static {v3}, Lcom/android/server/LocationManagerService$Receiver;->access$700(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 479
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 480
    monitor-exit v3

    .line 482
    .end local v1           #identity:J
    :cond_0
    return-void

    .line 480
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public notifyNema(JLjava/lang/String;)V
    .locals 2
    .parameter "timestamp"
    .parameter "nmea"

    .prologue
    .line 2542
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    if-eqz v0, :cond_0

    .line 2543
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    invoke-virtual {v0, p3, p1, p2}, Lcom/android/server/location/CarGpsProvider;->reportNmea(Ljava/lang/String;J)V

    .line 2547
    :goto_0
    return-void

    .line 2546
    :cond_0
    const-string v0, "HTCMock"

    const-string v1, "notifyNema Error, mCarGpsProvider is NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public providerMeetsCriteria(Ljava/lang/String;Landroid/location/Criteria;)Z
    .locals 4
    .parameter "provider"
    .parameter "criteria"

    .prologue
    .line 1015
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 1016
    .local v0, p:Lcom/android/server/location/LocationProviderInterface;
    if-nez v0, :cond_0

    .line 1017
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "provider="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1019
    :cond_0
    invoke-interface {v0, p2}, Lcom/android/server/location/LocationProviderInterface;->meetsCriteria(Landroid/location/Criteria;)Z

    move-result v1

    return v1
.end method

.method public removeCarGpsProvider(Ljava/lang/String;)V
    .locals 8
    .parameter "name"

    .prologue
    .line 2604
    const-string v4, "HTCMock"

    const-string v5, "removeCarGpsProvider++"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2605
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    if-nez v4, :cond_0

    .line 2606
    const-string v4, "HTCMock"

    const-string v5, "mCarGpsProvider is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2657
    :goto_0
    return-void

    .line 2609
    :cond_0
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mGpsLocationProvider:Lcom/android/server/location/LocationProviderInterface;

    if-nez v4, :cond_1

    .line 2610
    const-string v4, "HTCMock"

    const-string v5, "mGpsLocationProvider is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2613
    :cond_1
    const-string v4, "htcMock"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2614
    const-string p1, "gps"

    .line 2615
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    invoke-virtual {v4}, Lcom/android/server/location/CarGpsProvider;->disableHtcMode()V

    .line 2619
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2620
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2622
    .local v1, identity:J
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/MockProvider;

    .line 2623
    .local v3, provider:Lcom/android/server/location/MockProvider;
    if-eqz v3, :cond_6

    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    invoke-virtual {v4}, Lcom/android/server/location/CarGpsProvider;->isUsedMock()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2624
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    invoke-direct {p0, v4}, Lcom/android/server/LocationManagerService;->removeProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 2625
    const-string v4, "HTCMock"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeCarGpsProvider++, mMockProviders size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2626
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2627
    const-string v4, "HTCMock"

    const-string v6, "removeCarGpsProvider++, remove from mMockProviders"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2628
    const-string v4, "HTCMock"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeCarGpsProvider++, mMockProviders size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/server/location/CarGpsProvider;->useMock(Z)V

    .line 2630
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mGpsLocationProvider:Lcom/android/server/location/LocationProviderInterface;

    if-eqz v4, :cond_2

    .line 2631
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    invoke-virtual {v4}, Lcom/android/server/location/CarGpsProvider;->getListenerCount()I

    move-result v0

    .line 2632
    .local v0, countOfListener:I
    const-string v4, "HTCMock"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Count of Listener:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2634
    const-string v4, "gps"

    invoke-direct {p0, v4}, Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mGpsLocationProvider:Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2635
    const-string v4, "HTCMock"

    const-string v6, "mGpsLocationProvider.isEnabled == false"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2642
    :goto_1
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mGpsLocationProvider:Lcom/android/server/location/LocationProviderInterface;

    invoke-direct {p0, v4}, Lcom/android/server/LocationManagerService;->addProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 2643
    const-string v4, "HTCMock"

    const-string v6, "removeCarGpsProvider++, addProvider with mGpsLocationProvider"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2652
    .end local v0           #countOfListener:I
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-virtual {v4, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2653
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 2654
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2655
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2656
    const-string v4, "HTCMock"

    const-string v5, "removeCarGpsProvider--"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2617
    .end local v1           #identity:J
    .end local v3           #provider:Lcom/android/server/location/MockProvider;
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal removeCarGpsProvider Name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2636
    .restart local v0       #countOfListener:I
    .restart local v1       #identity:J
    .restart local v3       #provider:Lcom/android/server/location/MockProvider;
    :cond_4
    :try_start_1
    const-string v4, "gps"

    invoke-direct {p0, v4}, Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mGpsLocationProvider:Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2637
    const-string v4, "HTCMock"

    const-string v6, "mGpsLocationProvider.isEnabled == true"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2638
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mGpsLocationProvider:Lcom/android/server/location/LocationProviderInterface;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/android/server/location/LocationProviderInterface;->enableLocationTracking(Z)V

    goto :goto_1

    .line 2655
    .end local v0           #countOfListener:I
    .end local v1           #identity:J
    .end local v3           #provider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 2640
    .restart local v0       #countOfListener:I
    .restart local v1       #identity:J
    .restart local v3       #provider:Lcom/android/server/location/MockProvider;
    :cond_5
    :try_start_2
    const-string v4, "HTCMock"

    const-string v6, "Phone GPS scenario is correct, we don\'t do anything"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2646
    .end local v0           #countOfListener:I
    :cond_6
    if-eqz v3, :cond_7

    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    invoke-virtual {v4}, Lcom/android/server/location/CarGpsProvider;->isUsedMock()Z

    move-result v4

    if-nez v4, :cond_7

    .line 2647
    const-string v4, "HTCMock"

    const-string v6, "removeCarGpsProvider++, there has gps mock, we don\'t do anything"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2650
    :cond_7
    const-string v4, "HTCMock"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeCarGpsProvider++, provider = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mCarGpsProvider.isUsedMock()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    invoke-virtual {v7}, Lcom/android/server/location/CarGpsProvider;->isUsedMock()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method

.method public removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    .locals 8
    .parameter "listener"

    .prologue
    .line 1649
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1650
    .local v0, callingUid:I
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1651
    .local v3, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 1654
    .local v2, package_name:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1656
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    invoke-interface {v4, p1}, Landroid/location/IGpsStatusProvider;->removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V

    .line 1659
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    if-eqz v4, :cond_0

    .line 1660
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    invoke-virtual {v4}, Lcom/android/server/location/CarGpsProvider;->getGpsStatusProvider()Landroid/location/IGpsStatusProvider;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/location/IGpsStatusProvider;->removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V

    .line 1661
    const-string v4, "LocationManagerService"

    const-string v6, "remove listener from CarGpsProvider"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    :cond_0
    const-string v4, "com.htc.laputa"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1668
    const-string v4, "gps"

    const-string v6, "disable_backdoor_gps_listener"

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v4, v6, v7}, Lcom/android/server/LocationManagerService;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1674
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v5

    .line 1675
    return-void

    .line 1671
    :catch_0
    move-exception v1

    .line 1672
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "LocationManagerService"

    const-string v6, "mGpsStatusProvider.removeGpsStatusListener failed"

    invoke-static {v4, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1674
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public removeProximityAlert(Landroid/app/PendingIntent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 1962
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1963
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->removeProximityAlertLocked(Landroid/app/PendingIntent;)V

    .line 1964
    monitor-exit v4

    .line 1972
    :goto_0
    return-void

    .line 1964
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1965
    :catch_0
    move-exception v2

    .line 1966
    .local v2, se:Ljava/lang/SecurityException;
    throw v2

    .line 1967
    .end local v2           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 1968
    .local v1, iae:Ljava/lang/IllegalArgumentException;
    throw v1

    .line 1969
    .end local v1           #iae:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1970
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LocationManagerService"

    const-string v4, "removeProximityAlert got exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeTestProvider(Ljava/lang/String;)V
    .locals 7
    .parameter "provider"

    .prologue
    .line 2697
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2698
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2699
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/MockProvider;

    .line 2700
    .local v2, mockProvider:Lcom/android/server/location/MockProvider;
    if-nez v2, :cond_0

    .line 2701
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" unknown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2730
    .end local v2           #mockProvider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2703
    .restart local v2       #mockProvider:Lcom/android/server/location/MockProvider;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2704
    .local v0, identity:J
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationProviderInterface;

    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->removeProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 2706
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2710
    const-string v3, "gps"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mGpsLocationProvider:Lcom/android/server/location/LocationProviderInterface;

    if-eqz v3, :cond_3

    .line 2713
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    invoke-virtual {v3}, Lcom/android/server/location/CarGpsProvider;->isHtcMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2714
    const-string v3, "HTCMock"

    const-string v5, "removeTestProvider++, addProvider with mCarGpsProvider"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2715
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->addProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 2716
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    const-string v5, "gps"

    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2717
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/server/location/CarGpsProvider;->useMock(Z)V

    .line 2727
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2728
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 2729
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2730
    monitor-exit v4

    .line 2731
    return-void

    .line 2719
    :cond_2
    const-string v3, "HTCMock"

    const-string v5, "removeTestProvider++, addProvider with mGpsLocationProvider"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2720
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mGpsLocationProvider:Lcom/android/server/location/LocationProviderInterface;

    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->addProvider(Lcom/android/server/location/LocationProviderInterface;)V

    goto :goto_0

    .line 2723
    :cond_3
    const-string v3, "network"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProvider:Lcom/android/server/location/LocationProviderProxy;

    if-eqz v3, :cond_1

    .line 2725
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProvider:Lcom/android/server/location/LocationProviderProxy;

    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->addProvider(Lcom/android/server/location/LocationProviderInterface;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public removeUpdates(Landroid/location/ILocationListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 1455
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1456
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getReceiver(Landroid/location/ILocationListener;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 1457
    monitor-exit v4

    .line 1465
    :goto_0
    return-void

    .line 1457
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1458
    :catch_0
    move-exception v2

    .line 1459
    .local v2, se:Ljava/lang/SecurityException;
    throw v2

    .line 1460
    .end local v2           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 1461
    .local v1, iae:Ljava/lang/IllegalArgumentException;
    throw v1

    .line 1462
    .end local v1           #iae:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1463
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LocationManagerService"

    const-string v4, "removeUpdates got exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeUpdatesPI(Landroid/app/PendingIntent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 1469
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1470
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getReceiver(Landroid/app/PendingIntent;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 1471
    monitor-exit v4

    .line 1479
    :goto_0
    return-void

    .line 1471
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1472
    :catch_0
    move-exception v2

    .line 1473
    .local v2, se:Ljava/lang/SecurityException;
    throw v2

    .line 1474
    .end local v2           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 1475
    .local v1, iae:Ljava/lang/IllegalArgumentException;
    throw v1

    .line 1476
    .end local v1           #iae:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1477
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LocationManagerService"

    const-string v4, "removeUpdates got exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public reportLocation(Landroid/location/Location;Z)V
    .locals 4
    .parameter "location"
    .parameter "passive"

    .prologue
    const/4 v1, 0x1

    .line 2045
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INSTALL_LOCATION_PROVIDER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 2047
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires INSTALL_LOCATION_PROVIDER permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2050
    :cond_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2051
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-static {v2, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2052
    .local v0, m:Landroid/os/Message;
    if-eqz p2, :cond_1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2053
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 2054
    return-void

    .line 2052
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestLocationUpdates(Ljava/lang/String;Landroid/location/Criteria;JFZLandroid/location/ILocationListener;)V
    .locals 12
    .parameter "provider"
    .parameter "criteria"
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "singleShot"
    .parameter "listener"

    .prologue
    .line 1310
    if-eqz p2, :cond_0

    .line 1314
    const/4 v1, 0x1

    invoke-virtual {p0, p2, v1}, Lcom/android/server/LocationManagerService;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object p1

    .line 1315
    if-nez p1, :cond_0

    .line 1316
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "no providers found for criteria"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1320
    :cond_0
    :try_start_0
    iget-object v11, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1321
    :try_start_1
    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->getReceiver(Landroid/location/ILocationListener;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/LocationManagerService;->requestLocationUpdatesLocked(Ljava/lang/String;JFZLcom/android/server/LocationManagerService$Receiver;)V

    .line 1323
    monitor-exit v11

    .line 1331
    :goto_0
    return-void

    .line 1323
    :catchall_0
    move-exception v1

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1324
    :catch_0
    move-exception v10

    .line 1325
    .local v10, se:Ljava/lang/SecurityException;
    throw v10

    .line 1326
    .end local v10           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v9

    .line 1327
    .local v9, iae:Ljava/lang/IllegalArgumentException;
    throw v9

    .line 1328
    .end local v9           #iae:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v8

    .line 1329
    .local v8, e:Ljava/lang/Exception;
    const-string v1, "LocationManagerService"

    const-string v2, "requestUpdates got exception:"

    invoke-static {v1, v2, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestLocationUpdatesPI(Ljava/lang/String;Landroid/location/Criteria;JFZLandroid/app/PendingIntent;)V
    .locals 12
    .parameter "provider"
    .parameter "criteria"
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "singleShot"
    .parameter "intent"

    .prologue
    .line 1347
    move-object/from16 v0, p7

    invoke-virtual {p0, v0}, Lcom/android/server/LocationManagerService;->validatePendingIntent(Landroid/app/PendingIntent;)V

    .line 1348
    if-eqz p2, :cond_0

    .line 1352
    const/4 v1, 0x1

    invoke-virtual {p0, p2, v1}, Lcom/android/server/LocationManagerService;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object p1

    .line 1353
    if-nez p1, :cond_0

    .line 1354
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "no providers found for criteria"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1358
    :cond_0
    :try_start_0
    iget-object v11, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1359
    :try_start_1
    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->getReceiver(Landroid/app/PendingIntent;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/LocationManagerService;->requestLocationUpdatesLocked(Ljava/lang/String;JFZLcom/android/server/LocationManagerService$Receiver;)V

    .line 1361
    monitor-exit v11

    .line 1369
    :goto_0
    return-void

    .line 1361
    :catchall_0
    move-exception v1

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1362
    :catch_0
    move-exception v10

    .line 1363
    .local v10, se:Ljava/lang/SecurityException;
    throw v10

    .line 1364
    .end local v10           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v9

    .line 1365
    .local v9, iae:Ljava/lang/IllegalArgumentException;
    throw v9

    .line 1366
    .end local v9           #iae:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v8

    .line 1367
    .local v8, e:Ljava/lang/Exception;
    const-string v1, "LocationManagerService"

    const-string v2, "requestUpdates got exception:"

    invoke-static {v1, v2, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 690
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 691
    new-instance v0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;-><init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    .line 692
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->initialize()V

    .line 693
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 694
    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 3
    .parameter "provider"
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 1678
    if-nez p1, :cond_0

    .line 1680
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1684
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/LocationManagerService;->checkPermissionsSafe(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1686
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 1688
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires ACCESS_LOCATION_EXTRA_COMMANDS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1691
    :cond_1
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1692
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 1693
    .local v0, p:Lcom/android/server/location/LocationProviderInterface;
    if-nez v0, :cond_2

    .line 1694
    const/4 v1, 0x0

    monitor-exit v2

    .line 1697
    :goto_0
    return v1

    :cond_2
    invoke-interface {v0, p2, p3}, Lcom/android/server/location/LocationProviderInterface;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 1698
    .end local v0           #p:Lcom/android/server/location/LocationProviderInterface;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendNiResponse(II)Z
    .locals 3
    .parameter "notifId"
    .parameter "userResponse"

    .prologue
    .line 1703
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1704
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "calling sendNiResponse from outside of the system is not allowed"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1708
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    invoke-interface {v1, p1, p2}, Landroid/location/INetInitiatedListener;->sendNiResponse(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1713
    :goto_0
    return v1

    .line 1710
    :catch_0
    move-exception v0

    .line 1712
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationManagerService"

    const-string v2, "RemoteException in LocationManagerService.sendNiResponse"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTestProviderEnabled(Ljava/lang/String;Z)V
    .locals 7
    .parameter "provider"
    .parameter "enabled"

    .prologue
    .line 2759
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2760
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2761
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/MockProvider;

    .line 2762
    .local v2, mockProvider:Lcom/android/server/location/MockProvider;
    if-nez v2, :cond_0

    .line 2763
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" unknown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2777
    .end local v2           #mockProvider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2765
    .restart local v2       #mockProvider:Lcom/android/server/location/MockProvider;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2766
    .local v0, identity:J
    if-eqz p2, :cond_1

    .line 2767
    invoke-virtual {v2}, Lcom/android/server/location/MockProvider;->enable()V

    .line 2768
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2769
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2775
    :goto_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 2776
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2777
    monitor-exit v4

    .line 2778
    return-void

    .line 2771
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/location/MockProvider;->disable()V

    .line 2772
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2773
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;)V
    .locals 7
    .parameter "provider"
    .parameter "loc"

    .prologue
    .line 2734
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2735
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2736
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/MockProvider;

    .line 2737
    .local v2, mockProvider:Lcom/android/server/location/MockProvider;
    if-nez v2, :cond_0

    .line 2738
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" unknown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2744
    .end local v2           #mockProvider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2741
    .restart local v2       #mockProvider:Lcom/android/server/location/MockProvider;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2742
    .local v0, identity:J
    invoke-virtual {v2, p2}, Lcom/android/server/location/MockProvider;->setLocation(Landroid/location/Location;)V

    .line 2743
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2744
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2745
    return-void
.end method

.method public setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;J)V
    .locals 5
    .parameter "provider"
    .parameter "status"
    .parameter "extras"
    .parameter "updateTime"

    .prologue
    .line 2796
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2797
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2798
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/MockProvider;

    .line 2799
    .local v0, mockProvider:Lcom/android/server/location/MockProvider;
    if-nez v0, :cond_0

    .line 2800
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2803
    .end local v0           #mockProvider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2802
    .restart local v0       #mockProvider:Lcom/android/server/location/MockProvider;
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/server/location/MockProvider;->setStatus(ILandroid/os/Bundle;J)V

    .line 2803
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2804
    return-void
.end method

.method systemReady()V
    .locals 3

    .prologue
    .line 644
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    const-string v2, "LocationManagerService"

    invoke-direct {v0, v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 645
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 646
    return-void
.end method

.method validatePendingIntent(Landroid/app/PendingIntent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 1334
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isTargetedToPackage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1343
    :goto_0
    return-void

    .line 1337
    :cond_0
    const-string v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given Intent does not require a specific package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
