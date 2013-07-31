.class public final Lcom/htc/server/gesture/GestureInputFilter;
.super Lcom/android/server/input/InputFilter;
.source "GestureInputFilter.java"

# interfaces
.implements Lcom/htc/server/gesture/MultipleSwipeDetector$OnGestureListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "GestureInputFilter"


# instance fields
.field private final gestureFingerCountThreshold:I

.field private isInKeyguardWhenPointerDown:Z

.field private final mContext:Landroid/content/Context;

.field private mGestureEnable:Z

.field private mGesturePerformedVibrationPattern:[J

.field private mGestureStartVibrationPattern:[J

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private mMultipleSwipeDetector:Lcom/htc/server/gesture/MultipleSwipeDetector;

.field private mVibrator:Landroid/os/Vibrator;

.field private final mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

.field private startToRedirectEvent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/input/InputFilter;-><init>(Landroid/os/Looper;)V

    .line 40
    iput-boolean v1, p0, Lcom/htc/server/gesture/GestureInputFilter;->startToRedirectEvent:Z

    .line 41
    iput-boolean v1, p0, Lcom/htc/server/gesture/GestureInputFilter;->isInKeyguardWhenPointerDown:Z

    .line 42
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/server/gesture/GestureInputFilter;->gestureFingerCountThreshold:I

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/server/gesture/GestureInputFilter;->mGestureEnable:Z

    .line 59
    iput-object p1, p0, Lcom/htc/server/gesture/GestureInputFilter;->mContext:Landroid/content/Context;

    .line 61
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/htc/server/gesture/GestureInputFilter;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 64
    iget-object v0, p0, Lcom/htc/server/gesture/GestureInputFilter;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/htc/server/gesture/GestureInputFilter;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 66
    iget-object v0, p0, Lcom/htc/server/gesture/GestureInputFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x408003d

    invoke-static {v0, v1}, Lcom/htc/server/gesture/GestureInputFilter;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v0

    iput-object v0, p0, Lcom/htc/server/gesture/GestureInputFilter;->mGesturePerformedVibrationPattern:[J

    iput-object v0, p0, Lcom/htc/server/gesture/GestureInputFilter;->mGestureStartVibrationPattern:[J

    .line 69
    return-void
.end method

.method private convertRelativeToAbsoluteDirection(I)I
    .locals 2
    .parameter "direction"

    .prologue
    const/4 v0, -0x1

    .line 322
    if-ne p1, v0, :cond_0

    .line 335
    :goto_0
    return v0

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/htc/server/gesture/GestureInputFilter;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRotation()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 327
    :pswitch_0
    add-int/lit8 v0, p1, -0x1

    add-int/lit8 v0, v0, 0x0

    rem-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    :pswitch_1
    add-int/lit8 v0, p1, -0x1

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 331
    :pswitch_2
    add-int/lit8 v0, p1, -0x1

    add-int/lit8 v0, v0, 0x2

    rem-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 333
    :pswitch_3
    add-int/lit8 v0, p1, -0x1

    add-int/lit8 v0, v0, 0x3

    rem-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getDirectionString(I)Ljava/lang/String;
    .locals 1
    .parameter "direction"

    .prologue
    .line 305
    packed-switch p1, :pswitch_data_0

    .line 317
    :pswitch_0
    const-string v0, "undefined"

    :goto_0
    return-object v0

    .line 307
    :pswitch_1
    const-string v0, "undeterminated"

    goto :goto_0

    .line 309
    :pswitch_2
    const-string v0, "up"

    goto :goto_0

    .line 311
    :pswitch_3
    const-string v0, "right"

    goto :goto_0

    .line 313
    :pswitch_4
    const-string v0, "down"

    goto :goto_0

    .line 315
    :pswitch_5
    const-string v0, "left"

    goto :goto_0

    .line 305
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 5
    .parameter "r"
    .parameter "resid"

    .prologue
    .line 362
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 363
    .local v0, ar:[I
    if-nez v0, :cond_1

    .line 364
    const/4 v2, 0x0

    .line 370
    :cond_0
    return-object v2

    .line 366
    :cond_1
    array-length v3, v0

    new-array v2, v3, [J

    .line 367
    .local v2, out:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 368
    aget v3, v0, v1

    int-to-long v3, v3

    aput-wide v3, v2, v1

    .line 367
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private performVibration([JI)V
    .locals 3
    .parameter "pattern"
    .parameter "repeat"

    .prologue
    .line 342
    if-nez p1, :cond_0

    .line 359
    :goto_0
    return-void

    .line 346
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/gesture/GestureInputFilter;->mVibrator:Landroid/os/Vibrator;

    if-nez v1, :cond_1

    .line 347
    iget-object v1, p0, Lcom/htc/server/gesture/GestureInputFilter;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/htc/server/gesture/GestureInputFilter;->mVibrator:Landroid/os/Vibrator;

    .line 350
    :cond_1
    iget-object v1, p0, Lcom/htc/server/gesture/GestureInputFilter;->mVibrator:Landroid/os/Vibrator;

    if-nez v1, :cond_2

    .line 351
    const-string v1, "GestureInputFilter"

    const-string v2, "failed to get vibration service"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "GestureInputFilter"

    const-string v2, "Exception occur when performing vibration"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 353
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/htc/server/gesture/GestureInputFilter;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1, p1, p2}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public OnGesturePerformed(I)V
    .locals 6
    .parameter "direction"

    .prologue
    .line 270
    :try_start_0
    iget-object v3, p0, Lcom/htc/server/gesture/GestureInputFilter;->mGesturePerformedVibrationPattern:[J

    const/4 v4, -0x1

    invoke-direct {p0, v3, v4}, Lcom/htc/server/gesture/GestureInputFilter;->performVibration([JI)V

    .line 272
    invoke-direct {p0, p1}, Lcom/htc/server/gesture/GestureInputFilter;->convertRelativeToAbsoluteDirection(I)I

    move-result v0

    .line 274
    .local v0, absoluteDirection:I
    const-string v3, "GestureInputFilter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OnGesturePerformed: Direction="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/htc/server/gesture/GestureInputFilter;->getDirectionString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "AbsoluteDirection="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v0}, Lcom/htc/server/gesture/GestureInputFilter;->getDirectionString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    packed-switch p1, :pswitch_data_0

    .line 302
    .end local v0           #absoluteDirection:I
    :goto_0
    return-void

    .line 283
    .restart local v0       #absoluteDirection:I
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 284
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "com.htc.action.MULTIPLE_FINGER_SWIPE_EVENT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    const-string v3, "FingerCount"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 286
    const-string v3, "Direction"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 287
    const-string v3, "AbsoluteDirection"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 288
    iget-object v3, p0, Lcom/htc/server/gesture/GestureInputFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 299
    .end local v0           #absoluteDirection:I
    .end local v2           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 300
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "GestureInputFilter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception occur while performing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/htc/server/gesture/GestureInputFilter;->getDirectionString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " action"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 278
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onInputEvent(Landroid/view/InputEvent;I)V
    .locals 12
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    const/16 v11, 0x1002

    const/4 v4, 0x3

    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 97
    iget-object v2, p0, Lcom/htc/server/gesture/GestureInputFilter;->mMultipleSwipeDetector:Lcom/htc/server/gesture/MultipleSwipeDetector;

    if-nez v2, :cond_1

    .line 98
    const-string v2, "GestureInputFilter"

    const-string v3, "mMultipleSwipeDetector should never be null!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-super {p0, p1, p2}, Lcom/android/server/input/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v2, p0, Lcom/htc/server/gesture/GestureInputFilter;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v2, :cond_2

    .line 104
    const-string v2, "GestureInputFilter"

    const-string v3, "mKeyguardManager should never be null!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-super {p0, p1, p2}, Lcom/android/server/input/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_0

    .line 110
    :cond_2
    iget-boolean v2, p0, Lcom/htc/server/gesture/GestureInputFilter;->mGestureEnable:Z

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v2

    if-ne v2, v11, :cond_a

    move-object v9, p1

    .line 112
    check-cast v9, Landroid/view/MotionEvent;

    .line 113
    .local v9, motionEvent:Landroid/view/MotionEvent;
    iget-boolean v2, p0, Lcom/htc/server/gesture/GestureInputFilter;->startToRedirectEvent:Z

    if-eqz v2, :cond_4

    .line 116
    invoke-virtual {v9}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 117
    invoke-virtual {v9}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-le v2, v4, :cond_3

    .line 118
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .local v0, now:J
    move-wide v2, v0

    move v6, v5

    .line 119
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 121
    .local v8, cancelEvent:Landroid/view/MotionEvent;
    invoke-virtual {v8, v11}, Landroid/view/MotionEvent;->setSource(I)V

    .line 122
    iget-object v2, p0, Lcom/htc/server/gesture/GestureInputFilter;->mMultipleSwipeDetector:Lcom/htc/server/gesture/MultipleSwipeDetector;

    invoke-virtual {v2, v8}, Lcom/htc/server/gesture/MultipleSwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 123
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 124
    iput-boolean v7, p0, Lcom/htc/server/gesture/GestureInputFilter;->startToRedirectEvent:Z

    .line 125
    invoke-super {p0, p1, p2}, Lcom/android/server/input/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_0

    .line 131
    .end local v0           #now:J
    .end local v8           #cancelEvent:Landroid/view/MotionEvent;
    :cond_3
    iget-object v2, p0, Lcom/htc/server/gesture/GestureInputFilter;->mMultipleSwipeDetector:Lcom/htc/server/gesture/MultipleSwipeDetector;

    invoke-virtual {v2, v9}, Lcom/htc/server/gesture/MultipleSwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 132
    invoke-virtual {v9}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v10, :cond_0

    .line 133
    iput-boolean v7, p0, Lcom/htc/server/gesture/GestureInputFilter;->startToRedirectEvent:Z

    .line 134
    iput-boolean v7, p0, Lcom/htc/server/gesture/GestureInputFilter;->isInKeyguardWhenPointerDown:Z

    .line 135
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_0

    .line 136
    const-string v2, "GestureInputFilter"

    const-string v3, "All finger released, resume dispatching to AP"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 139
    :cond_4
    iget-boolean v2, p0, Lcom/htc/server/gesture/GestureInputFilter;->isInKeyguardWhenPointerDown:Z

    if-eqz v2, :cond_6

    .line 140
    invoke-virtual {v9}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v10, :cond_5

    .line 141
    iput-boolean v7, p0, Lcom/htc/server/gesture/GestureInputFilter;->startToRedirectEvent:Z

    .line 142
    iput-boolean v7, p0, Lcom/htc/server/gesture/GestureInputFilter;->isInKeyguardWhenPointerDown:Z

    .line 143
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_5

    .line 144
    const-string v2, "GestureInputFilter"

    const-string v3, "All finger released. Resetting keyguard flag"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/server/input/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_0

    .line 149
    :cond_6
    invoke-virtual {v9}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_9

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ne v2, v4, :cond_9

    .line 152
    iget-object v2, p0, Lcom/htc/server/gesture/GestureInputFilter;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 153
    iput-boolean v10, p0, Lcom/htc/server/gesture/GestureInputFilter;->isInKeyguardWhenPointerDown:Z

    .line 154
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_7

    .line 155
    const-string v2, "GestureInputFilter"

    const-string v3, "Keyguard is on. Do not intercept 3 fingers swipe events."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/android/server/input/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto/16 :goto_0

    .line 160
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .restart local v0       #now:J
    move-wide v2, v0

    move v6, v5

    .line 161
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 163
    .restart local v8       #cancelEvent:Landroid/view/MotionEvent;
    invoke-virtual {v8, v11}, Landroid/view/MotionEvent;->setSource(I)V

    .line 164
    invoke-super {p0, v8, p2}, Lcom/android/server/input/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 165
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 168
    iget-object v2, p0, Lcom/htc/server/gesture/GestureInputFilter;->mMultipleSwipeDetector:Lcom/htc/server/gesture/MultipleSwipeDetector;

    invoke-virtual {v2, v9}, Lcom/htc/server/gesture/MultipleSwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 169
    iput-boolean v10, p0, Lcom/htc/server/gesture/GestureInputFilter;->startToRedirectEvent:Z

    .line 188
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_0

    .line 189
    const-string v2, "GestureInputFilter"

    const-string v3, "Sending ACTION_CANCEL and start to redirect events"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 193
    .end local v0           #now:J
    .end local v8           #cancelEvent:Landroid/view/MotionEvent;
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/android/server/input/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto/16 :goto_0

    .line 197
    .end local v9           #motionEvent:Landroid/view/MotionEvent;
    :cond_a
    invoke-super {p0, p1, p2}, Lcom/android/server/input/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto/16 :goto_0
.end method

.method public onInstalled()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    const-string v0, "GestureInputFilter"

    const-string v1, "Gesture input filter installed."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iput-boolean v2, p0, Lcom/htc/server/gesture/GestureInputFilter;->startToRedirectEvent:Z

    .line 75
    iput-boolean v2, p0, Lcom/htc/server/gesture/GestureInputFilter;->isInKeyguardWhenPointerDown:Z

    .line 76
    new-instance v0, Lcom/htc/server/gesture/MultipleSwipeDetector;

    iget-object v1, p0, Lcom/htc/server/gesture/GestureInputFilter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/server/gesture/MultipleSwipeDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/server/gesture/GestureInputFilter;->mMultipleSwipeDetector:Lcom/htc/server/gesture/MultipleSwipeDetector;

    .line 77
    iget-object v0, p0, Lcom/htc/server/gesture/GestureInputFilter;->mMultipleSwipeDetector:Lcom/htc/server/gesture/MultipleSwipeDetector;

    invoke-virtual {v0, p0}, Lcom/htc/server/gesture/MultipleSwipeDetector;->setDirectionListener(Lcom/htc/server/gesture/MultipleSwipeDetector$OnGestureListener;)V

    .line 78
    invoke-super {p0}, Lcom/android/server/input/InputFilter;->onInstalled()V

    .line 79
    return-void
.end method

.method public onUninstalled()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 83
    const-string v0, "GestureInputFilter"

    const-string v1, "Gesture input filter uninstalled."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iput-boolean v2, p0, Lcom/htc/server/gesture/GestureInputFilter;->startToRedirectEvent:Z

    .line 85
    iput-boolean v2, p0, Lcom/htc/server/gesture/GestureInputFilter;->isInKeyguardWhenPointerDown:Z

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/server/gesture/GestureInputFilter;->mMultipleSwipeDetector:Lcom/htc/server/gesture/MultipleSwipeDetector;

    .line 87
    invoke-super {p0}, Lcom/android/server/input/InputFilter;->onUninstalled()V

    .line 88
    return-void
.end method

.method public setGestureEnable(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 447
    iget-boolean v0, p0, Lcom/htc/server/gesture/GestureInputFilter;->mGestureEnable:Z

    if-eq v0, p1, :cond_0

    .line 448
    const-string v0, "GestureInputFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filter out gestureEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/server/gesture/GestureInputFilter;->mGestureEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_0
    iput-boolean p1, p0, Lcom/htc/server/gesture/GestureInputFilter;->mGestureEnable:Z

    .line 451
    return-void
.end method
