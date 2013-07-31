.class public Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;
.super Lmiui/maml/ScreenElementRoot;
.source "LockScreenRoot.java"

# interfaces
.implements Lmiui/maml/ScreenElementRoot$OnExternCommandListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$BatteryInfo;,
        Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;
    }
.end annotation


# static fields
.field private static final EXTERN_COMMAND_UNLOCK:Ljava/lang/String; = "unlock"

.field private static final LOG_TAG:Ljava/lang/String; = "LockScreenRoot"

.field public static final SMS_BODY_PREVIEW:Ljava/lang/String; = "sms_body_preview"

.field private static final TAG_NAME_BATTERYFULL:Ljava/lang/String; = "BatteryFull"

.field private static final TAG_NAME_CHARGING:Ljava/lang/String; = "Charging"

.field private static final TAG_NAME_LOWBATTERY:Ljava/lang/String; = "BatteryLow"

.field private static final TAG_NAME_NORMAL:Ljava/lang/String; = "Normal"


# instance fields
.field private curCategory:Ljava/lang/String;

.field private mBatteryInfo:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$BatteryInfo;

.field private mBatteryLevel:Lmiui/maml/util/IndexedNumberVariable;

.field private mBatteryState:Lmiui/maml/util/IndexedNumberVariable;

.field private mFrameRateBatteryFull:F

.field private mFrameRateBatteryLow:F

.field private mFrameRateCharging:F

.field private mInit:Z

.field private mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenContext;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lmiui/maml/ScreenElementRoot;-><init>(Lmiui/maml/ScreenContext;)V

    .line 76
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "battery_state"

    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryState:Lmiui/maml/util/IndexedNumberVariable;

    .line 77
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "battery_level"

    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryLevel:Lmiui/maml/util/IndexedNumberVariable;

    .line 78
    invoke-virtual {p0, p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->setOnExternCommandListener(Lmiui/maml/ScreenElementRoot$OnExternCommandListener;)V

    .line 79
    return-void
.end method

.method private endUnlockMoving(Lmiui/maml/elements/ElementGroup;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .locals 3
    .parameter "g"
    .parameter "ele"

    .prologue
    .line 245
    if-eqz p1, :cond_2

    .line 246
    invoke-virtual {p1}, Lmiui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/ScreenElement;

    .line 247
    .local v0, e:Lmiui/maml/elements/ScreenElement;
    instance-of v2, v0, Lmiui/maml/elements/ElementGroup;

    if-eqz v2, :cond_1

    .line 248
    check-cast v0, Lmiui/maml/elements/ElementGroup;

    .end local v0           #e:Lmiui/maml/elements/ScreenElement;
    invoke-direct {p0, v0, p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->endUnlockMoving(Lmiui/maml/elements/ElementGroup;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    goto :goto_0

    .line 249
    .restart local v0       #e:Lmiui/maml/elements/ScreenElement;
    :cond_1
    instance-of v2, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    if-eqz v2, :cond_0

    .line 250
    check-cast v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    .end local v0           #e:Lmiui/maml/elements/ScreenElement;
    invoke-virtual {v0, p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->endUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    goto :goto_0

    .line 254
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private startUnlockMoving(Lmiui/maml/elements/ElementGroup;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .locals 3
    .parameter "g"
    .parameter "ele"

    .prologue
    .line 233
    if-eqz p1, :cond_2

    .line 234
    invoke-virtual {p1}, Lmiui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/ScreenElement;

    .line 235
    .local v0, e:Lmiui/maml/elements/ScreenElement;
    instance-of v2, v0, Lmiui/maml/elements/ElementGroup;

    if-eqz v2, :cond_1

    .line 236
    check-cast v0, Lmiui/maml/elements/ElementGroup;

    .end local v0           #e:Lmiui/maml/elements/ScreenElement;
    invoke-direct {p0, v0, p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->startUnlockMoving(Lmiui/maml/elements/ElementGroup;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    goto :goto_0

    .line 237
    .restart local v0       #e:Lmiui/maml/elements/ScreenElement;
    :cond_1
    instance-of v2, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    if-eqz v2, :cond_0

    .line 238
    check-cast v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    .end local v0           #e:Lmiui/maml/elements/ScreenElement;
    invoke-virtual {v0, p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->startUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    goto :goto_0

    .line 242
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method


# virtual methods
.method public endUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .locals 1
    .parameter "ele"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    invoke-direct {p0, v0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->endUnlockMoving(Lmiui/maml/elements/ElementGroup;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    .line 230
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 218
    invoke-super {p0}, Lmiui/maml/ScreenElementRoot;->finish()V

    .line 219
    iput-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->curCategory:Ljava/lang/String;

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mInit:Z

    .line 221
    iput-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryInfo:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$BatteryInfo;

    .line 222
    return-void
.end method

.method public haptic(I)V
    .locals 1
    .parameter "effectId"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    invoke-interface {v0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->haptic(I)V

    .line 107
    return-void
.end method

.method public init()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 183
    invoke-super {p0}, Lmiui/maml/ScreenElementRoot;->init()V

    .line 186
    new-instance v0, Lmiui/security/ChooseLockSettingsHelper;

    iget-object v4, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lmiui/security/ChooseLockSettingsHelper;-><init>(Landroid/content/Context;)V

    .line 187
    .local v0, helper:Lmiui/security/ChooseLockSettingsHelper;
    iget-object v4, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pref_key_enable_notification_body"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_2

    iget-object v4, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    const-string v5, "com.android.mms"

    invoke-static {v4, v5}, Lmiui/net/FirewallManager;->isAccessControlProtected(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lmiui/security/ChooseLockSettingsHelper;->isACLockEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    invoke-virtual {v0}, Lmiui/security/ChooseLockSettingsHelper;->isPrivacyModeEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    invoke-interface {v4}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->isSecure()Z

    move-result v4

    if-nez v4, :cond_2

    move v2, v3

    .line 195
    .local v2, showSmsBodySetting:Z
    :goto_0
    new-instance v1, Lmiui/maml/util/IndexedNumberVariable;

    const-string v4, "sms_body_preview"

    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v5, v5, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v1, v4, v5}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    .line 196
    .local v1, showSms:Lmiui/maml/util/IndexedNumberVariable;
    if-eqz v2, :cond_3

    const-wide/high16 v4, 0x3ff0

    :goto_1
    invoke-virtual {v1, v4, v5}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 197
    iput-boolean v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mInit:Z

    .line 198
    iget-object v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryInfo:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$BatteryInfo;

    if-eqz v3, :cond_1

    .line 199
    iget-object v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryInfo:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$BatteryInfo;

    iget-boolean v3, v3, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$BatteryInfo;->showBatteryInfo:Z

    iget-object v4, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryInfo:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$BatteryInfo;

    iget-boolean v4, v4, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$BatteryInfo;->pluggedIn:Z

    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryInfo:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$BatteryInfo;

    iget v5, v5, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$BatteryInfo;->batteryLevel:I

    invoke-virtual {p0, v3, v4, v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->onRefreshBatteryInfo(ZZI)V

    .line 200
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryInfo:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$BatteryInfo;

    .line 202
    :cond_1
    return-void

    .line 187
    .end local v1           #showSms:Lmiui/maml/util/IndexedNumberVariable;
    .end local v2           #showSmsBodySetting:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 196
    .restart local v1       #showSms:Lmiui/maml/util/IndexedNumberVariable;
    .restart local v2       #showSmsBodySetting:Z
    :cond_3
    const-wide/16 v4, 0x0

    goto :goto_1
.end method

.method protected onAddVariableUpdater(Lmiui/maml/data/VariableUpdaterManager;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 114
    invoke-super {p0, p1}, Lmiui/maml/ScreenElementRoot;->onAddVariableUpdater(Lmiui/maml/data/VariableUpdaterManager;)V

    .line 115
    new-instance v0, Lmiui/maml/data/BatteryVariableUpdater;

    invoke-direct {v0, p1}, Lmiui/maml/data/BatteryVariableUpdater;-><init>(Lmiui/maml/data/VariableUpdaterManager;)V

    invoke-virtual {p1, v0}, Lmiui/maml/data/VariableUpdaterManager;->add(Lmiui/maml/data/VariableUpdater;)V

    .line 116
    new-instance v0, Lmiui/maml/data/VolumeVariableUpdater;

    invoke-direct {v0, p1}, Lmiui/maml/data/VolumeVariableUpdater;-><init>(Lmiui/maml/data/VariableUpdaterManager;)V

    invoke-virtual {p1, v0}, Lmiui/maml/data/VariableUpdaterManager;->add(Lmiui/maml/data/VariableUpdater;)V

    .line 117
    return-void
.end method

.method public onButtonInteractive(Lmiui/maml/elements/ButtonScreenElement;Lmiui/maml/elements/ButtonScreenElement$ButtonAction;)V
    .locals 1
    .parameter "e"
    .parameter "a"

    .prologue
    .line 258
    sget-object v0, Lmiui/maml/elements/ButtonScreenElement$ButtonAction;->Cancel:Lmiui/maml/elements/ButtonScreenElement$ButtonAction;

    if-eq v0, p2, :cond_0

    .line 259
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    invoke-interface {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->pokeWakelock()V

    .line 261
    :cond_0
    return-void
.end method

.method public onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 2
    .parameter "command"
    .parameter "para1"
    .parameter "para2"

    .prologue
    .line 265
    const-string v0, "unlock"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->unlocked(Landroid/content/Intent;I)V

    .line 268
    :cond_0
    return-void
.end method

.method protected onLoad(Lorg/w3c/dom/Element;)Z
    .locals 2
    .parameter "root"

    .prologue
    .line 205
    invoke-super {p0, p1}, Lmiui/maml/ScreenElementRoot;->onLoad(Lorg/w3c/dom/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    const/4 v0, 0x0

    .line 213
    :goto_0
    return v0

    .line 208
    :cond_0
    const-string v0, "frameRateCharging"

    iget v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mNormalFrameRate:F

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateCharging:F

    .line 209
    const-string v0, "frameRateBatteryLow"

    iget v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mNormalFrameRate:F

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateBatteryLow:F

    .line 210
    const-string v0, "frameRateBatteryFull"

    iget v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mNormalFrameRate:F

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateBatteryFull:F

    .line 212
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    invoke-static {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/BuiltinVariableBinders;->fill(Lmiui/maml/data/VariableBinderManager;)V

    .line 213
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 6
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    const/4 v5, 0x0

    .line 133
    iget-boolean v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mInit:Z

    if-nez v2, :cond_1

    .line 134
    new-instance v2, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$BatteryInfo;

    invoke-direct {v2, p1, p2, p3}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$BatteryInfo;-><init>(ZZI)V

    iput-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryInfo:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$BatteryInfo;

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryLevel:Lmiui/maml/util/IndexedNumberVariable;

    int-to-double v3, p3

    invoke-virtual {v2, v3, v4}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 139
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    if-eqz v2, :cond_0

    .line 143
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->curCategory:Ljava/lang/String;

    .line 144
    .local v0, newCategory:Ljava/lang/String;
    const/4 v1, 0x0

    .line 145
    .local v1, state:I
    if-eqz p1, :cond_4

    .line 146
    if-eqz p2, :cond_3

    .line 147
    const/16 v2, 0x64

    if-lt p3, v2, :cond_2

    .line 148
    const-string v0, "BatteryFull"

    .line 149
    const/4 v1, 0x3

    .line 150
    iget v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateBatteryFull:F

    iput v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRate:F

    .line 168
    :goto_1
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->curCategory:Ljava/lang/String;

    if-eq v0, v2, :cond_0

    .line 170
    iget v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRate:F

    invoke-virtual {p0, v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->requestFramerate(F)V

    .line 171
    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->requestUpdate()V

    .line 172
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryState:Lmiui/maml/util/IndexedNumberVariable;

    int-to-double v3, v1

    invoke-virtual {v2, v3, v4}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 173
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    const-string v3, "BatteryFull"

    invoke-virtual {v2, v3, v5}, Lmiui/maml/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 174
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    const-string v3, "Charging"

    invoke-virtual {v2, v3, v5}, Lmiui/maml/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 175
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    const-string v3, "BatteryLow"

    invoke-virtual {v2, v3, v5}, Lmiui/maml/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 176
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    const-string v3, "Normal"

    invoke-virtual {v2, v3, v5}, Lmiui/maml/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 177
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lmiui/maml/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 178
    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->curCategory:Ljava/lang/String;

    goto :goto_0

    .line 152
    :cond_2
    const-string v0, "Charging"

    .line 153
    const/4 v1, 0x1

    .line 154
    iget v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateCharging:F

    iput v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRate:F

    goto :goto_1

    .line 157
    :cond_3
    const-string v0, "BatteryLow"

    .line 158
    const/4 v1, 0x2

    .line 159
    iget v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateBatteryLow:F

    iput v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRate:F

    goto :goto_1

    .line 162
    :cond_4
    const-string v0, "Normal"

    .line 163
    const/4 v1, 0x0

    .line 164
    iget v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mNormalFrameRate:F

    iput v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRate:F

    goto :goto_1
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 87
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    if-nez v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->unlocked(Landroid/content/Intent;I)V

    .line 92
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lmiui/maml/ScreenElementRoot;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public pokeWakelock()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    invoke-interface {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->pokeWakelock()V

    .line 97
    return-void
.end method

.method public setUnlockerCallback(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;)V
    .locals 0
    .parameter "unlockerCallback"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    .line 83
    return-void
.end method

.method protected shouldPlaySound()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    invoke-interface {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->isSoundEnable()Z

    move-result v0

    return v0
.end method

.method public startUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .locals 1
    .parameter "ele"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    invoke-direct {p0, v0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->startUnlockMoving(Lmiui/maml/elements/ElementGroup;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    .line 226
    return-void
.end method

.method public unlocked(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "delay"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    invoke-interface {v0, p1, p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->unlocked(Landroid/content/Intent;I)V

    .line 111
    return-void
.end method
