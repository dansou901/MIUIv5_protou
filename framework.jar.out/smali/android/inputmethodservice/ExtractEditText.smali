.class public Landroid/inputmethodservice/ExtractEditText;
.super Landroid/widget/EditText;
.source "ExtractEditText.java"

# interfaces
.implements Landroid/widget/ExtractEditText;


# instance fields
.field private mIME:Landroid/inputmethodservice/InputMethodService;

.field private mSettingExtractedText:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method


# virtual methods
.method protected deleteText_internal(II)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 195
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onExtractedDeleteText(II)V

    .line 196
    return-void
.end method

.method public finishInternalChanges()V
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    .line 79
    return-void
.end method

.method public getIME()Landroid/inputmethodservice/InputMethodService;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    return-object v0
.end method

.method public hasFocus()Z
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public hasVerticalScrollBar()Z
    .locals 2

    .prologue
    .line 147
    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->computeVerticalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->computeVerticalScrollExtent()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isFocused()Z
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isInputMethodTarget()Z
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method protected onSelectionChanged(II)V
    .locals 1
    .parameter "selStart"
    .parameter "selEnd"

    .prologue
    .line 98
    iget v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 99
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onExtractedSelectionChanged(II)V

    .line 101
    :cond_0
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 118
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    if-eqz v0, :cond_1

    const v0, 0x1020028

    if-eq p1, v0, :cond_1

    const v0, 0x102001f

    if-eq p1, v0, :cond_1

    const v0, 0x1020021

    if-eq p1, v0, :cond_1

    .line 120
    const v0, 0x1020024

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissQuickAction(Z)V

    .line 122
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->onExtractTextContextMenuItem(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    const/4 v0, 0x1

    .line 132
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_0
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Landroid/widget/EditText;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->onExtractedTextClicked()V

    .line 110
    const/4 v0, 0x1

    .line 112
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected replaceText_internal(IILjava/lang/CharSequence;)V
    .locals 1
    .parameter "start"
    .parameter "end"
    .parameter "text"

    .prologue
    .line 206
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1, p2, p3}, Landroid/inputmethodservice/InputMethodService;->onExtractedReplaceText(IILjava/lang/CharSequence;)V

    .line 207
    return-void
.end method

.method protected setCursorPosition_internal(II)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 228
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onExtractedSelectionChanged(II)V

    .line 229
    return-void
.end method

.method public setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 87
    :try_start_0
    iget v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    .line 88
    invoke-super {p0, p1}, Landroid/widget/EditText;->setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    iget v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    .line 92
    return-void

    .line 90
    :catchall_0
    move-exception v0

    iget v1, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    throw v0
.end method

.method public setIME(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0
    .parameter "ime"

    .prologue
    .line 60
    iput-object p1, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    .line 61
    return-void
.end method

.method protected setSpan_internal(Ljava/lang/Object;III)V
    .locals 1
    .parameter "span"
    .parameter "start"
    .parameter "end"
    .parameter "flags"

    .prologue
    .line 217
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/inputmethodservice/InputMethodService;->onExtractedSetSpan(Ljava/lang/Object;III)V

    .line 218
    return-void
.end method

.method public startInternalChanges()V
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    .line 70
    return-void
.end method

.method protected viewClicked(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 2
    .parameter "imm"

    .prologue
    .line 182
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InputMethodService;->onViewClicked(Z)V

    .line 185
    :cond_0
    return-void
.end method
