.class Lmiui/widget/MiCloudAdvancedSettingsBase$6$1;
.super Ljava/lang/Object;
.source "MiCloudAdvancedSettingsBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/MiCloudAdvancedSettingsBase$6;->onCheckPhoneResult(Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/widget/MiCloudAdvancedSettingsBase$6;


# direct methods
.method constructor <init>(Lmiui/widget/MiCloudAdvancedSettingsBase$6;)V
    .locals 0
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$6$1;->this$1:Lmiui/widget/MiCloudAdvancedSettingsBase$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 349
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$6$1;->this$1:Lmiui/widget/MiCloudAdvancedSettingsBase$6;

    iget-object v0, v0, Lmiui/widget/MiCloudAdvancedSettingsBase$6;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    #calls: Lmiui/widget/MiCloudAdvancedSettingsBase;->startActivate(Z)V
    invoke-static {v0, v3}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$300(Lmiui/widget/MiCloudAdvancedSettingsBase;Z)V

    .line 350
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$6$1;->this$1:Lmiui/widget/MiCloudAdvancedSettingsBase$6;

    iget-object v0, v0, Lmiui/widget/MiCloudAdvancedSettingsBase$6;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    #getter for: Lmiui/widget/MiCloudAdvancedSettingsBase;->mMainSyncPref:Lmiui/widget/SyncStatePreference;
    invoke-static {v0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$000(Lmiui/widget/MiCloudAdvancedSettingsBase;)Lmiui/widget/SyncStatePreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/SyncStatePreference;->setEnabled(Z)V

    .line 353
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$6$1;->this$1:Lmiui/widget/MiCloudAdvancedSettingsBase$6;

    iget-object v0, v0, Lmiui/widget/MiCloudAdvancedSettingsBase$6;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    iget-object v1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$6$1;->this$1:Lmiui/widget/MiCloudAdvancedSettingsBase$6;

    iget-object v1, v1, Lmiui/widget/MiCloudAdvancedSettingsBase$6;->val$account:Landroid/accounts/Account;

    iget-object v2, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$6$1;->this$1:Lmiui/widget/MiCloudAdvancedSettingsBase$6;

    iget-object v2, v2, Lmiui/widget/MiCloudAdvancedSettingsBase$6;->val$authority:Ljava/lang/String;

    #calls: Lmiui/widget/MiCloudAdvancedSettingsBase;->enableSync(Landroid/accounts/Account;Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2, v3}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$400(Lmiui/widget/MiCloudAdvancedSettingsBase;Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 357
    return-void
.end method
