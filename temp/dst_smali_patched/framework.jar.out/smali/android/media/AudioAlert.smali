.class public Landroid/media/AudioAlert;
.super Landroid/os/Handler;
.source "AudioAlert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioAlert$Timer;
    }
.end annotation


# static fields
.field private static final KEY_CHECKBOX_SELLECTED:Ljava/lang/String; = "listen_notify_checkbox_sellected"

.field private static final KEY_OCCUPIED_TIME:Ljava/lang/String; = "listen_notify_occupied_time"

.field private static final MSG_FORCE_DIALOG_SHOW_IF_AVAILABLE:I = 0x1

.field private static final MSG_SHOW_DIALOG:I

.field private static TIME_DURATION:J

.field private static mBoxChecked:Z

.field private static mForceDialogShow:Z

.field private static mTimer:Landroid/media/AudioAlert$Timer;


# instance fields
.field private TAG:Ljava/lang/String;

.field private isTriggered:Z

.field private mCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mOKClick:Landroid/content/DialogInterface$OnClickListener;

.field private mOccupiedTime:J

.field private mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Landroid/media/AudioAlert;->mBoxChecked:Z

    const/4 v0, 0x1

    sput-boolean v0, Landroid/media/AudioAlert;->mForceDialogShow:Z

    const-wide/32 v0, 0x44aa200

    sput-wide v0, Landroid/media/AudioAlert;->TIME_DURATION:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-string v1, "AudioAlert"

    iput-object v1, p0, Landroid/media/AudioAlert;->TAG:Ljava/lang/String;

    iput-wide v3, p0, Landroid/media/AudioAlert;->mStartTime:J

    iput-wide v3, p0, Landroid/media/AudioAlert;->mOccupiedTime:J

    iput-boolean v2, p0, Landroid/media/AudioAlert;->isTriggered:Z

    new-instance v1, Landroid/media/AudioAlert$1;

    invoke-direct {v1, p0}, Landroid/media/AudioAlert$1;-><init>(Landroid/media/AudioAlert;)V

    iput-object v1, p0, Landroid/media/AudioAlert;->mOKClick:Landroid/content/DialogInterface$OnClickListener;

    new-instance v1, Landroid/media/AudioAlert$2;

    invoke-direct {v1, p0}, Landroid/media/AudioAlert$2;-><init>(Landroid/media/AudioAlert;)V

    iput-object v1, p0, Landroid/media/AudioAlert;->mCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iput-object p1, p0, Landroid/media/AudioAlert;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/media/AudioAlert;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "listen_notify_checkbox_sellected"

    invoke-static {v1, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    sput-boolean v1, Landroid/media/AudioAlert;->mBoxChecked:Z

    iget-object v1, p0, Landroid/media/AudioAlert;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "listen_notify_occupied_time"

    invoke-static {v1, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sput-boolean v2, Landroid/media/AudioAlert;->mForceDialogShow:Z

    :cond_0
    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_1
    iput-wide v1, p0, Landroid/media/AudioAlert;->mOccupiedTime:J

    iget-object v1, p0, Landroid/media/AudioAlert;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read DB, is check box selected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Landroid/media/AudioAlert;->mBoxChecked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", time occupied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/media/AudioAlert;->mOccupiedTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Landroid/media/AudioAlert;->TIME_DURATION:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move-wide v1, v3

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/media/AudioAlert;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/media/AudioAlert;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    sget-boolean v0, Landroid/media/AudioAlert;->mBoxChecked:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    sput-boolean p0, Landroid/media/AudioAlert;->mBoxChecked:Z

    return p0
.end method

.method static synthetic access$200()Landroid/media/AudioAlert$Timer;
    .locals 1

    .prologue
    sget-object v0, Landroid/media/AudioAlert;->mTimer:Landroid/media/AudioAlert$Timer;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/AudioAlert;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/media/AudioAlert;->save(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/media/AudioAlert;)J
    .locals 2
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/media/AudioAlert;->getSystemTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500()J
    .locals 2

    .prologue
    sget-wide v0, Landroid/media/AudioAlert;->TIME_DURATION:J

    return-wide v0
.end method

.method static synthetic access$600(Landroid/media/AudioAlert;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/media/AudioAlert;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getSystemTime()J
    .locals 4

    .prologue
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private save(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    iget-object v0, p0, Landroid/media/AudioAlert;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/AudioAlert;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static shouldRun()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v0, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x29

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x9d

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x9f

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x73

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xdf

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xa9

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x70

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x71

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x99

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x31

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x72

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x9b

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showDialog()V
    .locals 15

    .prologue
    iget-object v11, p0, Landroid/media/AudioAlert;->TAG:Ljava/lang/String;

    const-string v12, "initView +"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    .local v4, clz:Ljava/lang/Class;
    iget-object v11, p0, Landroid/media/AudioAlert;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v9, v11, Landroid/util/DisplayMetrics;->scaledDensity:F

    .local v9, scaledDensity:F
    new-instance v8, Landroid/widget/TextView;

    iget-object v11, p0, Landroid/media/AudioAlert;->mContext:Landroid/content/Context;

    invoke-direct {v8, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .local v8, mText:Landroid/widget/TextView;
    const v11, 0x4070044

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(I)V

    const-string v11, "#2C2E2F"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v11, p0, Landroid/media/AudioAlert;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "scaledDensity="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    const/high16 v12, 0x4170

    mul-float/2addr v12, v9

    float-to-int v12, v12

    const/4 v13, 0x0

    const/high16 v14, 0x4188

    mul-float/2addr v14, v9

    float-to-int v14, v14

    invoke-virtual {v8, v11, v12, v13, v14}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    const/high16 v11, 0x4120

    mul-float/2addr v11, v9

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v11, p0, Landroid/media/AudioAlert;->TAG:Ljava/lang/String;

    const-string v12, "TextView is ready"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/widget/CheckBox;

    iget-object v11, p0, Landroid/media/AudioAlert;->mContext:Landroid/content/Context;

    invoke-direct {v1, v11}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .local v1, cb:Landroid/widget/CheckBox;
    iget-object v11, p0, Landroid/media/AudioAlert;->mCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v3, Landroid/widget/TextView;

    iget-object v11, p0, Landroid/media/AudioAlert;->mContext:Landroid/content/Context;

    invoke-direct {v3, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .local v3, cbText:Landroid/widget/TextView;
    const v11, 0x4070045

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(I)V

    const-string v11, "#898989"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x40e0

    mul-float/2addr v14, v9

    float-to-int v14, v14

    invoke-virtual {v3, v11, v12, v13, v14}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    const/high16 v11, 0x4120

    mul-float/2addr v11, v9

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v11, p0, Landroid/media/AudioAlert;->mContext:Landroid/content/Context;

    invoke-direct {v2, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .local v2, cbLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v11, p0, Landroid/media/AudioAlert;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .local v7, mContent:Landroid/widget/LinearLayout;
    const/high16 v11, 0x4120

    mul-float/2addr v11, v9

    float-to-int v11, v11

    const/4 v12, 0x0

    const/high16 v13, 0x4120

    mul-float/2addr v13, v9

    float-to-int v13, v13

    const/4 v14, 0x0

    invoke-virtual {v7, v11, v12, v13, v14}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v0, 0x0

    .local v0, HtcAlertDialog_Builder:Ljava/lang/Object;
    :try_start_0
    const-string v11, "com.htc.widget.HtcAlertDialog$Builder"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    if-eqz v4, :cond_0

    const/4 v11, 0x1

    :try_start_1
    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Landroid/content/Context;

    aput-object v13, v11, v12

    invoke-virtual {v4, v11}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Landroid/media/AudioAlert;->mContext:Landroid/content/Context;

    aput-object v14, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v11, "setTitle"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    invoke-virtual {v4, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const v14, 0x4070046

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v11, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "setView"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-class v14, Landroid/view/View;

    aput-object v14, v12, v13

    invoke-virtual {v4, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v7, v12, v13

    invoke-virtual {v11, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "setNeutralButton"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-class v14, Landroid/content/DialogInterface$OnClickListener;

    aput-object v14, v12, v13

    invoke-virtual {v4, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const v14, 0x4070047

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    iget-object v14, p0, Landroid/media/AudioAlert;->mOKClick:Landroid/content/DialogInterface$OnClickListener;

    aput-object v14, v12, v13

    invoke-virtual {v11, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "create"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v4, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v11, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/Dialog;

    iput-object v11, p0, Landroid/media/AudioAlert;->mDialog:Landroid/app/Dialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v0           #HtcAlertDialog_Builder:Ljava/lang/Object;
    :cond_0
    :goto_1
    iget-object v11, p0, Landroid/media/AudioAlert;->TAG:Ljava/lang/String;

    const-string v12, "AlertDialog is ready"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Landroid/media/AudioAlert;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    .local v10, window:Landroid/view/Window;
    const/16 v11, 0x11

    invoke-virtual {v10, v11}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .local v6, lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v11, 0x0

    iput-object v11, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/16 v11, 0x32

    iput v11, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v11, 0x7d3

    iput v11, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v11, -0x2

    iput v11, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v11, -0x2

    iput v11, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v10, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v11, 0x28

    invoke-virtual {v10, v11}, Landroid/view/Window;->addFlags(I)V

    iget-object v11, p0, Landroid/media/AudioAlert;->TAG:Ljava/lang/String;

    const-string v12, "initView -"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Landroid/media/AudioAlert;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->show()V

    return-void

    .end local v6           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v10           #window:Landroid/view/Window;
    .restart local v0       #HtcAlertDialog_Builder:Ljava/lang/Object;
    :catch_0
    move-exception v5

    .local v5, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v5}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .end local v0           #HtcAlertDialog_Builder:Ljava/lang/Object;
    .end local v5           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v5

    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/media/AudioAlert;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioAlert;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioAlert;->TAG:Ljava/lang/String;

    const-string v1, "dialog is already there, ignore it"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-boolean v0, Landroid/media/AudioAlert;->mBoxChecked:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/AudioAlert;->TAG:Ljava/lang/String;

    const-string v1, "Because \"Don\'t show me again\" is selected, abandon audio alert"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/media/AudioAlert;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show dialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/media/AudioAlert;->getSystemTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/media/AudioAlert;->showDialog()V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    sput-boolean v0, Landroid/media/AudioAlert;->mForceDialogShow:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public stop()V
    .locals 6

    .prologue
    invoke-static {}, Landroid/media/AudioAlert;->shouldRun()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/media/AudioAlert;->TAG:Ljava/lang/String;

    const-string v1, "this project does not support listen notify feature"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Landroid/media/AudioAlert;->isTriggered:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/media/AudioAlert;->TAG:Ljava/lang/String;

    const-string v1, "it\'s already stopped, ignore!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-boolean v0, Landroid/media/AudioAlert;->mBoxChecked:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioAlert;->TAG:Ljava/lang/String;

    const-string v1, "stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Landroid/media/AudioAlert;->mOccupiedTime:J

    invoke-direct {p0}, Landroid/media/AudioAlert;->getSystemTime()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/media/AudioAlert;->mStartTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/AudioAlert;->mOccupiedTime:J

    iget-wide v0, p0, Landroid/media/AudioAlert;->mOccupiedTime:J

    sget-wide v2, Landroid/media/AudioAlert;->TIME_DURATION:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/AudioAlert;->mOccupiedTime:J

    const-string v0, "listen_notify_occupied_time"

    iget-wide v1, p0, Landroid/media/AudioAlert;->mOccupiedTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/media/AudioAlert;->save(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/media/AudioAlert;->mTimer:Landroid/media/AudioAlert$Timer;

    invoke-virtual {v0}, Landroid/media/AudioAlert$Timer;->interrupt()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/AudioAlert;->isTriggered:Z

    goto :goto_0
.end method

.method public trigger()V
    .locals 9

    .prologue
    invoke-static {}, Landroid/media/AudioAlert;->shouldRun()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/media/AudioAlert;->TAG:Ljava/lang/String;

    const-string v1, "this project does not support listen notify feature"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Landroid/media/AudioAlert;->isTriggered:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/AudioAlert;->TAG:Ljava/lang/String;

    const-string v1, "it\'s already triggered, ignore!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-boolean v0, Landroid/media/AudioAlert;->mBoxChecked:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioAlert;->TAG:Ljava/lang/String;

    const-string v1, "tirggered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/media/AudioAlert;->getSystemTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/AudioAlert;->mStartTime:J

    new-instance v0, Landroid/media/AudioAlert$Timer;

    iget-wide v2, p0, Landroid/media/AudioAlert;->mStartTime:J

    sget-boolean v1, Landroid/media/AudioAlert;->mForceDialogShow:Z

    if-eqz v1, :cond_3

    const-wide/16 v4, 0x0

    :goto_1
    iget-object v1, p0, Landroid/media/AudioAlert;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    iget-object v1, p0, Landroid/media/AudioAlert;->mContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioManager;

    move-object v1, p0

    move-object v6, p0

    invoke-direct/range {v0 .. v8}, Landroid/media/AudioAlert$Timer;-><init>(Landroid/media/AudioAlert;JJLandroid/media/AudioAlert;Landroid/app/ActivityManager;Landroid/media/AudioManager;)V

    sput-object v0, Landroid/media/AudioAlert;->mTimer:Landroid/media/AudioAlert$Timer;

    sget-object v0, Landroid/media/AudioAlert;->mTimer:Landroid/media/AudioAlert$Timer;

    invoke-virtual {v0}, Landroid/media/AudioAlert$Timer;->start()V

    const-string v0, "listen_notify_occupied_time"

    iget-wide v1, p0, Landroid/media/AudioAlert;->mOccupiedTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/media/AudioAlert;->save(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Landroid/media/AudioAlert;->mForceDialogShow:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/AudioAlert;->isTriggered:Z

    goto :goto_0

    :cond_3
    sget-wide v4, Landroid/media/AudioAlert;->TIME_DURATION:J

    iget-wide v6, p0, Landroid/media/AudioAlert;->mOccupiedTime:J

    sub-long/2addr v4, v6

    goto :goto_1
.end method
