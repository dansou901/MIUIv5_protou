.class Lmiui/widget/MiCloudAdvancedSettingsBase$6;
.super Ljava/lang/Object;
.source "MiCloudAdvancedSettingsBase.java"

# interfaces
.implements Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/MiCloudAdvancedSettingsBase;->handleSyncPrefClick(Lmiui/widget/SyncStatePreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$authority:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmiui/widget/MiCloudAdvancedSettingsBase;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$6;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    iput-object p2, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$6;->val$account:Landroid/accounts/Account;

    iput-object p3, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$6;->val$authority:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckPhoneResult(Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 340
    sget-object v0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;->RESULT_NOT_ACTIVATED:Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;

    if-ne p1, v0, :cond_0

    .line 343
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$6;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    new-instance v1, Lmiui/widget/MiCloudAdvancedSettingsBase$6$1;

    invoke-direct {v1, p0}, Lmiui/widget/MiCloudAdvancedSettingsBase$6$1;-><init>(Lmiui/widget/MiCloudAdvancedSettingsBase$6;)V

    new-instance v2, Lmiui/widget/MiCloudAdvancedSettingsBase$6$2;

    invoke-direct {v2, p0}, Lmiui/widget/MiCloudAdvancedSettingsBase$6$2;-><init>(Lmiui/widget/MiCloudAdvancedSettingsBase$6;)V

    #calls: Lmiui/widget/MiCloudAdvancedSettingsBase;->showSendSmsForSyncDialog(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V
    invoke-static {v0, v1, v2}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$500(Lmiui/widget/MiCloudAdvancedSettingsBase;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 375
    :goto_0
    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$6;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    const/4 v1, 0x0

    #calls: Lmiui/widget/MiCloudAdvancedSettingsBase;->startActivate(Z)V
    invoke-static {v0, v1}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$300(Lmiui/widget/MiCloudAdvancedSettingsBase;Z)V

    .line 372
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$6;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    iget-object v1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$6;->val$account:Landroid/accounts/Account;

    iget-object v2, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$6;->val$authority:Ljava/lang/String;

    const/4 v3, 0x1

    #calls: Lmiui/widget/MiCloudAdvancedSettingsBase;->enableSync(Landroid/accounts/Account;Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2, v3}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$400(Lmiui/widget/MiCloudAdvancedSettingsBase;Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 373
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$6;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    const/4 v1, 0x0

    #calls: Lmiui/widget/MiCloudAdvancedSettingsBase;->updateSyncState(Ljava/lang/Boolean;)V
    invoke-static {v0, v1}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$200(Lmiui/widget/MiCloudAdvancedSettingsBase;Ljava/lang/Boolean;)V

    goto :goto_0
.end method
