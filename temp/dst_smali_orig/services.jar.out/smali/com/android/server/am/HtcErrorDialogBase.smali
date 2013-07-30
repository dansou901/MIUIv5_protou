.class final Lcom/android/server/am/HtcErrorDialogBase;
.super Ljava/lang/Object;
.source "HtcErrorDialogBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/HtcErrorDialogBase$DialogClickListener;,
        Lcom/android/server/am/HtcErrorDialogBase$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcErrorDialogBase"


# instance fields
.field private mAlertDlg:Lcom/htc/widget/HtcAlertDialog;

.field private final mAlertDlgBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

.field private final mCallback:Lcom/android/server/am/HtcErrorDialogBase$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/HtcErrorDialogBase$Callback;)V
    .locals 2
    .parameter "context"
    .parameter "callback"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/am/HtcErrorDialogBase$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/HtcErrorDialogBase$1;-><init>(Lcom/android/server/am/HtcErrorDialogBase;)V

    iput-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mHandler:Landroid/os/Handler;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "HtcErrorDialogBase constructor need a valid Context parameter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/android/server/am/HtcErrorDialogBase;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/am/HtcErrorDialogBase;->mCallback:Lcom/android/server/am/HtcErrorDialogBase$Callback;

    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/android/server/am/HtcErrorDialogBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlgBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/HtcErrorDialogBase;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/HtcErrorDialogBase;)Lcom/android/server/am/HtcErrorDialogBase$Callback;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mCallback:Lcom/android/server/am/HtcErrorDialogBase$Callback;

    return-object v0
.end method

.method private appliedSkinConfig()V
    .locals 24

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorDialogBase;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorDialogBase;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .local v15, res:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlg:Lcom/htc/widget/HtcAlertDialog;

    move-object/from16 v20, v0

    const-string v21, "topPanel"

    const-string v22, "id"

    const-string v23, "com.htc"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/widget/HtcAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .local v17, tp:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlg:Lcom/htc/widget/HtcAlertDialog;

    move-object/from16 v20, v0

    const-string v21, "contentPanel"

    const-string v22, "id"

    const-string v23, "com.htc"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/widget/HtcAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .local v9, cnt:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlg:Lcom/htc/widget/HtcAlertDialog;

    move-object/from16 v20, v0

    const-string v21, "buttonPanel"

    const-string v22, "id"

    const-string v23, "com.htc"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/widget/HtcAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .local v3, bp:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlg:Lcom/htc/widget/HtcAlertDialog;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    invoke-virtual/range {v20 .. v21}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v8

    .local v8, but_positive:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlg:Lcom/htc/widget/HtcAlertDialog;

    move-object/from16 v20, v0

    const/16 v21, -0x2

    invoke-virtual/range {v20 .. v21}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    .local v6, but_negative:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlg:Lcom/htc/widget/HtcAlertDialog;

    move-object/from16 v20, v0

    const/16 v21, -0x3

    invoke-virtual/range {v20 .. v21}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v7

    .local v7, but_neutral:Landroid/widget/Button;
    if-eqz v17, :cond_2

    if-eqz v9, :cond_2

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/htc/util/skin/HtcSkinUtil;->getAppliedSkinPackageName()Ljava/lang/String;

    move-result-object v16

    .local v16, skinPackage:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    const-string v20, "default"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorDialogBase;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    :goto_0
    if-eqz v15, :cond_2

    const-string v20, "popup_top_dark"

    const-string v21, "drawable"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .local v18, tpId:I
    const-string v20, "popup_center_bright"

    const-string v21, "drawable"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .local v10, cntId:I
    const-string v20, "popup_bottom_dark"

    const-string v21, "drawable"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .local v4, bpId:I
    const-string v20, "title_primary"

    const-string v21, "color"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .local v13, colorId:I
    if-eqz v18, :cond_2

    if-eqz v10, :cond_2

    if-eqz v4, :cond_2

    if-eqz v13, :cond_2

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .local v19, tp_draw:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v15, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .local v11, cnt_draw:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v15, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .local v5, bp_draw:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v15, v13}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    .local v12, color:Landroid/content/res/ColorStateList;
    if-eqz v19, :cond_2

    if-eqz v11, :cond_2

    if-eqz v5, :cond_2

    if-eqz v12, :cond_2

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v9, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz v8, :cond_0

    invoke-virtual {v8, v12}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    if-eqz v6, :cond_1

    invoke-virtual {v6, v12}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    if-eqz v7, :cond_2

    invoke-virtual {v7, v12}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .end local v3           #bp:Landroid/view/View;
    .end local v4           #bpId:I
    .end local v5           #bp_draw:Landroid/graphics/drawable/Drawable;
    .end local v6           #but_negative:Landroid/widget/Button;
    .end local v7           #but_neutral:Landroid/widget/Button;
    .end local v8           #but_positive:Landroid/widget/Button;
    .end local v9           #cnt:Landroid/view/View;
    .end local v10           #cntId:I
    .end local v11           #cnt_draw:Landroid/graphics/drawable/Drawable;
    .end local v12           #color:Landroid/content/res/ColorStateList;
    .end local v13           #colorId:I
    .end local v15           #res:Landroid/content/res/Resources;
    .end local v16           #skinPackage:Ljava/lang/String;
    .end local v17           #tp:Landroid/view/View;
    .end local v18           #tpId:I
    .end local v19           #tp_draw:Landroid/graphics/drawable/Drawable;
    :cond_2
    return-void

    .restart local v3       #bp:Landroid/view/View;
    .restart local v6       #but_negative:Landroid/widget/Button;
    .restart local v7       #but_neutral:Landroid/widget/Button;
    .restart local v8       #but_positive:Landroid/widget/Button;
    .restart local v9       #cnt:Landroid/view/View;
    .restart local v15       #res:Landroid/content/res/Resources;
    .restart local v16       #skinPackage:Ljava/lang/String;
    .restart local v17       #tp:Landroid/view/View;
    :catch_0
    move-exception v14

    .local v14, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v20, "HtcErrorDialogBase"

    const-string v21, "NameNotFoundException in appliedSkinConfig()"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlg:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlg:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public sendMessageDelayed(IJ)V
    .locals 2
    .parameter "what"
    .parameter "delayMillis"

    .prologue
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/HtcErrorDialogBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public setCancelable(Z)V
    .locals 1
    .parameter "cancelable"

    .prologue
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlgBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "message"

    .prologue
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlgBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    return-void
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;I)V
    .locals 2
    .parameter "text"
    .parameter "msgId"

    .prologue
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlgBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    new-instance v1, Lcom/android/server/am/HtcErrorDialogBase$DialogClickListener;

    invoke-direct {v1, p0, p2}, Lcom/android/server/am/HtcErrorDialogBase$DialogClickListener;-><init>(Lcom/android/server/am/HtcErrorDialogBase;I)V

    invoke-virtual {v0, p1, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    return-void
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;I)V
    .locals 2
    .parameter "text"
    .parameter "msgId"

    .prologue
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlgBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    new-instance v1, Lcom/android/server/am/HtcErrorDialogBase$DialogClickListener;

    invoke-direct {v1, p0, p2}, Lcom/android/server/am/HtcErrorDialogBase$DialogClickListener;-><init>(Lcom/android/server/am/HtcErrorDialogBase;I)V

    invoke-virtual {v0, p1, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    return-void
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;I)V
    .locals 2
    .parameter "text"
    .parameter "msgId"

    .prologue
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlgBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    new-instance v1, Lcom/android/server/am/HtcErrorDialogBase$DialogClickListener;

    invoke-direct {v1, p0, p2}, Lcom/android/server/am/HtcErrorDialogBase$DialogClickListener;-><init>(Lcom/android/server/am/HtcErrorDialogBase;I)V

    invoke-virtual {v0, p1, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlgBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    return-void
.end method

.method public show(Ljava/lang/String;II)V
    .locals 3
    .parameter "windowTitle"
    .parameter "windowType"
    .parameter "additionalWindowFlags"

    .prologue
    const/high16 v2, 0x2

    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlgBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlg:Lcom/htc/widget/HtcAlertDialog;

    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlg:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlg:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlg:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "Error Dialog"

    invoke-virtual {v0, v1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlg:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v0, 0x1

    if-lt p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlg:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/Window;->setType(I)V

    :cond_1
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlg:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/Window;->addFlags(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlg:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    invoke-direct {p0}, Lcom/android/server/am/HtcErrorDialogBase;->appliedSkinConfig()V

    return-void
.end method
