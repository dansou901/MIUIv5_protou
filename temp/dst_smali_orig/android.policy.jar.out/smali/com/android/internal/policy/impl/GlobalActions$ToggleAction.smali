.class abstract Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/GlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ToggleAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    }
.end annotation


# instance fields
.field protected mDisabledIconResid:I

.field protected mDisabledStatusMessageResId:I

.field protected mEnabledIconResId:I

.field protected mEnabledStatusMessageResId:I

.field protected mHtcResource:Z

.field protected mMessageResId:I

.field protected mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;


# direct methods
.method public constructor <init>(IIIIIZ)V
    .locals 1
    .parameter "enabledIconResId"
    .parameter "disabledIconResid"
    .parameter "message"
    .parameter "enabledStatusMessageResId"
    .parameter "disabledStatusMessageResId"
    .parameter "htcResource"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mEnabledIconResId:I

    iput p2, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mDisabledIconResid:I

    iput p3, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mMessageResId:I

    iput p4, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    iput p5, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    iput-boolean p6, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mHtcResource:Z

    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 1
    .parameter "buttonOn"

    .prologue
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_0
    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    return-void

    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_0
.end method

.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 32
    .parameter "context"
    .parameter "convertView"
    .parameter "parent"
    .parameter "inflater"

    .prologue
    const/16 v26, 0x0

    .local v26, v:Landroid/view/View;
    const/4 v12, 0x0

    .local v12, icon:Landroid/widget/ImageView;
    const/16 v16, 0x0

    .local v16, messageView:Landroid/widget/TextView;
    const/16 v23, 0x0

    .local v23, statusView:Landroid/widget/TextView;
    const v28, 0x4030005

    const/16 v29, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v28

    move-object/from16 v2, p3

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v26

    const v28, 0x4110008

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #icon:Landroid/widget/ImageView;
    check-cast v12, Landroid/widget/ImageView;

    .restart local v12       #icon:Landroid/widget/ImageView;
    const v28, 0x4110003

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .end local v16           #messageView:Landroid/widget/TextView;
    check-cast v16, Landroid/widget/TextView;

    .restart local v16       #messageView:Landroid/widget/TextView;
    const v28, 0x4110006

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .end local v23           #statusView:Landroid/widget/TextView;
    check-cast v23, Landroid/widget/TextView;

    .restart local v23       #statusView:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->isEnabled()Z

    move-result v9

    .local v9, enabled:Z
    const-string v28, "GlobalActions"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "ToggleAction, enabled = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", this = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    move-object/from16 v28, v0

    sget-object v29, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    move-object/from16 v28, v0

    sget-object v29, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->TurningOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_9

    :cond_0
    const/16 v17, 0x1

    .local v17, on:Z
    :goto_0
    const/4 v15, 0x0

    .local v15, messageText:Ljava/lang/CharSequence;
    const/4 v8, 0x0

    .local v8, drawable:Landroid/graphics/drawable/Drawable;
    const/16 v22, 0x0

    .local v22, statusText:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mHtcResource:Z

    move/from16 v28, v0

    if-eqz v28, :cond_c

    const/16 v18, 0x0

    .local v18, r:Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v28

    const-string v29, "com.htc"

    invoke-virtual/range {v28 .. v29}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v18

    :goto_1
    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mMessageResId:I

    move/from16 v28, v0

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mEnabledIconResId:I

    move/from16 v28, v0

    :goto_2
    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    move/from16 v28, v0

    :goto_3
    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v22

    .end local v18           #r:Landroid/content/res/Resources;
    :cond_1
    :goto_4
    if-eqz v16, :cond_2

    if-eqz v15, :cond_2

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_2
    if-eqz v12, :cond_3

    if-eqz v8, :cond_3

    invoke-virtual {v12, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v12, v9}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_3
    if-eqz v23, :cond_4

    if-eqz v22, :cond_4

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v28, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_4
    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Landroid/view/View;->setEnabled(Z)V

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    .local v5, am:Landroid/app/IActivityManager;
    :try_start_1
    invoke-interface {v5}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    .local v7, config:Landroid/content/res/Configuration;
    iget-object v0, v7, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    move-object/from16 v21, v0

    .local v21, skinPackage:Ljava/lang/String;
    sget-object v28, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v27

    .local v27, version:F
    const/high16 v28, 0x4080

    cmpl-float v28, v27, v28

    if-ltz v28, :cond_6

    const-string v28, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_5

    const-string v28, "default"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_f

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .local v19, res:Landroid/content/res/Resources;
    const-string v28, "common_list_item_background"

    const-string v29, "drawable"

    const-string v30, "com.htc"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .local v4, BGId:I
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .end local v19           #res:Landroid/content/res/Resources;
    .local v14, listItemBG:Landroid/graphics/drawable/Drawable;
    :goto_5
    if-eqz v26, :cond_6

    if-eqz v14, :cond_6

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getPaddingLeft()I

    move-result v13

    .local v13, leftPadding:I
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getPaddingTop()I

    move-result v25

    .local v25, topPadding:I
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getPaddingRight()I

    move-result v20

    .local v20, rightPadding:I
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    .local v6, bottomPadding:I
    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v26

    move/from16 v1, v25

    move/from16 v2, v20

    invoke-virtual {v0, v13, v1, v2, v6}, Landroid/view/View;->setPadding(IIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v4           #BGId:I
    .end local v6           #bottomPadding:I
    .end local v7           #config:Landroid/content/res/Configuration;
    .end local v13           #leftPadding:I
    .end local v14           #listItemBG:Landroid/graphics/drawable/Drawable;
    .end local v20           #rightPadding:I
    .end local v21           #skinPackage:Ljava/lang/String;
    .end local v25           #topPadding:I
    .end local v27           #version:F
    :cond_6
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const-string v29, "list_primary_m"

    const-string v30, "style"

    const-string v31, "com.htc"

    invoke-virtual/range {v28 .. v31}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .local v11, fontStyle:I
    if-eqz v11, :cond_7

    if-eqz v16, :cond_7

    if-eqz p1, :cond_7

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const-string v29, "list_secondary_m"

    const-string v30, "style"

    const-string v31, "com.htc"

    invoke-virtual/range {v28 .. v31}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_8

    if-eqz v23, :cond_8

    if-eqz p1, :cond_8

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_8
    return-object v26

    .end local v5           #am:Landroid/app/IActivityManager;
    .end local v8           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v11           #fontStyle:I
    .end local v15           #messageText:Ljava/lang/CharSequence;
    .end local v17           #on:Z
    .end local v22           #statusText:Ljava/lang/CharSequence;
    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_0

    .restart local v8       #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v15       #messageText:Ljava/lang/CharSequence;
    .restart local v17       #on:Z
    .restart local v18       #r:Landroid/content/res/Resources;
    .restart local v22       #statusText:Ljava/lang/CharSequence;
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mDisabledIconResid:I

    move/from16 v28, v0

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    move/from16 v28, v0

    goto/16 :goto_3

    .end local v18           #r:Landroid/content/res/Resources;
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mMessageResId:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    if-eqz v17, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mEnabledIconResId:I

    move/from16 v28, v0

    :goto_7
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v8

    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    if-eqz v17, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    move/from16 v28, v0

    :goto_9
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v22

    goto/16 :goto_4

    :cond_d
    :try_start_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mDisabledIconResid:I

    move/from16 v28, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_7

    :catch_0
    move-exception v10

    .local v10, ex:Ljava/lang/Exception;
    const-string v28, "GlobalActions"

    const-string v29, "Icon does not exist"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .end local v10           #ex:Ljava/lang/Exception;
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    move/from16 v28, v0

    goto :goto_9

    .restart local v5       #am:Landroid/app/IActivityManager;
    .restart local v7       #config:Landroid/content/res/Configuration;
    .restart local v21       #skinPackage:Ljava/lang/String;
    .restart local v27       #version:F
    :cond_f
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v24

    .local v24, themeres:Landroid/content/res/Resources;
    const-string v28, "common_list_item_background"

    const-string v29, "drawable"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .restart local v4       #BGId:I
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v14

    .restart local v14       #listItemBG:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_5

    .end local v4           #BGId:I
    .end local v7           #config:Landroid/content/res/Configuration;
    .end local v14           #listItemBG:Landroid/graphics/drawable/Drawable;
    .end local v21           #skinPackage:Ljava/lang/String;
    .end local v24           #themeres:Landroid/content/res/Resources;
    .end local v27           #version:F
    :catch_1
    move-exception v28

    goto/16 :goto_6

    .end local v5           #am:Landroid/app/IActivityManager;
    .restart local v18       #r:Landroid/content/res/Resources;
    :catch_2
    move-exception v28

    goto/16 :goto_1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->inTransition()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLongPress()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public final onPress()V
    .locals 4

    .prologue
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    const-string v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPress(), mState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", inTransition() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->inTransition()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->inTransition()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "GlobalActions"

    const-string v2, "shouldn\'t be able to toggle when in transition"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    if-eq v1, v2, :cond_2

    const/4 v0, 0x1

    .local v0, nowOn:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->onToggle(Z)V

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->changeStateFromPress(Z)V

    goto :goto_0

    .end local v0           #nowOn:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method abstract onToggle(Z)V
.end method

.method public updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V
    .locals 3
    .parameter "state"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    const-string v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateState, state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
