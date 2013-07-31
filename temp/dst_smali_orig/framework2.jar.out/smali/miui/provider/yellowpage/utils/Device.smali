.class public Lmiui/provider/yellowpage/utils/Device;
.super Ljava/lang/Object;
.source "Device.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "device"

.field private static sDispalyWidth:I

.field private static sDisplayDensity:I

.field private static sDisplayHeight:I

.field private static sIMEI:Ljava/lang/String;

.field private static sUUID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static acquireIdentity(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .local v0, deviceId:Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lmiui/net/CloudManager;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Lmiui/telephony/exception/IllegalDeviceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v0, ""

    :cond_0
    sput-object v0, Lmiui/provider/yellowpage/utils/Device;->sIMEI:Ljava/lang/String;

    const-string v6, "wifi"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .local v5, wifi:Landroid/net/wifi/WifiManager;
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .local v2, info:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    .local v3, mac:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .local v4, uuid:Ljava/lang/StringBuffer;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmiui/util/CoderUtils;->encodeMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lmiui/provider/yellowpage/utils/Device;->sUUID:Ljava/lang/String;

    return-void

    .end local v2           #info:Landroid/net/wifi/WifiInfo;
    .end local v3           #mac:Ljava/lang/String;
    .end local v4           #uuid:Ljava/lang/StringBuffer;
    .end local v5           #wifi:Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v1

    .local v1, e:Lmiui/telephony/exception/IllegalDeviceException;
    invoke-virtual {v1}, Lmiui/telephony/exception/IllegalDeviceException;->printStackTrace()V

    goto :goto_0
.end method

.method private static acquireScreenAttr(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .local v0, dm:Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v2, Lmiui/provider/yellowpage/utils/Device;->sDisplayHeight:I

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v2, Lmiui/provider/yellowpage/utils/Device;->sDispalyWidth:I

    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v2, Lmiui/provider/yellowpage/utils/Device;->sDisplayDensity:I

    return-void
.end method

.method public static getCarrier(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .local v0, telManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCountry(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayDensity(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    sget v0, Lmiui/provider/yellowpage/utils/Device;->sDisplayDensity:I

    if-nez v0, :cond_0

    invoke-static {p0}, Lmiui/provider/yellowpage/utils/Device;->acquireScreenAttr(Landroid/content/Context;)V

    :cond_0
    sget v0, Lmiui/provider/yellowpage/utils/Device;->sDisplayDensity:I

    return v0
.end method

.method public static getDisplayHeight(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    sget v0, Lmiui/provider/yellowpage/utils/Device;->sDisplayHeight:I

    if-nez v0, :cond_0

    invoke-static {p0}, Lmiui/provider/yellowpage/utils/Device;->acquireScreenAttr(Landroid/content/Context;)V

    :cond_0
    sget v0, Lmiui/provider/yellowpage/utils/Device;->sDisplayHeight:I

    return v0
.end method

.method public static getDisplayWidth(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    sget v0, Lmiui/provider/yellowpage/utils/Device;->sDispalyWidth:I

    if-nez v0, :cond_0

    invoke-static {p0}, Lmiui/provider/yellowpage/utils/Device;->acquireScreenAttr(Landroid/content/Context;)V

    :cond_0
    sget v0, Lmiui/provider/yellowpage/utils/Device;->sDispalyWidth:I

    return v0
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    sget-object v0, Lmiui/provider/yellowpage/utils/Device;->sIMEI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lmiui/provider/yellowpage/utils/Device;->acquireIdentity(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lmiui/provider/yellowpage/utils/Device;->sIMEI:Ljava/lang/String;

    return-object v0
.end method

.method public static getLanguage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalIpAddress()Ljava/lang/String;
    .locals 7

    .prologue
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .local v4, intf:Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .local v3, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .end local v2           #enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3           #inetAddress:Ljava/net/InetAddress;
    .end local v4           #intf:Ljava/net/NetworkInterface;
    :goto_0
    return-object v5

    :catch_0
    move-exception v0

    .local v0, e:Ljava/net/SocketException;
    const-string v5, "device"

    invoke-virtual {v0}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lmiui/provider/yellowpage/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0           #e:Ljava/net/SocketException;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static getUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    sget-object v0, Lmiui/provider/yellowpage/utils/Device;->sUUID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lmiui/provider/yellowpage/utils/Device;->acquireIdentity(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lmiui/provider/yellowpage/utils/Device;->sUUID:Ljava/lang/String;

    return-object v0
.end method
