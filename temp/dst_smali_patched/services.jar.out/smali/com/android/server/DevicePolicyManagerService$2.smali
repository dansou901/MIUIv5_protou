.class Lcom/android/server/DevicePolicyManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DevicePolicyManagerService;->removeActiveAdminLocked(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DevicePolicyManagerService;

.field final synthetic val$admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

.field final synthetic val$adminReceiver:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/android/server/DevicePolicyManagerService;Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Landroid/content/ComponentName;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/DevicePolicyManagerService$2;->val$admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iput-object p3, p0, Lcom/android/server/DevicePolicyManagerService$2;->val$adminReceiver:Landroid/content/ComponentName;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .parameter "context"
    .parameter "intent"

    .prologue
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    monitor-enter v13

    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowWifiStatus(Landroid/content/ComponentName;)I

    move-result v10

    .local v10, allowWifi:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowBTStatus(Landroid/content/ComponentName;)I

    move-result v1

    .local v1, allowBT:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowInternetSharingStatus(Landroid/content/ComponentName;)I

    move-result v5

    .local v5, allowInterSharing:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowBrowserStatus(Landroid/content/ComponentName;)I

    move-result v2

    .local v2, allowBrowser:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowTextMessagingStatus(Landroid/content/ComponentName;)I

    move-result v8

    .local v8, allowTextMessage:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowStorageCardStatus(Landroid/content/ComponentName;)I

    move-result v7

    .local v7, allowStorageCard:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowGPSStatus(Landroid/content/ComponentName;)I

    move-result v3

    .local v3, allowGPS:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowVzwLBSStatus(Landroid/content/ComponentName;)I

    move-result v9

    .local v9, allowVzwLBS:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowGoogleLBSStatus(Landroid/content/ComponentName;)I

    move-result v4

    .local v4, allowGoogleLBS:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowLTEStatus(Landroid/content/ComponentName;)I

    move-result v6

    .local v6, allowLTE:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/DevicePolicyManagerService$2;->val$admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-object v12, v12, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    const/4 v14, 0x5

    invoke-virtual {v12, v14}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v11

    .local v11, doProxyCleanup:Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iget-object v12, v12, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/DevicePolicyManagerService$2;->val$admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iget-object v12, v12, Lcom/android/server/DevicePolicyManagerService;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/DevicePolicyManagerService$2;->val$adminReceiver:Landroid/content/ComponentName;

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    invoke-virtual {v12}, Lcom/android/server/DevicePolicyManagerService;->validatePasswordOwnerLocked()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    invoke-virtual {v12}, Lcom/android/server/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked()V

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    #calls: Lcom/android/server/DevicePolicyManagerService;->resetGlobalProxyLocked()V
    invoke-static {v12}, Lcom/android/server/DevicePolicyManagerService;->access$200(Lcom/android/server/DevicePolicyManagerService;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    #calls: Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    invoke-static {v12}, Lcom/android/server/DevicePolicyManagerService;->access$100(Lcom/android/server/DevicePolicyManagerService;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    invoke-virtual {v12}, Lcom/android/server/DevicePolicyManagerService;->updateMaximumTimeToLockLocked()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowWifiStatus(Landroid/content/ComponentName;)I

    move-result v12

    if-eq v10, v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const-string v14, "com.htc.admin.ALLOW_WIFI_CHANGE"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/DevicePolicyManagerService;->getAllowWifiStatus(Landroid/content/ComponentName;)I

    move-result v15

    #calls: Lcom/android/server/DevicePolicyManagerService;->broadcaseAllowStatusChange(Ljava/lang/String;I)V
    invoke-static {v12, v14, v15}, Lcom/android/server/DevicePolicyManagerService;->access$300(Lcom/android/server/DevicePolicyManagerService;Ljava/lang/String;I)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowBTStatus(Landroid/content/ComponentName;)I

    move-result v12

    if-eq v1, v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const-string v14, "com.htc.admin.ALLOW_BT_CHANGE"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/DevicePolicyManagerService;->getAllowBTStatus(Landroid/content/ComponentName;)I

    move-result v15

    #calls: Lcom/android/server/DevicePolicyManagerService;->broadcaseAllowStatusChange(Ljava/lang/String;I)V
    invoke-static {v12, v14, v15}, Lcom/android/server/DevicePolicyManagerService;->access$300(Lcom/android/server/DevicePolicyManagerService;Ljava/lang/String;I)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowInternetSharingStatus(Landroid/content/ComponentName;)I

    move-result v12

    if-eq v5, v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const-string v14, "com.htc.admin.ALLOW_INTERNET_SHARING_CHANGE"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/DevicePolicyManagerService;->getAllowInternetSharingStatus(Landroid/content/ComponentName;)I

    move-result v15

    #calls: Lcom/android/server/DevicePolicyManagerService;->broadcaseAllowStatusChange(Ljava/lang/String;I)V
    invoke-static {v12, v14, v15}, Lcom/android/server/DevicePolicyManagerService;->access$300(Lcom/android/server/DevicePolicyManagerService;Ljava/lang/String;I)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowBrowserStatus(Landroid/content/ComponentName;)I

    move-result v12

    if-eq v2, v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const-string v14, "com.htc.admin.ALLOW_BROWSER_CHANGE"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/DevicePolicyManagerService;->getAllowBrowserStatus(Landroid/content/ComponentName;)I

    move-result v15

    #calls: Lcom/android/server/DevicePolicyManagerService;->broadcaseAllowStatusChange(Ljava/lang/String;I)V
    invoke-static {v12, v14, v15}, Lcom/android/server/DevicePolicyManagerService;->access$300(Lcom/android/server/DevicePolicyManagerService;Ljava/lang/String;I)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowTextMessagingStatus(Landroid/content/ComponentName;)I

    move-result v12

    if-eq v8, v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const-string v14, "com.htc.admin.ALLOW_TEXT_MESSAGING_CHANGE"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/DevicePolicyManagerService;->getAllowTextMessagingStatus(Landroid/content/ComponentName;)I

    move-result v15

    #calls: Lcom/android/server/DevicePolicyManagerService;->broadcaseAllowStatusChange(Ljava/lang/String;I)V
    invoke-static {v12, v14, v15}, Lcom/android/server/DevicePolicyManagerService;->access$300(Lcom/android/server/DevicePolicyManagerService;Ljava/lang/String;I)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowStorageCardStatus(Landroid/content/ComponentName;)I

    move-result v12

    if-eq v7, v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const-string v14, "com.htc.admin.ALLOW_STORAGE_CARD_CHANGE"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/DevicePolicyManagerService;->getAllowStorageCardStatus(Landroid/content/ComponentName;)I

    move-result v15

    #calls: Lcom/android/server/DevicePolicyManagerService;->broadcaseAllowStatusChange(Ljava/lang/String;I)V
    invoke-static {v12, v14, v15}, Lcom/android/server/DevicePolicyManagerService;->access$300(Lcom/android/server/DevicePolicyManagerService;Ljava/lang/String;I)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowGPSStatus(Landroid/content/ComponentName;)I

    move-result v12

    if-eq v3, v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const-string v14, "com.htc.admin.ALLOW_GPS_CHANGE"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/DevicePolicyManagerService;->getAllowGPSStatus(Landroid/content/ComponentName;)I

    move-result v15

    #calls: Lcom/android/server/DevicePolicyManagerService;->broadcaseAllowStatusChange(Ljava/lang/String;I)V
    invoke-static {v12, v14, v15}, Lcom/android/server/DevicePolicyManagerService;->access$300(Lcom/android/server/DevicePolicyManagerService;Ljava/lang/String;I)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowVzwLBSStatus(Landroid/content/ComponentName;)I

    move-result v12

    if-eq v9, v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const-string v14, "com.htc.admin.ALLOW_VZW_LBS_CHANGE"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/DevicePolicyManagerService;->getAllowVzwLBSStatus(Landroid/content/ComponentName;)I

    move-result v15

    #calls: Lcom/android/server/DevicePolicyManagerService;->broadcaseAllowStatusChange(Ljava/lang/String;I)V
    invoke-static {v12, v14, v15}, Lcom/android/server/DevicePolicyManagerService;->access$300(Lcom/android/server/DevicePolicyManagerService;Ljava/lang/String;I)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowGoogleLBSStatus(Landroid/content/ComponentName;)I

    move-result v12

    if-eq v4, v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const-string v14, "com.htc.admin.ALLOW_GOOGLE_LBS_CHANGE"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/DevicePolicyManagerService;->getAllowGoogleLBSStatus(Landroid/content/ComponentName;)I

    move-result v15

    #calls: Lcom/android/server/DevicePolicyManagerService;->broadcaseAllowStatusChange(Ljava/lang/String;I)V
    invoke-static {v12, v14, v15}, Lcom/android/server/DevicePolicyManagerService;->access$300(Lcom/android/server/DevicePolicyManagerService;Ljava/lang/String;I)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowLTEStatus(Landroid/content/ComponentName;)I

    move-result v12

    if-eq v6, v12, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const-string v14, "com.htc.admin.ALLOW_LTE_CHANGE"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/DevicePolicyManagerService;->getAllowLTEStatus(Landroid/content/ComponentName;)I

    move-result v15

    #calls: Lcom/android/server/DevicePolicyManagerService;->broadcaseAllowStatusChange(Ljava/lang/String;I)V
    invoke-static {v12, v14, v15}, Lcom/android/server/DevicePolicyManagerService;->access$300(Lcom/android/server/DevicePolicyManagerService;Ljava/lang/String;I)V

    :cond_a
    monitor-exit v13

    return-void

    .end local v1           #allowBT:I
    .end local v2           #allowBrowser:I
    .end local v3           #allowGPS:I
    .end local v4           #allowGoogleLBS:I
    .end local v5           #allowInterSharing:I
    .end local v6           #allowLTE:I
    .end local v7           #allowStorageCard:I
    .end local v8           #allowTextMessage:I
    .end local v9           #allowVzwLBS:I
    .end local v10           #allowWifi:I
    .end local v11           #doProxyCleanup:Z
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12
.end method
