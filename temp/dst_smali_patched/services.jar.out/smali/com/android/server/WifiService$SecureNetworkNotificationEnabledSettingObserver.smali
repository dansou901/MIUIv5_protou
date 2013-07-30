.class Lcom/android/server/WifiService$SecureNetworkNotificationEnabledSettingObserver;
.super Landroid/database/ContentObserver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecureNetworkNotificationEnabledSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method public constructor <init>(Lcom/android/server/WifiService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    iput-object p1, p0, Lcom/android/server/WifiService$SecureNetworkNotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private getValue()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x94

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/server/WifiService$SecureNetworkNotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_secure_networks_available_notification_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/WifiService$SecureNetworkNotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_secure_networks_available_notification_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/server/WifiService$SecureNetworkNotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Lcom/android/server/WifiService$SecureNetworkNotificationEnabledSettingObserver;->getValue()Z

    move-result v1

    #setter for: Lcom/android/server/WifiService;->mSecureNetworkNotificationEnabled:Z
    invoke-static {v0, v1}, Lcom/android/server/WifiService;->access$8102(Lcom/android/server/WifiService;Z)Z

    iget-object v0, p0, Lcom/android/server/WifiService$SecureNetworkNotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mNotificationEnabled:Z
    invoke-static {v0}, Lcom/android/server/WifiService;->access$8000(Lcom/android/server/WifiService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/WifiService$SecureNetworkNotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->resetNotification()V
    invoke-static {v0}, Lcom/android/server/WifiService;->access$2600(Lcom/android/server/WifiService;)V

    :cond_0
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/WifiService$SecureNetworkNotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "wifi_secure_networks_available_notification_on"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/server/WifiService$SecureNetworkNotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Lcom/android/server/WifiService$SecureNetworkNotificationEnabledSettingObserver;->getValue()Z

    move-result v2

    #setter for: Lcom/android/server/WifiService;->mSecureNetworkNotificationEnabled:Z
    invoke-static {v1, v2}, Lcom/android/server/WifiService;->access$8102(Lcom/android/server/WifiService;Z)Z

    return-void
.end method
