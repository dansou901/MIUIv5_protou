.class Lmiui/maml/ActionCommand$BluetoothSwitchCommand;
.super Lmiui/maml/ActionCommand$NotificationReceiver;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothSwitchCommand"
.end annotation


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothEnable:Z

.field private mBluetoothEnabling:Z

.field private mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)V
    .locals 2
    .parameter "root"
    .parameter "value"

    .prologue
    .line 623
    const-string v0, "bluetooth_state"

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {p0, p1, v0, v1}, Lmiui/maml/ActionCommand$NotificationReceiver;-><init>(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    new-instance v0, Lmiui/maml/ActionCommand$OnOffCommandHelper;

    invoke-direct {v0, p2}, Lmiui/maml/ActionCommand$OnOffCommandHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    .line 625
    return-void
.end method

.method private ensureBluetoothAdapter()Z
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 670
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 672
    :cond_0
    iget-object v0, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected doPerform()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 629
    invoke-direct {p0}, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->ensureBluetoothAdapter()Z

    move-result v0

    if-nez v0, :cond_0

    .line 652
    :goto_0
    return-void

    .line 632
    :cond_0
    iget-object v0, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v0, v0, Lmiui/maml/ActionCommand$OnOffCommandHelper;->mIsToggle:Z

    if-eqz v0, :cond_3

    .line 633
    iget-boolean v0, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnable:Z

    if-eqz v0, :cond_2

    .line 634
    iget-object v0, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 635
    iput-boolean v2, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    .line 651
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->update()V

    goto :goto_0

    .line 637
    :cond_2
    iget-object v0, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 638
    iput-boolean v3, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    goto :goto_1

    .line 641
    :cond_3
    iget-boolean v0, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnable:Z

    iget-object v1, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v1, v1, Lmiui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    if-eq v0, v1, :cond_1

    .line 642
    iget-object v0, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v0, v0, Lmiui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    if-eqz v0, :cond_4

    .line 643
    iget-object v0, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 644
    iput-boolean v3, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    goto :goto_1

    .line 646
    :cond_4
    iget-object v0, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 647
    iput-boolean v2, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    goto :goto_1
.end method

.method protected update()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 656
    invoke-direct {p0}, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->ensureBluetoothAdapter()Z

    move-result v1

    if-nez v1, :cond_0

    .line 666
    :goto_0
    return-void

    .line 659
    :cond_0
    iget-object v1, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnable:Z

    .line 660
    iget-boolean v1, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnable:Z

    if-eqz v1, :cond_1

    .line 661
    iput-boolean v0, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    .line 662
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->updateState(I)V

    goto :goto_0

    .line 664
    :cond_1
    iget-boolean v1, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    :cond_2
    invoke-virtual {p0, v0}, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->updateState(I)V

    goto :goto_0
.end method