.class public Landroid/net/hotspot/SoftapMonitor;
.super Ljava/lang/Object;
.source "SoftapMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/hotspot/SoftapMonitor$MonitorThread;
    }
.end annotation


# static fields
.field private static final AP_DOWN:I = 0x2

.field private static final AP_UNKNOWN:I = 0x7

.field private static final AP_UP:I = 0x1

.field private static final ERROR_EVENT:I = 0x6

.field private static final HANG:I = 0xd

.field private static final L2PE_FAIL:I = 0xc

.field private static final L2PE_SUCCESSFUL:I = 0xb

.field private static final MAX_RECV_ERRORS:I = 0xc

.field private static final MAX_RECV_NULLS:I = 0x6

.field private static final PERF_LOCK:I = 0xe

.field private static final PERF_UNLOCK:I = 0xf

.field private static final STA_BLOCK:I = 0x5

.field private static final STA_JOIN:I = 0x3

.field private static final STA_LEAVE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SoftapMonitor"

.field private static final WPS_REGISTRAR_FAIL:I = 0xa

.field private static final WPS_REGISTRAR_START:I = 0x8

.field private static final WPS_REGISTRAR_SUCCESSFUL:I = 0x9

.field private static final ap_down:Ljava/lang/String; = "AP_DOWN"

.field private static final ap_up:Ljava/lang/String; = "AP_UP"

.field private static final error_event:Ljava/lang/String; = "ERROR_EVENT"

.field private static final hang:Ljava/lang/String; = "HANG"

.field private static final l2pe_fail:Ljava/lang/String; = "L2PE_FAIL"

.field private static final l2pe_successful:Ljava/lang/String; = "L2PE_SUCCESSFUL"

.field private static final perf_lock:Ljava/lang/String; = "PERF_LOCK"

.field private static final perf_unlock:Ljava/lang/String; = "PERF_UNLOCK"

.field private static final qct_sta_join:Ljava/lang/String; = "AP-STA-CONNECTED"

.field private static final qct_sta_leave:Ljava/lang/String; = "AP-STA-DISCONNECTED"

.field private static final sta_block:Ljava/lang/String; = "STA_BLOCK"

.field private static final sta_join:Ljava/lang/String; = "STA_JOIN"

.field private static final sta_leave:Ljava/lang/String; = "STA_LEAVE"

.field private static final wps_registrar_fail:Ljava/lang/String; = "WPS_FAIL"

.field private static final wps_registrar_start:Ljava/lang/String; = "WPS_START"

.field private static final wps_registrar_successful:Ljava/lang/String; = "WPS_SUCCESSFUL"


# instance fields
.field private IsAPDown:Z

.field private ShouldStopMonitor:Z

.field private mNullErrors:I

.field private mRecvErrors:I

.field private final mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 1
    .parameter "wifiStateMachine"

    .prologue
    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/net/hotspot/SoftapMonitor;->mRecvErrors:I

    iput v0, p0, Landroid/net/hotspot/SoftapMonitor;->mNullErrors:I

    iput-boolean v0, p0, Landroid/net/hotspot/SoftapMonitor;->ShouldStopMonitor:Z

    iput-boolean v0, p0, Landroid/net/hotspot/SoftapMonitor;->IsAPDown:Z

    iput-object p1, p0, Landroid/net/hotspot/SoftapMonitor;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    return-void
.end method

.method static synthetic access$000(Landroid/net/hotspot/SoftapMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/hotspot/SoftapMonitor;->ShouldStopMonitor:Z

    return v0
.end method

.method static synthetic access$100(Landroid/net/hotspot/SoftapMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/hotspot/SoftapMonitor;->IsAPDown:Z

    return v0
.end method

.method static synthetic access$200(Landroid/net/hotspot/SoftapMonitor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/hotspot/SoftapMonitor;->setMonitorflag(Z)V

    return-void
.end method

.method static synthetic access$300(Landroid/net/hotspot/SoftapMonitor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/hotspot/SoftapMonitor;->setAPdownflag(Z)V

    return-void
.end method

.method static synthetic access$402(Landroid/net/hotspot/SoftapMonitor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/net/hotspot/SoftapMonitor;->mNullErrors:I

    return p1
.end method

.method static synthetic access$404(Landroid/net/hotspot/SoftapMonitor;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/hotspot/SoftapMonitor;->mNullErrors:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/hotspot/SoftapMonitor;->mNullErrors:I

    return v0
.end method

.method static synthetic access$502(Landroid/net/hotspot/SoftapMonitor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/net/hotspot/SoftapMonitor;->mRecvErrors:I

    return p1
.end method

.method static synthetic access$504(Landroid/net/hotspot/SoftapMonitor;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/hotspot/SoftapMonitor;->mRecvErrors:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/hotspot/SoftapMonitor;->mRecvErrors:I

    return v0
.end method

.method static synthetic access$600(Landroid/net/hotspot/SoftapMonitor;)Landroid/net/wifi/WifiStateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/hotspot/SoftapMonitor;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    return-object v0
.end method

.method private setAPdownflag(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    iput-boolean p1, p0, Landroid/net/hotspot/SoftapMonitor;->IsAPDown:Z

    return-void
.end method

.method private setMonitorflag(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    iput-boolean p1, p0, Landroid/net/hotspot/SoftapMonitor;->ShouldStopMonitor:Z

    return-void
.end method


# virtual methods
.method public startMonitoring()V
    .locals 2

    .prologue
    const-string v0, "SoftapMonitor"

    const-string v1, "startMonitoring"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;

    invoke-direct {v0, p0}, Landroid/net/hotspot/SoftapMonitor$MonitorThread;-><init>(Landroid/net/hotspot/SoftapMonitor;)V

    invoke-virtual {v0}, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->start()V

    return-void
.end method

.method public stopMonitoring()V
    .locals 2

    .prologue
    const-string v0, "SoftapMonitor"

    const-string v1, "stopMonitoring"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/net/hotspot/SoftapMonitor;->setMonitorflag(Z)V

    return-void
.end method
