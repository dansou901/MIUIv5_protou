.class public Lcom/htc/dialog/HtcAlertDialog$Builder;
.super Ljava/lang/Object;
.source "HtcAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dialog/HtcAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected final P:Lcom/htc/dialog/HtcAlertController$AlertParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/htc/dialog/HtcAlertController$AlertParams;

    invoke-direct {v0, p1}, Lcom/htc/dialog/HtcAlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    return-void
.end method


# virtual methods
.method public create()Lcom/htc/dialog/HtcAlertDialog;
    .locals 3

    .prologue
    new-instance v0, Lcom/htc/dialog/HtcAlertDialog;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/dialog/HtcAlertDialog;-><init>(Landroid/content/Context;)V

    .local v0, dialog:Lcom/htc/dialog/HtcAlertDialog;
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v2, v0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertController$AlertParams;->apply(Lcom/htc/dialog/HtcAlertController;)V

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCancelable:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog;->setCanceledOnTouchOutside(Z)V

    :cond_0
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_1
    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "adapter"
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "cancelable"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCancelable:Z

    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "cursor"
    .parameter "listener"
    .parameter "labelColumn"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "customTitleView"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    return-object p0
.end method

.method public setIcon(I)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "iconId"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIconId:I

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "icon"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setInverseBackgroundForced(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "useInverseBackground"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mForceInverseBackground:Z

    return-object p0
.end method

.method public setIsAutoMotive(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "b"

    .prologue
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcAlertDialog"

    const-string v1, "call setIsAutoMotive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsAutoMotive:Z

    :goto_0
    return-object p0

    :cond_1
    const-string v0, "HtcAlertDialog"

    const-string v1, "You can not call setIsAutoMotive on portrait mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "itemsId"
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "items"
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setMessage(I)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "messageId"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "message"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;I)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "message"
    .parameter "nAutoLinkMask"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mAutoLinkMask:I

    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "itemsId"
    .parameter "checkedItems"
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCheckedItems:[Z

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "cursor"
    .parameter "isCheckedColumn"
    .parameter "labelColumn"
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p4, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "items"
    .parameter "checkedItems"
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCheckedItems:[Z

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "textId"
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "text"
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNegativeButtonDisabled(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "disabled"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNegativeButtonDisabled:Z

    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "textId"
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "text"
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButtonDisabled(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "disabled"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNeutralButtonDisabled:Z

    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "onCancelListener"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "onKeyListener"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "textId"
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "text"
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButtonDisabled(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "disabled"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mPositiveButtonDisabled:Z

    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "itemsId"
    .parameter "checkedItem"
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCheckedItem:I

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "cursor"
    .parameter "checkedItem"
    .parameter "labelColumn"
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p4, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCheckedItem:I

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "adapter"
    .parameter "checkedItem"
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCheckedItem:I

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "items"
    .parameter "checkedItem"
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCheckedItem:I

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "titleId"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "title"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitleCenterEnabled(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "enable"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mTitleCenter:Z

    return-object p0
.end method

.method public setTitleDividerVisible(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "visible"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mTitleDivider:Z

    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "view"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingSpecified:Z

    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "view"
    .parameter "viewSpacingLeft"
    .parameter "viewSpacingTop"
    .parameter "viewSpacingRight"
    .parameter "viewSpacingBottom"

    .prologue
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingSpecified:Z

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingLeft:I

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput p3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingTop:I

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput p4, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingRight:I

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput p5, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingBottom:I

    return-object p0
.end method

.method public show()Lcom/htc/dialog/HtcAlertDialog;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v0

    .local v0, dialog:Lcom/htc/dialog/HtcAlertDialog;
    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    return-object v0
.end method
