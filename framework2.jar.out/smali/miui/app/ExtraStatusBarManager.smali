.class public Lmiui/app/ExtraStatusBarManager;
.super Ljava/lang/Object;
.source "ExtraStatusBarManager.java"


# static fields
.field public static final ACTION_ENTER_DRIVE_MODE:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.action_enter_drive_mode"

.field public static final ACTION_ENTER_RECORDER:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.action_enter_recorder"

.field public static final ACTION_EXIT_FULLSCREEN:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.EXIT_FULLSCREEN"

.field public static final ACTION_EXPAND_NOTIFICATIONS_TAB:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.EXPAND_NOTIFICATIONS_TAB"

.field public static final ACTION_EXPAND_TOGGLES_TAB:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.EXPAND_TOGGLE_TAB"

.field public static final ACTION_LEAVE_DRIVE_MODE:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.action_leave_drive_mode"

.field public static final ACTION_LEAVE_RECORDER:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.action_leave_recorder"

.field public static final ACTION_PICK_TOGGLE_INTENT:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.action_PICK_TOGGLE_INTENT"

.field public static final ACTION_REQUEST_RESTART:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.REQUEST_RESTART"

.field public static final ACTION_STATUS_RECORDER:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.action_status_recorder"

.field public static final ACTION_TRIGGER_CAMERA_KEY:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.TRIGGER_CAMERA_KEY"

.field public static final ACTION_TRIGGER_TOGGLE:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.action_TRIGGER_TOGGLE"

.field public static final ACTION_TRIGGER_TOGGLE_LOCK:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.TRIGGER_TOGGLE_LOCK"

.field public static final ACTION_TRIGGER_TOGGLE_SCREEN_BUTTONS:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.TRIGGER_TOGGLE_SCREEN_BUTTONS"

.field public static final DISABLE_BACKGROUND:I = 0x40000000

.field public static final DISABLE_FOREGROUND:I = 0x8000000

.field public static final DISABLE_FOR_KEYGUARD:I = -0x80000000

.field public static final DISABLE_FULLSCREEN:I = 0x20000000

.field public static final DISABLE_HIDE:I = 0x4000000

.field public static final DISABLE_SIMPLE_STATUS_BAR:I = 0x10000000

.field public static final EXTRA_RECORDER_DURATION:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.extra_recorder_duration"

.field public static final EXTRA_RECORDER_ENTER_SILENT_MODE:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.extra_recorder_enter_silent_mode"

.field public static final EXTRA_RECORDER_SILENT_MODE_CHANGED_BY_USER:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.extra_recorder_silent_mode_changed_by_user"

.field public static final EXTRA_RECORDER_TIMER_ON_OFF:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.extra_recorder_timer_on_off"

.field public static final EXTRA_RECORDER_TITLE:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.extra_recorder_title"

.field public static final EXTRA_TOGGLE_ID:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.extra_TOGGLE_ID"

.field public static final PARAM_BASE_TIME:Ljava/lang/String; = "base_time"

.field public static final STATUS_BAR_RECORDER_DEAD:I = 0x3

.field public static final STATUS_BAR_RECORDER_HIDE:I = 0x0

.field public static final STATUS_BAR_RECORDER_SHOW:I = 0x1

.field public static final STATUS_BAR_RECORDER_SILENCE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableScreenshotNotification(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "enable"

    .prologue
    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screenshot_notification_enabled"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 101
    return-void

    .line 97
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isExpandableUnderFullscreen(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "status_bar_expandable_under_fullscreen"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isExpandableUnderKeyguard(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "status_bar_expandable_under_keyguard"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isScreenshotNotificationEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screenshot_notification_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isShowFlowInfo(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "status_bar_show_network_assistant"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isShowNetworkSpeed(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "status_bar_show_network_speed"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static setExpandableUnderFullscreen(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "enable"

    .prologue
    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "status_bar_expandable_under_fullscreen"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 129
    return-void

    .line 125
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setExpandableUnderKeyguard(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "enable"

    .prologue
    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "status_bar_expandable_under_keyguard"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 115
    return-void

    .line 111
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setShowFlowInfo(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "enable"

    .prologue
    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "status_bar_show_network_assistant"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 157
    return-void

    .line 153
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setShowNetworkSpeed(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "enable"

    .prologue
    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "status_bar_show_network_speed"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 143
    return-void

    .line 139
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
