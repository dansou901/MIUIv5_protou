.class Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$2;
.super Ljava/lang/Object;
.source "MiuiAccountUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 171
    new-instance v2, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$2$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$2$1;-><init>(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$2;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$2$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 179
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->access$300(Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 180
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 182
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 183
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$WifiSettingsActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 185
    const-string v2, "wifi_settings_keyguard"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 186
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 187
    return-void
.end method
