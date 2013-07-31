.class Lmiui/widget/MiCloudAdvancedSettingsBase$2;
.super Ljava/lang/Object;
.source "MiCloudAdvancedSettingsBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/MiCloudAdvancedSettingsBase;->handleIntent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;


# direct methods
.method constructor <init>(Lmiui/widget/MiCloudAdvancedSettingsBase;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$2;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$2;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    const/4 v1, 0x1

    #calls: Lmiui/widget/MiCloudAdvancedSettingsBase;->startActivate(Z)V
    invoke-static {v0, v1}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$300(Lmiui/widget/MiCloudAdvancedSettingsBase;Z)V

    return-void
.end method
